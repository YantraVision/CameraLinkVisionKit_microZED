#!/usr/bin/env python3
from v4l2 import *
import fcntl
import mmap
import select
import time
from pynq import MMIO
from pynq import allocate
import cv2
from datetime import datetime
import numpy as np
import os
import sys
import argparse
import Threshold
from wrapper import V4l2
from time import sleep
from pynq import Xlnk

parser = argparse.ArgumentParser(description='enter the inputs')
parser.add_argument('-W','--width',type=int,help='width of the image')
parser.add_argument('-H','--height',type=int,help='height of the image')
parser.add_argument('-B','--numBuff',type=int,help='number of the buffer of the vmda')
parser.add_argument('-F','--frameCount',type=int,help='num of the frames')
args = parser.parse_args()
print(args)
#vd = open('/dev/video0)', 'r')
#vd = open(os.O_RDWR|os.O_NONBLOCK)i
vd = os.open("/dev/video0",os.O_RDWR|os.O_NONBLOCK)
gpio_en_pin=MMIO(0x41200000,0x1000)

xlnk = Xlnk()

print(">> get device capabilities")
cp = v4l2_capability()
fcntl.ioctl(vd, VIDIOC_QUERYCAP, cp)

print("Driver:", "".join((chr(c) for c in cp.driver)))
print("Name:", "".join((chr(c) for c in cp.card)))
print("Is a video capture device?", bool(cp.capabilities & V4L2_CAP_VIDEO_CAPTURE))
print("Supports read() call?", bool(cp.capabilities &  V4L2_CAP_READWRITE))
print("Supports streaming?", bool(cp.capabilities & V4L2_CAP_STREAMING))

print(">> device setup")
fmt = v4l2_format()
fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
fmt.fmt.pix.width = args.width
fmt.fmt.pix.height = args.height
fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_GREY
fmt.fmt.pix.field = V4L2_FIELD_NONE
fmt.fmt.pix.bytesperline = fmt.fmt.pix.width 
fcntl.ioctl(vd, VIDIOC_S_FMT, fmt)  # set whatever default settings we got before

obj = V4l2(1)
obj.open_subdevice()
obj.SetSubDeviceFormat(args.width,args.height)

#print(">> init mmap capture")
req = v4l2_requestbuffers()
req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
req.memory = V4L2_MEMORY_USERPTR
req.count = args.numBuff  # nr of buffer frames
fcntl.ioctl(vd, VIDIOC_REQBUFS, req)  # tell the driver that we want some buffers 
#print("req.count = ", req.count)

buffers  = []
data_arr = []
in_phy_arr  = []
def CreateInCma():
    for ind in range(req.count):
        #in_cma = allocate(shape=(fmt.fmt.pix.sizeimage,),dtype=np.uint8)
        in_cma = xlnk.cma_array(shape=(fmt.fmt.pix.sizeimage,), dtype=np.uint8)
        if in_cma.size ==0:
            return False
        print("size of input arr",in_cma.size)
        data_arr.append(in_cma)
        in_phy_arr.append(in_cma.physical_address)
        #cma_addr = data_arr[ind].pointer
        cma_addr = data_arr[ind].__array_interface__['data']
        print("checking  :",cma_addr)
        buffers.append(cma_addr[0])

out_phy_arr = []
out_data_arr = []
def CreateOutCma():
    for ind in range(req.count):
        #out_cma = allocate(shape=(fmt.fmt.pix.sizeimage,), dtype=np.uint8)
        out_cma = xlnk.cma_array(shape=(fmt.fmt.pix.sizeimage,), dtype=np.uint8)
        if out_cma.size == 0:
            return False
        print("size of output arr",out_cma.size)
        out_data_arr.append(out_cma)
        RX_MEM_ADDR = (out_cma.physical_address)
        out_phy_arr.append(RX_MEM_ADDR)

CreateInCma()
CreateOutCma()

for ind in range(req.count):
    # setup a buffer
    buf = v4l2_buffer()
    buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
    buf.memory = V4L2_MEMORY_USERPTR
    buf.index = ind
    buf.length = fmt.fmt.pix.sizeimage
    buf.m.userptr = buffers[ind] 
    fcntl.ioctl(vd, VIDIOC_QBUF, buf)

#for i in range(10):
#    print(data_arr[0][i])
#print(">> Start streaming")
buf_type = v4l2_buf_type(V4L2_BUF_TYPE_VIDEO_CAPTURE)
fcntl.ioctl(vd, VIDIOC_STREAMON, buf_type)
gpio_en_pin.write(0x8, 0x1)

#print(">> Capture image")
t0 = time.time()
max_t = 1
ready_to_read, ready_to_write, in_error = ([], [], [])
#print(">>> select")
while len(ready_to_read) == 0 and time.time() - t0 < max_t:
    ready_to_read, ready_to_write, in_error = select.select([vd], [], [], max_t)

count=0
start_time = datetime.now()   
for _ in range(args.frameCount):  # capture 50 frames
    buf = v4l2_buffer()
    buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE
    buf.memory = V4L2_MEMORY_USERPTR
    fcntl.ioctl(vd, VIDIOC_DQBUF, buf)  # get image from the driver queue
    temp_arr=np.reshape(data_arr[buf.index],(args.height,int(args.width/4),4))
    argb1_img=cv2.cvtColor(temp_arr,cv2.COLOR_RGBA2BGRA)
    cv2.imwrite("/run/input_image_"+str(args.width)+str(args.height)+ "_" +str(count)+".bmp",argb1_img)
    #print(inpy_phy_arr[buf.index])
    count += 1
    fcntl.ioctl(vd, VIDIOC_QBUF, buf)  # requeue the buffer
    sleep(0.020)

end_time = datetime.now()
time_diff = (end_time - start_time)
execution_time = time_diff.total_seconds() 
print("fps is = ",args.frameCount/execution_time)
for ind in range(req.count):
    out_data_arr[ind].freebuffer()
    data_arr[ind].freebuffer()
print(">> Stop streaming")
gpio_en_pin.write(0x8, 0x0)
fcntl.ioctl(vd, VIDIOC_STREAMOFF, buf_type)
