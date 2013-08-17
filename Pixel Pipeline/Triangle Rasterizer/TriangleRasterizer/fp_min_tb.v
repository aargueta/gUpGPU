`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:23 08/12/2013
// Design Name:   fp_min
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/fp_min_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp_min
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fp_min_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg [15:0] a;
	reg [15:0] b;
	reg ds_rfd;

	// Outputs
	wire us_rfd;
	wire rdy;
	wire [15:0] min;

	// Instantiate the Unit Under Test (UUT)
	fp_min uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.a(a), 
		.b(b), 
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.min(min)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		nd = 0;
		a = 0;
		b = 0;
		ds_rfd = 0;

		#100;
		repeat(4)
			#10 clk = ~clk;
		rst = 0;
		forever
			#10 clk = ~clk;
	end

	initial begin
		#140;
		nd = 1;
		a = 16'h0000; // a = 0.0f
		b = 16'h3800; // b = 0.5f
		ds_rfd = 1;
		#20;
		nd = 0;
		#20;
		nd = 1;
		#200;
		$finish;

	end
      
endmodule

