`define CACHE_0 4'b0001
`define CACHE_1 4'b0010
`define CACHE_2 4'b0100
`define CACHE_3 4'b1000

module lru_tracker(
	clk,
	rst,
	read_en,
	bank_hit,
	lru
);

	input clk;
	input rst;
	input read_en;
	input [3:0] bank_hit;
	output reg [3:0] lru;

	reg [3:0] lru_timer;
	reg [2:0] bank0_lru, bank1_lru, bank2_lru, bank3_lru;
	wire [3:0] lru;

	wire lru01_l = bank0_lru < bank1_lru;
	wire lru23_l = bank2_lru < bank3_lru;

	wire lru0123_l = (lru23_l? bank2_lru : bank3_lru) < (lru01_l? bank0_lru : bank1_lru);
	always @(*)begin
		if(lru0123_l)
			lru <= lru23_l? `CACHE_2 : `CACHE_3;
		else
			lru <= lru01_l? `CACHE_0 : `CACHE_1;
	end

	always @(posedge clk)begin
		if(rst)begin
			lru <= 4'b0001;
			lru_timer <= 4'd0;
			bank0_lru <= 3'd0;
			bank1_lru <= 3'd0;
			bank2_lru <= 3'd0;
			bank3_lru <= 3'd0;
		end else begin
			if(read_en)begin
				lru_timer <= frag_hit? lru_timer + 4'b1 : lru_timer;
				if(lru_timer == 4'd0)begin
					bank0_lru <= {bank_hit[0], 2'b00} | (bank0_lru >> 1);
					bank1_lru <= {bank_hit[1], 2'b00} | (bank1_lru >> 1);
					bank2_lru <= {bank_hit[2], 2'b00} | (bank2_lru >> 1);
					bank3_lru <= {bank_hit[3], 2'b00} | (bank3_lru >> 1);
				end else begin
					bank0_lru <= {bank_hit[0], 2'b00} | bank0_lru;
					bank1_lru <= {bank_hit[1], 2'b00} | bank1_lru;
					bank2_lru <= {bank_hit[2], 2'b00} | bank2_lru;
					bank3_lru <= {bank_hit[3], 2'b00} | bank3_lru;
				end
			end
		end
	end

endmodule
