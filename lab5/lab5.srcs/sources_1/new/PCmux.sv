`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 07:51:10 PM
// Design Name: 
// Module Name: PCmux
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


module PCmux (
    input [1:0] select,
    input logic [15:0] pc,
    input logic [15:0] databus,
    input logic [15:0] alu,
    
    output logic [15:0] nxtpc
);
    logic [15:0] PCinc;
    always_comb begin
    PCinc = pc + 1;
    if (select == 2'b00)
        nxtpc = PCinc;
    else if (select == 2'b01)
        nxtpc = alu;
    else
        nxtpc = databus; 
    end
endmodule
