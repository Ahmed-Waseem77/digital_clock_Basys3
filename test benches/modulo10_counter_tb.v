`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 12:43:39 PM
// Design Name: 
// Module Name: modulo10_counter_tb
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


module modulo10_counter_tb;

reg clk;
reg en;
reg reset;

wire [3:0] count; //testing decade counter

//DUT
modulo10_counter DUT (.clk(clk), .en(en), .reset(reset), .count(count));

//testing
initial begin
    en = 1;
    clk = 0;
    reset = 1;
    #10
    reset = 0;
end

initial forever #10 clk = ~clk;

endmodule
