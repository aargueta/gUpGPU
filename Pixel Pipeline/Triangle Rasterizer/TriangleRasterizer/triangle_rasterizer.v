`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:12:00 08/03/2013 
// Design Name: 
// Module Name:    triangle_rasterizer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define FP_ONE	16'h7800
`define FP_640	16'h4500
`define FP_480	16'h4380
module triangle_rasterizer(
    clk,
    rst,
    tri_ready,
    us_rfd,
    v1_posX, v1_posY, v1_posZ,
    v1_colR, v1_colG, v1_colB, v1_colA,
    v1_texX, v1_texY,

    v2_posX, v2_posY, v2_posZ, 
    v2_colR, v2_colG, v2_colB, v2_colA,
    v2_texX, v2_texY,

    v3_posX, v3_posY, v3_posZ,
    v3_colR, v3_colG, v3_colB, v3_colA,
    v3_texX, v3_texY,

    f1_ready,

    f1_posX, f1_posY, f1_posZ,
    f1_colR, f1_colG, f1_colB, f1_colA,
    f1_texX, f1_texY
);

	/*** IOs ***/
	input clk;
    input rst;
    input tri_ready;		// Triangle ready for reading
    input us_rfd;

    // Vertex Inputs
    input [15:0] v1_posX;
    input [15:0] v1_posY;
    input [15:0] v1_posZ;
    input [15:0] v1_colR;
    input [15:0] v1_colG;
    input [15:0] v1_colB;
    input [15:0] v1_colA;
    input [15:0] v1_texX;
    input [15:0] v1_texY;

    input [15:0] v2_posX;
    input [15:0] v2_posY;
    input [15:0] v2_posZ;
    input [15:0] v2_colR;
    input [15:0] v2_colG;
    input [15:0] v2_colB;
    input [15:0] v2_colA;
    input [15:0] v2_texX;
    input [15:0] v2_texY;

    input [15:0] v3_posX;
    input [15:0] v3_posY;
    input [15:0] v3_posZ;
    input [15:0] v3_colR;
    input [15:0] v3_colG;
    input [15:0] v3_colB;
    input [15:0] v3_colA;
    input [15:0] v3_texX;
    input [15:0] v3_texY;

    // Fragment Outputs
    output f1_ready;		// Fragment 1 ready for output

    output [15:0] f1_posX;
    output [15:0] f1_posY;
    output [15:0] f1_posZ;
    output [15:0] f1_colR;
    output [15:0] f1_colG;
    output [15:0] f1_colB;
    output [15:0] f1_colA;
    output [15:0] f1_texX;
    output [15:0] f1_texY;

    /*** LOGIC ***/

    wire [15:0] fp_minX, fp_minY, fp_maxX, fp_maxY;
    bounding_box b_box(
		.clk(clk),
		.rst(rst),
        .nd(tri_ready),      //<--------- TODO!!!!
        .us_rfd(us_rfd),      //<--------- TODO!!!!
		.v1_posX(v1_posX),
		.v1_posY(v1_posY),
		.v2_posX(v2_posX),
		.v2_posY(v2_posY),
		.v3_posX(v3_posX),
		.v3_posY(v3_posY),
        .ds_rfd(),      //<----------TODO!!!!
        .rdy(),     //<----------TODO!!!!
		.fp_minX(fp_minX),
		.fp_maxX(fp_maxX),
		.fp_minY(fp_minY),
		.fp_maxY(fp_max)
	);

    /***
    MODULE: fragment iterator = Iterates over bounding box with sampling points (int->float)

    MODULE: calculate bayesian coordinates
        MODULE: Triangle Area

    MODULE: fragment clipper = Bounds checks bayesian coordinates of fragments

    MODULE: attribute interpolator
    ***/


endmodule
