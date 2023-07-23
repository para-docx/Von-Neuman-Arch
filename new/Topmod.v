`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2023 11:43:38 PM
// Design Name: 
// Module Name: Topmod
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


module Topmod(
    input reset,
    input clk,
    output [5:0] adr_bus,
    output rd_mem,
    output wr_mem,
    inout [7:0] data_bus
    );
    wire ir_on_adr, pc_on_adr, dbus_on_data, data_on_dbus,
         ld_ir,ld_ac, ld_pc, inc_pc, clr_pc, pass, add, alu_on_dbus;
         
    wire [1:0] opcode;
    
    contrl cu ( reset, clk, opcode,rd_mem, wr_mem, ir_on_adr,
                pc_on_adr, dbus_on_data,
                data_on_dbus, ld_ir, ld_ac,
                ld_pc, inc_pc, clr_pc,
                pass, add, alu_on_dbus);
                
     DataPath dp (ir_on_adr, pc_on_adr, dbus_on_data, data_on_dbus,
                  ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, pass, add,
                  alu_on_dbus, clk, adr_bus, opcode, data_bus);
endmodule
