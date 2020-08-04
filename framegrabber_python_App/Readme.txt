
CameraLinkVisionKit : framegrabber_python_App

	Two VDMA is used to grab frames from camerlink simultaneously. 
	All V4l2 implementations are in python. Since there is no support in setting sub-dev in V4l2 python, we have created the C libraries for V4L2 and using sub dev format setting part only from C in python.
	



################################################ Source file informations ###################################################

1. APP:
	v4l2_pythonApp_1stvdma.py - APP for 1st VDMA
	v4l2_pythonApp_0thvdma.py - APP for 0th VDMA

2. Execution scripts:
	runme.sh -  contains the run command to execute above apps.
	setup.sh - to setup the GPIO registers.
	write_width_height.sh - to set the widht and height in GPIO registers

3. Debug scripts:	
	READ_REG_VDMA_0.py - Reading 0th VDMA registers
	READ_REG_VDMA_1.py - Reading 1st VDMA registers

4. Src files:
	libframeGrabber.so - c library which included in the above app to program subdevice.
	frameGrabberWrapper.py -  Python wrapper for using C library.

################################################# Execution Flow #############################################################
		
After booting the board follow the below steps.

1) sh setup.sh this will program the registers for width,height,line delay and data pattern and probe the driver.
  By default width is 320 and height is 240,line delay is 0 and data pattern is 0x22.
  To change the data pattern you have to write 00 for ff00, 11 for aa55, 22 for color pattern.
  you can give line delay between 0-1000.

2)sudo sh runme.sh - This script will run the app for 2 VDMA access.
		 You can change the width and height values based on requirements.

	It will store the image in the /run path.

3) change widht and height for different resolution using below script and run step 2.
	sh write_width_height.sh 0xheightwidth
