################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk_idelay_ref -period 5 [get_ports clk_idelay_ref]
create_clock -name clk_x_n -period 10 [get_ports clk_x_n]
create_clock -name clk_x_p -period 10 [get_ports clk_x_p]
create_clock -name clk_y_n -period 10 [get_ports clk_y_n]
create_clock -name clk_y_p -period 10 [get_ports clk_y_p]
create_clock -name clk_z_n -period 10 [get_ports clk_z_n]
create_clock -name clk_z_p -period 10 [get_ports clk_z_p]
create_clock -name div2_clk_x -period 10 [get_ports div2_clk_x]
create_clock -name div2_clk_y -period 10 [get_ports div2_clk_y]
create_clock -name div2_clk_z -period 10 [get_ports div2_clk_z]
create_clock -name div8_clk_x -period 10 [get_ports div8_clk_x]
create_clock -name div8_clk_y -period 10 [get_ports div8_clk_y]
create_clock -name div8_clk_z -period 10 [get_ports div8_clk_z]
create_clock -name px_clk_x -period 10 [get_ports px_clk_x]
create_clock -name px_clk_y -period 10 [get_ports px_clk_y]
create_clock -name px_clk_z -period 10 [get_ports px_clk_z]
create_clock -name sys_clk -period 10 [get_ports sys_clk]

################################################################################