`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:10:52 08/10/2013
// Design Name:   bounding_box
// Module Name:   D:/Unrelated Junk/gUp GPU/gUpGPU/Pixel Pipeline/Triangle Rasterizer/TriangleRasterizer/bounding_box_tb.v
// Project Name:  TriangleRasterizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bounding_box
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bounding_box_tb;

	// Inputs
	reg clk;
	reg rst;
	reg nd;
	reg ds_rfd;
	reg [15:0] v1_posX;
	reg [15:0] v1_posY;
	reg [15:0] v2_posX;
	reg [15:0] v2_posY;
	reg [15:0] v3_posX;
	reg [15:0] v3_posY;

	// Outputs
	wire us_rfd;
	wire rdy;
	wire [15:0] fp_minX;
	wire [15:0] fp_maxX;
	wire [15:0] fp_minY;
	wire [15:0] fp_maxY;

	// Instantiate the Unit Under Test (UUT)
	bounding_box uut (
		.clk(clk), 
		.rst(rst), 
		.nd(nd), 
		.us_rfd(us_rfd), 
		.v1_posX(v1_posX), 
		.v1_posY(v1_posY), 
		.v2_posX(v2_posX), 
		.v2_posY(v2_posY), 
		.v3_posX(v3_posX), 
		.v3_posY(v3_posY), 
		.ds_rfd(ds_rfd), 
		.rdy(rdy), 
		.fp_minX(fp_minX), 
		.fp_maxX(fp_maxX), 
		.fp_minY(fp_minY), 
		.fp_maxY(fp_maxY)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		nd = 0;
		ds_rfd = 1;
		v1_posX = 0;
		v1_posY = 0;
		v2_posX = 0;
		v2_posY = 0;
		v3_posX = 0;
		v3_posY = 0;

		#100;
		repeat(4)
			#5 clk = ~clk;
		rst = 0;
		forever
			#5 clk = ~clk;
	end
	
	initial begin
		#210;
		nd = 1;
		v1_posX = {1'b0, 5'd13, 10'h000}; // .25
		v1_posY = {1'b0, 5'd13, 10'h000}; // .25
		v2_posX = {1'b0, 5'd14, 10'h000}; // .5
		v2_posY = {1'b0, 5'd15, 10'h000}; // 1.0 
		v3_posX = {1'b0, 5'd14, 10'h200}; // .75
		v3_posY = {1'b0, 5'd14, 10'h100}; // .5
		#10;
		while(~us_rfd)begin
			#10;
		end
		nd = 0;
		#10;
		nd = 1;
		v1_posX = {1'b1, 5'd13, 10'h000}; // -.25
		v1_posY = {1'b1, 5'd13, 10'h000}; // -.25
		v2_posX = {1'b0, 5'd14, 10'h000}; // .5
		v2_posY = {1'b0, 5'd15, 10'h200}; // 1.5 
		v3_posX = {1'b1, 5'd14, 10'h200}; // -.75
		v3_posY = {1'b1, 5'd15, 10'h280}; // -1.625
		#10;
		while(~us_rfd)begin
			#10;
		end
		nd = 0;
		#10;
		nd = 1;
		v1_posX = 16'hBE00; // -1.5
		v1_posY = 16'hBE00; // -1.5
		v2_posX = 16'h3D00; // 1.25
		v2_posY = 16'h3D00; // 1.25
		v3_posX = 16'h4000; // 2.00
		v3_posY = 16'hC351; // -3.66
		#10;
		while(~us_rfd)begin
			#10;// nd = 0;
		end
		nd = 0;
		
		#50;
		$finish;
	end
      
endmodule

