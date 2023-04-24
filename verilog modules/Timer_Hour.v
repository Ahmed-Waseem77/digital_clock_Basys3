`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 01:44:39 PM
// Design Name: 
// Module Name: Timer_Hour
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


module timer_hour(clk, reset, en, digitSeconds, tensSeconds, digitMinutes, tensMinutes);

input clk, reset, en;

//output
output [3:0] digitSeconds;
output [2:0] tensSeconds;
output [3:0] digitMinutes;
output [2:0] tensMinutes;

//to wire ands
reg is10Second;
reg is60Second;
reg is10Minute;

wire clk_out;

clock_divider #(5000000) clkD (clk, reset, clk_out);

wire en2;
wire en3;
assign en2 = ((digitSeconds == 9) && (tensSeconds == 5));
assign en3 = ((digitSeconds == 9) && (tensSeconds == 5) && (digitMinutes == 9));

bin_counter_n #(.n(10) , .x(4)) digitSecondsD (clk_out, reset, 1, digitSeconds);
bin_counter_n #(.n(6) , .x(3)) TensSecondsD (clk_out, reset, digitSeconds == 9, tensSeconds);
bin_counter_n #(.n(10) , .x(4)) digitMinutesD (clk_out, reset, en2  , digitMinutes);
bin_counter_n #(.n(6) , .x(3)) tensMinutesD (clk_out, reset, en3 , tensMinutes);

endmodule   
