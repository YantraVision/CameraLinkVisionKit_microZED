



#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/hash_dna/DNA_i/SLR_tmp_reg[*]/C}] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/rx_reset_sync_reg[*]/PRE}]
set_false_path -from [get_pins -hier -filter {name =~ *hash_dna/DNA_i*/SLR_tmp_reg*/C}] -to [get_pins -hier -filter {name =~ *dser_mmcm_inst*/rx_reset_sync_reg*/PRE}]


#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_GPIO/YV_GPIO_s_axi_U/int_out*_V_reg[*]/C}] -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/rx_adap/cl_sync_capture_X/mem_line/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem*/RAM*/WE]
set_false_path -from [get_pins -hier -filter {name =~ *YV_GPIO_s_axi_U*/int_out*_V_reg*/C}] -to [get_pins -hier -filter {name =~ *cl_sync_capture_*/mem_line/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem*/RAM*/WE}]


#set_false_path -through [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_GPIO/YV_GPIO_s_axi_U/int_out*_V_reg[*]*/C}]
set_false_path -through [get_pins -hier -filter {name =~ *YV_GPIO*/YV_GPIO_s_axi_U/int_out*_V_reg[*]*/C}] 

#set_false_path -from [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/proc_sys_reset_0/U0/FDRE_inst/C] -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr_m/RST]
set_false_path -from [get_pins -hier -filter {name =~ *proc_sys_reset_0*/U0/FDRE_inst/C}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr_m/RST}]

#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/hash_dna/DNA_i/SLR_tmp_reg[*]/C}] -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/rx_ready_reg_inv/D]
set_false_path -from [get_pins -hier -filter {name =~ *hash_dna*/DNA_i/SLR_tmp_reg[*]/C}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/rx_ready_reg/D}]

#set_false_path -from [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/proc_sys_reset_0/U0/FDRE_inst/C] -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/iserdes_ddr_clk/RST]
set_false_path -from [get_pins -hier -filter {name =~ *proc_sys_reset_0*/U0/FDRE_inst/C}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/iserdes_ddr_clk/RST}]

#set_false_path -through [get_pins {CLRX_wrapper_0/proc_sys_reset_0/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C}] -to [all_registers]
set_false_path -through [get_pins -hier -filter {name =~ *proc_sys_reset_0*/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C}] -to [all_registers]

set_false_path -from [get_ports {serial_*_*[*]}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr*/DDLY}]

#set_false_path -from [get_ports {serial_x_n[*]}] -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr*/DDLY]
#set_false_path -from [get_ports {serial_x_p[*]}]  -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr*/DDLY]
#set_false_path -from [get_ports {serial_y_n[*]}] -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr*/DDLY]
#set_false_path -from [get_ports {serial_y_p[*]}]  -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr*/DDLY]
#set_false_path -from [get_ports {serial_z_n[*]}] -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr*/DDLY]
#set_false_path -from [get_ports {serial_z_p[*]}]  -to [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/iserdes_ddr*/DDLY]

#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/genblk1[*].mem/DP/CLK}] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/px_rd_last_reg[*]/D}]
set_false_path -from [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/genblk1[*].mem/DP/CLK}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/px_rd_last_reg[*]/D}]

#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/genblk1[*].mem/DP/CLK}] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/px_rd_last_reg[*]/D}]
set_false_path -from [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/deserializer_inst/deserializer_1to7_inst_*/genblk1[*].mem/DP/CLK}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/deserializer_inst/deserializer_1to7_inst_*/px_rd_last_reg*/D}]

set_false_path -from [get_ports clk_*_p] -to [get_pins -hier -filter {name =~ *iserdes_*/DDLY}]


#set_false_path -from [get_ports clk_x_p] -to [get_pins -hier -filter {name =~ *iserdes_*/DDLY}]
#set_false_path -from [get_ports clk_y_p] -to [get_pins -hier -filter {name =~ *iserdes_*/DDLY}]
#set_false_path -from [get_ports clk_z_p] -to [get_pins -hier -filter {name =~ *iserdes_*/DDLY}]

#set_false_path -through [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_GPIO/YV_GPIO_s_axi_U/int_in*_V_reg[*]/D}]
set_false_path -through [get_pins -hier -filter {name =~ *YV_GPIO*/YV_GPIO_s_axi_U/int_in*_V_reg[*]/D}]

#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/genblk1[*].mem/DP/CLK}] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/deserializer_inst/deserializer_1to7_inst_*/px_data_reg[*]/D}]
set_false_path -from [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/deserializer_inst/deserializer_1to7_inst_*/genblk1*.mem/DP/CLK}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/deserializer_inst/deserializer_1to7_inst_*/px_data_reg*/D}]

#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/genblk1[*].mem/DP/CLK}] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/px_data_reg[*]/D}]
set_false_path -from [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/genblk1*.mem/DP/CLK}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/px_data_reg*/D}]

#set_false_path -through [get_pins {CLRX_wrapper_0/system_ila*/inst/ila_lib/inst/PROBE_PIPE.shift_probes_reg[*][*]/D}]
#set_false_path -through [get_pins -hier -filter {name =~ *}] -to [get_pins -hier -filter {name =~ *}]

#set_false_path -from [get_pins Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/rx_ready_reg_inv/C] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/px_rx_ready_sync_reg[*]/CLR}]
set_false_path -from [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/rx_ready_reg/C}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/px_rx_ready_sync_reg*/CLR}]

#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/rx_reset_sync_reg[*]/C}] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/px_reset_sync_reg[*]/PRE}]
set_false_path -from [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/rx_reset_sync_reg*/C}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/px_reset_sync_reg*/PRE}]

#set_false_path -from [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/clk_tap_reg[*]/C}] -to [get_pins {Vision_KIT_i/CLRX_wrapper_0/inst/YV_TOP/D_Top*/dser_mmcm_inst/idelay_cs/CNTVALUEIN[*]}]
set_false_path -from [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/clk_tap_reg*/C}] -to [get_pins -hier -filter {name =~ *YV_TOP*/D_Top*/dser_mmcm_inst/idelay_cs/CNTVALUEIN*}]



