// Design
module xnor_gate(a,b,y);
	input a,b;
	output  y;
	
	assign y = (a & b) | (~a & ~b);
	
endmodule

// Test bench
module xnor_gate_tb;
	reg a,b;
	wire y;
	
	xnor_gate dut(a,b,y);
	
	initial begin
		a = 1'b0;
		b = 1'b0;
		#10;
		a = 1'b0;
		b = 1'b1;
		#10;
		a = 1'b1;
		b = 1'b0;
		#10;
		a = 1'b1;
		b = 1'b1;
	end
	
	initial
	 $monitor("a=%b b=%b y=%b",a,b,y);
endmodule
