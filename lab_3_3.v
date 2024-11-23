`timescale 1 ns / 100 ps

`define primary_out   5
`define fan_out_1     0.5
`define fan_out_2     1
`define fan_out_3     1.5
`define time_delay_1  1
`define time_delay_2  2
`define time_delay_3  4
`define time_delay_4  5


module Lab3_3  (in1, in2, out3);
		input in1, in2;
		output out3;
		
		wire nt,a1,a2,o;
		
		not  #(`time_delay_1 + `fan_out_3)  not1(nt, in1);
		and  #(`time_delay_2 + `fan_out_1)  and1(a1,in2,in1);
		and  #(`time_delay_2 + `fan_out_2)  and2(a2,in1,nt);
		or	 #(`time_delay_2 + `fan_out_1)  or1(o,nt,a2);
		nand #(`time_delay_4 + `primary_out) nand1(out3,a2,o,nt,a1);
		
endmodule