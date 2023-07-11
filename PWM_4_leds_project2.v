`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:03:16 07/01/2023 
// Design Name: 
// Module Name:    pwm-moreled 
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
module pwm_moreled(
    input clk,
    output [4:0]led
    );
reg [0:7] counter=0;
always@(posedge clk)
begin
	 if(counter<120)
	   counter=counter+1;
	 else
	    counter=0;
end
assign led[0]=(counter<20)?1:0;
assign led[1]=(counter<40)?1:0;
assign led[2]=(counter<60)?1:0;
assign led[3]=(counter<80)?1:0;
assign led[4]=(counter<100)?1:0;



endmodule
