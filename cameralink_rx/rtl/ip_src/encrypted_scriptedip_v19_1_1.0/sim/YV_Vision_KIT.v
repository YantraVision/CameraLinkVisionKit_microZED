//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sat Aug 22 14:43:07 2020
//Host        : z600.localdomain running 64-bit CentOS Linux release 7.5.1804 (Core)
//Command     : generate_target YV_Vision_KIT.bd
//Design      : YV_Vision_KIT
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "YV_Vision_KIT,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=YV_Vision_KIT,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "YV_Vision_KIT.hwdef" *) 
module YV_Vision_KIT
   (Ax_0,
    Bx_0,
    Cx_0,
    DATA_OUT0,
    DATA_OUT1_0,
    DATA_OUT2_0,
    Dy_0,
    EOL_dual_y,
    EOL_x,
    Ey_0,
    Fy_0,
    Gz_0,
    Hz_0,
    Iz_0,
    LFDSx_0,
    LFDSy_0,
    LFDSz_0,
    LOCKED_x,
    LOCKED_y,
    LOCKED_z,
    SOF_dual_y,
    SOF_x,
    S_AXI_GPIO_araddr,
    S_AXI_GPIO_arready,
    S_AXI_GPIO_arvalid,
    S_AXI_GPIO_awaddr,
    S_AXI_GPIO_awready,
    S_AXI_GPIO_awvalid,
    S_AXI_GPIO_bready,
    S_AXI_GPIO_bresp,
    S_AXI_GPIO_bvalid,
    S_AXI_GPIO_rdata,
    S_AXI_GPIO_rready,
    S_AXI_GPIO_rresp,
    S_AXI_GPIO_rvalid,
    S_AXI_GPIO_wdata,
    S_AXI_GPIO_wready,
    S_AXI_GPIO_wstrb,
    S_AXI_GPIO_wvalid,
    clk_idelay_ref,
    clk_x_n,
    clk_x_p,
    clk_y_n,
    clk_y_p,
    clk_z_n,
    clk_z_p,
    data_validx,
    data_validy_0,
    div2_clk_x,
    div2_clk_y,
    div2_clk_z,
    div8_clk_x,
    div8_clk_y,
    div8_clk_z,
    dna_high_0,
    dna_low_0,
    en_soc_0,
    ext_reset_n,
    fifo_rst_0,
    px_clk_x,
    px_clk_y,
    px_clk_z,
    serial_x_n,
    serial_x_p,
    serial_y_n,
    serial_y_p,
    serial_z_n,
    serial_z_p,
    singel_end_clk_x,
    singel_end_clk_y,
    singel_end_clk_z,
    strb_ABC_val_x,
    strb_DEF_val_y,
    strb_GHI_val_z,
    sys_clk,
    x_lcnt_0,
    x_pcnt_0,
    y_lcnt_0,
    y_pcnt_0);
  output [7:0]Ax_0;
  output [7:0]Bx_0;
  output [7:0]Cx_0;
  output [27:0]DATA_OUT0;
  output [27:0]DATA_OUT1_0;
  output [27:0]DATA_OUT2_0;
  output [7:0]Dy_0;
  output EOL_dual_y;
  output EOL_x;
  output [7:0]Ey_0;
  output [7:0]Fy_0;
  output [7:0]Gz_0;
  output [7:0]Hz_0;
  output [7:0]Iz_0;
  output [3:0]LFDSx_0;
  output [3:0]LFDSy_0;
  output [3:0]LFDSz_0;
  input LOCKED_x;
  input LOCKED_y;
  input LOCKED_z;
  output SOF_dual_y;
  output SOF_x;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_GPIO, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]S_AXI_GPIO_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO ARREADY" *) output S_AXI_GPIO_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO ARVALID" *) input S_AXI_GPIO_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO AWADDR" *) input [8:0]S_AXI_GPIO_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO AWREADY" *) output S_AXI_GPIO_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO AWVALID" *) input S_AXI_GPIO_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO BREADY" *) input S_AXI_GPIO_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO BRESP" *) output [1:0]S_AXI_GPIO_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO BVALID" *) output S_AXI_GPIO_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO RDATA" *) output [31:0]S_AXI_GPIO_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO RREADY" *) input S_AXI_GPIO_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO RRESP" *) output [1:0]S_AXI_GPIO_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO RVALID" *) output S_AXI_GPIO_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO WDATA" *) input [31:0]S_AXI_GPIO_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO WREADY" *) output S_AXI_GPIO_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO WSTRB" *) input [3:0]S_AXI_GPIO_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_GPIO WVALID" *) input S_AXI_GPIO_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IDELAY_REF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IDELAY_REF, CLK_DOMAIN YV_Vision_KIT_clk_idelay_ref, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.000" *) input clk_idelay_ref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_X_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_X_N, CLK_DOMAIN YV_Vision_KIT_clk_x_n, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_x_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_X_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_X_P, CLK_DOMAIN YV_Vision_KIT_clk_x_p, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_x_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_Y_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_Y_N, CLK_DOMAIN YV_Vision_KIT_clk_y_n, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_y_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_Y_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_Y_P, CLK_DOMAIN YV_Vision_KIT_clk_y_p, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_y_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_Z_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_Z_N, CLK_DOMAIN YV_Vision_KIT_clk_z_n, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_z_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_Z_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_Z_P, CLK_DOMAIN YV_Vision_KIT_clk_z_p, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_z_p;
  output data_validx;
  output data_validy_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DIV2_CLK_X CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DIV2_CLK_X, CLK_DOMAIN YV_Vision_KIT_div2_clk_x, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input div2_clk_x;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DIV2_CLK_Y CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DIV2_CLK_Y, CLK_DOMAIN YV_Vision_KIT_div2_clk_y, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input div2_clk_y;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DIV2_CLK_Z CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DIV2_CLK_Z, CLK_DOMAIN YV_Vision_KIT_div2_clk_z, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input div2_clk_z;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DIV8_CLK_X CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DIV8_CLK_X, CLK_DOMAIN YV_Vision_KIT_div8_clk_x, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input div8_clk_x;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DIV8_CLK_Y CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DIV8_CLK_Y, CLK_DOMAIN YV_Vision_KIT_div8_clk_y, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input div8_clk_y;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DIV8_CLK_Z CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DIV8_CLK_Z, CLK_DOMAIN YV_Vision_KIT_div8_clk_z, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input div8_clk_z;
  output [31:0]dna_high_0;
  output [31:0]dna_low_0;
  output en_soc_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.EXT_RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.EXT_RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ext_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.FIFO_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.FIFO_RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [31:0]fifo_rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PX_CLK_X CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PX_CLK_X, CLK_DOMAIN YV_Vision_KIT_px_clk_x, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input px_clk_x;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PX_CLK_Y CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PX_CLK_Y, CLK_DOMAIN YV_Vision_KIT_px_clk_y, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input px_clk_y;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PX_CLK_Z CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PX_CLK_Z, CLK_DOMAIN YV_Vision_KIT_px_clk_z, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input px_clk_z;
  input [3:0]serial_x_n;
  input [3:0]serial_x_p;
  input [3:0]serial_y_n;
  input [3:0]serial_y_p;
  input [3:0]serial_z_n;
  input [3:0]serial_z_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SINGEL_END_CLK_X CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SINGEL_END_CLK_X, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output singel_end_clk_x;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SINGEL_END_CLK_Y CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SINGEL_END_CLK_Y, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output singel_end_clk_y;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SINGEL_END_CLK_Z CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SINGEL_END_CLK_Z, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output singel_end_clk_z;
  output strb_ABC_val_x;
  output strb_DEF_val_y;
  output strb_GHI_val_z;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN YV_Vision_KIT_sys_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clk;
  output [15:0]x_lcnt_0;
  output [15:0]x_pcnt_0;
  output [15:0]y_lcnt_0;
  output [15:0]y_pcnt_0;

  wire [7:0]CLRX_wrapper_0_Ax;
  wire [7:0]CLRX_wrapper_0_Bx;
  wire [7:0]CLRX_wrapper_0_Cx;
  wire [27:0]CLRX_wrapper_0_DATA_OUT0;
  wire [27:0]CLRX_wrapper_0_DATA_OUT1;
  wire [27:0]CLRX_wrapper_0_DATA_OUT2;
  wire [7:0]CLRX_wrapper_0_Dy;
  wire CLRX_wrapper_0_EOL_dual_y;
  wire CLRX_wrapper_0_EOL_x;
  wire [7:0]CLRX_wrapper_0_Ey;
  wire [7:0]CLRX_wrapper_0_Fy;
  wire [7:0]CLRX_wrapper_0_Gz;
  wire [7:0]CLRX_wrapper_0_Hz;
  wire [7:0]CLRX_wrapper_0_Iz;
  wire [3:0]CLRX_wrapper_0_LFDSx;
  wire [3:0]CLRX_wrapper_0_LFDSy;
  wire [3:0]CLRX_wrapper_0_LFDSz;
  wire CLRX_wrapper_0_SOF_dual_y;
  wire CLRX_wrapper_0_SOF_x;
  wire CLRX_wrapper_0_clk_x;
  wire CLRX_wrapper_0_clk_y;
  wire CLRX_wrapper_0_clk_z;
  wire CLRX_wrapper_0_data_validx;
  wire CLRX_wrapper_0_data_validy;
  wire [31:0]CLRX_wrapper_0_dna_high;
  wire [31:0]CLRX_wrapper_0_dna_low;
  wire CLRX_wrapper_0_en_soc;
  wire [31:0]CLRX_wrapper_0_fifo_rst;
  wire CLRX_wrapper_0_single_end_clk_x;
  wire CLRX_wrapper_0_single_end_clk_y;
  wire CLRX_wrapper_0_single_end_clk_z;
  wire CLRX_wrapper_0_strb_ABC_val_x;
  wire CLRX_wrapper_0_strb_DEF_val_y;
  wire CLRX_wrapper_0_strb_GHI_val_z;
  wire [15:0]CLRX_wrapper_0_x_lcnt;
  wire [15:0]CLRX_wrapper_0_x_pcnt;
  wire [15:0]CLRX_wrapper_0_y_lcnt;
  wire [15:0]CLRX_wrapper_0_y_pcnt;
  wire LOCKED_x_1;
  wire LOCKED_y_1;
  wire LOCKED_z_1;
  wire [8:0]S_AXI_GPIO_1_ARADDR;
  wire S_AXI_GPIO_1_ARREADY;
  wire S_AXI_GPIO_1_ARVALID;
  wire [8:0]S_AXI_GPIO_1_AWADDR;
  wire S_AXI_GPIO_1_AWREADY;
  wire S_AXI_GPIO_1_AWVALID;
  wire S_AXI_GPIO_1_BREADY;
  wire [1:0]S_AXI_GPIO_1_BRESP;
  wire S_AXI_GPIO_1_BVALID;
  wire [31:0]S_AXI_GPIO_1_RDATA;
  wire S_AXI_GPIO_1_RREADY;
  wire [1:0]S_AXI_GPIO_1_RRESP;
  wire S_AXI_GPIO_1_RVALID;
  wire [31:0]S_AXI_GPIO_1_WDATA;
  wire S_AXI_GPIO_1_WREADY;
  wire [3:0]S_AXI_GPIO_1_WSTRB;
  wire S_AXI_GPIO_1_WVALID;
  wire clk_idelay_ref_1;
  wire clk_x_n_1;
  wire clk_x_p_1;
  wire clk_y_n_1;
  wire clk_y_p_1;
  wire clk_z_n_1;
  wire clk_z_p_1;
  wire div2_clk_x_1;
  wire div2_clk_y_1;
  wire div2_clk_z_1;
  wire div8_clk_x_1;
  wire div8_clk_y_1;
  wire div8_clk_z_1;
  wire ext_reset_in_1;
  wire proc_sys_reset_0_mb_reset;
  wire proc_sys_reset_0_mb_reset_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire proc_sys_reset_X_mb_reset;
  wire proc_sys_reset_Y_mb_reset;
  wire proc_sys_reset_Z_mb_reset;
  wire px_clk_x_1;
  wire px_clk_y_1;
  wire px_clk_z_1;
  wire [0:0]reset_flush_0_aux_reset_out;
  wire [3:0]serial_x_n_1;
  wire [3:0]serial_x_p_1;
  wire [3:0]serial_y_n_1;
  wire [3:0]serial_y_p_1;
  wire [3:0]serial_z_n_1;
  wire [3:0]serial_z_p_1;
  wire sys_clk_1;

  assign Ax_0[7:0] = CLRX_wrapper_0_Ax;
  assign Bx_0[7:0] = CLRX_wrapper_0_Bx;
  assign Cx_0[7:0] = CLRX_wrapper_0_Cx;
  assign DATA_OUT0[27:0] = CLRX_wrapper_0_DATA_OUT0;
  assign DATA_OUT1_0[27:0] = CLRX_wrapper_0_DATA_OUT1;
  assign DATA_OUT2_0[27:0] = CLRX_wrapper_0_DATA_OUT2;
  assign Dy_0[7:0] = CLRX_wrapper_0_Dy;
  assign EOL_dual_y = CLRX_wrapper_0_EOL_dual_y;
  assign EOL_x = CLRX_wrapper_0_EOL_x;
  assign Ey_0[7:0] = CLRX_wrapper_0_Ey;
  assign Fy_0[7:0] = CLRX_wrapper_0_Fy;
  assign Gz_0[7:0] = CLRX_wrapper_0_Gz;
  assign Hz_0[7:0] = CLRX_wrapper_0_Hz;
  assign Iz_0[7:0] = CLRX_wrapper_0_Iz;
  assign LFDSx_0[3:0] = CLRX_wrapper_0_LFDSx;
  assign LFDSy_0[3:0] = CLRX_wrapper_0_LFDSy;
  assign LFDSz_0[3:0] = CLRX_wrapper_0_LFDSz;
  assign LOCKED_x_1 = LOCKED_x;
  assign LOCKED_y_1 = LOCKED_y;
  assign LOCKED_z_1 = LOCKED_z;
  assign SOF_dual_y = CLRX_wrapper_0_SOF_dual_y;
  assign SOF_x = CLRX_wrapper_0_SOF_x;
  assign S_AXI_GPIO_1_ARADDR = S_AXI_GPIO_araddr[8:0];
  assign S_AXI_GPIO_1_ARVALID = S_AXI_GPIO_arvalid;
  assign S_AXI_GPIO_1_AWADDR = S_AXI_GPIO_awaddr[8:0];
  assign S_AXI_GPIO_1_AWVALID = S_AXI_GPIO_awvalid;
  assign S_AXI_GPIO_1_BREADY = S_AXI_GPIO_bready;
  assign S_AXI_GPIO_1_RREADY = S_AXI_GPIO_rready;
  assign S_AXI_GPIO_1_WDATA = S_AXI_GPIO_wdata[31:0];
  assign S_AXI_GPIO_1_WSTRB = S_AXI_GPIO_wstrb[3:0];
  assign S_AXI_GPIO_1_WVALID = S_AXI_GPIO_wvalid;
  assign S_AXI_GPIO_arready = S_AXI_GPIO_1_ARREADY;
  assign S_AXI_GPIO_awready = S_AXI_GPIO_1_AWREADY;
  assign S_AXI_GPIO_bresp[1:0] = S_AXI_GPIO_1_BRESP;
  assign S_AXI_GPIO_bvalid = S_AXI_GPIO_1_BVALID;
  assign S_AXI_GPIO_rdata[31:0] = S_AXI_GPIO_1_RDATA;
  assign S_AXI_GPIO_rresp[1:0] = S_AXI_GPIO_1_RRESP;
  assign S_AXI_GPIO_rvalid = S_AXI_GPIO_1_RVALID;
  assign S_AXI_GPIO_wready = S_AXI_GPIO_1_WREADY;
  assign clk_idelay_ref_1 = clk_idelay_ref;
  assign clk_x_n_1 = clk_x_n;
  assign clk_x_p_1 = clk_x_p;
  assign clk_y_n_1 = clk_y_n;
  assign clk_y_p_1 = clk_y_p;
  assign clk_z_n_1 = clk_z_n;
  assign clk_z_p_1 = clk_z_p;
  assign data_validx = CLRX_wrapper_0_data_validx;
  assign data_validy_0 = CLRX_wrapper_0_data_validy;
  assign div2_clk_x_1 = div2_clk_x;
  assign div2_clk_y_1 = div2_clk_y;
  assign div2_clk_z_1 = div2_clk_z;
  assign div8_clk_x_1 = div8_clk_x;
  assign div8_clk_y_1 = div8_clk_y;
  assign div8_clk_z_1 = div8_clk_z;
  assign dna_high_0[31:0] = CLRX_wrapper_0_dna_high;
  assign dna_low_0[31:0] = CLRX_wrapper_0_dna_low;
  assign en_soc_0 = CLRX_wrapper_0_en_soc;
  assign ext_reset_in_1 = ext_reset_n;
  assign fifo_rst_0[31:0] = CLRX_wrapper_0_fifo_rst;
  assign px_clk_x_1 = px_clk_x;
  assign px_clk_y_1 = px_clk_y;
  assign px_clk_z_1 = px_clk_z;
  assign serial_x_n_1 = serial_x_n[3:0];
  assign serial_x_p_1 = serial_x_p[3:0];
  assign serial_y_n_1 = serial_y_n[3:0];
  assign serial_y_p_1 = serial_y_p[3:0];
  assign serial_z_n_1 = serial_z_n[3:0];
  assign serial_z_p_1 = serial_z_p[3:0];
  assign singel_end_clk_x = CLRX_wrapper_0_single_end_clk_x;
  assign singel_end_clk_y = CLRX_wrapper_0_single_end_clk_y;
  assign singel_end_clk_z = CLRX_wrapper_0_single_end_clk_z;
  assign strb_ABC_val_x = CLRX_wrapper_0_strb_ABC_val_x;
  assign strb_DEF_val_y = CLRX_wrapper_0_strb_DEF_val_y;
  assign strb_GHI_val_z = CLRX_wrapper_0_strb_GHI_val_z;
  assign sys_clk_1 = sys_clk;
  assign x_lcnt_0[15:0] = CLRX_wrapper_0_x_lcnt;
  assign x_pcnt_0[15:0] = CLRX_wrapper_0_x_pcnt;
  assign y_lcnt_0[15:0] = CLRX_wrapper_0_y_lcnt;
  assign y_pcnt_0[15:0] = CLRX_wrapper_0_y_pcnt;
  YV_Vision_KIT_CLRX_wrapper_0_0 CLRX_wrapper_0
       (.Ax(CLRX_wrapper_0_Ax),
        .Bx(CLRX_wrapper_0_Bx),
        .Cx(CLRX_wrapper_0_Cx),
        .DATA_OUT0(CLRX_wrapper_0_DATA_OUT0),
        .DATA_OUT1(CLRX_wrapper_0_DATA_OUT1),
        .DATA_OUT2(CLRX_wrapper_0_DATA_OUT2),
        .Dy(CLRX_wrapper_0_Dy),
        .EOL_dual_y(CLRX_wrapper_0_EOL_dual_y),
        .EOL_x(CLRX_wrapper_0_EOL_x),
        .Ey(CLRX_wrapper_0_Ey),
        .Fy(CLRX_wrapper_0_Fy),
        .Gz(CLRX_wrapper_0_Gz),
        .Hz(CLRX_wrapper_0_Hz),
        .Iz(CLRX_wrapper_0_Iz),
        .LFDSx(CLRX_wrapper_0_LFDSx),
        .LFDSy(CLRX_wrapper_0_LFDSy),
        .LFDSz(CLRX_wrapper_0_LFDSz),
        .LOCKED_x(LOCKED_x_1),
        .LOCKED_y(LOCKED_y_1),
        .LOCKED_z(LOCKED_z_1),
        .RST_100_mb(proc_sys_reset_0_mb_reset),
        .SOF_dual_y(CLRX_wrapper_0_SOF_dual_y),
        .SOF_x(CLRX_wrapper_0_SOF_x),
        .S_AXI_GPIO_araddr(S_AXI_GPIO_1_ARADDR),
        .S_AXI_GPIO_arready(S_AXI_GPIO_1_ARREADY),
        .S_AXI_GPIO_arvalid(S_AXI_GPIO_1_ARVALID),
        .S_AXI_GPIO_awaddr(S_AXI_GPIO_1_AWADDR),
        .S_AXI_GPIO_awready(S_AXI_GPIO_1_AWREADY),
        .S_AXI_GPIO_awvalid(S_AXI_GPIO_1_AWVALID),
        .S_AXI_GPIO_bready(S_AXI_GPIO_1_BREADY),
        .S_AXI_GPIO_bresp(S_AXI_GPIO_1_BRESP),
        .S_AXI_GPIO_bvalid(S_AXI_GPIO_1_BVALID),
        .S_AXI_GPIO_rdata(S_AXI_GPIO_1_RDATA),
        .S_AXI_GPIO_rready(S_AXI_GPIO_1_RREADY),
        .S_AXI_GPIO_rresp(S_AXI_GPIO_1_RRESP),
        .S_AXI_GPIO_rvalid(S_AXI_GPIO_1_RVALID),
        .S_AXI_GPIO_wdata(S_AXI_GPIO_1_WDATA),
        .S_AXI_GPIO_wready(S_AXI_GPIO_1_WREADY),
        .S_AXI_GPIO_wstrb(S_AXI_GPIO_1_WSTRB),
        .S_AXI_GPIO_wvalid(S_AXI_GPIO_1_WVALID),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .clk_idelay_ref(clk_idelay_ref_1),
        .clk_x(CLRX_wrapper_0_clk_x),
        .clk_x_n(clk_x_n_1),
        .clk_x_p(clk_x_p_1),
        .clk_y(CLRX_wrapper_0_clk_y),
        .clk_y_n(clk_y_n_1),
        .clk_y_p(clk_y_p_1),
        .clk_z(CLRX_wrapper_0_clk_z),
        .clk_z_n(clk_z_n_1),
        .clk_z_p(clk_z_p_1),
        .data_validx(CLRX_wrapper_0_data_validx),
        .data_validy(CLRX_wrapper_0_data_validy),
        .div2_clk_x(div2_clk_x_1),
        .div2_clk_y(div2_clk_y_1),
        .div2_clk_z(div2_clk_z_1),
        .div8_clk_x(div8_clk_x_1),
        .div8_clk_y(div8_clk_y_1),
        .div8_clk_z(div8_clk_z_1),
        .dna_high(CLRX_wrapper_0_dna_high),
        .dna_low(CLRX_wrapper_0_dna_low),
        .en_soc(CLRX_wrapper_0_en_soc),
        .fifo_rst(CLRX_wrapper_0_fifo_rst),
        .px_clk_x(px_clk_x_1),
        .px_clk_y(px_clk_y_1),
        .px_clk_z(px_clk_z_1),
        .rst(proc_sys_reset_0_mb_reset_1),
        .rst_x(proc_sys_reset_X_mb_reset),
        .rst_y(proc_sys_reset_Y_mb_reset),
        .rst_z(proc_sys_reset_Z_mb_reset),
        .serial_x_n(serial_x_n_1),
        .serial_x_p(serial_x_p_1),
        .serial_y_n(serial_y_n_1),
        .serial_y_p(serial_y_p_1),
        .serial_z_n(serial_z_n_1),
        .serial_z_p(serial_z_p_1),
        .single_end_clk_x(CLRX_wrapper_0_single_end_clk_x),
        .single_end_clk_y(CLRX_wrapper_0_single_end_clk_y),
        .single_end_clk_z(CLRX_wrapper_0_single_end_clk_z),
        .strb_ABC_val_x(CLRX_wrapper_0_strb_ABC_val_x),
        .strb_DEF_val_y(CLRX_wrapper_0_strb_DEF_val_y),
        .strb_GHI_val_z(CLRX_wrapper_0_strb_GHI_val_z),
        .sys_clk(sys_clk_1),
        .x_lcnt(CLRX_wrapper_0_x_lcnt),
        .x_pcnt(CLRX_wrapper_0_x_pcnt),
        .y_lcnt(CLRX_wrapper_0_y_lcnt),
        .y_pcnt(CLRX_wrapper_0_y_pcnt));
  YV_Vision_KIT_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(sys_clk_1));
  YV_Vision_KIT_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(reset_flush_0_aux_reset_out),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_0_mb_reset_1),
        .slowest_sync_clk(sys_clk_1));
  YV_Vision_KIT_proc_sys_reset_X_0 proc_sys_reset_X
       (.aux_reset_in(reset_flush_0_aux_reset_out),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_X_mb_reset),
        .slowest_sync_clk(CLRX_wrapper_0_clk_x));
  YV_Vision_KIT_proc_sys_reset_Y_0 proc_sys_reset_Y
       (.aux_reset_in(reset_flush_0_aux_reset_out),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_Y_mb_reset),
        .slowest_sync_clk(CLRX_wrapper_0_clk_y));
  YV_Vision_KIT_proc_sys_reset_Z_0 proc_sys_reset_Z
       (.aux_reset_in(reset_flush_0_aux_reset_out),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_Z_mb_reset),
        .slowest_sync_clk(CLRX_wrapper_0_clk_z));
  YV_Vision_KIT_xlconstant_0_0 xlconstant_0
       (.dout(reset_flush_0_aux_reset_out));
endmodule
