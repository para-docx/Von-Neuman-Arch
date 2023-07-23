`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2023 10:09:24
// Design Name: 
// Module Name: alu
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


module ALU ( input [7:0] a, b, input pass, add, 
output reg[7:0] alu_out );
always @(a or b or pass or add)
if (pass) alu_out = a;
else if (add) alu_out = a + b;
else alu_out = 0;
endmodule
