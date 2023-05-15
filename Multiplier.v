module Multiplier(input [15:0]in1,in2,output [15:0] out);
	wire [31:0]residue;
	assign residue = in1 * in2;
	assign out = residue[31:16];
endmodule