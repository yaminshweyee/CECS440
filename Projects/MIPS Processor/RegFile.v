`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:10 04/05/2020 
// Design Name: 		Yamin Yee
// Module Name:    RegFile 
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
module RegFile( clk, rst, rg_wrt_en, rg_wrt_addr, rg_rd_addr1, rg_rd_addr2, rg_wrt_data, rg_rd_data1, rg_rd_data2);
input clk,rst;
input rg_wrt_en;//write
input [4:0] rg_wrt_addr; // Write Register Address
input [4:0] rg_rd_addr1, rg_rd_addr2; // Two Register
input [31:0] rg_wrt_data; // Write Data

output wire [31:0] rg_rd_data1, rg_rd_data2;	

// signal declaration 
reg [31:0] regFile [31:0];

integer i;

assign rg_rd_data1 = regFile[rg_rd_addr1];
assign rg_rd_data2 = regFile[rg_rd_addr2];

 always @(posedge rst, posedge clk)
    begin
        if (rst) begin 
            for(i=0; i<32; i=i+1)
                regFile[i] <= 32'b0;
        end else if(rg_wrt_en) begin 
            regFile[rg_wrt_addr] <= rg_wrt_data; 
        end
    end


endmodule 
					
		
