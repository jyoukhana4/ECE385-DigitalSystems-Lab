`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 08:12:16 PM
// Design Name: 
// Module Name: Databus
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


module Databus(
    input logic gateMARMUX, gatePC, gateALU, gateMDR,
    input logic [15:0] ALU, pc, MDR, MARM,
    
    output logic [15:0] BUS_OUT
    );
    always_comb begin
    if (gatePC == 1'b1)
        BUS_OUT = pc;
    else if (gateMARMUX == 1'b1)
        BUS_OUT = MARM;
    else if (gateALU == 1'b1)
        BUS_OUT = ALU;
    else if (gateMDR == 1'b1)
        BUS_OUT = MDR;
    else
        BUS_OUT = 16'h0; 
        
    end
endmodule
