 CameraLinkVisionKit : camera_config_app

 This code is for configure the camera via uart.
 You can configure the multiple parameters of the camera.
 All implementation in the python.

####################################### Files ##################################################
 
 All the files related to this are in the source directory.  

###################################### lost of Parameters ##########################################
 
 By using this script you can read and write following parameter.
 
 sot -- which is set output throughtput.
 svm -- which is a color pattern.
 clm -- which is a camera link mode
 ssf -- which is set sync frequency


####################################### Details of the parameters ###########################################
 
 Supported parameter By this scripts:
 
 -For set output throughput(sot) 40/60/80 Mhz.
 -For color pattern (svm) three types of pattern.which are as following. 
  1)aa5500-ab5601-ac5702-.....
  2)aa55-aa55-aa55....
  3)00ff-00ff-00ff.....
 -For camera link mode(clm) base and medium.
 -For set sync frequency(ssf) 3000/6000/7000/10000/17500 

  For more information refer the maual Tri_linear_cam_User_Manal.pdf.
 
####################################### Execution #############################################
 
 How to Run the code.
 
 sudo python3 camera_config_uart.py --option read/write
 OR 
 sudo python3 camera_config_uart.py -O=read/write
