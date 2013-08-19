`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:25:08 08/19/2013
// Design Name:   bayesian_coord
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/bayesian_coord_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bayesian_coord
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bayesian_coord_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg [15:0] v1_x;
	reg [15:0] v1_y;
	reg [15:0] v2_x;
	reg [15:0] v2_y;
	reg [15:0] v3_x;
	reg [15:0] v3_y;
	reg [15:0] p_x;
	reg [15:0] p_y;
	reg ds_rfd;

	// Outputs
	wire us_rfd;
	wire rdy;
	wire [15:0] b_u;
	wire [15:0] b_v;
	wire [15:0] b_w;

	// Instantiate the Unit Under Test (UUT)
	bayesian_coord uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.v1_x(v1_x), 
		.v1_y(v1_y), 
		.v2_x(v2_x), 
		.v2_y(v2_y), 
		.v3_x(v3_x), 
		.v3_y(v3_y), 
		.p_x(p_x), 
		.p_y(p_y), 
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.b_u(b_u), 
		.b_v(b_v), 
		.b_w(b_w)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		nd = 0;
		v1_x = 0;
		v1_y = 0;
		v2_x = 0;
		v2_y = 0;
		v3_x = 0;
		v3_y = 0;
		p_x = 0;
		p_y = 0;
		ds_rfd = 0;

		// Wait 100 ns for global reset to finish
		#100;

		repeat(4)
			#5 clk = ~clk;

		rst = 0;

		forever 
        	#5 clk = ~clk;
	end
    
    initial begin
    	#120;
    	ds_rfd = 1'b1;
    	#20;
    	nd = 1'b1;
		v1_x = 16'h0000; // 0.0
		v1_y = 16'h3C00; // 1.0
		v2_x = 16'h0000; // 0.0
		v2_y = 16'h0000; // 0.0
		v3_x = 16'h3C00; // 1.0
		v3_y = 16'h0000; // 0.0
		p_x = 16'h3800; // 0.5
		p_y = 16'h3400; // 0.25
    	#20;
    	nd = 1'b0;
    	#20;
    	nd = 1'b1;
		v1_x = 16'h0000; // 0.0
		v1_y = 16'h3C00; // 1.0
		v2_x = 16'h0000; // 0.0
		v2_y = 16'h0000; // 0.0
		v3_x = 16'h3C00; // 1.0
		v3_y = 16'h0000; // 0.0
		p_x = 16'hB800; // -0.5
		p_y = 16'h3400; // 0.25
    	#20;
    	nd = 1'b0;

		#200;
		$finish;
    end
endmodule

