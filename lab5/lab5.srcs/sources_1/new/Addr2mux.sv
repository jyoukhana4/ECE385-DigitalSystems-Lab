`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 07:57:45 PM
// Design Name: 
// Module Name: Addr2mux
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


module Addr2mux(
    input logic [15:0] zero, 
    input logic [15:0] sext5,
    input logic [15:0] sext8,
    input logic [15:0] sext10,
    input logic [1:0] addr2mux,
    
    output logic [15:0] addr2mux_out
    );
    
    always_comb begin
    if (addr2mux == 2'b00)
        addr2mux_out = sext10;
    else if (addr2mux == 2'b01)
        addr2mux_out = sext8;
    else if (addr2mux == 2'b10)
        addr2mux_out = sext5; 
    else
        addr2mux_out = zero;   
    end
endmodule
