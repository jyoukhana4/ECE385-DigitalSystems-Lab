`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 02:44:54 PM
// Design Name: 
// Module Name: two_mux
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

module two_mux #( parameter DATA_WIDTH = 3 ) (
    input logic select,
    input logic [DATA_WIDTH-1:0] input0,
    input logic [DATA_WIDTH-1:0] input1,
    
    output logic [DATA_WIDTH-1:0] out
    );
    
    always_comb begin
    if(select)
        out = input1;
    else
        out = input0;
    end
endmodule
