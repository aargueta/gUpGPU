`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:42:03 08/28/2013
// Design Name:   zbuf_cache
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/zbuf_cache_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: zbuf_cache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module zbuf_cache_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [18:0] cache_wr_addr;
	reg [31:0] cache_wr_data;
	reg cache_wr_en;
	reg cache_wr_ack;
	reg cache_wr_done;
	reg mem_wr_ack;
	reg [18:0] frag_id;
	reg frag_rd_en;
	reg [18:0] update_id;
	reg update_en;
	reg [15:0] update_val;
	
	reg [3:0] i;

	// Outputs
	wire [31:0] mem_wr_addr;
	wire [31:0] mem_wr_data;
	wire mem_wr_en;
	wire frag_hit;
	wire [15:0] frag_zval;
	wire update_hit;

	// Instantiate the Unit Under Test (UUT)
	zbuf_cache uut (
		.clk(clk), 
		.rst(rst), 
		.cache_wr_addr(cache_wr_addr), 
		.cache_wr_data(cache_wr_data), 
		.cache_wr_en(cache_wr_en), 
		.cache_wr_ack(cache_wr_ack), 
		.mem_wr_addr(mem_wr_addr), 
		.mem_wr_data(mem_wr_data), 
		.mem_wr_en(mem_wr_en), 
		.mem_wr_ack(mem_wr_ack), 
		.frag_id(frag_id), 
		.frag_rd_en(frag_rd_en), 
		.frag_hit(frag_hit), 
		.frag_zval(frag_zval), 
		.update_id(update_id), 
		.update_en(update_en), 
		.update_val(update_val), 
		.update_hit(update_hit)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		cache_wr_addr = 0;
		cache_wr_data = 0;
		cache_wr_en = 0;
		cache_wr_ack = 0;
		cache_wr_done = 0;
		mem_wr_ack = 0;
		frag_id = 0;
		frag_rd_en = 0;
		update_id = 0;
		update_en = 0;
		update_val = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		repeat(4)
			#5 clk = ~clk;
		rst = 0;

		forever 
			#5 clk = ~clk;

	end

	initial begin
		#140;
		for(i = 0; i < 15; i = i + 1)begin
			frag_id = 19'h40000 + {i, 15'd0};
			frag_rd_en = 1'b1;
			#20;
			mem_wr_ack = 1'b1;
			#10;
			mem_wr_ack = 1'b0;
			cache_wr_en = 1'b1;
			cache_wr_addr = 19'h40000 + {i, 15'd0};
			cache_wr_data = 32'h11100000 | {12'd0, i, 12'd0, i};
			#10;
			cache_wr_addr = 19'h40002 + {i, 15'd0};
			cache_wr_data = 32'h33302220 | {12'd0, i, 12'd0, i};
			#10;
			cache_wr_addr = 19'h40004 + {i, 15'd0};
			cache_wr_data = 32'h55504440 | {12'd0, i, 12'd0, i};
			while(~frag_hit)
				#10;
			frag_rd_en = 1'b0;
			#20;
			frag_id = 19'h40001 + {i, 15'd0};
			frag_rd_en = 1'b1;
			#20;
			frag_id = 19'h40002 + {i, 15'd0};
			frag_rd_en = 1'b1;
			while(~frag_hit)
				#10;
			update_id = 19'h40004 + {i, 15'd0};
			update_en = 1'b1;
			update_val = 16'hBEEF;
			#20;
			update_en = 1'b0;
			frag_id = 19'h40003 + {i, 15'd0};
			frag_rd_en = 1'b1;
			#20;
		end
			
		$finish;
	end
      
endmodule

