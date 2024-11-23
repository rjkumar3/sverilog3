`timescale 1ns / 100ps

`define primary_out	0
`define fan_out_1	0
`define fan_out_2	0
`define time_delay_1	0
`define time_delay_2	0
`define time_delay_3	0

module lab_3_1 (in1, in2, out1);
	input in1, in2;
	output out1;

	wire nt, a1, a2;

	not #(`time_delay_1 + `fan_out_2)	not1(nt, in1);
	and #(`time_delay_2 + `fan_out_1)	and1(a1, in2, in1);
	and #(`time_delay_2 + `fan_out_1)	and2(a2, in1, nt);
	nand #(`time_delay_3 + `primary_out)	nand1(out1, nt, a1, a2);
endmodule
