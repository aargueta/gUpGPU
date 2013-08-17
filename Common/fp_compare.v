`define FP_ONE	15'h3C00
`define FP_ONE_EXP	5'h0F
`define FP_ONE_MAN	10'h000

module fp_ltz(
	a, 
	ltz
);
	input [15:0] a;
	output ltz;

	assign ltz = a[15];
endmodule

module fp_agto(
	a,
	gto
);
	input [15:0] a;
	output gto; 
	
	wire [4:0] exp = a[14:10];
	wire [9:0] man = a[9:0];
	assign gto =  ((exp > `FP_ONE_EXP)? 1 : ((exp == `FP_ONE_EXP) && (man > `FP_ONE_MAN)));
endmodule

module fp_a3gto(
	a,
	b,
	c,
	gto,
	gtno
);
	input [15:0] a;
	input [15:0] b;
	input [15:0] c;
	
	output gto;
	output gtno;
	
	wire ltz = a[15] & b[15] & c[15];
	wire gto_a, gto_b, gto_c, gtao;
	fp_agto a_gto(
		a, 
		gto_a
	);

	fp_agto b_gto(
		b, 
		gto_b
	);

	fp_agto c_gto(
		c, 
		gto_c
	);
	assign gtao = gto_a | gto_b | gto_c;
	assign gto = ~ltz & gtao;
	assign gtno = ltz & gtao;
endmodule

module fp_min(
	clk,
	rst,
	nd,
	us_rfd,
	a,
	b,
	ds_rfd,
	rdy,
	min
);

	input clk;
	input rst;
	input nd;
	output us_rfd;

	input [15:0] a;
	input [15:0] b;

	input ds_rfd;
	output rdy;
	output reg [15:0] min;

	wire is_less;
	fp_lte_micro less (
		.a(a),
		.b(b),
		.operation_nd(nd),
		.operation_rfd(us_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd), 
		.result(is_less),
		.rdy(rdy)
	);

	reg [15:0] a_2, b_2;
	always @(posedge clk)begin
		a_2 <= a;
		b_2 <= b;
		if(rst)
			min <= 0;
		else if(rdy)
			min <= (is_less? a_2 : b_2);
		else
			min <= min;
	end
endmodule

module fp_max(
	clk,
	rst,
	nd,
	us_rfd,
	a,
	b,
	ds_rfd,
	rdy,
	max
);

	input clk;
	input rst;
	input nd;
	output us_rfd;

	input [15:0] a;
	input [15:0] b;

	input ds_rfd;
	output rdy;
	output reg [15:0] max;

	wire is_more;
	fp_gt_micro more (
		.a(a),
		.b(b),
		.operation_nd(nd),
		.operation_rfd(us_rfd),
		.clk(clk),
		.sclr(rst),
		.ce(ds_rfd), 
		.result(is_more),
		.rdy(rdy)
	);

	always @(posedge clk)
		if(rst)
			max <= 0;
		else if(rdy)
			max <= (is_more? a : b);
		else
			max <= max;
endmodule