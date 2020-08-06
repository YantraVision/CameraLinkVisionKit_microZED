import argparse
import time
from pynq import MMIO

uart1=MMIO(0x43c00000,0x10000)

def uart_write(uid,wr_addr,data):
   if(uid==1):
      uart1.write(wr_addr,data)
      print("addr =",hex(wr_addr)," data =",hex(data))
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

def extract_addr_value(addr_value_str):
     li = addr_value_str.strip()
     var =li.split("(")[0]
     assign=li.split("(")[1]
     var1 = var.split(".")[0]
     li = assign.strip()
     var = li.split(")")[0]
     val = var.strip()
     val1 = val.split(",")[0]
     val2 = val.split(",")[1]
     addr = (int(val1, 16))
     value = (int(val2, 16))
     return (addr, value)

def run_uart(cid,serial_cmd):
    ascii_words = open("source/"+serial_cmd,'r')
    lines = ascii_words.readlines()
    print("FCR - enable the fifo")
    uart_write(cid,0x1008,0xf)
    print("IER - enable the empty & data available interrupts")
    uart_write(cid,0x1004,0x3)
    print("------writing data to THR-------")
    for line in lines:
        addr,value = extract_addr_value(line)
        uart_write(cid,addr,value)
    print("------writing CR to THR-------")
    uart_write(cid,0x1000,0xd)
    print("-----reading RBR-------")
    uart_read(cid,0x1000)
    #print("-------reading IIR------")
    #uart_read(cid,0x1008)

parser = argparse.ArgumentParser(description='''You want to read or write? 
                                              Enter read/r or write/w''')
parser.add_argument('-O','--option',type=str,help='read or write',required=True)
args = parser.parse_args()
while True:
    if args.option == "r" or args.option == "read":
        print("you want read sot or svm or clm or ssf" )
        in_data = input("enter parameter : ")
        if in_data == "sot":
            run_uart(1, "getsot")
            break
        elif in_data == "svm":
            run_uart(1, "getsvm")
            break
        elif in_data == "ssf":
            run_uart(1, "getssf")
            break
        elif in_data == "clm":
            run_uart(1, "getclm")
            break
        else :
            print("Please Try again with correct option")
    elif args.option == "w" or  args.option == "write":
        print("you want write sot or svm or clm or ssf" )
        in_opt = input("Enter the parameter : " )
        if in_opt == "sot":
            print("What should be the sot value 40/60/80 ")
            in_data =int(input("Enter the sot : "))
            if in_data == 40:
                run_uart(1, "sot40")
                break
            elif in_data == 60:
                run_uart(1, "sot60")
                break
            elif in_data == 80:
                run_uart(1, "sot80")
                break
            else :
                print("Please Try again with correct option")
        elif in_opt == "clm":
            print("What should be the camera link mode")
            in_data = input("Choose base or medium : ")
            if in_data == "medium":
                run_uart(1, "clm14") 
                break
            elif in_data == "base":
                run_uart(1, "clm5")
                break
            else :
                print("Please Try again with correct option")
        elif in_opt == "ssf":
            print("What should be the sync frequency 3000/6000/7000/10000/17500")
            in_data = int(input("Enter the frequency : "))
            if in_data == 3000:
                run_uart(1, "ssf3000")
                break
            if in_data == 6000:
                run_uart(1, "ssf6000")
                break
            if in_data == 7000:
                run_uart(1, "ssf7000")
                break
            elif in_data == 10000:
                run_uart(1, "ssf10000")
                break
            elif in_data == 17500:
                run_uart(1, "ssf17500")
                break
            else :
                print("Please Try again with correct option")
        elif in_opt == "svm":
            print("What sould be the color pattern aa5500/aa55/00ff")
            in_data = input("Enter the color pattern : ")
            if in_data == "aa5500":
                run_uart(1, "svm1") 
                break
            elif in_data == "aa55":
                run_uart(1, "svm4")
                break
            elif in_data == "00ff":
                run_uart(1, "svm5")  
                break
            else :
                print("Please Try again with correct option")
