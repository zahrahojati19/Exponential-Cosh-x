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
// CREATED		"Mon Jun 20 22:00:40 2022"

module Cosh(
	start,
	clk,
	rst,
	x,
	busy,
	ready,
	Result
);


input wire	start;
input wire	clk;
input wire	rst;
input wire	[15:0] x;
output wire	busy;
output wire	ready;
output wire	[15:0] Result;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;





CoshDP	b2v_inst(
	.initC(SYNTHESIZED_WIRE_0),
	.cnt(SYNTHESIZED_WIRE_1),
	.ld(SYNTHESIZED_WIRE_2),
	.select(SYNTHESIZED_WIRE_3),
	.ldRFinal(SYNTHESIZED_WIRE_4),
	.ldT(SYNTHESIZED_WIRE_5),
	.clk(clk),
	.rst(rst),
	.InitRFinal(SYNTHESIZED_WIRE_6),
	.initT(SYNTHESIZED_WIRE_7),
	.x(x),
	.Cout(SYNTHESIZED_WIRE_8),
	.RESULT(Result));


Controller	b2v_inst2(
	.start(start),
	.cout(SYNTHESIZED_WIRE_8),
	.clk(clk),
	.rst(rst),
	.cnt(SYNTHESIZED_WIRE_1),
	.initC(SYNTHESIZED_WIRE_0),
	.ROM(SYNTHESIZED_WIRE_3),
	.ld(SYNTHESIZED_WIRE_2),
	.ldT(SYNTHESIZED_WIRE_5),
	.initT(SYNTHESIZED_WIRE_7),
	.initRfinal(SYNTHESIZED_WIRE_6),
	.ldRfinal(SYNTHESIZED_WIRE_4),
	.busy(busy),
	.ready(ready));
	defparam	b2v_inst2.Add = 4'b0110;
	defparam	b2v_inst2.Begin = 4'b0010;
	defparam	b2v_inst2.idle = 4'b0000;
	defparam	b2v_inst2.init = 4'b0001;
	defparam	b2v_inst2.Mult1 = 4'b0011;
	defparam	b2v_inst2.Mult2 = 4'b0100;
	defparam	b2v_inst2.Mult3 = 4'b0101;
	defparam	b2v_inst2.Mult4 = 4'b0111;


endmodule
