`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:12:01 04/07/2020
// Design Name:   InstMem
// Module Name:   C:/Users/Yamin Yee/Documents/440/Lab/Lab5/FF_Reg/instr_mem_test.v
// Project Name:  FF_Reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstMem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstMem_test;

	// Inputs
	reg [7:0] addr;
	wire [31:0] instruction;
	// Instantiate the Unit Under Test (UUT)
	InstMem uut (
		.addr(addr),
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		addr = 3;

		// Wait 100 ns for global reset to finish
		#100;
		
		
	
        
		// Add stimulus here
	end
      
endmodule

