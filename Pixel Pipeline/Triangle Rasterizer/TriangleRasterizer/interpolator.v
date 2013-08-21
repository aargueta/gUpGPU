`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:27 08/20/2013 
// Design Name: 
// Module Name:    interpolator 
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
module interpolator(
	clk,
	rst,
	nd,
	us_rfd,

	a1,	a2,	a3,
	u,	v,	w,

	ds_rfd,
	rdy,

	out
);

	input clk;
	input rst;
	input nd;
	output us_rfd;

	input [15:0] a1;
	input [15:0] a2;
	input [15:0] a3;

	input [15:0] u;
	input [15:0] v;
	input [15:0] w;

	input ds_rfd;
	output rdy;

	output [15:0] out;

	wire [15:0] au, av, aw;

	fp_mul_micro a1_mul(
		.clk(clk),
		.ce(au_av_rfd),
		.operation_rfd(a1_mul_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(a1_mul_rdy),
		.a(a1),
		.b(u),
		.result(au)
	);

	fp_mul_micro a2_mul(
		.clk(clk),
		.ce(au_av_rfd),
		.operation_rfd(a2_mul_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(a2_mul_rdy),
		.a(a2),
		.b(v),
		.result(av)
	);

	fp_mul_micro a3_mul(
		.clk(clk),
		.ce(sum_rfd),
		.operation_rfd(a3_mul_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(a3_mul_rdy),
		.a(a3),
		.b(w),
		.result(aw)
	);

	reg [15:0] aw_delay;
	always @(posedge clk)begin
		if(rst)
			aw_delay <= 0;
		else if(a1_mul_rdy & a2_mul_rdy)
			aw_delay <= aw;
		else
			aw_delay <= aw_delay;
	end

	wire [15:0] au_av;
	fp_add_micro au_av_add (
		.clk(clk),
		.sclr(rst),
		.operation_nd(a1_mul_rdy & a2_mul_rdy),
		.operation_rfd(au_av_rfd),
		.a(au),
		.b(av),
		.ce(sum_rfd),
		.result(au_av),
		.rdy(au_av_rdy)
	);

	fp_add_micro sum (
		.clk(clk),
		.sclr(rst),
		.operation_nd(au_av_rdy),
		.operation_rfd(sum_rfd),
		.a(au_av),
		.b(aw_delay),
		.ce(ds_rfd),
		.result(out),
		.rdy(rdy)
	);
	
	assign us_rfd = a1_mul_rfd & a2_mul_rfd & a3_mul_rfd;

endmodule
