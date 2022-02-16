module DECODER_TESTBENCH;
wire [31:0]Dout;
reg [4:0] Din;
reg en;

DECODER3 dut (Din, en, Dout);
 
 initial begin
 $timeformat(-9, 1, "ns", 6);#1;
 Din[0] = 1'b0;
 Din[1] = 1'b0;
 Din[2] = 1'b0;
 Din[3] = 1'b0;
 Din[4] = 1'b0;
 en = 1'b0;
 #9; //time = 10
 en = 1'b1;
 #10;
 Din[0] = 1'b0;
 Din[1] = 1'b0;
 Din[2] = 1'b0;
 Din[3] = 1'b0;
 Din[4] = 1'b1;
 #10; //time = 20
 Din[0] = 1'b0;
 Din[1] = 1'b0;
 Din[2] = 1'b0;
 Din[3] = 1'b1;
 Din[4] = 1'b0;
 #10; //time = 30
 Din[0] = 1'b0;
 Din[1]= 1'b0;
 Din[2] = 1'b1;
 Din[3] = 1'b0;
 Din[4] = 1'b0;
 #10; //time = 40
 Din[0] = 1'b0;
 Din[1]= 1'b1;
 Din[2] = 1'b0;
 Din[3] = 1'b0;
 Din[4] = 1'b0;
 #10; 
 Din[0] = 1'b1;
 Din[1]= 1'b0;
 Din[2] = 1'b0;
 Din[3] = 1'b0;
 Din[4] = 1'b0;
 #5;
 en = 1'b0;
 #5;
 end

endmodule
