`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2023 10:07:57
// Design Name: 
// Module Name: datapathmain
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


module DataPath ( input ir_on_adr, pc_on_adr, dbus_on_data, 
data_on_dbus, ld_ir, ld_ac, ld_pc, 
inc_pc, clr_pc, pass, add, alu_on_dbus,
clk,
output [5:0] adr_bus, 
output [1:0] op_code, 
inout [7:0] data_bus );
wire [7:0] dbus, ir_out, a_side, alu_out;
wire [5:0] pc_out;
IR ir ( dbus, ld_ir, clk, ir_out );
PC pc ( ir_out[5:0], ld_pc, inc_pc, clr_pc, clk, pc_out );
AC ac ( dbus, ld_ac, clk, a_side ); 
ALU alu ( a_side, {2'b0 ,ir_out[5:0]}, pass, add, alu_out );
assign adr_bus = ir_on_adr ? ir_out[5:0] : 6'bz;
assign adr_bus = pc_on_adr ? pc_out : 6'bz;
assign dbus = alu_on_dbus ? alu_out : 8'bz;
assign data_bus = dbus_on_data ? dbus : 8'bz;
assign dbus = data_on_dbus ? data_bus : 8'bz;
assign op_code = ir_out[7:6];
endmodule

