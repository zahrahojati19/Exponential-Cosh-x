// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
// CREATED		"Mon Jun 20 10:03:53 2022"

module CoshDP(
	ld,
	clk,
	rst,
	select,
	InitRFinal,
	ldRFinal,
	initT,
	ldT,
	initC,
	cnt,
	x,
	Cout,
	RESULT
);


input wire	ld;
input wire	clk;
input wire	rst;
input wire	select;
input wire	InitRFinal;
input wire	ldRFinal;
input wire	initT;
input wire	ldT;
input wire	initC;
input wire	cnt;
input wire	[15:0] x;
output wire	Cout;
output wire	[15:0] RESULT;

wire	[15:0] SYNTHESIZED_WIRE_13;
wire	[15:0] SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[15:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	[3:0] SYNTHESIZED_WIRE_12;

assign	RESULT = SYNTHESIZED_WIRE_1;
assign	SYNTHESIZED_WIRE_6 = 0;
assign	SYNTHESIZED_WIRE_8 = 0;
assign	SYNTHESIZED_WIRE_10 = 0;
assign	SYNTHESIZED_WIRE_11 = 0;




Adder	b2v_Adder(
	.dataa(SYNTHESIZED_WIRE_13),
	.datab(SYNTHESIZED_WIRE_1),
	.result(SYNTHESIZED_WIRE_7));




Counter	b2v_inst2(
	.sset(initC),
	.clock(clk),
	.cnt_en(cnt),
	.aclr(rst),
	.cout(Cout),
	.q(SYNTHESIZED_WIRE_12));




Multiplier	b2v_Multiplier(
	.in1(SYNTHESIZED_WIRE_2),
	.in2(SYNTHESIZED_WIRE_13),
	.out(SYNTHESIZED_WIRE_9));


MUX16b	b2v_MUX(
	.sel(select),
	.data0x(SYNTHESIZED_WIRE_4),
	.data1x(SYNTHESIZED_WIRE_5),
	.result(SYNTHESIZED_WIRE_2));


Register	b2v_RegR(
	.ld(ldRFinal),
	.clk(clk),
	.rst(rst),
	.set1(InitRFinal),
	.set0(SYNTHESIZED_WIRE_6),
	.Sin(SYNTHESIZED_WIRE_7),
	.Sout(SYNTHESIZED_WIRE_1));


Register	b2v_Regt(
	.ld(ldT),
	.clk(clk),
	.rst(rst),
	.set1(initT),
	.set0(SYNTHESIZED_WIRE_8),
	.Sin(SYNTHESIZED_WIRE_9),
	.Sout(SYNTHESIZED_WIRE_13));


Register	b2v_Regx(
	.ld(ld),
	.clk(clk),
	.rst(rst),
	.set1(SYNTHESIZED_WIRE_10),
	.set0(SYNTHESIZED_WIRE_11),
	.Sin(x),
	.Sout(SYNTHESIZED_WIRE_4));


LUT	b2v_ROM(
	.clk(clk),
	.addr(SYNTHESIZED_WIRE_12),
	.w(SYNTHESIZED_WIRE_5));


endmodule
