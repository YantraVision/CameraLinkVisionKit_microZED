import argparse
import time
import re
from pynq import MMIO

uart1=MMIO(0x43c00000,0x10000)

def uart_write(uid,wr_addr,data):
   if(uid==1):
       uart1.write(wr_addr,data)
      #print("addr =",hex(wr_addr)," data =",hex(data))
   if(uid==2):
      uart2.write(wr_addr,data)
      print("addr =",hex(wr_addr)," data =",hex(data))

def uart_read(uid,rd_addr):
   if(uid==1):
       for i in range (20):
         d=uart1.read(rd_addr)
         print("output data =", hex(d))
         time.sleep(0.3)
   if(uid==2):
      for i in range (20):
         d=uart2.read(rd_addr)
         print("output data =", hex(d))
         time.sleep(0.3)

def run_uart(cid,serial_cmd):
    print("FCR - enable the fifo")
    uart_write(cid,0x1008,0xf)
    print("IER - enable the empty & data available interrupts")
    uart_write(cid,0x1004,0x3)
    print("------writing data to THR-------")
    for i in serial_cmd:
        uart_write(cid,0x1000,int(i,16))
    print("------writing CR to THR-------")
    uart_write(cid,0x1000,0xd)
    print("-----reading RBR-------")
    uart_read(cid,0x1000)

parser = argparse.ArgumentParser(description='''Enter read/r or write/w
                                                To read choose from  ---> getsot/getsvm/getssf/getclm
                                                To write choose from ---> sot/svm/ssf/clm and give value of the parameter 
                                              ''')
parser.add_argument('-O','--option',type=str,help='read or write',required=True)
parser.add_argument('-R','--read',type=str,help='read parameter')
parser.add_argument('-W','--write',type=str,help='write parameter')

args = parser.parse_args()
com_list = []
res = []
if args.option == "r" or args.option == "read":
    for i,c in enumerate(args.read):
        com_list.append(c)
    com_list.insert(3," ");
    for ele in com_list:
        res.append(hex(ord(ele)))  
    print("The ascii list is : " , str(res))
    run_uart(1, res)
elif args.option == "w" or  args.option == "write":
    for i,c in enumerate(args.write):
        com_list.append(c)
    com_list.insert(3," ");
    print(com_list)
    for ele in com_list:
        res.append(hex(ord(ele)))  
    print("The ascii list is : " , str(res))
    run_uart(1,res);
