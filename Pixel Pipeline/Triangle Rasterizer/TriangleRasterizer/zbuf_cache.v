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

`define WRITE_IDLE		2'b00
`define WRITE_HIT		2'b01
`define WRITE_STALL		2'b10

module zbuf_cache(
	clk,
	rst,

	cache_wr_addr,
	cache_wr_data,
	cache_wr_en,
	cache_wr_ack,
	cache_wr_done,

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

	input [10:0] cache_wr_addr;
	input [31:0] cache_wr_data;
	input cache_wr_en;
	input cache_wr_ack;
	input cache_wr_done;

	output [31:0] mem_wr_addr;
	output [31:0] mem_wr_data;
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


	wire [15:0] zval_out0, zval_out1, zval_out2, zval_out3;

	reg [8:0] bank0_tag, bank1_tag, bank2_tag, bank3_tag;

	/*** BANK HIT LOGIC ***/
	wire [3:0] bank_select;
	bank_hit bank_frag_hit(
		.clk(clk),
		.rst(rst),
		.tag_in(frag_id[18:0]),
		.bank_tag_0(bank_tag_0),
		.bank_tag_1(bank_tag_1),
		.bank_tag_2(bank_tag_2),
		.bank_tag_3(bank_tag_3),
		.hit(frag_hit),
		.select(bank_select)
	);

	wire [3:0] update_bank_select;
	bank_hit bank_update_hit(
		.clk(clk),
		.rst(rst),
		.tag_in(frag_id[18:0]),
		.bank_tag_0(bank_tag_0),
		.bank_tag_1(bank_tag_1),
		.bank_tag_2(bank_tag_2),
		.bank_tag_3(bank_tag_3),
		.hit(update_hit),
		.select(update_bank_select)
	);


	/*** LRU LOGIC ***/
	wire [3:0] lru;
	lru_tracker lru_tracker(
		.clk(clk),
		.rst(rst),
		.read_en(frag_rd_en),
		.bank_hit({bank3_hit, bank2_hit, bank1_hit, bank0_hit}),
		.lru(lru)
	);

	/*** CACHE READ LOGIC ***/
	wire [1:0] read_state;
	cache_read_sm cache_read_sm(
		.clk(clk),
		.rst(rst),
		.rd_en(frag_rd_en),
		.hit(frag_hit),
		.mem_done(mem_state == `MEM_DONE),
		.read_state(read_state)
	);

	/*** CACHE WRITE LOGIC ***/
	wire [1:0] write_state;
	cache_write_sm cache_write_sm(
		.clk(clk),
		.rst(rst),
		.update_en(update_en),
		.update_hit(update_hit),
		.write_state(write_state)
	);

	/*** MEMORY IO LOGIC ***/
	wire [2:0] mem_state;

	reg [3:0] bank_dirty;
	wire curr_bank_dirty = |(bank_dirty & bank_select);
	main_mem_sm main_mem_sm(
		.clk(clk),
		.rst(rst),
		.read_stall(read_state == `READ_STALL),
		.curr_bank_dirty(curr_bank_dirty),
		.cache_wr_en(cache_wr_en),
		.cache_wr_done(cache_wr_done),
		.mem_wr_ack(mem_wr_ack),
		.mem_state(mem_state)
	);

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

	zbuf_18k_cache zbuf_data_bank0 (
	  .clka(clk),
	  .wea(wea),
	  .addra(addra),
	  .dina(dina),
	  .clkb(clk),
	  .addrb(addrb),
	  .doutb(zval_out0)
	);

	zbuf_18k_cache zbuf_data_bank1 (
	  .clka(clk),
	  .wea(wea),
	  .addra(addra),
	  .dina(dina),
	  .clkb(clk),
	  .addrb(addrb),
	  .doutb(zval_out1)
	);

	zbuf_18k_cache zbuf_data_bank2 (
	  .clka(clk),
	  .wea(wea),
	  .addra(addra),
	  .dina(dina),
	  .clkb(clk),
	  .addrb(addrb),
	  .doutb(zval_out2)
	);

	zbuf_18k_cache zbuf_data_bank3 (
	  .clka(clk),
	  .wea(wea),
	  .addra(addra),
	  .dina(dina),
	  .clkb(clk),
	  .addrb(addrb),
	  .doutb(zval_out3)
	);

	always @(*)begin
		case(bank_select)
			2'b00:
				frag_zval <= zval_out0;
			2'b01:
				frag_zval <= zval_out1;
			2'b10:
				frag_zval <= zval_out2;
			2'b11
				frag_zval <= zval_out3;
			default:
				frag_zval <= zval_out0;
		endcase
	end
endmodule
