////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: fp_div_micro.v
// /___/   /\     Timestamp: Mon Aug 19 01:34:06 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_div_micro.ngc" "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_div_micro.v" 
// Device	: 5vfx70tff1136-1
// Input file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_div_micro.ngc
// Output file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_div_micro.v
// # of Modules	: 1
// Design Name	: fp_div_micro
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

module fp_div_micro (
  clk, ce, operation_nd, operation_rfd, sclr, rdy, result, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input operation_nd;
  output operation_rfd;
  input sclr;
  output rdy;
  output [15 : 0] result;
  input [15 : 0] a;
  input [15 : 0] b;
  
  // synthesis translate_off
  
  wire N0;
  wire N01;
  wire N1;
  wire N11;
  wire N13;
  wire N17;
  wire N19;
  wire N5;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_0_8 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_1_9 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_2_10 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_3_11 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_4_12 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N0 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N10 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N2 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N4 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_one_det ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_zero_det ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_mant_is_zero_det ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_one_det ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_zero_det ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>49_32 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>57_33 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig<1>55_35 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det1_37 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det2_38 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>16_40 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>5_41 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>101_45 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>110_46 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>42_47 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/Q_DEL/ip_reg_op<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/q_int<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_0_140 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_1_141 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_10_142 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_2_144 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_3_145 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_4_146 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_5_147 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_6_148 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_7_149 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_8_150 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_9_151 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<0> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<10> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<11> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<1> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<2> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<3> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<4> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<5> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<6> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<7> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<8> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<9> ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0001 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and0001 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/sign_op_522 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX_rt_523 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_op ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_rnd2 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/round_rnd1 ;
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_573 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_581 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ;
  wire \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_584 ;
  wire \U0/op_inst/FLT_PT_OP/operation_nd_int ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/FLOW_DEC_DEL/ip_reg_op ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/SIGN_UP_DELAY/ip_reg_op ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip ;
  wire [3 : 3] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> ;
  wire [10 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op ;
  wire [9 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry ;
  wire [5 : 1] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry ;
  wire [2 : 1] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry ;
  wire [2 : 2] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip ;
  wire [3 : 1] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 ;
  wire [5 : 5] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/sum_rnd2 ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op ;
  wire [9 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/Result ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/delay ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count ;
  assign
    operation_rfd = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ,
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_573 ,
    result[15] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/sign_op_522 ,
    result[14] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [4],
    result[13] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [3],
    result[12] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [2],
    result[11] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [1],
    result[10] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [0],
    result[9] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [9],
    result[8] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [8],
    result[7] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [7],
    result[6] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [6],
    result[5] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [5],
    result[4] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [4],
    result[3] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [3],
    result[2] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [2],
    result[1] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [1],
    result[0] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [0];
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
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_584 ),
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
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_584 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/RDY  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ),
    .R(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_573 )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started  (
    .C(clk),
    .CE(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ),
    .D(N0),
    .S(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_581 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/operation_nd_int ),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/delay [0])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/sign_op  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/SIGN_UP_DELAY/ip_reg_op [0]),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/sign_op_522 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [9]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and0000 ),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and0001 ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [9])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [7]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [7])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [6]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [6])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [8]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [8])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [5]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [5])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [4]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [4])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [2]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [2])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [1]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [1])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [3]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [3])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [0]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [0])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [3]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0000 ),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0001 ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [3])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [2]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0000 ),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0001 ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [2])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [4]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0000 ),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0001 ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [4])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [1]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0000 ),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0001 ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [1])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [0]),
    .R(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0000 ),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0001 ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up [0]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up [1]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [0]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_0_8 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [1]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_1_9 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [2]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_2_10 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [3]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_3_11 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [4]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_4_12 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/SIGN_UP_DELAY/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/SIGN_UP_DELAY/ip_reg_op [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/FLOW_DEC_DEL/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up [3]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/FLOW_DEC_DEL/ip_reg_op [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_op ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX_rt_523 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_op ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX_rt_523 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [1]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [2]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [3]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_4_12 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/exp_op [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_rnd2 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_rnd2 ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [4]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [5])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [4]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [5]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/sum_rnd2 [5]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_op )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/carry [5]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/sum_rnd2 [5]),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/round_rnd1 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/round_rnd1 ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [4]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/carry_rnd2 )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/LOGIC.RND1/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [4]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/mant_op [4])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [2]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip [2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/round_rnd1 )
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [1]),
    .DI(N0),
    .S(N0),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [2])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/MODE_NO.NORM_1_OR_0.STRUCT_REQ.GENERAL.LUT6_CHAIN.RND1/carry [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/Q_DEL/ip_reg_op_11  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/q_int<11> ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/Q_DEL/ip_reg_op<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/q_int<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<10> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<9> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<8> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<7> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<6> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<5> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<4> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<3> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<2> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<1> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<0> ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<11> ),
    .LI(N0),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<10> ),
    .LI(N1),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<10> ),
    .DI(N1),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<9> ),
    .DI(a[9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<8> ),
    .DI(a[8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<7> ),
    .DI(a[7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<6> ),
    .DI(a[6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<5> ),
    .DI(a[5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<4> ),
    .DI(a[4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<3> ),
    .DI(a[3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<2> ),
    .DI(a[2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<1> ),
    .DI(a[1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(N1),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(a[0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/ADDSUB/carry<1> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<11> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<11> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<10> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<10> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [9]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<10> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<11> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<9> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<9> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [8]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<9> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<10> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<8> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<8> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [7]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<8> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<9> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<7> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<7> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [6]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<7> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<8> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<6> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<6> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [5]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<6> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<7> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<5> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<5> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [4]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<5> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<6> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<4> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<4> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [3]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<4> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<5> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<3> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<3> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [2]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<3> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<4> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<2> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<2> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [1]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<2> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<3> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<1> ),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<1> ),
    .DI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [0]),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<1> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<2> )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .LI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<0> ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/ADDSUB/carry<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_0_140 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_1_141 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_2_144 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_3_145 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_4_146 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_5_147 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_6_148 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_7_149 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_8_150 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_9_151 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_10  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_10_142 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/nd_int1  (
    .I0(operation_nd),
    .I1(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ),
    .O(\U0/op_inst/FLT_PT_OP/operation_nd_int )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and00001  (
    .I0(\U0/op_inst/FLT_PT_OP/HND_SHK/delay [0]),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_581 ),
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
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_581 ),
    .I2(ce),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_581 ),
    .I2(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and00001  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_1_and00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_9_and0001 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and00001  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op_0_and0000 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_9_151 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_10_142 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [4])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_8_150 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_9_151 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [3])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/COND_DET_A/exp_all_one_ip_cmp_eq00001  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[12]),
    .I3(a[13]),
    .I4(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_one_det )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_7_149 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_8_150 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [2])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_6_148 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_7_149 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [1])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_5_147 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_6_148 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd2 [0])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_4_146 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_5_147 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [4])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_3_145 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_4_146 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [3])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_2_144 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_3_145 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [2])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_1_141 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_2_144 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [1])
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_0_140 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_1_141 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/mant_shifted_rnd1 [0])
  );
  LUT3 #(
    .INIT ( 8'h35 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip_2_not00001  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/ADDSUB/Q_DEL/ip_reg_op<11> ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_0_140 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/RND_BIT_GEN/a_ip [2])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>31  (
    .I0(b[13]),
    .I1(b[14]),
    .I2(b[12]),
    .I3(b[11]),
    .I4(b[10]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_one_det )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>21  (
    .I0(b[14]),
    .I1(b[12]),
    .I2(b[13]),
    .I3(b[11]),
    .I4(b[10]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_zero_det )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/COND_DET_A/exp_all_zero_ip_cmp_eq00001  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[12]),
    .I3(a[13]),
    .I4(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_zero_det )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/COND_DET_A/chunk_is_zero_ip_0_cmp_eq0000_SW0  (
    .I0(a[4]),
    .I1(a[3]),
    .I2(a[2]),
    .I3(a[1]),
    .I4(a[0]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/COND_DET_A/chunk_is_zero_ip_0_cmp_eq0000  (
    .I0(a[9]),
    .I1(a[8]),
    .I2(a[7]),
    .I3(a[6]),
    .I4(a[5]),
    .I5(N01),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_mant_is_zero_det )
  );
  LUT6 #(
    .INIT ( 64'h4E4F4F4E44454544 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_one_det ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N10 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_one_det ),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_zero_det ),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_zero_det ),
    .I5(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_mant_is_zero_det ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFEFFFF ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det1_SW0  (
    .I0(b[0]),
    .I1(b[3]),
    .I2(b[2]),
    .I3(b[1]),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_one_det ),
    .I5(b[4]),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det1  (
    .I0(b[9]),
    .I1(b[8]),
    .I2(b[7]),
    .I3(b[6]),
    .I4(b[5]),
    .I5(N5),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N10 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>5  (
    .I0(b[0]),
    .I1(b[1]),
    .I2(b[8]),
    .I3(b[9]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>5_41 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>16  (
    .I0(b[6]),
    .I1(b[7]),
    .I2(b[4]),
    .I3(b[5]),
    .I4(b[2]),
    .I5(b[3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>16_40 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEEEA ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>39  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_zero_det ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_one_det ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>5_41 ),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det<0>16_40 ),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_one_det ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [0])
  );
  LUT6 #(
    .INIT ( 64'h000000C000000040 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>122  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>57_33 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>49_32 ),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [0]),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [1]),
    .I5(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF080808 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>110  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>42_47 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>57_33 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N4 ),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>101_45 ),
    .I5(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>110_46 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>140  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [1]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>110_46 ),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [10]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [10]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<11> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [9]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [9]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<10> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<9>1  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [8]),
    .I1(b[9]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<9> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<8>1  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [7]),
    .I1(b[8]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<8> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<7>1  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [6]),
    .I1(b[7]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<7> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<6>1  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [5]),
    .I1(b[6]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<6> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<5>1  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [4]),
    .I1(b[5]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<5> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<4>1  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [3]),
    .I1(b[4]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<4> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<3>1  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [2]),
    .I1(b[3]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<3> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<2>1  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [1]),
    .I1(b[2]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<2> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<1>1  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<1> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [0]),
    .I1(b[1]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<9> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[9].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<8> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[8].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<7> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[7].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<6> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[6].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<5> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[5].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<4> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[4].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<3> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[3].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<2> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[2].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[1].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<12> [11]),
    .I1(b[0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<11> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[11].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<0>1  (
    .I0(b[0]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/mr<10> [11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[10].ADDSUB/a_xor_b_sub<0> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<0>1  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[0].ADDSUB/a_xor_b_sub<0> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX_rt  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_0_8 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX_rt_523 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_1_and00001  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/FLOW_DEC_DEL/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [0]),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/STATE_UP_DELAY/ip_reg_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op_0_and0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0008 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N4 ),
    .I1(a[14]),
    .I2(b[14]),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [1]),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>101  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>101_45 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/Msub_exp_ip_xor<0>11  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/Msub_exp_ip_xor<3>11  (
    .I0(a[13]),
    .I1(b[13]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N2 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [3])
  );
  LUT5 #(
    .INIT ( 32'h80A8EAFE ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>1_SW3  (
    .I0(a[11]),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/msb_rnd ),
    .I2(a[10]),
    .I3(b[10]),
    .I4(b[11]),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'h44444000DD444440 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig<1>179  (
    .I0(a[14]),
    .I1(b[14]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig<1>55_35 ),
    .I3(b[13]),
    .I4(N13),
    .I5(a[13]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig [1])
  );
  LUT5 #(
    .INIT ( 32'h86001086 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>11  (
    .I0(a[11]),
    .I1(a[12]),
    .I2(b[12]),
    .I3(a[13]),
    .I4(b[13]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N0 )
  );
  LUT4 #(
    .INIT ( 16'h3C96 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/Msub_exp_ip_xor<1>11  (
    .I0(b[10]),
    .I1(a[11]),
    .I2(b[11]),
    .I3(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [1])
  );
  LUT5 #(
    .INIT ( 32'h99696966 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/Msub_exp_ip_xor<4>12  (
    .I0(a[14]),
    .I1(b[14]),
    .I2(a[13]),
    .I3(b[13]),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N2 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [4])
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>57  (
    .I0(a[10]),
    .I1(b[10]),
    .I2(a[11]),
    .I3(b[11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>57_33 )
  );
  LUT6 #(
    .INIT ( 64'hAFBFAFAF2BAF2B2B ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig<1>55  (
    .I0(b[12]),
    .I1(a[11]),
    .I2(a[12]),
    .I3(a[10]),
    .I4(b[10]),
    .I5(b[11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig<1>55_35 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>49_SW0  (
    .I0(b[13]),
    .I1(b[12]),
    .I2(a[11]),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'h3071303000410000 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>49  (
    .I0(a[12]),
    .I1(a[14]),
    .I2(b[14]),
    .I3(a[13]),
    .I4(N17),
    .I5(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N0 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_int_up<3>49_32 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>42_SW0  (
    .I0(a[13]),
    .I1(b[13]),
    .I2(a[11]),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'h66666F6600000900 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>42  (
    .I0(a[14]),
    .I1(b[14]),
    .I2(a[12]),
    .I3(b[12]),
    .I4(N19),
    .I5(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N0 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>42_47 )
  );
  LUT5 #(
    .INIT ( 32'h80A8EAFE ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/state_int_up<1>1  (
    .I0(a[13]),
    .I1(N11),
    .I2(a[12]),
    .I3(b[12]),
    .I4(b[13]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N4 )
  );
  LUT6 #(
    .INIT ( 64'h20BAA2FB20BA20BA ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/Msub_exp_ip_xor<4>111  (
    .I0(b[12]),
    .I1(a[11]),
    .I2(b[11]),
    .I3(a[12]),
    .I4(a[10]),
    .I5(b[10]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N2 )
  );
  LUT6 #(
    .INIT ( 64'h6696666696999696 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/Msub_exp_ip_xor<2>11  (
    .I0(a[12]),
    .I1(b[12]),
    .I2(b[11]),
    .I3(a[10]),
    .I4(b[10]),
    .I5(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/exp_ip [2])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/flow_sig<1>179_SW0  (
    .I0(b[10]),
    .I1(b[11]),
    .I2(b[12]),
    .I3(a[11]),
    .I4(a[10]),
    .I5(a[12]),
    .O(N13)
  );
  INV   \U0/op_inst/FLT_PT_OP/HND_SHK/Mcount_lat_count_xor<0>11_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [0]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [0])
  );
  INV   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/Mxor_a_add_op_Result<3>1_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_3_11 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [3])
  );
  INV   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/Mxor_a_add_op_Result<2>1_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_2_10 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [2])
  );
  INV   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/Mxor_a_add_op_Result<1>1_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/EXP_PRE_RND_DEL/delay_0_1_9 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/a_add_op [1])
  );
  INV   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/sum_rnd2_not00001_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/MANT_DIV/RT[12].Q_DEL/delay_0_11_143 ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/ROUND/sum_rnd2 [5])
  );
  LUT4 #(
    .INIT ( 16'h0028 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det2  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_mant_is_zero_det ),
    .I1(a[15]),
    .I2(b[15]),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_one_det ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det1_37 )
  );
  LUT6 #(
    .INIT ( 64'h6666000666660606 ))
  \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det3  (
    .I0(a[15]),
    .I1(b[15]),
    .I2(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_one_det ),
    .I3(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_zero_det ),
    .I4(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/N10 ),
    .I5(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/b_exp_flt_all_zero_det ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det2_38 )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det_f7  (
    .I0(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det2_38 ),
    .I1(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det1_37 ),
    .S(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/a_exp_flt_all_one_det ),
    .O(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/EXP/sign_det )
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
