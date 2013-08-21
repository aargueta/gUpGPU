`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:50 08/20/2013 
// Design Name: 
// Module Name:    inside_triangle 
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
`define FP_ZERO 16'h0000
`define FP_ONE	16'h3C00
module inside_triangle(
	clk,
	rst,
	nd,
	us_rfd,

	u, 
	v,
	w,

	ds_rfd,
	rdy,
	inside
);

	input clk;
	input rst;
	input nd;
	output us_rfd;

	input [15:0] u;
	input [15:0] v;
	input [15:0] w;

	input ds_rfd;
	output rdy;
	output inside;

	wire u_low_rfd, u_is_low, u_low_rdy;
	wire u_high_rfd, u_is_high, u_high_rdy;

	wire v_low_rfd, v_is_low, v_low_rdy;
	wire v_high_rfd, v_is_high, v_high_rdy;

	wire w_low_rfd, w_is_low, w_low_rdy;
	wire w_high_rfd, w_is_high, w_high_rdy;

	reg any_low;
	always @(posedge clk)begin
		if(rst)
			any_low <= 0;
		else if(nd)
			any_low <= u_is_low | v_is_low | w_is_low;
		else
			any_low <= any_low;
	end

	fp_ltz u_low(
		.a(u), 
		.ltz(u_is_low)
	);

	fp_gt_micro u_high (
		.a(u),
		.b(`FP_ONE),
		.operation_nd(nd),
		.operation_rfd(u_high_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd), 
		.result(u_is_high),
		.rdy(u_high_rdy)
	);

	fp_ltz v_low(
		.a(v), 
		.ltz(v_is_low)
	);

	fp_gt_micro v_high (
		.a(v),
		.b(`FP_ONE),
		.operation_nd(nd),
		.operation_rfd(v_high_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd), 
		.result(v_is_high),
		.rdy(v_high_rdy)
	);

	fp_ltz w_low(
		.a(w), 
		.ltz(w_is_low)
	);

	fp_gt_micro w_high (
		.a(w),
		.b(`FP_ONE),
		.operation_nd(nd),
		.operation_rfd(w_high_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd), 
		.result(w_is_high),
		.rdy(w_high_rdy)
	);

	assign us_rfd = u_high_rfd & v_high_rfd & w_high_rfd;
	assign rdy = u_high_rdy & v_high_rdy & w_high_rdy;
	assign inside = u_is_high | v_is_high | w_is_high | any_low;

endmodule
