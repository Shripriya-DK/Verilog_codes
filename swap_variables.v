module swap_variables;
	reg [3:0] a,b,c,d;
	reg [3:0] temp;
	reg clk;
	
	initial 
	begin
		clk = 1'b0;
		a = 4'd1;
		b = 4'd2;
		c = 4'd3;
		d = 4'd4;
		temp = 4'd0;
		forever #5 clk = ~clk;
	end
	
	//swap variables using temp
	always@(posedge clk)
		begin	
			temp = a;
			a = b;
			b = temp;
			$display("a=%d b=%d",a,b);
		end
	
	//swap variables wihout using temp
	always@(posedge clk)
		begin
			c <= d;
			d <= c;
			$monitor("c=%d d=%d",c,d);
		end
	
	initial 
		begin
			#20 $finish;
		end
endmodule
			
		
