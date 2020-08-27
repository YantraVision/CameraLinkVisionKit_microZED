`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 15:47:00
// Design Name: 
// Module Name: YV_OBUFDS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module YV_OBUFDS(
   input signal_in,
   output Ds_p,
   output Ds_n
    );
    
OBUFDS #(
      .IOSTANDARD("LVDS_25") // Specify the output I/O standard
   ) OBUFDS_inst (
      .O(Ds_p),     // Diff_p output (connect directly to top-level port) (p type differential o/p)
      .OB(Ds_n),   // Diff_n output (connect directly to top-level port) (n type differential o/p)
      .I(signal_in)      // Buffer input (this is the single ended standard)
   );
   
endmodule
