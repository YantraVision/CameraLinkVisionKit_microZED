`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 11:15:14
// Design Name: 
// Module Name: counter_100
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


module counter(
    input clk,
    input reset,
    output reg [9:0] count);
    
always @(posedge clk) begin
   if (!reset)
   begin
      count <= 'h0;
   end else if (count >= 1023)
       begin
           count <= 'h0;
       end else 
       begin
           count <= count + 'd1;
       end
end    
endmodule
