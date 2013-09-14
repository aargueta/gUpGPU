module main_mem_emul(
	clk,
	rst,
	mem_rd_addr,
	mem_rd_en,
	cache_wr_addr,
	cache_wr_data,
	cache_wr_en,
	cache_wr_ack,
	cache_wr_done
);

	input clk;
	input rst;
	input cache_wr_ack;
	input [18:0] mem_rd_addr;
	input mem_rd_en;
	output [18:0] cache_wr_addr;
	output [31:0] cache_wr_data;
	output reg cache_wr_en;
	output reg cache_wr_done;

	reg [8:0] write_count;
	always @(posedge clk)begin
		if(rst)begin
			write_count <= 0;
			cache_wr_done <= 0;
			cache_wr_en <= 0;
		end else if(cache_wr_done)begin
			write_count <= 0;
			cache_wr_done <= 0;
			cache_wr_en <= 0;
		end else if(cache_wr_ack & (mem_rd_en | write_count > 0))begin
			{cache_wr_done, write_count} <= write_count + 9'd1;
			cache_wr_en <= 1'b1;
		end else begin
			{cache_wr_done, write_count} <= {cache_wr_done, write_count};
			cache_wr_en <= cache_wr_en;
		end
	end

	assign cache_wr_addr = mem_rd_addr + write_count;
	assign cache_wr_data = {mem_rd_addr[18:3], 6'd0, write_count};
endmodule
