// FLOATING POINT VECTOR MATH
module fp_vec2_cross(
	clk,
	rst,
	a_x,	a_y,
	b_x,	b_y,
	c_z
);
	input clk;
	input rst;
	
	input [15:0] a_x;
	input [15:0] a_y;
	input [15:0] b_x;
	input [15:0] b_y;

	output [15:0] c_z;

	wire [15:0] ax_by;
	fp_mul_micro ax_by_mul(
		.clk(clk),
		.rst(rst),
		.a(a_x),
		.b(b_y),
		.c(ax_by)
	);

	wire [15:0] ay_bx;
	fp_mul_micro ay_bx_mul(
		.clk(clk),
		.rst(rst),
		.a(a_y),
		.b(b_x),
		.c(ay_bx)
	);

	fp_add_micro c_z_sub(
		.clk(clk),
		.rst(rst),
		.a(ax_by),
		.b({~ay_bx[15],ay_bx[14:0]}),
		.c(c_z)
	);

endmodule

module fp_vec3_cross(
	clk,
	rst,
	a_x,	a_y,	a_z,
	b_x,	b_y,	b_z,
	c_x, 	c_y,	c_z
);
	input clk;
	input rst;
	
	input [15:0] a_x;
	input [15:0] a_y;
	input [15:0] a_z;
	input [15:0] b_x;
	input [15:0] b_y;
	input [15:0] b_z;

	output [15:0] c_x;
 	output [15:0] c_y;
	output [15:0] c_z;

	wire [15:0] ay_bz;
	fp_mul_micro ay_bz_mul(
		.clk(clk),
		.rst(rst),
		.a(a_y),
		.b(b_z),
		.c(ay_bz)
	);

	wire [15:0] az_by;
	fp_mul_micro az_by_mul(
		.clk(clk),
		.rst(rst),
		.a(a_z),
		.b(b_y),
		.c(az_by)
	);

	wire [15:0] az_bx;
	fp_mul_micro az_bx_mul(
		.clk(clk),
		.rst(rst),
		.a(a_z),
		.b(b_x),
		.c(az_bx)
	);

	wire [15:0] ax_bz;
	fp_mul_micro ax_bz_mul(
		.clk(clk),
		.rst(rst),
		.a(a_x),
		.b(b_z),
		.c(ax_bz)
	);

	wire [15:0] ax_by;
	fp_mul_micro ax_by_mul(
		.clk(clk),
		.rst(rst),
		.a(a_x),
		.b(b_y),
		.c(ax_by)
	);

	wire [15:0] ay_bx;
	fp_mul_micro ay_bx_mul(
		.clk(clk),
		.rst(rst),
		.a(a_y),
		.b(b_x),
		.c(ay_bx)
	);

	fp_add_micro c_x_sub(
		.clk(clk),
		.rst(rst),
		.a(ay_bz),
		.b({~az_by[15],az_by[14:0]}),
		.c(c_x)
	);

	fp_add_micro c_y_sub(
		.clk(clk),
		.rst(rst),
		.a(az_bx),
		.b({~ax_bz[15],ax_bz[14:0]}),
		.c(c_y)
	);

	fp_add_micro c_z_sub(
		.clk(clk),
		.rst(rst),
		.a(ax_by),
		.b({~ay_bx[15],ay_bx[14:0]}),
		.c(c_z)
	);


endmodule
