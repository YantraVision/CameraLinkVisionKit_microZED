CameraLinkVisionKit : vdma_Capture_App
	Two VDMA is used to grab frames from camerlink simultaneously. 
	All implementations are in python.

################################################ Source file informations ###################################################

1. APP:
	vdma1_capture.py - APP for 1st VDMA
	vdma0_capture.py - APP for 0th VDMA	
	set_register.py  - APP for programming the registers	

2. Debug scripts:	
	READ_REG_VDMA_0.py - Reading 0th VDMA registers
	READ_REG_VDMA_1.py - Reading 1st VDMA registers

3. Exection scripts:
        1stRun.sh       - start vdma capture
        multipleRun.sh  - start vdma capture
	changeHeight.py - change the height of the image
         
################################################# Execution Flow #############################################################
   
   After the boot run vdma 1st time with the following command.
   -sh 1stRun.sh vmda0/vdma1 
    Above command will run the specified vdma and capture the image and saves image in the /run ath of the board.
   
   After running first time use the following command to run multiple times.
   -sh multipleRun.sh vdma0/vdma1
   This will also capture and saves the image in the /run path.
   
   To change the height of the image you can use the following command.  
   -sudo python3 changeHeight.py --height 100-1024
