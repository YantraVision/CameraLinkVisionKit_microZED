#!/usr/bin/env python3
from v4l2 import *
import fcntl
import mmap
import select
from pynq import MMIO
import cv2
from datetime import datetime
import numpy as np
import os
import time
import argparse
from READ_REG_VDMA_1 import Read_Data
from time import sleep
from pynq import Xlnk
sys.path.append('libs/')
from frameGrabberWrapper import V4l2 

parser = argparse.ArgumentParser(description='enter the inputs')                          #command line args
parser.add_argument('-W','--width',type=int,help='width of the image')
parser.add_argument('-H','--height',type=int,help='height of the image')
parser.add_argument('-B','--numBuff',type=int,help='number of the buffer of the vmda')
parser.add_argument('-F','--frameCount',type=int,help='num of the frames')
args = parser.parse_args()
print(args)

video_dev = os.open("/dev/video0",os.O_RDWR|os.O_NONBLOCK)                                #opening video device
sub_dev = os.open("/dev/v4l-subdev0",os.O_RDWR|os.O_NONBLOCK)                             #opening sub-device

gpio_enable_pin=MMIO(0x43c10000,0x1000)                                                   #memory mapped for stream enable
vdma = MMIO(0x43010000,0x1000)                    

xlnk = Xlnk()                                                                             #object for cma allocation
print(">> get device capabilities")
capability = v4l2_capability()                                                            #checking the capability
fcntl.ioctl(video_dev, VIDIOC_QUERYCAP, capability)

print("Driver:", "".join((chr(c) for c in capability.driver)))
print("Name:", "".join((chr(c) for c in capability.card)))
print("Is a video capture device?", bool(capability.capabilities & V4L2_CAP_VIDEO_CAPTURE))
print("Supports read() call?", bool(capability.capabilities &  V4L2_CAP_READWRITE))
print("Supports streaming?", bool(capability.capabilities & V4L2_CAP_STREAMING))

print(">> device setup")                                                                  #programming format of video device 
#Input stream format setting IOCTL
input_fmt = v4l2_format()
input_fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
input_fmt.fmt.pix.width = args.width
input_fmt.fmt.pix.height = args.height
input_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_GREY
input_fmt.fmt.pix.field = V4L2_FIELD_NONE
input_fmt.fmt.pix.bytesperline = input_fmt.fmt.pix.width 
fcntl.ioctl(video_dev, VIDIOC_S_FMT, input_fmt)  

# Sub-device format setting IOCTL
sub_dev_obj = V4l2(1)
sub_dev_obj.SetSubDeviceFormat(args.width,args.height,sub_dev)                            #programming format of the sub device using c library

#Request buffer IOCTL call
req_buffer = v4l2_requestbuffers()
req_buffer.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
req_buffer.memory = V4L2_MEMORY_USERPTR
req_buffer.count = args.numBuff                                                           #number of buffer 
fcntl.ioctl(video_dev, VIDIOC_REQBUFS, req_buffer)                                        # tell the driver that we want some buffers 
#Read_Data("REQBUF")                                                                      #to check VDMA registeres after request buffer

vdma.write(0x34,0xffffffff)    

#Allocating input buffer using xlnk
vir_addr_list  = []
in_data_arr = []
in_phy_arr  = []
def CreateInCma():
    for ind in range(req_buffer.count):
        in_cma = xlnk.cma_array(shape=(input_fmt.fmt.pix.sizeimage,), dtype=np.uint8)
        if in_cma.size ==0:
            return False
        in_data_arr.append(in_cma)
        in_phy_arr.append(in_cma.physical_address)
        cma_addr = in_data_arr[ind].__array_interface__['data']
        vir_addr_list.append(cma_addr[0])

ret = CreateInCma()                                                                      #create cma buffer for user ptr so river can put the data in this buffer                                                                  
print("RET is ",ret)

#Intial Queueing of all requested buffer
for ind in range(req_buffer.count):                                                      #queue all the buffer for driver 
    video_buf = v4l2_buffer()
    video_buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
    video_buf.memory = V4L2_MEMORY_USERPTR
    video_buf.index = ind
    video_buf.length = input_fmt.fmt.pix.sizeimage
    video_buf.m.userptr = vir_addr_list[ind] 
    fcntl.ioctl(video_dev, VIDIOC_QBUF, video_buf)                           

Read_Data("QBUF")

#Enabling GPIO to provide the stream and Calling stream ON IOCTL
print(">> Start streaming")                                                            
gpio_enable_pin.write(0x108, 0x0)                                                         #start the input to vdma
gpio_enable_pin.write(0xf8, 0x0)                                                         #hold the vmda 
buf_type = v4l2_buf_type(V4L2_BUF_TYPE_VIDEO_CAPTURE)
fcntl.ioctl(video_dev, VIDIOC_STREAMON, buf_type)                                        #start the data streaming 
gpio_enable_pin.write(0xf8, 0x1)                                                         #enable the vdma
Read_Data("STREAMON")

#waiting until file descriptor become "ready" for some I/O operation - selecting buffer
t0 = time.time()                
max_t = 1
ready_to_read, ready_to_write, in_error = ([], [], [])
#print(">>> select")
while len(ready_to_read) == 0 and time.time() - t0 < max_t:
    ready_to_read, ready_to_write, in_error = select.select([video_dev], [], [], max_t)


#Capturing frames and storing it in buffer.
count=0
start_time = datetime.now()   
for _ in range(args.frameCount):  
    video_buf = v4l2_buffer()
    video_buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
    video_buf.memory = V4L2_MEMORY_USERPTR
    fcntl.ioctl(video_dev, VIDIOC_DQBUF, video_buf)                                      # get image from the driver queue and dequeing buffer for next frame capture
    temp_arr=np.reshape(in_data_arr[video_buf.index],(args.height,int(args.width/4),4))  #saving the data as mat object
    argb1_img=cv2.cvtColor(temp_arr,cv2.COLOR_RGBA2BGRA)
    cv2.imwrite("/run/vdma0_output_image_"+str(args.width)+str(args.height)+ "_" +str(count)+".bmp",argb1_img)
    count += 1
    fcntl.ioctl(video_dev, VIDIOC_QBUF, video_buf)                                       # queueing the buffer to for frame capture


#measuring the fps
end_time = datetime.now()
time_diff = (end_time - start_time)
execution_time = time_diff.total_seconds() 
print("fps is = ",args.frameCount/execution_time)

#Freeing cma buffer and stoping the stream
for ind in range(req_buffer.count):
    in_data_arr[ind].freebuffer()
    in_data_arr[ind].close()

print(">> Stop streaming")
fcntl.ioctl(video_dev, VIDIOC_STREAMOFF, buf_type)
gpio_enable_pin.write(0x108, 0x1)                                                         #clear input to vdma 
gpio_enable_pin.write(0xf8, 0x0)
print("APP is completed")
