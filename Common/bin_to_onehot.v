`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:31:23 08/23/2013 
// Design Name: 
// Module Name:    bin_to_onehot 
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
module bin_to_onehot(	
	clk,
	rst,
	bin,
	onehot
);
	input clk;
	input [BIN_WIDTH-1:0] bin;
	output reg [ONEHOT_WIDTH-1:0] onehot;

	parameter BIN_WIDTH = 4;
	localparam ONEHOT_WIDTH = 2 << (BIN_WIDTH - 1);

	genvar i;
	generate 
	for(i=0; i < ONEHOT_WIDTH; i = i + 1)
		begin: CONVERSION
			always @(posedge clk)
				onehot[i] = (i == bin)? 1'b1 : 1'b0;
		end
	endgenerate
endmodule
