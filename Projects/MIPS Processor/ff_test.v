`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:22:34 04/07/2020
// Design Name:   FlipFlop
// Module Name:   C:/Users/Yamin Yee/Documents/440/Lab/Lab5/FF_Reg/ff_test.v
// Project Name:  FF_Reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ff_test;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] d;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	FlipFlop uut (
		.clk(clk), 
		.rst(rst), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

