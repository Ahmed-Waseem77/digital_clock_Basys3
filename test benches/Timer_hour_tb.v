`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 02:19:44 PM
// Design Name: 
// Module Name: Timer_hour_tb
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


module timer_hour_tb;

reg clk;
reg reset;
reg en;

wire [3:0] digitSeconds;
wire [3:0] digitMinutes;
wire [2:0] tensMinutes;
wire [2:0] tensSeconds;

//DUT
timer_hour DUTTT (.clk(clk), .reset(reset), .en(en),.digitSeconds(digitSeconds), .digitMinutes(digitMinutes), .tensMinutes(tensMinutes), .tensSeconds(tensSeconds));

initial begin
en = 1;
clk = 0;
reset = 1;
#10
reset = 0;
end

initial forever #10 clk = ~clk;

endmodule
