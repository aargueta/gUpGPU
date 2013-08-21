`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:10:36 08/21/2013
// Design Name:   interpolator
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/interpolator_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: interpolator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module interpolator_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg [15:0] a1;
	reg [15:0] a2;
	reg [15:0] a3;
	reg [15:0] u;
	reg [15:0] v;
	reg [15:0] w;
	reg ds_rfd;

	// Outputs
	wire us_rfd;
	wire rdy;
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	interpolator uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.u(u), 
		.v(v), 
		.w(w), 
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		nd = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
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
		a1 = 16'h3C00; // 1
		a2 = 16'h4000; // 2
		a3 = 16'h4200; // 3
		u = 16'h3800; // .5
		v = 16'h3400; // .25
		w = 16'h3000; // .125
		#10;
		nd = 0;

		#10;
		nd = 1;
		a1 = 16'h3C00; // 1
		a2 = 16'h4000; // 2
		a3 = 16'h4200; // 3
		u = 16'hB800; // -.5
		v = 16'hB400; // -.25
		w = 16'hB000; // -.125
		#10;
		nd = 0;
		#20;
		$finish;
	end
      
endmodule

