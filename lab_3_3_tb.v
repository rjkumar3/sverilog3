`timescale 1 ns /100 ps

`define monitor_str_1 "%d: in1 = %b, in2 = %b, a1 = %b, a2 = %b, nt =%b, o = %b, | out = %b"

module Lab3_3_tb();
	reg in1, in2;
	wire out;
	wire a1, a2, nt, o;
	Lab3_3 UUT(in1,in2,out);
	initial begin
	$monitor(`monitor_str_1, $time, in1,in2, UUT.a1, UUT.a2, UUT.nt, o , out);
	end
	initial begin
	$vcdpluson;
	#15 	in1  = 1'b0;
			in2  = 1'b0;

	#15 	in1  = 1'b0;
			in2  = 1'b1;

	#15 	in1  = 1'b1;
			in2  = 1'b0;

	#15     in1  = 1'b1;
			in2  = 1'b1;
	#15 $finish;
	end
endmodule