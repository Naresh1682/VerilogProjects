`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:06 07/01/2023 
// Design Name: 
// Module Name:    pwm_w 
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
module pwm_w(
    input clk,
    output led
    );
reg [7:0] counter=0;
always@(posedge clk)
begin
	 if(counter<100)
	   counter=counter+1;
	 else
	    counter=0;
end
assign led=(counter<20)?1:0;


endmodule
