from pynq import Overlay
from pynq import allocate
from pynq import MMIO
import sys 
import os 
from datetime import datetime
from time import sleep
MEM_MAP_RANGE = 0x1000

VDMA_BASE_ADDR       = 0x43000000
VDMA_S2MM_CR_OFF     = 0x30 
VDMA_S2MM_SR_OFF     = 0x34
VDMA_S2MM_VSIZE_OFF  = 0xA0
VDMA_S2MM_HSIZE_OFF  = 0xA4
VDMA_S2MM_FRMDLY_OFF = 0xA8
VDMA_S2MM_SA1_OFF    = 0xAC
VDMA_S2MM_SA2_OFF    = 0xB0
VDMA_S2MM_SA3_OFF    = 0xB4

mmio_VDMA = MMIO(VDMA_BASE_ADDR, MEM_MAP_RANGE)
 
txtfile = open("0thVdmaLog.txt",'w')
def Read_Data(ioctl_name,frameNum=-1):
    #os.chdir("0thVdmaLog")
    txtfile.write(ioctl_name+'\n')
    if(frameNum != -1):
        txtfile.write("framenumber = "+str(frameNum)+'\n')
    txtfile.write("data at control reg =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_CR_OFF)))+"\n")
    txtfile.write("data at status reg  =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_SR_OFF)))+"\n")
    txtfile.write("data at vsize reg   =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_VSIZE_OFF)))+"\n")
    txtfile.write("data at hsize reg   =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_HSIZE_OFF)))+"\n")
    txtfile.write("data at frame delay =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_FRMDLY_OFF)))+"\n")
    txtfile.write("data at SA1 reg     =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_SA1_OFF)))+"\n")
    txtfile.write("data at SA2 reg     =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_SA2_OFF)))+"\n")
    txtfile.write("data at SA3 reg     =  "+str(hex(mmio_VDMA.read(VDMA_S2MM_SA3_OFF)))+"\n")
    #txtfile.close()
    #os.chdir("../")
    return 1
