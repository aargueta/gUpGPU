`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:12:00 08/03/2013 
// Design Name: 
// Module Name:    bounding_box 
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
`define FP_ONE	16'h3C00
`define FP_NEG_ONE 16'hBC00
`define FP_640	16'h6100
`define FP_480	16'h5F80
`define FP_640TH 16'h1666
`define FP_480TH 16'h1844
module bounding_box(
	clk,
	rst,
	nd,
	us_rfd,

	v1_posX, v1_posY,
	v2_posX, v2_posY, 
	v3_posX, v3_posY,

	ds_rfd,
	rdy,
	fp_minX, fp_maxX, fp_minY, fp_maxY
);
	parameter FP_SIZE = 16;

	input clk;
	input rst;
	input nd;
	output us_rfd;

	input [FP_SIZE-1:0] v1_posX;
	input [FP_SIZE-1:0] v1_posY;
	input [FP_SIZE-1:0] v2_posX;
	input [FP_SIZE-1:0] v2_posY;
	input [FP_SIZE-1:0] v3_posX;
	input [FP_SIZE-1:0] v3_posY;

	input ds_rfd;
	output rdy;
	output [FP_SIZE-1:0] fp_minX;
	output [FP_SIZE-1:0] fp_maxX;
	output [FP_SIZE-1:0] fp_minY;
	output [FP_SIZE-1:0] fp_maxY;

	wire [FP_SIZE-1:0] min_X12;
	wire min_x12_rdy;
	wire min_x12_rfd;

	wire [FP_SIZE-1:0] min_X123;
	wire min_x123_rdy;
	wire min_x123_rfd;

	wire [FP_SIZE-1:0] min_Y12;
	wire min_y12_rdy;
	wire min_y12_rfd;

	wire [FP_SIZE-1:0] min_Y123;
	wire min_y123_rdy;
	wire min_y123_rfd;

	wire x_gto_s1, x_gtno_s1;
	reg x_gto, x_gtno;
	wire [FP_SIZE-1:0] max_X12;
	wire max_x12_rdy;
	wire max_x12_rfd;

	wire [FP_SIZE-1:0] max_X123;
	wire max_x123_rdy;
	wire max_x123_rfd;

	wire y_gto_s1, y_gtno_s1;
	reg y_gto, y_gtno;
	wire [FP_SIZE-1:0] max_Y12;
	wire max_y12_rdy;
	wire max_y12_rfd;

	wire [FP_SIZE-1:0] max_Y123;
	wire max_y123_rdy;
	wire max_y123_rfd;

	// Capturing input for 2nd stage
	reg [FP_SIZE-1:0] 	v3_posX_s1b, v3_posY_s1b;
	reg [FP_SIZE-1:0] 	v3_posX_s2, v3_posY_s2;

	wire stage1_done = min_x12_rdy | min_y12_rdy | max_x12_rdy | max_y12_rdy;

	always @(posedge clk)begin
		v3_posX_s1b <= rst? 0 : v3_posX;
		v3_posY_s1b <= rst? 0 : v3_posY;
		v3_posX_s2 <= rst? 0 : v3_posX_s1b;
		v3_posY_s2 <= rst? 0 : v3_posY_s1b;

		x_gto	<= rst? 0 : (stage1_done? x_gto_s1 : x_gto);
		x_gtno	<= rst? 0 : (stage1_done? x_gtno_s1 : x_gtno);
		y_gto	<= rst? 0 : (stage1_done? y_gto_s1 : y_gto);
		y_gtno	<= rst? 0 : (stage1_done? y_gtno_s1 : y_gtno);
	end

	/*** Min X ***/
	fp_min fp_min_x12(
		.clk(clk),
		.rst(rst),
		.nd(nd),
		.us_rfd(min_x12_rfd),
		.a(v1_posX), 
		.b(v2_posX), 
		.ds_rfd(min_x123_rfd),
		.rdy(min_x12_rdy), 
		.min(min_X12)
	);

	fp_min fp_min_x123(
		.clk(clk),
		.rst(rst),
		.nd(min_x12_rdy),
		.us_rfd(min_x123_rfd),
		.a(min_X12), 
		.b(v3_posX_s2),
		.ds_rfd(ds_rfd),
		.rdy(min_x123_rdy), 
		.min(min_X123)
	);

	/*** Min Y ***/
	fp_min fp_min_y12(
		.clk(clk),
		.rst(rst),
		.nd(nd),
		.us_rfd(min_y12_rfd),
		.a(v1_posY), 
		.b(v2_posY),
		.ds_rfd(min_y123_rfd),
		.rdy(min_y12_rdy), 
		.min(min_Y12)
	);

	fp_min fp_min_y123(
		.clk(clk),
		.rst(rst),
		.nd(min_y12_rdy),
		.us_rfd(min_y123_rfd),
		.a(min_Y12), 
		.b(v3_posY_s2),
		.ds_rfd(ds_rfd),
		.rdy(min_y123_rdy), 
		.min(min_Y123)
	);
	
	/*** X upper bounds check ***/
	fp_a3gto gto_x123(
		//.clk(clk),
		//.rst(rst),
		//.nd(nd),
		//.us_rfd(gto_x123_rfd),
		.a(v1_posX),
		.b(v2_posX),
		.c(v3_posX),
		//.ds_rfd(ds_rfd),
		//.rdy(gto_x123_rdy),
		.gto(x_gto_s1),
		.gtno(x_gtno_s1)
	);
	
	/*** Max X ***/
	fp_max fp_max_x12(
		.clk(clk),
		.rst(rst),
		.nd(nd),
		.us_rfd(max_x12_rfd),
		.a(v1_posX), 
		.b(v2_posX),
		.ds_rfd(max_x123_rfd),
		.rdy(max_x12_rdy), 
		.max(max_X12)
	);

	fp_max fp_max_x123(
		.clk(clk),
		.rst(rst),
		.nd(max_x12_rdy),
		.us_rfd(max_x123_rfd),
		.a(max_X12), 
		.b(v3_posX_s2),
		.ds_rfd(ds_rfd),
		.rdy(max_x123_rdy), 
		.max(max_X123)
	);
	
	/*** Y upper bounds check ***/
	fp_a3gto gto_y123(
		//.clk(clk),
		//.rst(rst),
		//.nd(nd),
		//.us_rfd(gto_y123_rfd),
		.a(v1_posY),
		.b(v2_posY),
		.c(v3_posY),
		//.ds_rfd(ds_rfd),
		//.rdy(gto_y123_rdy),
		.gto(y_gto_s1),
		.gtno(y_gtno_s1)
	);
	
	/*** Max Y ***/
	fp_max fp_max_y12(
		.clk(clk),
		.rst(rst),
		.nd(nd),
		.us_rfd(max_y12_rfd),
		.a(v1_posY), 
		.b(v2_posY), 
		.ds_rfd(max_y123_rfd),
		.rdy(max_y12_rdy),
		.max(max_Y12)
	);
 	
	fp_max fp_max_y123(
		.clk(clk),
		.rst(rst),
		.nd(max_y12_rdy),
		.us_rfd(max_y123_rfd),
		.a(max_Y12), 
		.b(v3_posY_s2), 
		.ds_rfd(ds_rfd),
		.rdy(max_y123_rdy),
		.max(max_Y123)
	);

	wire [FP_SIZE-1:0] fp_minX = x_gtno? `FP_NEG_ONE : min_X123;
	wire [FP_SIZE-1:0] fp_maxX = x_gto? `FP_ONE : max_X123;
	wire [FP_SIZE-1:0] fp_minY = y_gtno? `FP_NEG_ONE : min_Y123;
	wire [FP_SIZE-1:0] fp_maxY = y_gto? `FP_ONE : max_Y123;	

	assign us_rfd = max_x12_rfd & min_x12_rfd & max_y12_rfd & min_y12_rfd;
	assign rdy = max_x123_rdy & min_x123_rdy & max_x123_rdy & min_y123_rdy;
endmodule
