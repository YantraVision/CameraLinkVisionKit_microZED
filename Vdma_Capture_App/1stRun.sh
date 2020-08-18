if [ $1 = vdma0 ]; then
	echo "vdma0 will run"
	sudo python3  scripts/vdma0_capture.py --width 4096 --height 100 --mode dual 
elif [ $1 = vdma1 ]; then
	echo "vdma1 will run"
	sudo python3  scripts/vdma1_capture.py --width 4096 --height 100 --mode dual
else
	echo "please try another time with vdma0/vdma1"
fi
