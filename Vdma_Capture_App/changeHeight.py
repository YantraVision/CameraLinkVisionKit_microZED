from pynq import MMIO
import argparse
gpio_en_pin=MMIO(0x43c10000,0x1000)

parser = argparse.ArgumentParser(description='enter the inputs')
parser.add_argument('-H','--height',type=int,help='height of the image',required=True)
args = parser.parse_args()
print(args.height)
height = args.height << 16
width = 0x1000
width = 0xffff & width 
result = height | width
print(hex(result))

gpio_en_pin.write(0xe0,result)
gpio_en_pin.write(0xe8,result)
