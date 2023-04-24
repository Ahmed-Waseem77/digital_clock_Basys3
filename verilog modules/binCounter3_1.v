`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 08:28:36 AM
// Design Name: 
// Module Name: binCounter3_1
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

module bin_counter_n
(clk, reset, en, count);
parameter x = 1;
parameter n = 1;
input clk, reset, en;
output reg [x-1:0] count;

always @(posedge clk, posedge reset) begin
if (reset == 1)
    count <= 0;
else
if(en == 1)
    if(count == n - 1)
        count <= 0;
    else
        count <= count + 1;         
end
endmodule
