 CameraLinkVisionKit : camera_config_app

 This App is for configure the camera via uart.
 You can configure the multiple parameters of the camera.
 All implementation in the python.

####################################### Files ##################################################
 
 All the files related to this are in the Source directory.  

###################################### lost of Parameters ##########################################
 
 By using this script you can read and write following parameter.
 
 - sot which set output throughtput.
 - svm which is a color pattern.
 - clm which means camera link mode
 - ssf which means set sync frequency
 
Note: For more information of these parameters refer the maual Tri_linear_cam_User_Manal.pdf.
####################################### Execution #############################################
 
 How to Run the code.
 To read the parameter 
 sudo python3 camera_config_uart.py --option read --read getsot/getsvm/getssf/getclm
 OR 
 sudo python3 camera_config_uart.py -O=read -R=getsot/getsvm/getssf/getclm
 To write the parameter 
 sudo python3 camera_config_uart.py --option write --write setsot40 or setsvmaa5500 or ssf3000  clm5  
 OR
 sudo python3 camera_config_uart.py -O=w -W=setsot40 or setsvmaa5500 or ssf3000  clm5  
 
Following parameter you can read or write
 
 -For set output throughput(sot) 40/60/80 Mhz.
     to write this you have to give setsot40/setsot60/setsot80.
     to read this you have to give getsot.
 -For color pattern (svm) three types of pattern.which are as following. 
  1)aa5500-ab5601-ac5702-.....
  2)aaaaaa-555555-aaaaaa-555555....
  3)000000-ffffff-000000-ffffff.....
     to write this you have to give setsvmaa5500/setsvmaa55/setsvm00ff
     to read this you have to give getsvm.
 -For camera link mode(clm) base and medium.
     to write this you have to give setclm14 for medium mode,setclm5 for base mode.
     to read this you have to give getclm.
 -For set sync frequency(ssf) 3000/6000/7000/10000/17500 
     to write this you have to give setssf3000/setssf6000/setssf7000/setssf10000/setssf17500.
     to read this you have to give getssf.
