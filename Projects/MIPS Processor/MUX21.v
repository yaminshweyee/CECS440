`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Yamin Yee
// 
// Create Date:    19:23:33 04/05/2020 
// Design Name: 	
// Module Name:    MUX21 
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
module MUX21(D0, D1, S, Y);

input S; //select line
input [31:0] D0, D1;

output [31:0] Y;

assign Y = (!S & D0) | (S & D1);


endmodule
