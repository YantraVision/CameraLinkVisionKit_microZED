 CameraLinkVisionKit : Camera_Config_Uart_Generic

 This App is for configure the camera via uart.
 You can configure the multiple parameters of the camera using this app.
 All implementation in the python.

###################################### list of Parameters ##########################################
 
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
 sudo python3 camera_config_uart.py --option write --write sot40 or svm1 or ssf3000  clm5  
 OR
 sudo python3 camera_config_uart.py -O=w -W=sot40 or svm1 or ssf3000 or clm5  
 
 Following parameter you can read or write
 
 -For set output throughput(sot) 40/60/80 Mhz.
     to write this you have to give sot40/sot60/sot80.
     to read this you have to give getsot.

 -For color pattern (svm) three types of pattern.which are as following. 
  1)svm1 is for this pattern -> aa5500-ab5601-ac5702-.....   
  2)svm4 is for this pattern -> aaaaaa-555555....
  3)svm5 is for this pattern -> 000000-ffffff-000000-ffffff.....
  4)svm0 is for live  
     to write this you have to give svm1/svm4/svm5/svm0
     to read this you have to give getsvm.

 -For camera link mode(clm) base and medium.
     to write this you have to give clm14 for medium mode,clm5 for base mode.
     to read this you have to give getclm.

 -For set sync frequency(ssf) 3000/6000/7000/10000/17500 
     to write this you have to give ssf3000/ssf6000/ssf7000/ssf10000/ssf17500.
     to read this you have to give getssf.
