`timescale 1ns/1ps
module REGTB();

    reg [31:0] C;
    reg [4:0] RS1,RS2,RD;
    reg clock,reset,W;
    wire [31:0] A,B;

    REGFILE dut (A,B,C,RS1,RS2,RD,clock,reset,W);

    initial
        clock = 1'b0;
    always begin
        #5 clock = (clock == 0)? 1:0;
    end

    initial
        #10;
    always begin
        C <= {$random, $random}; // $random is a system command that generates a 32 random number
        RD <= RD + 5'b1;
        RS1 <= RS1 + 5'b1;
        RS2 <= RS2 + 5'b1;
        #10 ;
end

    initial begin
        RD <= 5'b00000;
        RS1 <= 5'b00000;
        RS2 <= 5'b00000;
        reset = 1'b1;
        W = 1'b1;
        #10
        reset = 1'b0;
    end

    initial begin
        #500 $stop;
    end

endmodule