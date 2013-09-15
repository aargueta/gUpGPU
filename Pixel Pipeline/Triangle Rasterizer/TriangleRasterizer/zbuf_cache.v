`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alejandro Argueta
// 
// Create Date:    12:19:32 08/22/2013 
// Design Name: 
// Module Name:    zbuf_cache 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Direct mapped cache, z-buffer 4x4 caches come in from RAM and are
// tagged with the upper 8 bits of the cache address. Frag ID in the format of 
// [15 bit cache ID][4 bit sub-cache frag ID] are used to pull the appropriate 
// 16-bit z-value. 
// ID's are calculated as follows:
// 		Block ID = y_cache * num_x_caches + x_caches
// 		SB Frag ID = sub_cache_y * 4 + sub_cache_x
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`define MEM_IDLE		3'b000
`define MEM_SEND_RD		3'b001
`define MEM_WAIT_RD		3'b010
`define MEM_LOAD		3'b011
`define MEM_WRITE		3'b100
`define MEM_DONE		3'b111

`define READ_IDLE		2'b00
`define READ_HIT		2'b01
`define READ_STALL		2'b10
`define READ_CHECK		2'b11

`define WRITE_IDLE		2'b00
`define WRITE_HIT		2'b01
`define WRITE_STALL		2'b10

module zbuf_cache(
	clk,
	rst,

	cache_wr_addr,
	cache_wr_data,
	cache_wr_en,
	cache_wr_done,
	cache_wr_ack,

	mem_rd_addr,
	mem_rd_en,

	mem_wr_addr,
	mem_wr_data,
	mem_wr_en,
	mem_wr_ack,

	frag_id,
	frag_rd_en,

	frag_hit,
	frag_zval,

	update_id,
	update_en,
	update_val,

	update_hit
);

	input clk;
	input rst;

	input [18:0] cache_wr_addr;
	input [31:0] cache_wr_data;
	input cache_wr_en;
	input cache_wr_done;
	output cache_wr_ack;

	output [18:0] mem_rd_addr;
	output mem_rd_en;

	output [31:0] mem_wr_addr;
	output reg [31:0] mem_wr_data;
	output mem_wr_en;
	input  mem_wr_ack;

	input [18:0] frag_id;
	input frag_rd_en;

	output frag_hit;
	output reg [15:0] frag_zval;

	input [18:0] update_id;
	input update_en;
	input [15:0] update_val;

	output update_hit; 


	wire [31:0] zval_out0, zval_out1, zval_out2, zval_out3;
	reg [8:0] bank0_tag, bank1_tag, bank2_tag, bank3_tag;
	
	wire [3:0] bank_select;
	wire [3:0] update_bank_select;
	wire [3:0] lru;
	wire [1:0] read_state;
	wire [1:0] write_state;
	wire [2:0] mem_state;

	/*** BANK HIT LOGIC ***/
	bank_hit bank_frag_hit(
		.clk(clk),
		.rst(rst),
		.tag_in(frag_id[18:10]),
		.bank0_tag(bank0_tag),
		.bank1_tag(bank1_tag),
		.bank2_tag(bank2_tag),
		.bank3_tag(bank3_tag),
		.hit(frag_hit),
		.select(bank_select)
	);

	wire update_tag_hit;
	bank_hit bank_update_hit(
		.clk(clk),
		.rst(rst),
		.tag_in(update_id[18:10]),
		.bank0_tag(bank0_tag),
		.bank1_tag(bank1_tag),
		.bank2_tag(bank2_tag),
		.bank3_tag(bank3_tag),
		.hit(update_tag_hit),
		.select(update_bank_select)
	);
	assign update_hit = update_tag_hit & (write_state != `MEM_IDLE);

	/*** LRU LOGIC ***/
	lru_tracker lru_tracker(
		.clk(clk),
		.rst(rst),
		.read_en(frag_rd_en),
		.bank_hit(bank_select),
		.lru(lru)
	);

	/*** CACHE READ LOGIC ***/
	cache_read_sm cache_read_sm(
		.clk(clk),
		.rst(rst),
		.rd_en(frag_rd_en),
		.hit(frag_hit),
		.mem_done(mem_state == `MEM_DONE),
		.read_state(read_state)
	);

	/*** CACHE WRITE LOGIC ***/
	cache_write_sm cache_write_sm(
		.clk(clk),
		.rst(rst),
		.update_en(update_en),
		.update_hit(update_hit),
		.write_state(write_state)
	);

	/*** MEMORY IO LOGIC ***/

	reg [3:0] bank_dirty;
	wire evict_bank_dirty = |(bank_dirty & bank_select);
	wire [8:0] evict_rd_addr, evict_wr_addr;
	main_mem_sm main_mem_sm(
		.clk(clk),
		.rst(rst),
		.read_stall(read_state == `READ_STALL),
		.evict_bank_dirty(evict_bank_dirty),
		.cache_wr_en(cache_wr_en),
		.cache_wr_done(cache_wr_done),
		.mem_wr_ack(mem_wr_ack),
		.mem_state(mem_state),
		.evict_rd_addr(evict_rd_addr),
		.evict_wr_addr(evict_wr_addr)
	);
	wire evicting_bank = (mem_state == `MEM_WRITE);

	/*** DIRTY BANK LOGIC ***/
	always @(posedge clk)begin
		if(rst)
			bank_dirty <= 4'b0000;
		else if(write_state == `WRITE_HIT)
			// Dirty bank when written to
			bank_dirty <= bank_dirty | bank_select;
		else if(mem_state == `MEM_DONE)
			// Clear dirty bit as bank written back
			bank_dirty <= bank_dirty & ~lru;
		else
			bank_dirty <= bank_dirty;
	end

	wire [3:0] bank_we = update_hit? update_bank_select : (cache_wr_en? lru : 4'b0000);
	wire [8:0] bank_wr_addr, bank_tag;
	assign {bank_tag, bank_wr_addr} = update_hit? update_id[18:1] : cache_wr_addr[18:1];
	wire [31:0] bank_wr_data = update_hit? update_val : cache_wr_data;
	wire update_hs = update_id[0];

	wire [8:0] bank_rd_addr = evicting_bank? evict_rd_addr : frag_id[9:1];
	wire frag_hs = frag_id[0];

	always @(posedge clk)begin
		if(rst)begin
			bank0_tag <= 9'h1FF;
			bank1_tag <= 9'h1FF;
			bank2_tag <= 9'h1FF;
			bank3_tag <= 9'h1FF;
		end else if(mem_state == `MEM_DONE)begin
			case(lru)
				4'b0001:
					bank0_tag <= bank_tag;
				4'b0010:
					bank1_tag <= bank_tag; 
				4'b0100:
					bank2_tag <= bank_tag;
				4'b1000:
					bank3_tag <= bank_tag;
				default:
					bank0_tag <= bank_tag;
			endcase
		end
	end

	wire [3:0] bank0_we = cache_wr_en? {4{bank_we[0]}} : (update_hs? {{2{bank_we[0]}}, 2'b00} : {2'b00, {2{bank_we[0]}}});
	zbuf_18k_cache zbuf_data_bank0 (
		.clka(clk),
		.wea(bank0_we),
		.addra(bank_wr_addr),
		.dina(bank_wr_data),
		.clkb(clk),
		.addrb(bank_rd_addr),
		.doutb(zval_out0)
	);
	
	wire [3:0] bank1_we = cache_wr_en? {4{bank_we[1]}} : (update_hs? {{2{bank_we[1]}}, 2'b00} : {2'b00, {2{bank_we[1]}}});
	zbuf_18k_cache zbuf_data_bank1 (
		.clka(clk),
		.wea(bank1_we),
		.addra(bank_wr_addr),
		.dina(bank_wr_data),
		.clkb(clk),
		.addrb(bank_rd_addr),
		.doutb(zval_out1)
	);
	
	wire [3:0] bank2_we = cache_wr_en? {4{bank_we[2]}} : (update_hs? {{2{bank_we[2]}}, 2'b00} : {2'b00, {2{bank_we[2]}}});
	zbuf_18k_cache zbuf_data_bank2 (
		.clka(clk),
		.wea(bank2_we),
		.addra(bank_wr_addr),
		.dina(bank_wr_data),
		.clkb(clk),
		.addrb(bank_rd_addr),
		.doutb(zval_out2)
	);
	
	wire [3:0] bank3_we = cache_wr_en? {4{bank_we[3]}} : (update_hs? {{2{bank_we[3]}}, 2'b00} : {2'b00, {2{bank_we[3]}}});
	zbuf_18k_cache zbuf_data_bank3 (
		.clka(clk),
		.wea(bank3_we),
		.addra(bank_wr_addr),
		.dina(bank_wr_data),
		.clkb(clk),
		.addrb(bank_rd_addr),
		.doutb(zval_out3)
	);

	always @(*)begin
		case(bank_select)
			4'b0001:
				frag_zval <= frag_hs? zval_out0[31:16] : zval_out0[15:0];
			4'b0010:
				frag_zval <= frag_hs? zval_out1[31:16] : zval_out1[15:0];
			4'b0100:
				frag_zval <= frag_hs? zval_out2[31:16] : zval_out2[15:0];
			4'b1000:
				frag_zval <= frag_hs? zval_out3[31:16] : zval_out3[15:0];
			default:
				frag_zval <= zval_out0[15:0];
		endcase
	end

	reg [8:0] selected_tag;
	always @(*)begin
		case(lru)
			4'b0001:begin
				mem_wr_data <= zval_out0;
				selected_tag <= bank0_tag;
			end
			4'b0010:begin
				mem_wr_data <= zval_out1;
				selected_tag <= bank1_tag;
			end
			4'b0100:begin
				mem_wr_data <= zval_out2;
				selected_tag <= bank2_tag;
			end
			4'b1000:begin
				mem_wr_data <= zval_out3;
				selected_tag <= bank3_tag;
			end
			default:begin
				mem_wr_data <= zval_out0;
				selected_tag <= 9'h1FF;
			end
		endcase
	end
	
	assign cache_wr_ack = 1'b1;
	assign mem_rd_en = (mem_state == `MEM_LOAD) || (mem_state == `MEM_WAIT_RD) || (mem_state == `MEM_SEND_RD);
	assign mem_rd_addr = frag_id;
	assign mem_wr_en = evicting_bank;
	assign mem_wr_addr = {selected_tag, evict_wr_addr, 1'b0};
endmodule
