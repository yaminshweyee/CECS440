`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:28:59 04/07/2020
// Design Name:   FlipFlop
// Module Name:   C:/Users/Yamin Yee/Documents/440/Lab/Lab5/FF_Reg/FlipFlop_test.v
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

module FlipFlop_test;

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
	end
	
	always#20 clk = ~clk; //20ns clk duration

		// Wait 100 ns for global reset to finish
		initial
		begin
		#100;
		rst = 1; //reset is active 
		d = 7'h1;
		
		#100;
		rst = 0; //reset is inactive 
		d = 7'h38;
		
		#100;
		rst = 0; //reset is inactive 
		d = 7'hf0;
		
		#100;
		rst = 0; //reset is inactive 
		d = 7'h10;
        
		// Add stimulus here
	end
      
endmodule

