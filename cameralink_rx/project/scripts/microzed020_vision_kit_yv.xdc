


##------------------------------------------------------------------------------
##------------------------------------------------------------------------------
##! @file    microzed_bcon_carrier.xdc
##!
##! @brief   Constraint file
##!
##! @author  Lutz Koschorreck
##!
##! @date    15.12.2016
##!
##! @copyright (c) 2016-2018, Basler AG
##!
##! @license BSD 3-Clause License
##!
##! @details Constrains for the "BCON for LVDS petalinux" project
##


##-----------------------------------------------------------------------------
#CLV2 port 0

#--- CLV2 ---

#set_property IOSTANDARD LVDS_25 [get_ports {X[3]}]
#set_property IOSTANDARD LVDS_25 [get_ports {Xn[3]}]
#set_property IOSTANDARD LVDS_25 [get_ports {X[2]}]
#set_property IOSTANDARD LVDS_25 [get_ports {Xn[2]}]
#set_property IOSTANDARD LVDS_25 [get_ports {X[1]}]
#set_property IOSTANDARD LVDS_25 [get_ports {Xn[1]}]
#set_property IOSTANDARD LVDS_25 [get_ports {X[0]}]
#set_property IOSTANDARD LVDS_25 [get_ports {Xn[0]}]

set_property PACKAGE_PIN M19 [get_ports {X[0]}]
set_property PACKAGE_PIN K19 [get_ports {X[1]}]
set_property PACKAGE_PIN K17 [get_ports {X[2]}]
set_property PACKAGE_PIN F19 [get_ports {X[3]}]
set_property PACKAGE_PIN J18 [get_ports XCLK_clk_p]

set_property PACKAGE_PIN V6 [get_ports {Y[0]}]
set_property PACKAGE_PIN V11 [get_ports {Y[1]}]
set_property PACKAGE_PIN Y12 [get_ports {Y[2]}]
set_property PACKAGE_PIN T5 [get_ports {Y[3]}]
set_property PACKAGE_PIN U7 [get_ports YCLK_clk_p]

set_property PACKAGE_PIN N15 [get_ports {Z[0]}]
set_property PACKAGE_PIN M14 [get_ports {Z[1]}]
set_property PACKAGE_PIN H15 [get_ports {Z[2]}]    
set_property PACKAGE_PIN H16 [get_ports {Z[3]}]    
set_property PACKAGE_PIN L16 [get_ports ZCLK_clk_p]

set_property PACKAGE_PIN G19 [get_ports SerTC_p_0]
set_property PACKAGE_PIN L14 [get_ports SerTFG_p_0]
#--- CLV2 ---



#--- ALPHA DATA ---
#set_property PACKAGE_PIN P14 [get_ports {X[0]}]
#set_property PACKAGE_PIN Y16 [get_ports {X[1]}]
#set_property PACKAGE_PIN W14 [get_ports {X[2]}]
#set_property PACKAGE_PIN T16 [get_ports {X[3]}]
#set_property PACKAGE_PIN N18 [get_ports XCLK_clk_p]
#
#set_property PACKAGE_PIN V15 [get_ports {Y[0]}]
#set_property PACKAGE_PIN U14 [get_ports {Y[1]}]
#set_property PACKAGE_PIN T20 [get_ports {Y[2]}]
#set_property PACKAGE_PIN V20 [get_ports {Y[3]}]
#set_property PACKAGE_PIN N20 [get_ports YCLK_clk_p]
#
#set_property PACKAGE_PIN Y18 [get_ports {Z[0]}]
#set_property PACKAGE_PIN V16 [get_ports {Z[1]}]
#set_property PACKAGE_PIN R16 [get_ports {Z[2]}]    
#set_property PACKAGE_PIN T17 [get_ports {Z[3]}]    
#set_property PACKAGE_PIN H16 [get_ports ZCLK_clk_p]
#set_property PACKAGE_PIN W18 [get_ports SerTC_p_0]
#set_property PACKAGE_PIN V17 [get_ports SerTFG_p_0]
#--- ALPHA DATA ---




set_property DIFF_TERM TRUE [get_ports {X[0]}]
set_property DIFF_TERM TRUE [get_ports {Xn[0]}]
set_property DIFF_TERM TRUE [get_ports {X[1]}]
set_property DIFF_TERM TRUE [get_ports {Xn[1]}]
set_property DIFF_TERM TRUE [get_ports {X[2]}]
set_property DIFF_TERM TRUE [get_ports {Xn[2]}]
set_property DIFF_TERM TRUE [get_ports {X[3]}]
set_property DIFF_TERM TRUE [get_ports {Xn[3]}]

set_property IOSTANDARD LVDS_25 [get_ports XCLK_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports XCLK_clk_n]
set_property DIFF_TERM TRUE [get_ports XCLK_clk_p]
set_property DIFF_TERM TRUE [get_ports XCLK_clk_n]

set_property IOSTANDARD LVDS_25 [get_ports SerTC_p_0]
set_property IOSTANDARD LVDS_25 [get_ports SerTC_n_0]
set_property DIFF_TERM TRUE [get_ports SerTC_p_0]
set_property DIFF_TERM TRUE [get_ports SerTC_n_0]

set_property IOSTANDARD LVDS_25 [get_ports SerTFG_p_0]
set_property IOSTANDARD LVDS_25 [get_ports SerTFG_n_0]
set_property DIFF_TERM TRUE [get_ports SerTFG_p_0]
set_property DIFF_TERM TRUE [get_ports SerTFG_n_0]

#CLV2 port 1
set_property IOSTANDARD LVDS_25 [get_ports {Y[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {Yn[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {Y[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {Yn[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {Y[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {Yn[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {Y[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {Yn[0]}]



set_property DIFF_TERM TRUE [get_ports {Y[0]}]
set_property DIFF_TERM TRUE [get_ports {Yn[0]}]
set_property DIFF_TERM TRUE [get_ports {Y[1]}]
set_property DIFF_TERM TRUE [get_ports {Yn[1]}]
set_property DIFF_TERM TRUE [get_ports {Y[2]}]
set_property DIFF_TERM TRUE [get_ports {Yn[2]}]
set_property DIFF_TERM TRUE [get_ports {Y[3]}]
set_property DIFF_TERM TRUE [get_ports {Yn[3]}]

set_property IOSTANDARD LVDS_25 [get_ports YCLK_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports YCLK_clk_n]
set_property DIFF_TERM TRUE [get_ports YCLK_clk_p]
set_property DIFF_TERM TRUE [get_ports YCLK_clk_n]

#set_property IOSTANDARD LVDS_25 [get_ports SerTC_p_1]
#set_property IOSTANDARD LVDS_25 [get_ports SerTC_n_1]
#set_property PACKAGE_PIN G17 [get_ports SerTC_p_1]
#set_property DIFF_TERM TRUE [get_ports SerTC_p_1]
#set_property DIFF_TERM TRUE [get_ports SerTC_n_1]

#set_property IOSTANDARD LVDS_25 [get_ports SerTFG_p_1]
#set_property IOSTANDARD LVDS_25 [get_ports SerTFG_n_1]
#set_property PACKAGE_PIN N15 [get_ports SerTFG_p_1]
#set_property DIFF_TERM TRUE [get_ports SerTFG_p_1]
#set_property DIFF_TERM TRUE [get_ports SerTFG_n_1]

#port 2

set_property IOSTANDARD LVDS_25 [get_ports {Z[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {Zn[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {Z[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {Zn[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {Z[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {Zn[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {Z[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {Zn[0]}]



set_property DIFF_TERM TRUE [get_ports {Z[0]}]
set_property DIFF_TERM TRUE [get_ports {Zn[0]}]
set_property DIFF_TERM TRUE [get_ports {Z[1]}]
set_property DIFF_TERM TRUE [get_ports {Zn[1]}]
set_property DIFF_TERM TRUE [get_ports {Z[2]}]
set_property DIFF_TERM TRUE [get_ports {Zn[2]}]
set_property DIFF_TERM TRUE [get_ports {Z[3]}]
set_property DIFF_TERM TRUE [get_ports {Zn[3]}]

set_property IOSTANDARD LVDS_25 [get_ports ZCLK_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports ZCLK_clk_n]
set_property DIFF_TERM TRUE [get_ports ZCLK_clk_p]
set_property DIFF_TERM TRUE [get_ports ZCLK_clk_n]


create_clock -period 12.5 XCLK_clk_p
create_clock -period 1.785 -name VirtualBitClock_X

create_clock -period 12.5 YCLK_clk_p
create_clock -period 1.785 -name VirtualBitClock_Y

create_clock -period 12.5 ZCLK_clk_p
create_clock -period 1.785 -name VirtualBitClock_Z

set_input_delay -clock [get_clocks VirtualBitClock_X] -min -0.300 [get_ports {X[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -max 0.600 [get_ports {X[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -min -0.300 [get_ports {Xn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -max 0.600 [get_ports {Xn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -min -add_delay -0.300 [get_ports {X[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -max -add_delay 0.600 [get_ports {X[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -min -add_delay -0.300 [get_ports {Xn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -max -add_delay 0.600 [get_ports {Xn[*]}]


set_input_delay -clock [get_clocks VirtualBitClock_Y] -min -0.300 [get_ports {Y[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -max 0.600 [get_ports {Y[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -min -0.300 [get_ports {Yn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -max 0.600 [get_ports {Yn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -min -add_delay -0.300 [get_ports {Y[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -max -add_delay 0.600 [get_ports {Y[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -min -add_delay -0.300 [get_ports {Yn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -max -add_delay 0.600 [get_ports {Yn[*]}]

set_input_delay -clock [get_clocks VirtualBitClock_Z] -min -0.300 [get_ports {Z[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -max 0.600 [get_ports {Z[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -min -0.300 [get_ports {Zn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -max 0.600 [get_ports {Zn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -min -add_delay -0.300 [get_ports {Z[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -max -add_delay 0.600 [get_ports {Z[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -min -add_delay -0.300 [get_ports {Zn[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -max -add_delay 0.600 [get_ports {Zn[*]}]

