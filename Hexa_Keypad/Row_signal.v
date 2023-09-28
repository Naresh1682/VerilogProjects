`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:07:24 07/11/2023 
// Design Name: 
// Module Name:    Row_signal 
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
module Row_signal(
    input [15:0]key,
    input [3:0]col,
    output reg [3:0]row
    );
	 
	 always @(key or col)begin
	 row[0]= key[0]&&col[0]||key[1]&&col[1]||key[2]&&col[2]||key[3]&&col[3];
	 row[1]= key[4]&&col[0]||key[5]&&col[1]||key[6]&&col[2]||key[7]&&col[3];
	 row[2]= key[8]&&col[0]||key[9]&&col[1]||key[10]&&col[2]||key[11]&&col[3];
	 row[3]= key[12]&&col[0]||key[13]&&col[1]||key[14]&&col[2]||key[15]&&col[3];
    end

endmodule
