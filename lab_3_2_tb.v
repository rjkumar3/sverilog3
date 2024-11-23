`timescale 1ns / 1ns

`define monitor_str_1 "%d: in1 = %b, in2 = %b, a1 = %b, a2 = %b, nt = %b ! out = %b"

module lab3_2_tb();
	reg in1, in2;
	wire out2;
	lab_3_2 UUT(in1,in2,out2);

	initial begin
		$monitor(`monitor_str_1, $time, in1, in2, UUT.nt, UUT.a1, UUT.a2, out2);
	end

	initial begin
	$vcdpluson;
	#15 in1 = 1'b0;
	    in2 = 1'b0;
	#15 in1 = 1'b0;
	    in2 = 1'b1;
	#15 in1 = 1'b1;
	    in2 = 1'b0;	
	#15 in1 = 1'b1;
	    in2 = 1'b1;
	#15 $finish;
	end
endmodule
