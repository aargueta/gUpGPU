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
// Description: Direct mapped cache, z-buffer 4x4 blocks come in from RAM and are
// tagged with the upper 8 bits of the block address. Frag ID in the format of 
// [15 bit block ID][4 bit sub-block frag ID] are used to pull the appropriate 
// 16-bit z-value. 
// ID's are calculated as follows:
// 		Block ID = y_block * num_x_blocks + x_blocks
// 		SB Frag ID = sub_block_y * 4 + sub_block_x
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`define INVLD_IDLE	2'b00
`define INVLD_RD	2'b01
`define INVLD_WR	2'b10
module zbuf_cache(
	clk,
	rst,

	block_wr_addr,
	block_wr_data,
	block_wr_en,

	frag_id,
	frag_rd_en,

	frag_rd_data,
	frag_rd_vld,

	invld_id,
	invld_en,
	invld_ack
);

	input clk,
	input rst,

	input [14:0] block_wr_addr;
	input [31:0] block_wr_data; 	// Each write takes 8 cycles 
	input block_wr_new; 			// High for first word 
	input block_wr_en;			// Stays high for each cycle 

	input [18:0] frag_id;
	input frag_rd_en;
	output [15:0] frag_rd_data;
	output frag_rd_vld;

	input [18:0] invld_id;
	input invld_en;
	output invld_ack;

	wire [23:0] tag_rd_data;

	/*** BLOCK WRITE LOGIC ***/
	reg [4:0] block_offset;
	always @(posedge clk)begin
		if(rst | block_wr_new)begin
			block_offset <= 0;
		end else if(block_wr_en)begin
			if(block_offset < 5'd8)
				block_offset <= block_offset + 5'd1;
			else
				block_offset <= 0;
		end else begin
			block_offset <= block_offset;
		end
	end

	wire [9:0] cache_w_addr = (block_wr_addr[6:0] << 2) + block_offset;
	wire [10:0] cache_r_addr = frag_id[10:0];
	zbuf_dm_cache data_cache (
		.clka(clk),
		.wea(block_wr_en),
		.addra(cache_addr),
		.dina(block_wr_data),
		.clkb(clk),
		.rstb(rst),
		.addrb(cache_r_addr),
		.doutb(frag_rd_data)
	);

	/*** BLOCK TAG LOGIC ***/
	wire [23:0] block_tag_data = {16'hFFFF, block_wr_addr[14:7]};
	wire [6:0] block_tag_addr = block_wr_addr[6:0];
	wire block_tag_wr_en = (block_offset == 5'd8);

	/*** INVALIDATE LOGIC ***/
	reg [1:0] invld_state;
	reg [6:0] invld_addr;
	reg [7:0] invld_tag;
	always @(posedge clk)begin
		if(rst)
			invld_state <= `INVLD_IDLE;
			invld_addr <= 0;
			invld_tag <= 0;
		else
			case(invld_state)begin
				`INVLD_IDLE: 
					invld_state <= invld_en? `INVLD_RD : `INVLD_IDLE;
 					invld_addr <= invld_en? invld_id[10:4] : invld_addr;
 					invld_tag <= invld_en? invld_id[18:11] : invld_tag;
				`INVLD_RD:
					invld_state <= (invld_tag == tag_rd_data[7:0])? `INVLD_WR : `INVLD_IDLE; // Abort in case already evicted
				`INVLD_WR:
					invld_state <= `INVLD_IDLE;
				default:
					invld_state <= `INVLD_IDLE;
 					invld_addr <= invld_en? invld_id[10:4] : invld_addr;
 					invld_tag <= invld_en? invld_id[18:11] : invld_tag;
			endcase
	end
	wire invld_tag_wr_en = (invld_state == `INVLD_WR);
	assign invld_ack = invld_tag_wr_en;
	wire [15:0] invld_mask;
	bin_to_onehot #(4) fid_to_mask(	
		.clk(clk),
		.bin(invld_id[3:0]),
		.onehot(frag_vld_mask)
	);

	/*** FRAG TAG LOGIC ***/
	wire [6:0] tag_rd_addr = (invld_state == `INVLD_RD)? invld_addr : frag_id[10:4];
	wire [7:0] frag_tag_in = frag_id[18:11];
	wire [15:0] frag_vld_mask;
	bin_to_onehot #(4) fid_to_mask(	
		.clk(clk),
		.bin(frag_id[3:0]),
		.onehot(frag_vld_mask)
	);

	/*** TAG CACHE ***/
	wire tag_wr_en = invld_tag_wr_en & block_tag_wr_en;
	wire [6:0] tag_wr_addr = invld_tag_wr_en? invld_addr : block_tag_addr;
	wire [23:0] tag_wr_data = invld_tag_wr_en? 
	zbuf_tag_cache tag_cache (
		.clka(clk),
		.wea(tag_wr_en),
		.addra(tag_wr_addr), // input [6 : 0] addra
		.dina(tag_wr_data), // input [23 : 0] dina
		.clkb(clk),
		.rstb(rst),
		.addrb(tag_rd_addr), // input [6 : 0] addrb
		.doutb(tag_rd_data) // output [23 : 0] doutb
	);

	wire frag_tag_vld = |(frag_vld_mask & tag_rd_data[23:8]);
	wire frag_tag_hit = (frag_tag_in == tag_rd_data[7:0]);
	assign frag_rd_vld = rst?  0 : (frag_tag_vld & frag_tag_hit);
endmodule
