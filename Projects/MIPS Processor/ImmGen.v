`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:19 04/05/2020 
// Design Name: 
// Module Name:    ImmGen 
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
module ImmGen(InstCode, ImmOut);
input [31:0] InstCode;
output reg [31:0] ImmOut;

always @(InstCode)
begin 
	case (InstCode[6:0])
	7'b0000_0011 : ImmOut = {InstCode[31] ? {20{1'b1}} : 20'b0, InstCode[31:20]};
	7'b0010_0011 : ImmOut = {InstCode[31] ? {20{1'b1}} : 20'b0, InstCode[31:20]};
	7'b0100_0011 : ImmOut = {InstCode[31] ? {20{1'b1}} : 20'b0, InstCode[31:25], InstCode[11:7]};
	7'b0001_0111 : ImmOut = {InstCode[31:12], 12'b0};
	default 			ImmOut = {32'b0};
	endcase
end

endmodule
