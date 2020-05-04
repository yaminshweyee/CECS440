`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:45:40 04/07/2020
// Design Name:   RegFile
// Module Name:   C:/Users/Yamin Yee/Documents/440/Lab/Lab5/FF_Reg/RegFile_Test.v
// Project Name:  FF_Reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module RegFile_Test;

	// Inputs
	reg clk;
	reg rst;
	reg rg_wrt_en;
	reg [4:0] rg_wrt_addr;
	reg [4:0] rg_rd_addr1;
	reg [4:0] rg_rd_addr2;
	reg [31:0] rg_wrt_data;
	

	// Outputs
	wire [31:0] rg_rd_data1;
	wire [31:0] rg_rd_data2;

	// Instantiate the Unit Under Test (UUT)
	RegFile uut (
		.clk(clk), 
		.rst(rst), 
		.rg_wrt_en(rg_wrt_en), 
		.rg_wrt_addr(rg_wrt_addr), 
		.rg_rd_addr1(rg_rd_addr1), 
		.rg_rd_addr2(rg_rd_addr2), 
		.rg_wrt_data(rg_wrt_data),                              
		.rg_rd_data1(rg_rd_data1), 
		.rg_rd_data2(rg_rd_data2)
	);

		always begin 
		#10;
		
		clk = ~clk;
		end
		
		initial begin
		  clk = 0; 
        rst = 1;
        #100; 
        rst = 0;
        #10;
        rg_wrt_en = 1;
        rg_wrt_addr = 8'h18;
        rg_wrt_data = 8'h0000_0045;
     end
		
	
     
endmodule

