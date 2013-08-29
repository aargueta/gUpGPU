`define MEM_IDLE		3'b000
`define MEM_SEND_RD		3'b001
`define MEM_WAIT_RD		3'b010
`define MEM_LOAD		3'b011
`define MEM_WRITE		3'b100
`define MEM_DONE		3'b111
module main_mem_sm(
	clk,
	rst,
	read_stall,
	curr_bank_dirty,
	cache_wr_en,
	mem_wr_ack,
	mem_state,
	evict_rd_addr,
	evict_wr_addr
);

	input clk;
	input rst;
	input read_stall;
	input curr_bank_dirty;
	input cache_wr_en;
	input mem_wr_ack;
	output reg [2:0] mem_state;
	output [8:0] evict_rd_addr;
	output reg [8:0] evict_wr_addr;

	reg [8:0] cache_xfr_state;
	reg cache_xfr_done, evict_wr_done;
	always @(posedge clk)begin
		if(rst || ((mem_state != `MEM_LOAD) && (mem_state != `MEM_WRITE)) || cache_xfr_done)
			{cache_xfr_done, cache_xfr_state} <= 9'd0;
		else if(mem_state == `MEM_LOAD)
			{cache_xfr_done, cache_xfr_state} <= cache_xfr_state + cache_wr_en;
		else if(mem_state == `MEM_WRITE)
			{cache_xfr_done, cache_xfr_state} <= cache_xfr_state + mem_wr_ack;
		{evict_wr_done, evict_wr_addr} <= {cache_xfr_done, cache_xfr_state};
	end

	assign evict_rd_addr = cache_xfr_state;

	always @(posedge clk)begin
		if(rst)
			mem_state <= `MEM_IDLE;
		else
			case(mem_state)
				`MEM_IDLE: 
					if(read_stall)
						mem_state <= curr_bank_dirty? `MEM_WRITE : `MEM_SEND_RD;
					else
						mem_state <= `MEM_IDLE;
				`MEM_SEND_RD:
					mem_state <= mem_wr_ack? `MEM_WAIT_RD : `MEM_SEND_RD;
				`MEM_WAIT_RD:
					mem_state <= cache_wr_en? `MEM_LOAD : `MEM_WAIT_RD;
				`MEM_LOAD:
					mem_state <= cache_xfr_done? `MEM_DONE : `MEM_LOAD;
				`MEM_WRITE:
					mem_state <= evict_wr_done? `MEM_DONE : `MEM_WRITE;
				`MEM_DONE:
					mem_state <= `MEM_IDLE;
				default:
					mem_state <= `MEM_IDLE;
			endcase
	end

endmodule
