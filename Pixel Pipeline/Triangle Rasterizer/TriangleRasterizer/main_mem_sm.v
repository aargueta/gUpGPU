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
	cache_wr_done,
	mem_wr_ack,
	mem_state
);

	input clk;
	input rst;
	input read_stall;
	input curr_bank_dirty;
	input cache_wr_en;
	input cache_wr_done;
	input mem_wr_ack;
	output reg [2:0] mem_state;

	reg [9:0] mem_wr_state;
	wire mem_wr_done = mem_wr_state[9];
	always @(posedge clk)begin
		if(rst || (mem_state ~= `MEM_LOAD) || cache_xfer_done)
			mem_wr_state <= 10'd0;
		else
			mem_wr_state <= mem_wr_state + cache_wr_en;
	end

	always @(posedge clk)begin
		if(rst)
			mem_state <= `LOAD_IDLE;
		else
			case(mem_state)
				`MEM_IDLE: 
					if(read_stall)
						mem_state <= curr_bank_dirty? `MEM_WRITE : `MEM_SEND_RD );
					else
						mem_state <= `MEM_IDLE;
				`MEM_SEND_RD:
					mem_state <= mem_wr_ack? `MEM_WAIT_RD : `MEM_SEND_RD;
				`MEM_WAIT_RD:
					mem_state <= cache_wr_en? `MEM_LOAD : `MEM_WAIT_RD;
				`MEM_LOAD:
					mem_state <= cache_wr_done? `MEM_DONE : `MEM_LOAD;
				`MEM_WRITE:
					mem_state <= mem_wr_done? `MEM_DONE : `MEM_WRITE;
				`MEM_DONE:
					mem_state <= `MEM_IDLE;
				default:
					mem_state <= `MEM_IDLE;
			endcase
	end

endmodule
