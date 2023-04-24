`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 09:17:11 AM
// Design Name: 
// Module Name: modulo10_counter
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

module modulo10_counter(clk, reset, en, count);
input clk, reset, en;
output [3:0] count;
wire clk_out;

//counts every 1hz basically second timer
clock_divider #(50000000) clkD (clk, reset, clk_out);
bin_counter_n #( .x(4), .n(10) ) modCount (clk_out, reset, en, count);

endmodule
