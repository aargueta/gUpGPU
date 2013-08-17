////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: floating_point_v5_0.v
// /___/   /\     Timestamp: Sat Aug 10 17:35:10 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/floating_point_v5_0.ngc" "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/floating_point_v5_0.v" 
// Device	: 5vfx70tff1136-1
// Input file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/floating_point_v5_0.ngc
// Output file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/floating_point_v5_0.v
// # of Modules	: 1
// Design Name	: floating_point_v5_0
// Xilinx        : C:\Xilinx\14.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module floating_point_v5_0 (
  clk, ce, operation_nd, operation_rfd, sclr, rdy, result, a
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input operation_nd;
  output operation_rfd;
  input sclr;
  output rdy;
  output [15 : 0] result;
  input [12 : 0] a;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire N2;
  wire N4;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/delay_0_4 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_0_6 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_1_7 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<0>_10 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<1>_11 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<0> ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<1> ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int<0> ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int<1> ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_a ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_b ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[3] ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/delay_0_38 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op<0> ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op<1> ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_1_44 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10_45 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11_46 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_12_47 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_2_48 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_3_49 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_4_50 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_5_51 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_6_52 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_7_53 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_8_54 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_9_55 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<10>1 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/sign_op_85 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/non_zero_truncated_part ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 ;
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/zeros ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_154 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_162 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/nd_int ;
  wire \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_166 ;
  wire \NLW_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP_O_UNCONNECTED ;
  wire [3 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero ;
  wire [12 : 1] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry ;
  wire [2 : 1] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/c_int ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/dist_over_up ;
  wire [12 : 1] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op ;
  wire [9 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry ;
  wire [5 : 1] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry ;
  wire [2 : 1] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry ;
  wire [2 : 2] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip ;
  wire [10 : 10] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/mant_round_op ;
  wire [12 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a ;
  wire [3 : 2] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp ;
  wire [11 : 3] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant ;
  wire [9 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/Result ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/delay ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count ;
  assign
    operation_rfd = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ,
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_154 ,
    result[15] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/sign_op_85 ,
    result[14] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [4],
    result[13] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [3],
    result[12] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [2],
    result[11] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [1],
    result[10] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [0],
    result[9] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [9],
    result[8] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [8],
    result[7] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [7],
    result[6] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [6],
    result[5] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [5],
    result[4] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [4],
    result[3] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [3],
    result[2] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [2],
    result[1] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [1],
    result[0] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [0];
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_1  (
    .C(clk),
    .CE(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 ),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [1]),
    .S(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_0  (
    .C(clk),
    .CE(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 ),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [0]),
    .S(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [0])
  );
  FDRS #(
    .INIT ( 1'b1 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int  (
    .C(clk),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_166 ),
    .R(sclr),
    .S(ce),
    .Q(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int )
  );
  FDRE #(
    .INIT ( 1'b1 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var  (
    .C(clk),
    .CE(ce),
    .D(N1),
    .R(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_166 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/RDY  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ),
    .R(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_154 )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started  (
    .C(clk),
    .CE(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ),
    .D(N0),
    .S(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_162 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/nd_int ),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/delay [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [2]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_1_7 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_0_6 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int<0> ),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int<1> ),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[3] )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [1]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [0]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/NO_RTL.USE_MUX7.W_MUX[1].MUX_OP  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<1>_11 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<1> ),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int<1> )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<0>_10 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<0> ),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int<0> )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_a ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_b ),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .O(\NLW_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP_O_UNCONNECTED )
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [0]),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [0])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [1]),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [1])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [2]),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [2])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [3]),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [3])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [4]),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [4])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [0]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [0])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [3]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [3])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [1]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [1])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [2]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [2])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [4]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [4])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [5]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [5])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [6]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [6])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [7]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [7])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/sign_op  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/delay_0_4 ),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/sign_op_85 )
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [8]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [8])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [9]),
    .R(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/delay_0  (
    .C(clk),
    .CE(ce),
    .D(a[12]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/delay_0_4 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_12  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [12]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_12_47 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [11]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11_46 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [10]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10_45 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [9]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_9_55 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [8]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_8_54 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [7]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_7_53 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [6]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_6_52 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [5]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_5_51 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [4]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_4_50 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [3]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_3_49 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [2]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_2_48 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [1]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_1_44 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/dist_over_up [0]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/delay_0_38 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/c_int [2]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/c_int [1]),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op<0> )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ZERO_DET[0].mc  (
    .CI(N1),
    .DI(N0),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/c_int [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ZERO_DET[1].mc  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/c_int [1]),
    .DI(N0),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/c_int [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [7]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2 ),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [7]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [8]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [8]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [9]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [9]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [11]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [5])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [11]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [9])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/carry [5]),
    .LI(N1),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/mant_round_op [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<10>1 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 ),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<10>1 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [4]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [4]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [5]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [5]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [6]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2 )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [6]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/round_mant [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(a[12]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [0]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(a[12]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [0]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [1]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [1]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [4]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [5])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [4]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [5]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [5]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [6])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [5]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [5]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [6]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [6]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [7])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [6]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [6]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [7]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [7]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [8])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [7]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [7]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [8]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [8]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [9])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [8]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [8]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [9]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [9]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [10])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [9]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [9]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [10]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [10]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [11]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [12])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [11]),
    .LI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [11]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/M_ABS/carry [12]),
    .LI(N0),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [12])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/non_zero_truncated_part ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [1])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [1]),
    .DI(N0),
    .S(N0),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [2])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [2]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip [2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_b_0_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[3] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_b )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_a_0_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_a )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/nd_int1  (
    .I0(operation_nd),
    .I1(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/nd_int )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and00001  (
    .I0(\U0/op_inst/FLT_PT_OP/HND_SHK/delay [0]),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_162 ),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/Mcount_lat_count_xor<1>11  (
    .I0(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [0]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_162 ),
    .I2(ce),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_162 ),
    .I2(ce),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_9_and00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 ),
    .I1(ce),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op_0_and0000 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_1_44 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_2_48 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_3_49 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_4_50 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [11])
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_2_48 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_3_49 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_5_51 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_4_50 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [10])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00F0F0AAAA ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_3_49 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_6_52 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_5_51 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_4_50 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [9])
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_7_53 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_4_50 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_6_52 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_5_51 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [8])
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_8_54 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_5_51 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_7_53 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_6_52 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [7])
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_9_55 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_6_52 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_8_54 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_7_53 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [6])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_7_53 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_9_55 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_8_54 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10_45 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [5])
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_8_54 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_9_55 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11_46 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10_45 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_12_47 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_9_55 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11_46 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10_45 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/part_norm_mant [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[3] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del )
  );
  LUT5 #(
    .INIT ( 32'h01010100 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [3]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [4]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [1]),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<1> )
  );
  LUT5 #(
    .INIT ( 32'h11110010 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [4]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [1]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [2]),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_b<0> )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_OUT<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [0])
  );
  LUT4 #(
    .INIT ( 16'h1114 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_OUT<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [1])
  );
  LUT5 #(
    .INIT ( 32'h44444441 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_OUT<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_1_7 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [2])
  );
  LUT5 #(
    .INIT ( 32'hFFFCFFEE ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op<1> ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/delay_0_38 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/ip_reg_op<0> ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/zeros )
  );
  LUT6 #(
    .INIT ( 64'h070707070707070F ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_OUT<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_0_6 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_1_7 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [4])
  );
  LUT6 #(
    .INIT ( 64'h0909090909090905 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_OUT<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_0_6 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/delay_0_1_7 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/delay_0_5 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/op_exp [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<11>1  (
    .I0(a[12]),
    .I1(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<10>1  (
    .I0(a[12]),
    .I1(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<9>1  (
    .I0(a[12]),
    .I1(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<8>1  (
    .I0(a[12]),
    .I1(a[8]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<7>1  (
    .I0(a[12]),
    .I1(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<6>1  (
    .I0(a[12]),
    .I1(a[6]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<5>1  (
    .I0(a[12]),
    .I1(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero_1_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [8]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [7]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [6]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [5]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<4>1  (
    .I0(a[12]),
    .I1(a[4]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [4])
  );
  LUT4 #(
    .INIT ( 16'hFFAB ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<1>_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [8]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [6]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [5]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [7]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0101ABAB0100ABAA ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<1>  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [11]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [12]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [10]),
    .I4(N2),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [9]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<1>_11 )
  );
  LUT4 #(
    .INIT ( 16'hFF45 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<0>_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [7]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [6]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [5]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [8]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h11110100BBBBABAA ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<0>  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [12]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [10]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [9]),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [11]),
    .I5(N4),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_a<0>_10 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<3>1  (
    .I0(a[12]),
    .I1(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<2>1  (
    .I0(a[12]),
    .I1(a[2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/dist_int_1_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero_0_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [12]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [11]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [10]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [9]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<1>1  (
    .I0(a[12]),
    .I1(a[1]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a<0>1  (
    .I0(a[12]),
    .I1(a[0]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/xor_a [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero_2_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [4]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [3]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [2]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [1]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [2])
  );
  LUT5 #(
    .INIT ( 32'h00CCAAF0 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<10>11  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_12_47 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11_46 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10_45 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp0<10>1 )
  );
  LUT5 #(
    .INIT ( 32'h0A0EFFFF ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/non_zero_truncated_part1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_12_47 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11_46 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/zeros ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/non_zero_truncated_part )
  );
  LUT6 #(
    .INIT ( 64'hFF5FFF1FFF55FF0F ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip_2_not00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_12_47 ),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_10_45 ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/delay_0_11_46 ),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_1_9 ),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/delay_0_0_8 ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/zeros ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip [2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/dist_over_up_0_or00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/dist_over_up [0])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [9])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<12>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [0]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [12])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [11])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [2]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [10])
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [4]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [0]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [8])
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [5]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [1]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [7])
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [6]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [6])
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [7]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [5])
  );
  LUT6 #(
    .INIT ( 64'h5410FEBA54105410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [8]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [4]),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [0]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [4])
  );
  LUT6 #(
    .INIT ( 64'h5410FEBA54105410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [9]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [5]),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [1]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [3])
  );
  LUT6 #(
    .INIT ( 64'h5410FEBA54105410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [10]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [6]),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [2]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [2])
  );
  LUT6 #(
    .INIT ( 64'h5410FEBA54105410 ))
  \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/norm_dist_skew [3]),
    .I1(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [11]),
    .I3(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [7]),
    .I4(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/c_int[2] ),
    .I5(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [3]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/shifted_temp [1])
  );
  INV   \U0/op_inst/FLT_PT_OP/HND_SHK/Mcount_lat_count_xor<0>11_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [0]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [0])
  );
  INV   \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero_3_not00011_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/abs_a [0]),
    .O(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [3])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
