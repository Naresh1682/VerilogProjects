`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:29:01 07/11/2023 
// Design Name: 
// Module Name:    synchron_row 
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
module synchron_row(
    input [3:0]row,
    input clk,
    input rst,
    output reg s_row
    );
	 reg A_row;
	 
	 always@(negedge clk or posedge rst)
	 begin
	 if(rst)
	 begin
	 A_row <=0;
	 s_row <=0;
	 end
	 
	 else
	 begin
	 A_row <= row[0]||row[1]||row[2]||row[3];
	 s_row <= A_row;
	 end
	 end


endmodule
