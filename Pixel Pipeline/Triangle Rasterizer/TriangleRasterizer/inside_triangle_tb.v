`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:12:37 08/20/2013
// Design Name:   triangle_inside
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/inside_triangle_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inside_triangle
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inside_triangle_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg [15:0] u;
	reg [15:0] v;
	reg [15:0] w;
	reg [15:0] b_y;
	reg [15:0] p_x;
	reg [15:0] p_y;
	reg ds_rfd;

	// Outputs
	wire us_rfd;
	wire rdy;
	wire [15:0] inside;

	// Instantiate the Unit Under Test (UUT)
	inside_triangle uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.u(u),
		.v(v),
		.w(w),
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.inside(inside)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		nd = 0;
		u = 0;
		v = 0;
		w = 0;
		ds_rfd = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		rst = 1;
		repeat(8)
			#5 clk = ~clk;
		rst = 0;

		forever 
			#5 clk = ~clk;
	end

	initial begin
    	#140;
		ds_rfd = 1;
		#40;
    	nd = 1;
    	u = 0;
		v = 0;
		w = 0;
		#10;
		nd = 0;

		#10;
		nd = 1;
    	u = 16'h3266; // 0.4
		v = 16'h3A66; // 0.8
		w = 16'h3CCC; // 1.2
		#10;
		nd = 0;

		#10;
		nd = 1;
		u = 16'h0000; // 0.0
		v = 16'hB800; // -.5
		w = 16'hBC00; // -1.0
		#10;
		nd = 0;

		#10;
		nd = 1;
    	u = 16'h3266; // 0.4
		v = 16'h3A66; // 0.8
		w = 16'h3C00; // 1.0
		#10;
		nd = 0;

		#10;
		nd = 1;
		u = 16'h0000; // 0.0
		v = 16'h3800; // 0.5
		w = 16'h3A00; // .75
		#10;
		nd = 0;
		#100;
		$finish;
	end      
endmodule

