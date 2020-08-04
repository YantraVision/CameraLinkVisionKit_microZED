#Here 2 apps will run the parallel with different vdma each.
#first app will run in the background and second app will run in the forground.
#for the first app log will go in to /run/v4l2_pythonApp_1stvdma.log this file.where for the 2nd app log will print on the display.
#you can give width and height as you program on the gpio.
#you can give also different number of frame number and number of buffer 0-2.
sudo python3 v4l2_pythonApp_1stvdma.py --width 1280 --height 240 --frameCount 3 --numBuff 3 > /run/v4l2_pythonApp_1stvdma.log 2>&1 &
sudo python3 v4l2_pythonApp_0thvdma.py --width 1280 --height 240 --frameCount 3 --numBuff 3 #> /run/v4l2_pythonApp_0thvdma.log 2>&1 &
