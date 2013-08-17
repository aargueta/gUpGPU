`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:30 08/16/2013
// Design Name:   frag_iterator
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/frag_iterator_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: frag_iterator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module frag_iterator_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg us_rfd;
	reg [15:0] fp_min_x;
	reg [15:0] fp_max_x;
	reg [15:0] fp_min_y;
	reg [15:0] fp_max_y;
	reg ds_rfd;

	// Outputs
	wire rdy;
	wire [15:0] fp_x;
	wire [15:0] fp_y;

	// Instantiate the Unit Under Test (UUT)
	frag_iterator uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.fp_min_x(fp_min_x), 
		.fp_max_x(fp_max_x), 
		.fp_min_y(fp_min_y), 
		.fp_max_y(fp_max_y), 
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.fp_x(fp_x), 
		.fp_y(fp_y)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		nd = 0;
		us_rfd = 0;
		fp_min_x = 0;
		fp_max_x = 0;
		fp_min_y = 0;
		fp_max_y = 0;
		ds_rfd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

