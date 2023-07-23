`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2023 10:11:46
// Design Name: 
// Module Name: ac
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

module AC ( input [7:0] data_in, input load, clk, 
output reg [7:0] data_out );
always @( posedge clk )
if( load ) data_out <= data_in;
endmodule
