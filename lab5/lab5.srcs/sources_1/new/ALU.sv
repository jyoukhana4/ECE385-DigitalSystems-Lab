`timescale 1ns / 1ps
/////////////////////////////
module ALU(
    input logic [1:0] ALUK,
    input logic [15:0] Sr2mux_out, 
    input logic [15:0] Sr1_out,
    
    output logic [15:0] ALU1_out
    );
    always_comb begin
    if (ALUK == 2'b00)
        ALU1_out = Sr2mux_out + Sr1_out;
    else if (ALUK == 2'b01)
        ALU1_out = Sr2mux_out & Sr1_out; 
    else if (ALUK == 2'b10)
        ALU1_out = ~Sr1_out;
    else
        ALU1_out = Sr1_out;
    end
endmodule
