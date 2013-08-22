`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:07:41 08/22/2013
// Design Name:   zbuf_addr_calc
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/zbuf_addr_calc_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: zbuf_addr_calc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module zbuf_addr_calc_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg [15:0] fp_x;
	reg [15:0] fp_y;
	reg ds_rfd;

	// Outputs
	wire us_rfd;
	wire rdy;
	wire [31:0] zbuff_addr;
	wire [18:0] frag_id;

	// Instantiate the Unit Under Test (UUT)
	zbuf_addr_calc uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.fp_x(fp_x), 
		.fp_y(fp_y), 
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.zbuff_addr(zbuff_addr),
		.frag_id(frag_id)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		nd = 0;
		fp_x = 0;
		fp_y = 0;
		ds_rfd = 0;

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
		ds_rfd = 1;
		#80;
    	nd = 1;
    	fp_x = 16'h0000; // 0.5
		fp_y = 16'h0000; // 0.5
		#10;
		nd = 0;
		#10;
    	nd = 1;
    	fp_x = 16'h3C00; // 1.0
		fp_y = 16'h3C00; // 1.0
		#10;
		nd = 0;
		#10;
    	nd = 1;
    	fp_x = 16'h3800; // 0.5
		fp_y = 16'h3A66; // 0.8
		#10;
		nd = 0;
		#10;
    	nd = 1;
		fp_x = 16'h3806; // .5 + 2/640 = .503125
		fp_y = 16'h3A6E; // .8 + 2/480
		#10;
		nd = 0;
		#10;
    	nd = 1;
		fp_x = 16'h3809; // .5 + 3/640 = .503125
		fp_y = 16'h3A73; // .8 + 3/480
		#10;
		nd = 0;
		#10;
    	nd = 1;
		fp_x = 16'h3810; // .5 + 5/640
		fp_y = 16'h3A7B; // .8 + 5/480
		#100
		$finish;
	end
      
endmodule

