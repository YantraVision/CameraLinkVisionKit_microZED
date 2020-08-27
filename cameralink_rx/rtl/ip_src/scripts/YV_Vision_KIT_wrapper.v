//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Fri Aug 21 11:14:51 2020
//Host        : z600.localdomain running 64-bit CentOS Linux release 7.5.1804 (Core)
//Command     : generate_target Vision_KIT_wrapper.bd
//Design      : Vision_KIT_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module YV_Vision_KIT_wrapper
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
  input [8:0]S_AXI_GPIO_araddr;
  output S_AXI_GPIO_arready;
  input S_AXI_GPIO_arvalid;
  input [8:0]S_AXI_GPIO_awaddr;
  output S_AXI_GPIO_awready;
  input S_AXI_GPIO_awvalid;
  input S_AXI_GPIO_bready;
  output [1:0]S_AXI_GPIO_bresp;
  output S_AXI_GPIO_bvalid;
  output [31:0]S_AXI_GPIO_rdata;
  input S_AXI_GPIO_rready;
  output [1:0]S_AXI_GPIO_rresp;
  output S_AXI_GPIO_rvalid;
  input [31:0]S_AXI_GPIO_wdata;
  output S_AXI_GPIO_wready;
  input [3:0]S_AXI_GPIO_wstrb;
  input S_AXI_GPIO_wvalid;
  input clk_idelay_ref;
  input clk_x_n;
  input clk_x_p;
  input clk_y_n;
  input clk_y_p;
  input clk_z_n;
  input clk_z_p;
  output data_validx;
  output data_validy_0;
  input div2_clk_x;
  input div2_clk_y;
  input div2_clk_z;
  input div8_clk_x;
  input div8_clk_y;
  input div8_clk_z;
  output [31:0]dna_high_0;
  output [31:0]dna_low_0;
  output en_soc_0;
  input ext_reset_n;
  output [31:0]fifo_rst_0;
  input px_clk_x;
  input px_clk_y;
  input px_clk_z;
  input [3:0]serial_x_n;
  input [3:0]serial_x_p;
  input [3:0]serial_y_n;
  input [3:0]serial_y_p;
  input [3:0]serial_z_n;
  input [3:0]serial_z_p;
  output singel_end_clk_x;
  output singel_end_clk_y;
  output singel_end_clk_z;
  output strb_ABC_val_x;
  output strb_DEF_val_y;
  output strb_GHI_val_z;
  input sys_clk;
  output [15:0]x_lcnt_0;
  output [15:0]x_pcnt_0;
  output [15:0]y_lcnt_0;
  output [15:0]y_pcnt_0;

  wire [7:0]Ax_0;
  wire [7:0]Bx_0;
  wire [7:0]Cx_0;
  wire [27:0]DATA_OUT0;
  wire [27:0]DATA_OUT1_0;
  wire [27:0]DATA_OUT2_0;
  wire [7:0]Dy_0;
  wire EOL_dual_y;
  wire EOL_x;
  wire [7:0]Ey_0;
  wire [7:0]Fy_0;
  wire [7:0]Gz_0;
  wire [7:0]Hz_0;
  wire [7:0]Iz_0;
  wire [3:0]LFDSx_0;
  wire [3:0]LFDSy_0;
  wire [3:0]LFDSz_0;
  wire LOCKED_x;
  wire LOCKED_y;
  wire LOCKED_z;
  wire SOF_dual_y;
  wire SOF_x;
  wire [8:0]S_AXI_GPIO_araddr;
  wire S_AXI_GPIO_arready;
  wire S_AXI_GPIO_arvalid;
  wire [8:0]S_AXI_GPIO_awaddr;
  wire S_AXI_GPIO_awready;
  wire S_AXI_GPIO_awvalid;
  wire S_AXI_GPIO_bready;
  wire [1:0]S_AXI_GPIO_bresp;
  wire S_AXI_GPIO_bvalid;
  wire [31:0]S_AXI_GPIO_rdata;
  wire S_AXI_GPIO_rready;
  wire [1:0]S_AXI_GPIO_rresp;
  wire S_AXI_GPIO_rvalid;
  wire [31:0]S_AXI_GPIO_wdata;
  wire S_AXI_GPIO_wready;
  wire [3:0]S_AXI_GPIO_wstrb;
  wire S_AXI_GPIO_wvalid;
  wire clk_idelay_ref;
  wire clk_x_n;
  wire clk_x_p;
  wire clk_y_n;
  wire clk_y_p;
  wire clk_z_n;
  wire clk_z_p;
  wire data_validx;
  wire data_validy_0;
  wire div2_clk_x;
  wire div2_clk_y;
  wire div2_clk_z;
  wire div8_clk_x;
  wire div8_clk_y;
  wire div8_clk_z;
  wire [31:0]dna_high_0;
  wire [31:0]dna_low_0;
  wire en_soc_0;
  wire ext_reset_n;
  wire [31:0]fifo_rst_0;
  wire px_clk_x;
  wire px_clk_y;
  wire px_clk_z;
  wire [3:0]serial_x_n;
  wire [3:0]serial_x_p;
  wire [3:0]serial_y_n;
  wire [3:0]serial_y_p;
  wire [3:0]serial_z_n;
  wire [3:0]serial_z_p;
  wire singel_end_clk_x;
  wire singel_end_clk_y;
  wire singel_end_clk_z;
  wire strb_ABC_val_x;
  wire strb_DEF_val_y;
  wire strb_GHI_val_z;
  wire sys_clk;
  wire [15:0]x_lcnt_0;
  wire [15:0]x_pcnt_0;
  wire [15:0]y_lcnt_0;
  wire [15:0]y_pcnt_0;

  YV_Vision_KIT YV_Vision_KIT_i
       (.Ax_0(Ax_0),
        .Bx_0(Bx_0),
        .Cx_0(Cx_0),
        .DATA_OUT0(DATA_OUT0),
        .DATA_OUT1_0(DATA_OUT1_0),
        .DATA_OUT2_0(DATA_OUT2_0),
        .Dy_0(Dy_0),
        .EOL_dual_y(EOL_dual_y),
        .EOL_x(EOL_x),
        .Ey_0(Ey_0),
        .Fy_0(Fy_0),
        .Gz_0(Gz_0),
        .Hz_0(Hz_0),
        .Iz_0(Iz_0),
        .LFDSx_0(LFDSx_0),
        .LFDSy_0(LFDSy_0),
        .LFDSz_0(LFDSz_0),
        .LOCKED_x(LOCKED_x),
        .LOCKED_y(LOCKED_y),
        .LOCKED_z(LOCKED_z),
        .SOF_dual_y(SOF_dual_y),
        .SOF_x(SOF_x),
        .S_AXI_GPIO_araddr(S_AXI_GPIO_araddr),
        .S_AXI_GPIO_arready(S_AXI_GPIO_arready),
        .S_AXI_GPIO_arvalid(S_AXI_GPIO_arvalid),
        .S_AXI_GPIO_awaddr(S_AXI_GPIO_awaddr),
        .S_AXI_GPIO_awready(S_AXI_GPIO_awready),
        .S_AXI_GPIO_awvalid(S_AXI_GPIO_awvalid),
        .S_AXI_GPIO_bready(S_AXI_GPIO_bready),
        .S_AXI_GPIO_bresp(S_AXI_GPIO_bresp),
        .S_AXI_GPIO_bvalid(S_AXI_GPIO_bvalid),
        .S_AXI_GPIO_rdata(S_AXI_GPIO_rdata),
        .S_AXI_GPIO_rready(S_AXI_GPIO_rready),
        .S_AXI_GPIO_rresp(S_AXI_GPIO_rresp),
        .S_AXI_GPIO_rvalid(S_AXI_GPIO_rvalid),
        .S_AXI_GPIO_wdata(S_AXI_GPIO_wdata),
        .S_AXI_GPIO_wready(S_AXI_GPIO_wready),
        .S_AXI_GPIO_wstrb(S_AXI_GPIO_wstrb),
        .S_AXI_GPIO_wvalid(S_AXI_GPIO_wvalid),
        .clk_idelay_ref(clk_idelay_ref),
        .clk_x_n(clk_x_n),
        .clk_x_p(clk_x_p),
        .clk_y_n(clk_y_n),
        .clk_y_p(clk_y_p),
        .clk_z_n(clk_z_n),
        .clk_z_p(clk_z_p),
        .data_validx(data_validx),
        .data_validy_0(data_validy_0),
        .div2_clk_x(div2_clk_x),
        .div2_clk_y(div2_clk_y),
        .div2_clk_z(div2_clk_z),
        .div8_clk_x(div8_clk_x),
        .div8_clk_y(div8_clk_y),
        .div8_clk_z(div8_clk_z),
        .dna_high_0(dna_high_0),
        .dna_low_0(dna_low_0),
        .en_soc_0(en_soc_0),
        .ext_reset_n(ext_reset_n),
        .fifo_rst_0(fifo_rst_0),
        .px_clk_x(px_clk_x),
        .px_clk_y(px_clk_y),
        .px_clk_z(px_clk_z),
        .serial_x_n(serial_x_n),
        .serial_x_p(serial_x_p),
        .serial_y_n(serial_y_n),
        .serial_y_p(serial_y_p),
        .serial_z_n(serial_z_n),
        .serial_z_p(serial_z_p),
        .singel_end_clk_x(singel_end_clk_x),
        .singel_end_clk_y(singel_end_clk_y),
        .singel_end_clk_z(singel_end_clk_z),
        .strb_ABC_val_x(strb_ABC_val_x),
        .strb_DEF_val_y(strb_DEF_val_y),
        .strb_GHI_val_z(strb_GHI_val_z),
        .sys_clk(sys_clk),
        .x_lcnt_0(x_lcnt_0),
        .x_pcnt_0(x_pcnt_0),
        .y_lcnt_0(y_lcnt_0),
        .y_pcnt_0(y_pcnt_0));
endmodule
