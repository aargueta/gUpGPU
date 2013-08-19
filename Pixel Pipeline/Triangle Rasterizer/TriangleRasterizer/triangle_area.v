module triangle_area(
	clk,
	rst,
	nd,
	us_rfd,
	a_x,
	a_y,
	b_x,
	b_y,
	p_x,	
	p_y,
	ds_rfd,
	rdy,
	area
);

	input clk;
	input rst;
	input nd;
	output us_rfd;	// Upstream ready for data
	input [15:0] a_x;
	input [15:0] a_y;
	input [15:0] b_x;
	input [15:0] b_y;
	input [15:0] p_x;
	input [15:0] p_y;

	input ds_rfd;
	output rdy;		// Downstream ready for data
	output [15:0] area;

	localparam HALF = 16'h3800; // 0.5f

	wire [15:0] ab_x;
	wire [15:0] ab_y;
	wire [15:0] ap_x;
	wire [15:0] ap_y;
	wire [15:0] mul_xy;
	wire [15:0] mul_yx;
	wire [15:0] cross;

	wire ab_x_sub_rfd;
	wire ab_y_sub_rfd;
	wire ax_x_sub_rfd;
	wire ap_y_sub_rfd;
	wire ab_x_ap_y_mul_rfd;
	wire ab_y_ap_x_mul_rfd;
	wire xy_yx_sub_rfd;

	wire ab_x_rdy;
	wire ab_y_rdy;
	wire ax_x_rdy;
	wire ap_y_rdy;
	wire mul_xy_rdy;
	wire mul_yx_rdy;
	wire cross_rdy;

	fp_sub_micro ab_x_sub(
		.clk(clk),
		.ce(ab_x_ap_y_mul_rfd),
		.operation_rfd(ab_x_sub_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(ab_x_rdy),
		.a(a_x),
		.b(b_y),
		.result(ab_x)
	);

	fp_sub_micro ab_y_sub(
		.clk(clk),
		.ce(ab_y_ap_x_mul_rfd),
		.operation_rfd(ab_y_sub_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(ab_y_rdy),
		.a(a_y),
		.b(b_y),
		.result(ab_y)
	);

	fp_sub_micro ap_x_sub(
		.clk(clk),
		.ce(ab_y_ap_x_mul_rfd),
		.operation_rfd(ax_x_sub_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(ap_x_rdy),
		.a(a_x),
		.b(p_x),
		.result(ap_x)
	);

	fp_sub_micro ap_y_sub(
		.clk(clk),
		.ce(ab_x_ap_y_mul_rfd),
		.operation_rfd(ap_y_sub_rfd),
		.operation_nd(nd),
		.sclr(rst),
		.rdy(ap_y_rdy),
		.a(a_y),
		.b(p_y),
		.result(ap_y)
	);

	fp_mul_micro ab_x_ap_y_mul(
		.clk(clk),
		.ce(xy_yx_sub_rfd),
		.operation_rfd(ab_x_ap_y_mul_rfd),
		.operation_nd(ab_x_rdy & ap_y_rdy),
		.sclr(rst),
		.rdy(mul_xy_rdy),
		.a(ab_x),
		.b(ap_y),
		.result(mul_xy)
	);

	fp_mul_micro ab_y_ap_x_mul(
		.clk(clk),
		.ce(xy_yx_sub_rfd),
		.operation_rfd(ab_y_ap_x_mul_rfd),
		.operation_nd(ab_y_rdy & ap_x_rdy),
		.sclr(rst),
		.rdy(mul_yx_rdy),
		.a(ab_y),
		.b(ap_x),
		.result(mul_yx)
	);

	fp_sub_micro xy_yx_sub(
		.clk(clk),
		.ce(halfer_rfd),
		.operation_rfd(xy_yx_sub_rfd),
		.operation_nd(mul_xy_rdy & mul_yx_rdy),
		.sclr(rst),
		.rdy(cross_rdy),
		.a(mul_xy),
		.b(mul_yx),
		.result(cross)
	);

	// Calculate magnitude and return half
	fp_mul_micro halfer(
		.clk(clk),
		.ce(ds_rfd),
		.operation_rfd(halfer_rfd),
		.operation_nd(cross_rdy),
		.sclr(rst),
		.rdy(rdy),
		.a(cross),
		.b(HALF),
		.result(area)
	);	
	
	assign us_rfd = ab_x_sub_rfd | ab_y_sub_rfd | ax_x_sub_rfd | ap_y_sub_rfd;

endmodule
