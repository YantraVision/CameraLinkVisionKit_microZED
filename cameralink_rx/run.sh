
rm -rf ./scripts
rm -rf ./vivado*
rm -rf ./xsim*
rm -rf ./.*

rm -rf ./project/visionkit_rx_yv
rm -rf ./project/vivado*
vivado -source ./project/visionkit_rx_prj_yv_v19_1.tcl
echo DONE Creating project
   
rm -rf ./README*
