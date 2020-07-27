run sh setup.sh
By default width is 320 and height is 240
sudo python3 v4l2_pythonApp.py --width width*4  --height height  --frameCount numberofframes  --numBuff 1/2/3
OR
sudo python3 v4l2_pythonApp.py -W=width*4 -H=height -F=numberofframes -B=1/2/3

output image will be in the /run path.

if need to change widht and height than
sh write_width_height.sh 0xheightwidth
