`timescale 1ns / 1ns

`define monitor_str_1 "%d: in1 = %b, in2 = %b, ! out = %b"

module lab3_1_tb();
	reg in1, in2;
	wire out;
	lab_3_1 UUT(in1,in2,out);

	initial begin
		$monitor(`monitor_str_1, $time, in1, in2, out);
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
