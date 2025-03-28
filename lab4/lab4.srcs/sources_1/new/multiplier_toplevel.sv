//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 11:09:35 PM
// Design Name: 
// Module Name: multiplier_toplevel
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


module multiplier_toplevel(
        input logic Reset_Load_Clear, Clk, Run,
        input logic [7:0] SW,
        output logic [7:0]  Aval,    
        output logic [7:0]  Bval,   
        output logic Xval, // from X register 
        output logic [7:0]  hex_seg,
        output logic [3:0]  hex_grid
    );
    logic Add, Sub, Shift, Clear_load, x, reset, M, clearxa;
    logic [8:0] adder_sub;
    logic [7:0] Switch_s;
    logic AShift, BShift, adder_cout;
    logic Run_s, Run_debounce; //synchronous inputs for lab 3

control control_unit (
    .Clk(Clk), .Reset(Reset_s), .Run(Run_s), .M(M),
    .clear_ld(Clear_load), .shift(Shift), .Add(Add), .Sub(Sub), .clearXA(clearxa)
    );

reg_8 registerA (
    .Clk(Clk), .Reset(Clear_load || clearxa), .Shift_In(Xval), .Load(Add || Sub), 
    .Shift_En(Shift), .D(adder_sub[7:0]), .Shift_Out(AShift), .Data_Out(Aval[7:0])
    );

reg_8 registerB (
    .Clk(Clk), .Reset(1'b0), .Shift_In(AShift), .Load(Clear_load), 
    .Shift_En(Shift), .D(Switch_s[7:0]), .Shift_Out(BShift), .Data_Out(Bval[7:0])
    );
assign M = Bval[0];

reg_x registerX (
    .Clk(Clk), .Reset(Clear_load|| clearxa), .Load(Add || Sub), 
    .D(adder_sub[8]), .D_Out(Xval));

ripple_adder adder_sub0(
    .a(Aval[7:0]), .s(Switch_s[7:0]), .fn(Sub), .xa(adder_sub[8:0]), .cout(adder_cout));
    
HexDriver hex (
    .clk(Clk), .reset(1'b0), .in({Aval[7:4], Aval[3:0], Bval[7:4], Bval[3:0]}),
    .hex_seg(hex_seg[7:0]), .hex_grid(hex_grid[3:0])
    );
    
//For clock from lab 3
negedge_detector run_once ( 
		.clk	(Clk), 
		.in	    (Run_debounce), 
		.out    (Run_s)
	);
	
//debounce run
sync_debounce Run_sync (
    .clk(Clk), .d(Run), .q(Run_debounce)
    );

//debounce switches    
sync_debounce switch_sync[7:0] (
    .clk(Clk), .d(SW[7:0]), .q(Switch_s[7:0])
    );

//debounce Reset
sync_debounce Reset_sync (
    .clk(Clk), .d(Reset_Load_Clear), .q(Reset_s)
    );
endmodule