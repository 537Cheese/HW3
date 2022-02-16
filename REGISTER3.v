module REGISTER3 (Din, load, clock, reset, Dout);
parameter N = 32;
input clock;
input reset;
input load;
input [N-1:0] Din;
output [N-1:0] Dout;

reg [N-1:0] Dout;

always@(posedge clock)
	if (reset == 1) begin
		Dout <= 0;
		end
		
	else if(load == 1) begin
		Dout <= Din;
	end
	
endmodule
