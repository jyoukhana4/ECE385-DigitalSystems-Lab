//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//    Revised 12-29-2023
//    Revised 09-25-2024
//------------------------------------------------------------------------------

module cpu (
    input   logic        clk,
    input   logic        reset,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,
    output  logic [15:0] mem_wdata,
    output  logic [15:0] mem_addr,
    output  logic        mem_mem_ena,
    output  logic        mem_wr_ena
);

// Internal connections, follow the datapath block diagram and add the additional needed signals
logic ld_mar; 
logic ld_mdr; 
logic ld_ir; 
logic ld_pc; 
logic ld_led;
logic ld_reg;

logic gate_pc;
logic gate_mdr;
logic gate_mar;
logic gate_alu;

logic [1:0] pcmux;
logic Drselect;
logic Sr1select;
logic Sr2select;
logic addr1mux;
logic [1:0] ALUK, Addr2mux;

logic [15:0] Addr1out, Addr2out; 
logic [15:0] addrALU;
assign addrALU = Addr1out + Addr2out; // addr1 and addr2 adder
logic [15:0] mar; 
logic [15:0] mdr;
logic [15:0] ir;
logic [15:0] pc;
logic [15:0] pcmuxoutput; // Output of the PCMUX
logic [15:0] mdr_out; // Output of the MDRMUX
logic [15:0] alureg_out; 
logic [15:0] data_bus; // Data on the DataBus
logic [2:0] Drmux_out, Sr1;
logic ben;
logic n, z, p, ld_cc;

logic [15:0] Sr1_out, Sr2_out, Sr2mux_out;

assign mem_addr = mar;
assign mem_wdata = mdr;

control cpu_control (
    .clk(clk), 
    .reset(reset), 
    .run_i(run_i), 
    .continue_i(continue_i), 
    .ld_mar(ld_mar), 
    .ld_mdr(ld_mdr), 
    .ld_ir(ld_ir), 
    .ld_pc(ld_pc), 
    .ld_led(ld_led), 
    .ld_cc(ld_cc), 
    .ld_reg(ld_reg),
    .gate_pc(gate_pc), 
    .gate_mdr(gate_mdr), 
    .gate_mar(gate_mar), 
    .gate_alu(gate_alu), 
    .pcmux(pcmux), 
    .ALUK(ALUK), 
    .Addr2mux(Addr2mux),
    .addr1mux(addr1mux), 
    .Sr1select(Sr1select),
    .Sr2select(Sr2select), 
    .Drselect(Drselect),
    .mem_mem_ena(mem_mem_ena), 
    .mem_wr_ena(mem_wr_ena), 
    .ir(ir), 
    .ben(ben)
);

ben ben_nzp (
    .clk(clk), 
    .databus(data_bus), 
    .ld_cc(ld_cc), 
    
    .n_out(n), 
    .z_out(z), 
    .p_out(p)
);

assign ben = ir[11] && n || ir[10] && z || ir[9] && p; // decode logic

PCmux Pc_mux (
    .select(pcmux), 
    .pc(pc), 
    .databus(data_bus), 
    .alu(addrALU), 
    
    .nxtpc(pcmuxoutput)
);

Databus BUS (
    .gatePC(gate_pc), 
    .gateMDR(gate_mdr), 
    .gateMARMUX(gate_mar), 
    .gateALU(gate_alu),
    .pc(pc), .MDR(mdr), 
    .MARM(addrALU), .ALU(alureg_out), 
    
    .BUS_OUT(data_bus)
);

reg_file regfile (
    .databus(data_bus), 
    .clk(clk), 
    .ld_reg(ld_reg), 
    .Dr(Drmux_out), 
    .Sr1(Sr1), 
    .Sr2(ir[2:0]), 
    
    .Sr1_out(Sr1_out), 
    .Sr2_out(Sr2_out)
);

two_mux #(.DATA_WIDTH(3)) drmux(
    .select(Drselect), 
    .input0(ir[11:9]), 
    .input1(3'b111),
     
    .out(Drmux_out));

two_mux #(.DATA_WIDTH(3)) Sr1mux(
    .select(Sr1select), 
    .input0(ir[11:9]), 
    .input1(ir[8:6]), 
    
    .out(Sr1)
);

two_mux #(.DATA_WIDTH(16)) Sr2mux(
    .select(Sr2select), 
    .input0({{11{ir[4]}}, ir[4:0]}),
    .input1(Sr2_out), 
    
    .out(Sr2mux_out)
);

ALU alu_reg (
    .ALUK(ALUK), 
    .Sr2mux_out(Sr2mux_out), 
    .Sr1_out(Sr1_out), 
    .ALU1_out(alureg_out));

two_mux #(.DATA_WIDTH(16)) Addr1mux(
    .select(addr1mux),
    .input0(Sr1_out), 
    .input1(pc), 
    
    .out(Addr1out)
);
     
Addr2mux addr2_mux (
    .addr2mux(Addr2mux), 
    .zero(16'h0000), 
    .sext5({{10{ir[5]}}, ir[5:0]}),
    .sext8({{7{ir[8]}}, ir[8:0]}), 
    .sext10({{5{ir[10]}}, ir[10:0]}), 
    
    .addr2mux_out(Addr2out)
);
    
assign led_o = ir;
assign hex_display_debug = ir;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),
    .load   (ld_ir),
    .data_i (data_bus),

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),
    .load(ld_pc),
    .data_i(pcmuxoutput),

    .data_q(pc)
);

load_reg #(.DATA_WIDTH(16)) MAR (
    .clk(clk),
    .reset(reset),
    .load(ld_mar),
    .data_i(data_bus),

    .data_q(mar)
);

load_reg #(.DATA_WIDTH(16)) MDR (
    .clk(clk),
    .reset(reset),
    .load(ld_mdr),
    .data_i(mdr_out),

    .data_q(mdr)
);

MDRmux mdr_mux (
    .MIO_EN(mem_mem_ena), 
    .mem_data(mem_rdata), 
    .databus(data_bus),
     
    .MDRin(mdr_out)
);
endmodule
