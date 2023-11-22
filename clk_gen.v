//Incrementing method
module clk_gen1(output reg clk1);
	initial clk1=0;
	
	always #1 clk1 = clk1+ 1'b1;
	initial 
	#20 $finish;
endmodule

//Negating method
module clk_gen2(output reg clk2);
	initial clk2=0;
	
	always #1 clk2 = ~clk2;
	
	initial 
	#20 $finish;
endmodule

//