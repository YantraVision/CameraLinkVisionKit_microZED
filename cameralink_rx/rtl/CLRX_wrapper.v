//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Mon Aug  3 21:24:38 2020
//Host        : z600.localdomain running 64-bit CentOS Linux release 7.5.1804 (Core)
//Command     : generate_target CLRX_wrapper.bd
//Design      : CLRX_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CLRX_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    SerTC_n_0,
    SerTC_p_0,
    SerTFG_n_0,
    SerTFG_p_0,
    X,
    XCLK_clk_n,
    XCLK_clk_p,
    Xn,
    Y,
    YCLK_clk_n,
    YCLK_clk_p,
    Yn,
    Z,
    ZCLK_clk_n,
    ZCLK_clk_p,
    Zn);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output SerTC_n_0;
  output SerTC_p_0;
  input SerTFG_n_0;
  input SerTFG_p_0;
  input [3:0]X;
  input XCLK_clk_n;
  input XCLK_clk_p;
  input [3:0]Xn;
  input [3:0]Y;
  input YCLK_clk_n;
  input YCLK_clk_p;
  input [3:0]Yn;
  input [3:0]Z;
  input ZCLK_clk_n;
  input ZCLK_clk_p;
  input [3:0]Zn;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire SerTC_n_0;
  wire SerTC_p_0;
  wire SerTFG_n_0;
  wire SerTFG_p_0;
  wire [3:0]X;
  wire XCLK_clk_n;
  wire XCLK_clk_p;
  wire [3:0]Xn;
  wire [3:0]Y;
  wire YCLK_clk_n;
  wire YCLK_clk_p;
  wire [3:0]Yn;
  wire [3:0]Z;
  wire ZCLK_clk_n;
  wire ZCLK_clk_p;
  wire [3:0]Zn;

  CLRX CLRX_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .SerTC_n_0(SerTC_n_0),
        .SerTC_p_0(SerTC_p_0),
        .SerTFG_n_0(SerTFG_n_0),
        .SerTFG_p_0(SerTFG_p_0),
        .X(X),
        .XCLK_clk_n(XCLK_clk_n),
        .XCLK_clk_p(XCLK_clk_p),
        .Xn(Xn),
        .Y(Y),
        .YCLK_clk_n(YCLK_clk_n),
        .YCLK_clk_p(YCLK_clk_p),
        .Yn(Yn),
        .Z(Z),
        .ZCLK_clk_n(ZCLK_clk_n),
        .ZCLK_clk_p(ZCLK_clk_p),
        .Zn(Zn));
endmodule
