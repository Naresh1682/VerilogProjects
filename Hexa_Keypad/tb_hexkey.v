`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:51:36 07/11/2023
// Design Name:   Hex_keyboard
// Module Name:   C:/Users/lokes/OneDrive/Desktop/verilog proj/hex_key/tb_hexkey.v
// Project Name:  hex_key
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Hex_keyboard
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_hexkey;

	// Inputs
	reg [3:0] row;
	reg s_row;
	reg clk;
	reg rst;

	// Outputs
	wire valid;
	wire [3:0] code;
	wire [3:0] col;

	// Instantiate the Unit Under Test (UUT)
	Hex_keyboard uut (
		.row(row), 
		.s_row(s_row), 
		.clk(clk), 
		.rst(rst), 
		.valid(valid), 
		.code(code), 
		.col(col)
	);
	Row_signal uut (

	initial begin
		// Initialize Inputs
		row = 0;
		s_row = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

