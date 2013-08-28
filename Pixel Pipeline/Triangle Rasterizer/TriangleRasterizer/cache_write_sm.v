`define WRITE_IDLE		2'b00
`define WRITE_HIT		2'b01
`define WRITE_STALL		2'b10

module cache_write_sm(
	clk,
	rst,
	update_en,
	update_hit,
	write_state
);
	input clk;
	input rst;
	input update_en;
	input update_hit;
	output reg [1:0] write_state;

	always @(posedge clk)begin
		if(rst)
			write_state <= `WRITE_IDLE;
		else
			case(write_state)
				`WRITE_IDLE:
					write_state <= update_en? ((update_hit)? `WRITE_HIT : `WRITE_STALL) : `WRITE_IDLE;
				`WRITE_STALL:
					write_state <= update_hit? `WRITE_HIT : `WRITE_STALL;
				`WRITE_HIT:
					write_state <= `WRITE_IDLE;
				default:
					write_state <= `WRITE_IDLE;
			endcase
	end
endmodule
