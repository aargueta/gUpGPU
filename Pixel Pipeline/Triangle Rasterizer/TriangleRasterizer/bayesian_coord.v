`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:53:50 08/19/2013 
// Design Name: 
// Module Name:    bayesian_coord 
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
module bayesian_coord(
    clk,
    rst,
    nd,
    us_rfd,
    v1_x,	v1_y,
	v2_x,	v2_y,
	v3_x,	v3_y,
	p_x, 	p_y,
    ds_rfd,
    rdy,
	b_u,	b_v,	b_w
);
	input clk;
	input rst;
	input nd;
	output us_rfd;
	
	input [15:0] v1_x, v1_y;
	input [15:0] v2_x, v2_y;
	input [15:0] v3_x, v3_y;

	input [15:0] p_x, p_y;
	
	input ds_rfd;
	output rdy;

	output [15:0] b_u;
	output [15:0] b_v;
	output [15:0] b_w;

	wire ta_a_rfd, ta_a_rdy;
	wire [15:0] area_a;
	wire ta_b_rfd, ta_b_rdy;
	wire [15:0] area_b;
	wire ta_c_rfd, ta_c_rdy;
	wire [15:0] area_c;
	wire sum_ab_rfd, sum_abc_rfd;
	wire sum_ab_rdy, sum_abc_rdy; 

	triangle_area ta_a(
		.clk(clk),
		.rst(rst),
		.nd(nd),
		.us_rfd(ta_a_rfd),
		.a_x(v3_x),
		.a_y(v3_y),
		.b_x(v2_x),
		.b_y(v2_y),
		.p_x(p_x),	
		.p_y(p_y),
		.ds_rfd(sum_ab_rfd),
		.rdy(ta_a_rdy),
		.area(area_a)
	);

	triangle_area ta_b(
		.clk(clk),
		.rst(rst),
		.nd(nd),
		.us_rfd(ta_b_rfd),
		.a_x(v1_x),
		.a_y(v1_y),
		.b_x(v3_x),
		.b_y(v3_y),
		.p_x(p_x),	
		.p_y(p_y),
		.ds_rfd(sum_ab_rdy),
		.rdy(ta_b_rdy),
		.area(area_b)
	);

	triangle_area ta_c(
		.clk(clk),
		.rst(rst),
		.nd(nd),
		.us_rfd(ta_c_rfd),
		.a_x(v2_x),
		.a_y(v2_y),
		.b_x(v1_x),
		.b_y(v1_y),
		.p_x(p_x),	
		.p_y(p_y),
		.ds_rfd(sum_rdy),
		.rdy(ta_c_rdy),
		.area(area_c)
	);

	// Delay for 1st level
	reg [15:0] area_a2, area_b2, area_c2;
	always @(posedge clk)begin
		if(rst)begin
			area_a2 <= 0;
			area_b2 <= 0;
			area_c2 <= 0;
		end else begin
			area_a2 <= area_a;
			area_b2 <= area_b;
			area_c2 <= area_c;
		end
	end

	// Sum all areas
	wire [15:0] sum_ab, sum_abc, u, v, w;
	fp_add_micro add_ab (
		.a(area_a),
		.b(area_b),
		.operation_nd(ta_a_rdy & ta_b_rdy),
		.operation_rfd(sum_ab_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(sum_abc_rfd),
		.result(sum_ab),
		.rdy(sum_ab_rdy)
	);

	fp_add_micro add_abc (
		.a(sum_ab),
		.b(area_c),
		.operation_nd(sum_ab_rdy & ta_c_rdy),
		.operation_rfd(sum_abc_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(),
		.result(sum_abc),
		.rdy(sum_abc_rdy)
	);

	// Normalize areas
	fp_div_micro div_u (
		.a(area_a2),
		.b(sum_abc),
		.operation_nd(sum_abc_rdy),
		.operation_rfd(div_u_rdy),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd),
		.result(u),
		.rdy(u_rdy)
	);

	fp_div_micro div_v (
		.a(area_b2),
		.b(sum_abc),
		.operation_nd(sum_abc_rdy),
		.operation_rfd(div_v_rdy),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd),
		.result(v),
		.rdy(v_rdy)
	);

	fp_div_micro div_w (
		.a(area_c2),
		.b(sum_abc),
		.operation_nd(sum_abc_rdy),
		.operation_rfd(div_w_rdy),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd),
		.result(w),
		.rdy(w_rdy)
	);


endmodule
