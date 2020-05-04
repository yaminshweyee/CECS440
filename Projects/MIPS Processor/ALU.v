`timescale 1ns / 1ps

/***********************************************************************
* File Name: ALU.v
* Project:  CECS 440 Lab 4
* Written by: Anthony Paguio & Yamin Yee
* Date: March 26, 2020

* The alu status flags represent the Y output, zero (Z), 
* and a carry out (C).
***********************************************************************/

module ALU(A,B,Alu_Op,C,O,Z,R);

	input [31:0] A,B;
	input [3:0] Alu_Op;
	output reg [31:0] R;       
	output reg C,O,Z;

	always@(A or B or Alu_Op) begin
		case(Alu_Op)
			4'b0000: {C,R}= {1'b0,A & B};	// AND				// logic AND
			4'b0001: {C,R}= {1'b0,A | B};	//OR				// logic OR
			4'b0010: {C,R}= A + B; //ADD						    // ADD
			4'b0110: {C,R}= A - B; //Subtract							// SUBTRACT
			4'b0111: {C,R}= A < B; // Set less than							// LESS THAN
			4'b1100: {C,R}= {1'b0, ~A | ~B};	 //NOR gate				// logic NOR
			4'b1111: {C,R}= A == B;  	// EQUAL
			default:	{C,R}= {1'b0, A};
		endcase
		
		//handle status flags
		O = R[31];
		if (R ==32'b0)
			Z =1'b1;
		else
			Z =1'b0;
		end //end always
		
		

endmodule
