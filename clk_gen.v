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

//using if else
module clk_gen3(output reg clk3);
	initial clk3 = 0;
	
	always begin
		if(clk3)
			#1 clk3 = 1'b0;
		else
			#1 clk3 = 1'b1;
		end
endmodule

//add and subtract 
module clk_gen4(output reg clk4);
	initial clk4 = 0;
	
	always begin
		#1 clk4 = clk4 + 1'b1;
		#1 clk4 = clk4 - 1'b1;
	end
endmodule


		
