`define READ_IDLE		2'b00
`define READ_HIT		2'b01
`define READ_STALL		2'b10

module cache_read_sm(
	clk,
	rst,
	rd_en,
	hit,
	mem_done,
	read_state
);

	input clk;
	input rst;
	input rd_en;
	input hit;
	input mem_done;
	output reg [1:0] read_state;

	always @(posedge clk)begin
		if(rst)
			read_state <= `READ_IDLE;
		else
			case(read_state)
				`READ_IDLE: 
					read_state <= frag_rd_en? (frag_hit? `READ_HIT : `READ_STALL) : `READ_IDLE;
				`READ_HIT: 
					read_state <= frag_rd_en? (frag_hit? `READ_HIT : `READ_STALL) : `READ_IDLE;
				`READ_STALL: 
					read_state <= (mem_state == `MEM_DONE)? (frag_hit? `READ_HIT : `READ_STALL) : `READ_STALL;
				default: 
					read_state <= `READ_IDLE;
			endcase
	end
endmodule
