`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 10:47:46 PM
// Design Name: 
// Module Name: MDRmux
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

module MDRmux(
    input logic [15:0] databus, mem_data,
    input logic MIO_EN,
    output logic [15:0] MDRin
    );
    always_comb begin
    if (MIO_EN == 1'b0)
        MDRin = databus;
    else
        MDRin = mem_data;
    end
endmodule
