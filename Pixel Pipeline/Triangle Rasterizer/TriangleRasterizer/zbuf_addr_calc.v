`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:21 08/22/2013 
// Design Name: 
// Module Name:    zbuf_addr_calc 
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
`define FP_639 16'h60FE
`define FP_479 16'h5F7C
module zbuf_addr_calc(
	clk,
	rst,
	nd,
	us_rfd,
	fp_x,
	fp_y,

	ds_rfd,
	rdy,

	zbuff_addr,
	frag_id

    );

	input clk;
	input rst;
	input nd;
	output us_rfd;

	input [15:0] fp_x;
	input [15:0] fp_y;

	input ds_rfd;
	output reg rdy;
	output reg [31:0] zbuff_addr;
	output reg [18:0] frag_id;

	parameter ZBUF_LOW_ADDR = 32'h00000000;

	wire [15:0] fp_x_640, fp_y_480;
	fp_mul_micro x_mul(
		.clk(clk),
		.ce(x_2int_rfd),
		.operation_rfd(x_mul_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(x_mul_rdy),
		.a(fp_x),
		.b(`FP_639),
		.result(fp_x_640)
	);

	fp_mul_micro y_mul(
		.clk(clk),
		.ce(y_2int_rfd),
		.operation_rfd(y_mul_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(y_mul_rdy),
		.a(fp_y),
		.b(`FP_479),
		.result(fp_y_480)
	);

	wire [12:0] x_int, y_int;
	reg final_calc_rdy;
	fp_fp2int_micro x_2int (
		.a(fp_x_640),
		.operation_nd(x_mul_rdy),
		.operation_rfd(x_2int_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd),
		.result(x_int),
		.rdy(x_int_rdy)
	);

	fp_fp2int_micro y_2int (
		.a(fp_y_480),
		.operation_nd(y_mul_rdy),
		.operation_rfd(y_2int_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd),
		.result(y_int),
		.rdy(y_int_rdy)
	);

	wire [7:0] blk_addr = y_int[12:5] * 8'd20 + x_int[12:5];
	wire [18:0] fid = {blk_addr, y_int[4:0] * 6'd32 + x_int[4:0]};
	always @(posedge clk)begin
		if(rst)begin
			rdy 			<= 1'b0;
			final_calc_rdy 	<= 1'b0;
			zbuff_addr 		<= 32'h00000000;
			frag_id			<= 19'd0;
		end else if(ds_rfd)begin
			rdy 			<= x_int_rdy & y_int_rdy;
			final_calc_rdy 	<= ds_rfd;
			zbuff_addr 		<= {13'd0, blk_addr, 11'd0}  + ZBUF_LOW_ADDR;
			frag_id			<= fid;
		end else begin
			rdy 			<= rdy;
			final_calc_rdy 	<= ds_rfd;
			zbuff_addr 		<= zbuff_addr;
			frag_id 		<= frag_id;
		end
	end

	assign us_rfd = rst? 0 : x_mul_rfd & y_mul_rfd;
endmodule
