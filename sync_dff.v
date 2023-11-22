module sync_dff(input clk,rst,din, 
				output reg q, output qb);		
	always@(posedge clk)
		begin
			if(rst)
				q <= 1'b0;
			else
				q <= din;
		end
		
	assign qb = ~q;
endmodule


			
			
			
			
