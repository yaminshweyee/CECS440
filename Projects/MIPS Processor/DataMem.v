`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Yamin Yee 
// 
// Create Date:    18:43:29 04/21/2020 
// Design Name: 
// Module Name:    DataMem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataMem( address, MemWrite, MemRead, WriteData, ReadData);

	input [8:0] address;
	input wire [31:0] WriteData;
	input  MemWrite, MemRead;
	
	output [31:0] ReadData;

	reg [31:0] Mem [127:0]; //2^8 of 32 bit memory

	assign ReadData = MemRead ? Mem[address[8:0]] : 0;
	
	
	//always@(address,WriteData)
	always@(*)
	begin
		if(MemWrite) begin
			Mem[address[8:0]] <= WriteData; 
		end
	end
		
endmodule
