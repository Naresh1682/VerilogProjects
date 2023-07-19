`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:05 07/14/2023 
// Design Name: 
// Module Name:    check_hex_key 
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
module check_hex_key(
    );
	 
	wire [3:0]code;
	wire valid;
	wire [3:0]col;
	wire [3:0]row;
	reg clk,rst;
	reg [15:0]key;
	reg [39:0]pressed;
	parameter [39:0]key_0="key_0";
	parameter [39:0]key_1="key_1";
	parameter [39:0]key_2="key_2";
	parameter [39:0]key_3="key_3";
	parameter [39:0]key_4="key_4";
	parameter [39:0]key_5="key_5";
	parameter [39:0]key_6="key_6";
	parameter [39:0]key_7="key_7";
	parameter [39:0]key_8="key_8";
	parameter [39:0]key_9="key_9";
	parameter [39:0]key_A="key_A";
	parameter [39:0]key_B="key_B";
	parameter [39:0]key_C="key_C";
	parameter [39:0]key_D="key_D";
	parameter [39:0]key_E="key_E";
	parameter [39:0]key_F="key_F";
   parameter [39:0]None ="None";
	integer  j,k;
	always@(key)
	begin
	case(key)
	16'h0000: pressed = None;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	16'h0001:pressed = key_0;
	

endmodule
