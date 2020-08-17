#!/bin/bash
# Script is to write the resolution (Height and Width) in GPIO, which make the source to insert TLAST and SOF correctly.
#on the offset 0xB0 16' frame height, 16' line width for 1st vmda  
#on the offset 0xB8 16' frame height, 16' line width for 2dt vmda  
sudo devmem2 0x43C100B0 w $1    
sudo devmem2 0x43C100B8 w $1
sudo devmem2 0x43C100B0
sudo devmem2 0x43C100B8
