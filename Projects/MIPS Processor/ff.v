`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class: 			CECS 440 
// Engineer: 		Yamin Yee
// 
// Create Date:    18:20:13 04/05/2020 
// Design Name: 
// Module Name:   FlipFlop 
// Project Name: 	Signal-cycle Processor 
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
module FlipFlop(clk, rst, d, q );
//Input
input clk, rst;
input [7:0] d; //8 bits  
//Output
output reg [7:0] q; // 8bits 

always@(posedge clk,posedge rst)
if(rst)
	q <= 8'b0;
else
	q <= d;


endmodule
