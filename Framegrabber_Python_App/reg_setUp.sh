#!/bin/bash
clm=0
while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    VALUE=`echo $1 | awk -F= '{print $2}'`
    case $PARAM in
        -h | --help)
            usage
            exit
            ;;
        -mode)
            clm=$VALUE
	    ;;
	-r)
	    res=$VALUE
            ;;
        *)
	    echo "ERROR : Unknown Parameter \"$PARAM\""
            usage
            exit 1
            ;;
    esac
    shift
done

echo "mode = $clm"

#sudo devmem2 0x43c10100 w 0x4e1e8282
sudo devmem2 0x43c10100 w 0xD623D2D2 # KEY
sudo devmem2 0x43c10118 w 0xC #tap value
if [ $clm = base ]; then
	sudo devmem2 0x43c100c8 w 0x1
elif [ $clm = dual ]; then
	sudo devmem2 0x43c100c8 w 0xD
elif [ $clm = med ]; then
	sudo devmem2 0x43c100c8 w 0x5
elif [ $clm = full ]; then
	sudo devmem2 0x43c100c8 w 0x9
fi

sudo devmem2 0x43c100e0 w $res
sudo devmem2 0x43c100e8 w $res
sudo devmem2 0x43c100d0 w 0x39F0
sudo devmem2 0x43c100d8 w 0x0
sudo devmem2 0x43c100f0 w 0x09
sudo insmod ./module/cameraLink.ko
# write DRP 0 clkwiz 43c20000
#sudo devmem2 0x43c100
sudo devmem2  0x43c20300 w 0xffff 
sudo devmem2  0x43c20304 w 0x1208 
sudo devmem2  0x43c20308 w 0x4800 
sudo devmem2  0x43c2030c w 0x1083 
sudo devmem2  0x43c20310 w 0x80   
sudo devmem2  0x43c20314 w 0x128a 
sudo devmem2  0x43c20318 w 0x0    
sudo devmem2  0x43c2031c w 0x1041 
sudo devmem2  0x43c20320 w 0xc0   
sudo devmem2  0x43c20324 w 0x1041 
sudo devmem2  0x43c20328 w 0xc0   
sudo devmem2  0x43c2032c w 0x1041 
sudo devmem2  0x43c20330 w 0x30c0 
sudo devmem2  0x43c20334 w 0x1208 
sudo devmem2  0x43c20338 w 0x30c0 
sudo devmem2  0x43c2033c w 0x1041 
sudo devmem2  0x43c20340 w 0x1208 
sudo devmem2  0x43c20344 w 0x4800 
sudo devmem2  0x43c20348 w 0x13f  
sudo devmem2  0x43c2034c w 0x7c01 
sudo devmem2  0x43c20350 w 0x7de9 
sudo devmem2  0x43c20354 w 0x800  
sudo devmem2  0x43c20358 w 0x100  
sudo devmem2  0x43c2035c w 0x3    

sudo devmem2  0x43c30300 w 0xffff
sudo devmem2  0x43c30304 w 0x1208
sudo devmem2  0x43c30308 w 0x4800
sudo devmem2  0x43c3030c w 0x1083
sudo devmem2  0x43c30310 w 0x80
sudo devmem2  0x43c30314 w 0x128a
sudo devmem2  0x43c30318 w 0x0
sudo devmem2  0x43c3031c w 0x1041
sudo devmem2  0x43c30320 w 0xc0
sudo devmem2  0x43c30324 w 0x1041
sudo devmem2  0x43c30328 w 0xc0
sudo devmem2  0x43c3032c w 0x1041
sudo devmem2  0x43c30330 w 0x30c0
sudo devmem2  0x43c30334 w 0x1208
sudo devmem2  0x43c30338 w 0x30c0
sudo devmem2  0x43c3033c w 0x1041
sudo devmem2  0x43c30340 w 0x1208
sudo devmem2  0x43c30344 w 0x4800
sudo devmem2  0x43c30348 w 0x13f
sudo devmem2  0x43c3034c w 0x7c01
sudo devmem2  0x43c30350 w 0x7de9
sudo devmem2  0x43c30354 w 0x800
sudo devmem2  0x43c30358 w 0x100
sudo devmem2  0x43c3035c w 0x3
