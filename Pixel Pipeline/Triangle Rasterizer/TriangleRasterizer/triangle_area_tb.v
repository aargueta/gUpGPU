`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:31 08/18/2013
// Design Name:   triangle_area
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/triangle_area_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: triangle_area
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module triangle_area_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg [15:0] a_x;
	reg [15:0] a_y;
	reg [15:0] b_x;
	reg [15:0] b_y;
	reg [15:0] p_x;
	reg [15:0] p_y;
	reg ds_rfd;

	// Outputs
	wire us_rfd;
	wire rdy;
	wire [15:0] area;

	// Instantiate the Unit Under Test (UUT)
	triangle_area uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.a_x(a_x), 
		.a_y(a_y), 
		.b_x(b_x), 
		.b_y(b_y), 
		.p_x(p_x), 
		.p_y(p_y), 
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.area(area)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		nd = 0;
		a_x = 0;
		a_y = 0;
		b_x = 0;
		b_y = 0;
		p_x = 0;
		p_y = 0;
		ds_rfd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		repeat(4)
			#10 clk = ~clk;
		rst = 0;

		forever 
			#10 clk = ~clk;
	end
      
	initial begin
    	#140;
		ds_rfd = 1;
		#80;
    	nd = 1;
		a_x = 16'h0000; // A = (0.0, 0.0)
		a_y = 16'h0000; // 
		b_x = 16'h3C00; // B = (1.0, 1.0)
		b_y = 16'h3C00; // 
		p_x = 16'h3C00; // P = (1.0, 0.0)
		p_y = 16'h0000; // 
		#20;
		nd = 0;
		#20;
    	nd = 1;
		a_x = 16'h3C00; // A = (1.0, 1.0)
		a_y = 16'h3C00; // 
		b_x = 16'h0000; // B = (0.0, 0.0)
		b_y = 16'h0000; // 
		p_x = 16'h3C00; // P = (1.0, 0.0)
		p_y = 16'h0000; // 
		#20;
		nd = 0;
		#20;
    	nd = 1;
		a_x = 16'h0000; // A = (0.0, 0.0)
		a_y = 16'h0000; // 
		b_x = 16'hB800; // B = (-0.5, -0.5)
		b_y = 16'hB800; // 
		p_x = 16'hB800; // P = (-0.5, 0.0)
		p_y = 16'h0000; // 

	end
endmodule

