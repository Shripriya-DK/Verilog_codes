// Design
module mux21_data(input i0,i1,s, output y );
	assign y = (~s&i0)|(s&i1);
endmodule

// Test bench

module mux2_1_tb;
reg s,i0,i1;
wire y;
mux2_1 dut(i0,i1,s,y);
initial
begin
s0=0; i0=0; i1=0;
#10;
s0=0; i0=0; i1=1;
#10;
s0=1; i0=1; i1=0;
#10
s0=1; i0=1; i1=1;
#10;
end 
endmodule
