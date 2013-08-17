module vector_length(
	clk,
	rst,
	nd,
	us_rfd,
	x,
	y,
	z,
	ds_rfd,
	rdy,
	length
);
	input clk;
	input rst;
	input nd;
	output us_rfd;	// Upstream ready for data
	input [15:0] x;
	input [15:0] y;
	input [15:0] z;

	input ds_rfd;
	output rdy;		// Downstream ready for data
	output [15:0] length;

	localparam IDLE			= 3'd0;
	localparam MULX			= 3'd1;
	localparam MULY			= 3'd2;
	localparam MULZ			= 3'd3;
	localparam ADD			= 3'd4;
	localparam OUTPUT 	 	= 3'd5;


	/*** STATE LOGIC ***/
	reg [2:0] state, prev_state;
	always @(posedge clk)begin
		if(rst)begin
			prev_state <= IDLE;
			state <= IDLE;
		end else begin
			prev_state <= state;
			case(state)
				IDLE: 		state <= nd?  MULX : IDLE;
				MULX: 		state <= square_rfd? MULY : MULX;
				MULY: 		state <= square_rfd? MULZ : MULY;
				MULZ: 		state <= square_rdy? ADD  : MULZ;
				ADD	: 		state <= accum_rdy? (ds_rfd? IDLE : OUTPUT) : ADD;
				OUTPUT:		state <= ds_rfd? IDLE : OUTPUT;
				default:	state <= IDLE;
			endcase
		end
	end

	/*** MATH LOGIC ***/
	reg [15:0] accum;
	reg [15:0] square_operand;
	reg [15:0] add_operand;

	wire square_ce; 
	wire square_nd; 
	wire square_rfd;
	wire square_rdy;
	wire [15:0] square_result;
	
	wire accum_ce;
	wire accum_nd;
	wire accum_rfd;
	wire accum_rdy;
	wire [15:0] accum_rslt;

	always @(posedge clk)begin
		if(rst)begin
			accum <= 0;
		end else begin
			case(state)
				IDLE: 	 accum <= 0;
				MULX: 	 accum <= 0;
				MULY: 	 accum <= accum_rslt;
				MULZ: 	 accum <= accum_rslt;
				ADD	: 	 accum <= accum_rslt;
				OUTPUT:	 accum <= accum;
				default: accum <= 0;
			endcase
		end
	end

	always @(*)begin
		case(state)
			IDLE:begin
				square_operand <= 0;
				add_operand	<= 0;
			end
			MULX:begin
				square_operand <= x;	
				add_operand	<= 0;
			end
			MULY:begin
				square_operand <= y;	
				add_operand	<= square_result;
			end
			MULZ:begin
				square_operand <= z;	
				add_operand	<= square_result;
			end
			ADD	:begin
				square_operand <= 0;	
				add_operand	<= square_result;
			end
			OUTPUT:begin
				square_operand <= 0;
				add_operand	<= 0;
			end
			default:begin
				square_operand <= 0;
				add_operand	<= 0;
			end
		endcase
	end


	fp_mul_micro square(
		.clk(clk),
		.sclr(rst),
		.ce(~square_ce),
		.operation_nd(square_nd),
		.operation_rfd(square_rfd),
		.a(square_operand),
		.b(square_operand),
		.rdy(square_rdy),
		.result(square_result)
	);

	fp_add_micro accumulate(
		.clk(clk),
		.sclr(rst),
		.ce(~accum_ce),
		.operation_nd(accum_nd),
		.operation_rfd(accum_rfd),
		.a(accum),
		.b(add_operand),
		.rdy(accum_rdy),
		.result(accum_rslt)
	);

	/*** STALL LOGIC ***/
	wire state_change = prev_state != state;
	assign accum_ce = ~ds_rfd;
	assign accum_nd = state_change && ((state == MULY) || (state == MULZ) || (state == ADD));
	assign square_ce = ~accum_rfd;
	assign square_nd =  state_change && ((state == MULX) || (state == MULY) || (state == MULZ));

	/*** IO LOGIC ***/
	assign us_rfd = (state == IDLE);
	assign rdy = ((state == ADD) & accum_rdy) | (state == OUTPUT);
	assign length = rdy? accum_rslt : 0;

endmodule
