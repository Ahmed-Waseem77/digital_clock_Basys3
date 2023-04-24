`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 08:38:06 AM
// Design Name: 
// Module Name: bin_counter_3bits_tb
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


module bin_counter_n_tb();
reg clk, reset, en;
wire [3:0] count;

bin_counter_n #(4,12) DUT (clk, reset, en, count);

initial begin
clk = 0;
forever #10 clk=~clk;
end

initial begin
en = 1;
reset=1;
#100
reset=0;
#100
en=0;
#100
en = 1;
end
endmodule

