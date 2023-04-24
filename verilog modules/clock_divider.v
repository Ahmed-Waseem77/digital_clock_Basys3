`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 08:49:10 AM
// Design Name: 
// Module Name: clock_divider1
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


module clock_divider #(parameter n = 50000000)
(input clk, reset, output reg clk_out);

assign test = 1'b1;

wire [31:0] count; 

bin_counter_n #(.n(n) , .x(32)) counter (.clk(clk),.reset(reset), .en(1'b1), .count(count));


always @ (posedge clk, posedge reset) begin
    if (reset) 
        clk_out <= 0;
    else if (count == n-1)
        clk_out <= ~ clk_out;
end

endmodule

