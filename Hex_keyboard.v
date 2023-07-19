`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:51:54 07/11/2023 
// Design Name: 
// Module Name:    Hex_keyboard 
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
module Hex_keyboard(
    input [3:0]row,
	 input s_row,
    input clk,
    input rst,
   // input key,
    output valid,
    output reg[3:0]code,
    output reg[3:0]col
    );
	 
	 reg[5:0]state,next_state;
	 
	 parameter s0 =6'b000001;
	 parameter s1 =6'b000010;
	 parameter s2 =6'b000100;
	 parameter s3 =6'b001000;
	 parameter s4 =6'b010000;
	 parameter s5 =6'b100000;
	 
	 assign valid = (state == s1||state==s2||state==s3||state==s4)&&row;
	 always@(row or col)
	 case({row,col})
	        8'b0001_0001:code =0;
		8'b0001_0010:code =1;
		8'b0001_0011:code =2;
		8'b0001_1000:code =3;
		8'b0010_0001:code =4;
		8'b0010_0010:code =5;
		8'b0010_0011:code =6;
                8'b0010_0100:code =7;
		8'b0011_0001:code =8;
		8'b0011_0010:code =9;
		8'b0011_0011:code =10;//A
		8'b0011_0100:code =11;//B
		8'b0100_0001:code =12;//C
		8'b0100_0010:code =13;//D
		8'b0100_0011:code =14;//E
		8'b0100_0100:code =15;//F
		default:code=0;
	endcase
	always@(posedge clk or posedge rst)
	if(rst)state<=s0;
	else state<= next_state;
	always@(state or s_row or row)
	begin
	next_state = state;
	col=0;
	case(state)
	  s0:begin 
	     col=15;
		  if(s_row)
		   next_state=s1;
		  end
		  
	  s1:begin
	     col=1;
		  if(row)
		    next_state=s5;
		  else
			 next_state=s2;
		  end
		  
	  s2:begin
	     col=2;
		  if(row)
		    next_state=s5;
		  else
		    next_state=s3;
			 
		  end
		  
	  s3:begin
	     col=4;
		  if(row)
		    next_state=s5;
		  else
		    next_state=s4;
		  end
		  
	  s4:begin
	     col=8;
		  if(row)
		    next_state=s5;
		  else
		    next_state=s0;
		  end
		  
	  s5:begin
	     col=15;
		  if(row==0)
		   next_state=s0;
		  end
	endcase
end	
	

		

endmodule
