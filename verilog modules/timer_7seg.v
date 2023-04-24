`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2023 01:22:50 PM
// Design Name: 
// Module Name: timer_7seg
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


module timer_7seg(clk, reset, en, segments, anode_active);

input clk, reset, en;
output [6:0] segments;
output [3:0] anode_active;

wire [3:0] digitSeconds;
wire [2:0] tensSeconds;
wire [3:0] digitMinutes;
wire [2:0] tensMinutes;
wire  [1:0] select;
wire  [3:0] digit_select;
reg  [3:0] seven_seg_input;

timer_hour timer (clk, reset, en, digitSeconds, tensSeconds, digitMinutes, tensMinute);
clock_divider #(250000) clkD1 (clk, reset, clk_out);
bin_counter_n #(.n(4) , .x(2)) tensMinutesD (clk_out, reset, 1 , select);
decoder_2x4 decoderD(select,digit_select);

always @ (posedge clk_out) begin

    case (select)
        2'b00: seven_seg_input = digitSeconds;
        2'b01: seven_seg_input = tensSeconds;
        2'b10: seven_seg_input = digitMinutes;
        2'b11: seven_seg_input = tensMinute;
        default: seven_seg_input = 4'b0000;
    endcase
    
end

sevenseg svnsg (.en(select), .num(seven_seg_input), .segments(segments), .anode_active(anode_active));




endmodule
