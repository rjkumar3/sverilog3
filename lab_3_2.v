`timescale 1ns / 100ps

`define primary_out	5
`define fan_out_1	0.5
`define fan_out_2	1
`define fan_out_3	1.5
`define time_delay_1	1
`define time_delay_2	2
`define time_delay_3	4
`define time_delay_4	5

module lab_3_2 (in1, in2, out2);
	input in1, in2;
	output out2;

	wire nt, a1, a2;

	not #(`time_delay_1 + `fan_out_2)	not1(nt, in1);
	and #(`time_delay_2 + `fan_out_1)	and1(a1, in2, in1);
	and #(`time_delay_2 + `fan_out_1)	and2(a2, in1, nt);
	nand #(`time_delay_3 + `primary_out)	nand1(out2, nt, a1, a2);
endmodule

