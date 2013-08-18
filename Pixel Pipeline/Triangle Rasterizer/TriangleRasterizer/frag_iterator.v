
`define FP_640TH 16'h1666
`define FP_480TH 16'h1844
module frag_iterator(
	clk,
	rst,
	nd,
	us_rfd,

	fp_min_x,
	fp_max_x,
	fp_min_y,
	fp_max_y,

	ds_rfd,
	rdy,

	fp_x,
	fp_y
);

	input clk;
	input rst;
	input nd;
	output us_rfd;

	input [15:0] fp_min_x;
	input [15:0] fp_max_x;
	input [15:0] fp_min_y;
	input [15:0] fp_max_y;

	input ds_rfd;
	output rdy;

	output reg [15:0] fp_x;
	output reg [15:0] fp_y;

	wire [15:0] next_x;
	wire [15:0] next_y;

	wire x_inbounds, y_inbounds, box_done;

	always @(posedge clk)begin
		if(rst)begin
			fp_x 	<= 0;
			fp_y 	<= 0;
		end else begin
			if(nd)begin
				fp_x 	<= fp_min_x;
				fp_y 	<= fp_min_y;
			end else if(x_inbounds)begin
				fp_x 	<= next_x;
				fp_y 	<= fp_y;
			end else if(y_inbounds)begin
				fp_x 	<= fp_min_x;
				fp_y 	<= next_y;
			end else begin
				fp_x 	<= fp_x;
				fp_y 	<= fp_y;
			end
		end
	end

	wire incr_x_rfd;
	wire incr_y_rfd;
	wire x_bound_rfd;
	wire y_bound_rfd;

	wire incr_x_rdy;
	wire incr_y_rdy;
	wire x_bound_rdy;
	wire y_bound_rdy;

	fp_add_micro incr_x (
		.clk(clk),
		.sclr(rst),
		.operation_nd(1'b1),
		.operation_rfd(incr_x_rfd),
		.a(fp_x),
		.b(`FP_640TH),
		.ce(1'b1),//x_bound_rfd),
		.result(next_x),
		.rdy(incr_x_rdy)
	);

	fp_add_micro incr_y (
		.clk(clk),
		.sclr(rst),
		.operation_nd(1'b1),
		.operation_rfd(incr_y_rfd),
		.a(fp_y),
		.b(`FP_640TH),
		.ce(1'b1),//y_bound_rfd),
		.result(next_y),
		.rdy(incr_y_rdy)
	);

	fp_lte_micro x_bound (
		.clk(clk),
		.sclr(rst),
		.operation_nd(incr_x_rdy),
		.operation_rfd(x_bound_rfd),
		.a(next_x),
		.b(fp_max_x),
		.ce(1'b1),//ds_rfd),
		.result(x_inbounds),
		.rdy(x_bound_rdy)
	);

	fp_lte_micro y_bound (
		.clk(clk),
		.sclr(rst),
		.operation_nd(incr_y_rdy),
		.operation_rfd(y_bound_rfd),
		.a(next_y),
		.b(fp_max_y),
		.ce(1'b1),//ds_rfd),
		.result(y_inbounds),
		.rdy(y_bound_rdy)
	);



	assign box_done = (~x_inbounds & ~y_inbounds);
	assign us_rfd = box_done;
	assign rdy = ~us_rfd & (incr_x_rdy & incr_y_rdy);
endmodule
