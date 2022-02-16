module REGFILE (A,B,C,RS1,RS2,RD,clock,reset,w);
	input [31:0] C;
	input [4:0] RS1,RS2,RD;
	input clock,reset,w;
	output [31:0] A,B;

	wire [31:0] D;
	DECODER3 dec0 (RD,D);

	wire [31:0] i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31;

	REGISTER3 reg0 (C, io, (W&D[0]), clock, reset);
	REGISTER3 reg1 (C, i1, (W&D[1]), clock, reset);
	REGISTER3 reg2 (C, i2, (W&D[2]), clock, reset);
	REGISTER3 reg3 (C, i3, (W&D[3]), clock, reset);
	REGISTER3 reg4 (C, i4, (W&D[4]), clock, reset);
	REGISTER3 reg5 (C, i5, (W&D[5]), clock, reset);
	REGISTER3 reg6 (C, i6, (W&D[6]), clock, reset);
	REGISTER3 reg7 (C, i7, (W&D[7]), clock, reset);
	REGISTER3 reg8 (C, i8, (W&D[8]), clock, reset);
	REGISTER3 reg9 (C, i9, (W&D[9]), clock, reset);
	REGISTER3 reg10 (C, i10, (W&D[10]), clock, reset);
	REGISTER3 reg11 (C, i11, (W&D[11]), clock, reset);
	REGISTER3 reg12 (C, i12, (W&D[12]), clock, reset);
	REGISTER3 reg13 (C, i13, (W&D[13]), clock, reset);
	REGISTER3 reg14 (C, i14, (W&D[14]), clock, reset);
	REGISTER3 reg15 (C, i15, (W&D[15]), clock, reset);
	REGISTER3 reg16 (C, i16, (W&D[16]), clock, reset);
	REGISTER3 reg17 (C, i17, (W&D[17]), clock, reset);
	REGISTER3 reg18 (C, i18, (W&D[18]), clock, reset);
	REGISTER3 reg19 (C, i19, (W&D[19]), clock, reset);
	REGISTER3 reg20 (C, i20, (W&D[20]), clock, reset);
	REGISTER3 reg21 (C, i21, (W&D[21]), clock, reset);
	REGISTER3 reg22 (C, i22, (W&D[22]), clock, reset);
	REGISTER3 reg23 (C, i23, (W&D[23]), clock, reset);
	REGISTER3 reg24 (C, i24, (W&D[24]), clock, reset);
	REGISTER3 reg25 (C, i25, (W&D[25]), clock, reset);
	REGISTER3 reg26 (C, i26, (W&D[26]), clock, reset);
	REGISTER3 reg27 (C, i27, (W&D[27]), clock, reset);
	REGISTER3 reg28 (C, i28, (W&D[28]), clock, reset);
	REGISTER3 reg29 (C, i29, (W&D[29]), clock, reset);
	REGISTER3 reg30 (C, i30, (W&D[30]), clock, reset);
	REGISTER3 reg31 (C, i31, (W&D[31]), clock, reset);
	
	MUX3 M1 (i0,i1, i2, i3, i4, i5 , i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31);
	
	MUX3 M2 (i0,i1, i2, i3, i4, i5 , i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31);
	
endmodule
