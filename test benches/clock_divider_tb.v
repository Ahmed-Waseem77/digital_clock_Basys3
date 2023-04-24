`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 02:26:12 PM
// Design Name: 
// Module Name: clock_divider1_tb
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
module clock_divider_tb();

reg clk;
wire clk_out;
reg reset;

clock_divider #(2) DUT (.clk(clk), .reset(reset), .clk_out(clk_out));

initial begin
clk = 0;
reset = 1;
#10
reset = 0;
end
initial forever #5 clk = ~clk; 




endmodule
