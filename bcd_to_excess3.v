`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2023 08:37:07 PM
// Design Name: 
// Module Name: bcd_to_excess3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcd_to_excess3 (in,out);

	input [3:0] in;
	output [3:0] out;
	
	assign out[0]=~in[0];
	assign out[1]=in[0]~^in[1];
	assign out[2]=in[2]^(in[0]|in[1]);
	assign out[3]=(in[2]&(in[0]|in[1]))|in[3];
	
endmodule 
