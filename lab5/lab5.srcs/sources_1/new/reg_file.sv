`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 02:06:47 PM
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input logic [15:0] databus,
    input logic clk, ld_reg,
    input logic [2:0] Dr, Sr1, Sr2,
    
    output logic [15:0] Sr1_out, 
    output logic [15:0] Sr2_out
    );
    logic [15:0] regfile [8]; // array of 8 register files
    
    always_comb begin
    Sr1_out = regfile[Sr1];
    Sr2_out = regfile[Sr2];
    end
    
    	always_ff @(posedge clk)
	begin
	   if(ld_reg)
	       regfile[Dr] <= databus;
    end
endmodule
