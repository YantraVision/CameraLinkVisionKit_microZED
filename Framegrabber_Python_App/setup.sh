#gpio base addr is 0x43c10000 
#on the offset 0xB0 16' frame height, 16' line width for 1st vmda  
#on the offset 0xB8 16' frame height, 16' line width for 2dt vmda  

sudo devmem2 0x43c100b0 w 0x00F00140   #programming the width and height for the vmda 
sudo devmem2 0x43c100b8 w 0x00F00140   #programming the width and height for the vmda
sudo devmem2 0x43c100c0 w 0x00	       #delay between lines 
sudo devmem2 0x43c100c8 w 0x6b38       #positions of vld bits in data
sudo devmem2 0x43c100d0 w 0x488d       #vld's available
sudo devmem2 0x43c100d8 w 0x22         #data_patterns where 00 for ff00, 11 for aa55, 22 for color pattern

sudo insmod ~/cameraLink.ko            #probing the driver for the sub devices
