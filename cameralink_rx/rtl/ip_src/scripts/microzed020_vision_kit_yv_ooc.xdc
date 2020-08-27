create_clock -period 12.5 [get_ports clk_x_p]
create_clock -period 1.785 -name VirtualBitClock_X

create_clock -period 12.5 [get_ports clk_y_p]
create_clock -period 1.785 -name VirtualBitClock_Y

create_clock -period 12.5 [get_ports clk_z_p]
create_clock -period 1.785 -name VirtualBitClock_Z

set_input_delay -clock [get_clocks VirtualBitClock_X] -min -0.300 [get_ports {serial_x_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -max 0.600 [get_ports {serial_x_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -min -0.300 [get_ports {serial_x_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -max 0.600 [get_ports {serial_x_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -min -add_delay -0.300 [get_ports {serial_x_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -max -add_delay 0.600 [get_ports {serial_x_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -min -add_delay -0.300 [get_ports {serial_x_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_X] -clock_fall -max -add_delay 0.600 [get_ports {serial_x_n[*]}]


set_input_delay -clock [get_clocks VirtualBitClock_Y] -min -0.300 [get_ports {serial_y_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -max 0.600 [get_ports {serial_y_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -min -0.300 [get_ports {serial_y_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -max 0.600 [get_ports {serial_y_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -min -add_delay -0.300 [get_ports {serial_y_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -max -add_delay 0.600 [get_ports {serial_y_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -min -add_delay -0.300 [get_ports {serial_y_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Y] -clock_fall -max -add_delay 0.600 [get_ports {serial_y_n[*]}]

set_input_delay -clock [get_clocks VirtualBitClock_Z] -min -0.300 [get_ports {serial_z_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -max 0.600 [get_ports {serial_z_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -min -0.300 [get_ports {serial_z_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -max 0.600 [get_ports {serial_z_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -min -add_delay -0.300 [get_ports {serial_z_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -max -add_delay 0.600 [get_ports {serial_z_p[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -min -add_delay -0.300 [get_ports {serial_z_n[*]}]
set_input_delay -clock [get_clocks VirtualBitClock_Z] -clock_fall -max -add_delay 0.600 [get_ports {serial_z_n[*]}]
