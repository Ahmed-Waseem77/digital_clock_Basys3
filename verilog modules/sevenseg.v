`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2023 01:34:02 PM
// Design Name: 
// Module Name: sevenseg
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


module sevenseg(input [1:0]en, input [3:0] num, output reg [6:0] segments, output reg[3:0] anode_active); 

always @ * begin case(en) 
0: anode_active = 4'b0111; 
1: anode_active = 4'b1011; 
2: anode_active = 4'b1101; 
3: anode_active = 4'b1110; 

endcase case(num) 
0: segments = 7'b0000001; 
1: segments = 7'b1001111; 
2: segments = 7'b0010010; 
3: segments = 7'b0000110; 
4: segments = 7'b1001100; 
5: segments = 7'b0100100; 
6: segments = 7'b0100000; 
7: segments = 7'b0001111;
8: segments = 7'b0000000; 
9: segments = 7'b0000100;
 
default: segments = 1;

endcase 
end endmodule 

