`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:35:42 04/09/2020
// Design Name:   adder
// Module Name:   C:/Users/Yamin Yee/Documents/440/Lab/Lab5/FF_Reg/adder_tb.v
// Project Name:  FF_Reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_tb;

	// Inputs
	reg [7:0] A;

	// Outputs
	wire [7:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.A(A), 
		.Sum(Sum) 
	);

	initial begin
		// Initialize Inputs
		A = 8'h0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A =8'h10;

		
		#100
		
		A = 8'h15;
		
		#100;
		
		A = 8'h11;
		
	
		
		#100;
        
		// Add stimulus here
	end
      
endmodule

