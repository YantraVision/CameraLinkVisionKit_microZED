import mmap
import cv2
import numpy as np
import argparse
from time import sleep
from pynq import Xlnk
from pynq import MMIO
from READ_REG_VDMA_0 import Read_Data
from set_register import set_values

frame_delay = 0xa8
vsize       = 0xa0
hsize       = 0xa4
s2m_start   = 0xac
status      = 0x34
enable      = 0xf8
fifo        = 0x108 
gpio_en_pin=MMIO(0x43c10000,0x1000)
vdma = MMIO(0x43000000,0x1000)
xlnk = Xlnk()

parser = argparse.ArgumentParser(description='enter the inputs')
parser.add_argument('-W','--width',type=int,help='width of the image',required=True)
parser.add_argument('-H','--height',type=int,help='height of the image',required=True)
parser.add_argument('-M','--mode',type=str,help='mode of the camera')
args = parser.parse_args()
print(args)

if(args.mode):
    set_values(args.mode,args.width,args.height)
width = args.width * 4 
in_cma = xlnk.cma_array(shape=(width*args.height,), dtype=np.uint8)
print('Created cma')
print("size of input arr",in_cma.size)
in_physical_addr =  in_cma.physical_address
print("the physical address is = ",in_physical_addr)

vdma.write(status,0xffffffff)    
vdma.write(0x30,0x8b)
print("cr = ",vdma.read(0x30))

vdma.write(frame_delay,width)
print("frame_delay = ",vdma.read(frame_delay))

vdma.write(vsize,args.height)
print("vsize = ",vdma.read(vsize))

vdma.write(hsize,width)
print("hsize = ",vdma.read(hsize))

vdma.write(s2m_start,in_physical_addr)
print("s2m = ",vdma.read(s2m_start))

print("vdma programming is done")
gpio_en_pin.write(fifo, 0x0)
gpio_en_pin.write(enable, 0x0)
print("enable is zero now")

Read_Data("before enable")
gpio_en_pin.write(enable, 0x1)
print("software enable is given")
tmp = 0
while (tmp == 0):
    tmp = vdma.read(0x34) & 0x1 
print("vdma is done")
temp_arr=np.reshape(in_cma,(args.height,args.width,4))
argb1_img=cv2.cvtColor(temp_arr,cv2.COLOR_RGBA2BGRA)
cv2.imwrite("/run/vdma0_image_"+str(args.width)+str(args.height)+ ".bmp",argb1_img)
print("Image is saved")
Read_Data("after done")
in_cma.freebuffer()
in_cma.close()
gpio_en_pin.write(0x108, 0x1)
gpio_en_pin.write(0xf8, 0x0)

rd = vdma.read(0x30,0x4)
rd = rd | 0x4
vdma.write(0x30, rd)
print("vdma reset",vdma.read(0x30,0x4))
print("app is done")
