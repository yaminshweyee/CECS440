`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:16:04 04/23/2020
// Design Name:   ALU
// Module Name:   C:/Users/Yamin Yee/Documents/440/Lab/Lab5/FF_Reg/alu_test.v
// Project Name:  FF_Reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] Alu_Op;

	// Outputs
	wire C;
	wire O;
	wire Z;
	wire [31:0] R;

	integer i;
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.Alu_Op(Alu_Op), 
		.C(C), 
		.O(O), 
		.Z(Z), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Alu_Op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 32'h0A;
		B = 32'h64;
		
		for(i=0; i <= 7; i = i+1)
		begin
			Alu_Op = Alu_Op + 4'h01; 
			#100;
		end 
        
		// Add stimulus here

	end
      
endmodule

