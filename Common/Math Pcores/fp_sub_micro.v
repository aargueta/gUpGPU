////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: fp_sub_micro.v
// /___/   /\     Timestamp: Thu Aug 08 14:27:31 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_sub_micro.ngc" "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_sub_micro.v" 
// Device	: 5vfx70tff1136-1
// Input file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_sub_micro.ngc
// Output file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_sub_micro.v
// # of Modules	: 1
// Design Name	: fp_sub_micro
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

module fp_sub_micro (
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
  wire N1;
  wire N10;
  wire N11;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N24;
  wire N26;
  wire N28;
  wire N32;
  wire N34;
  wire N36;
  wire N37;
  wire N39;
  wire N41;
  wire N42;
  wire N44;
  wire N46;
  wire N47;
  wire N7;
  wire N9;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_in1_rnd1 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_in2_rnd1 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_rnd2 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd180_126 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd33_127 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zeros_add ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2_142 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4_144 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/delay_0_145 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[0] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[2] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[3] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N0 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N1 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N19 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N2 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_is_inf ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_mant_is_zero ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux14_183 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux29_184 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/b_mant_is_zero ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign_187 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/lrg_almost_over0 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_201 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/subtract_int1_202 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<0>_203 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<1>_204 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<0>_205 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<1> ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_a ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_b ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[3] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX_rt_229 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/lsb ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/mod_zero_bit_2 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/round ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_op ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_rnd2 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/round_rnd1 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_rstpot1_279 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_1_rstpot1_281 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_2_rstpot1_283 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_3_rstpot1_285 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_4_rstpot_287 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0000_293 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0001 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/sign_op_295 ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/cancellation ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_sign ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ;
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_321 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_329 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/nd_int ;
  wire \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_333 ;
  wire \NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX_O_UNCONNECTED ;
  wire [3 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det ;
  wire [3 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in ;
  wire [5 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op ;
  wire [5 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry ;
  wire [5 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int ;
  wire [7 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry ;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op ;
  wire [2 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1 ;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 ;
  wire [6 : 3] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 ;
  wire [6 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ZERO_DEL/ip_reg_op ;
  wire [3 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux ;
  wire [12 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add ;
  wire [10 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux ;
  wire [10 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det ;
  wire [5 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.DET_SIGN_DELAY/ip_reg_op ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op ;
  wire [4 : 4] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_lut ;
  wire [7 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry ;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di ;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_xor_b ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_state ;
  wire [5 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux ;
  wire [3 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry ;
  wire [5 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry ;
  wire [5 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry ;
  wire [10 : 10] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_round_op ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 ;
  wire [13 : 2] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_lut ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op ;
  wire [4 : 0] \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op ;
  wire [9 : 5] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist ;
  wire [4 : 1] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state ;
  wire [9 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/Result ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/delay ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count ;
  assign
    operation_rfd = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ,
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_321 ,
    result[15] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/sign_op_295 ,
    result[14] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [4],
    result[13] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [3],
    result[12] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [2],
    result[11] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [1],
    result[10] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [0],
    result[9] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [9],
    result[8] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [8],
    result[7] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [7],
    result[6] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [6],
    result[5] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [5],
    result[4] = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [4],
    result[3] = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [3],
    result[2] = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [2],
    result[1] = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [1],
    result[0] = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [0];
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
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_333 ),
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
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_333 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/RDY  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ),
    .R(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_321 )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started  (
    .C(clk),
    .CE(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ),
    .D(N0),
    .S(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_329 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/nd_int ),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/delay [0])
  );
  FDE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [4]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [4])
  );
  FDE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [3]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [3])
  );
  FDE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [2]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [2])
  );
  FDE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [1]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [1])
  );
  FDE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_lut [0]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [0])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/sign_op  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_sign ),
    .R(N0),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/sign_op_295 )
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [9]),
    .R(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0000_293 ),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0001 ),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [9])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [8]),
    .R(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [8])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [7]),
    .R(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [7])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [6]),
    .R(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [6])
  );
  FDRSE   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [5]),
    .R(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .S(N0),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [5])
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_a ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_b ),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP_O_UNCONNECTED )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/NO_RTL.USE_MUX7.W_MUX[0].MUX_OP  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<0>_203 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<0>_205 ),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/NO_RTL.USE_MUX7.W_MUX[1].MUX_OP  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<1>_204 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<1> ),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[3] )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [5]),
    .DI(N1),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/round_rnd1 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [4]),
    .DI(N0),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/round ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [2]),
    .DI(N1),
    .S
(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX_rt_229 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [1]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/mod_zero_bit_2 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/lsb ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_op ),
    .DI(N0),
    .S(N0),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_op ),
    .LI(N0),
    .O(\NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [1]),
    .DI(N0),
    .S(N0),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [1]),
    .LI(N0),
    .O(\NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [2]),
    .DI(N0),
    .S(N0),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [2]),
    .LI(N0),
    .O(\NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [3]),
    .DI(N0),
    .S(N0),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [3]),
    .LI(N0),
    .O(\NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/carry [4]),
    .LI(N0),
    .O(\NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/EXP_ADD.ADD/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_rnd2 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_rnd2 ),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [5])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [5]),
    .DI(N1),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_op )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND2/carry [5]),
    .LI(N1),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_round_op [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/round_rnd1 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/round_rnd1 ),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/carry_rnd2 )
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/LOGIC.RND1/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [7]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [7]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [6]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [6]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [5]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [5]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [4]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [4]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [3]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [3]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [2]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [2]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [1]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [1]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N0),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [0]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/BPL_GT_1.C_CHAIN/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N0),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_xor_b [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(N0),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_xor_b [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [5])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.EXP_INC_S2.STRUCT_ADD/carry [5]),
    .LI(N0),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [5])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_mant_is_zero )
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/b_mant_is_zero )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/lrg_almost_over0 ),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/delay_0_145 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [0]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [1]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [2]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2_142 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [3]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [4]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4_144 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_state [0]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_state [1]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.DET_SIGN_DELAY/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign_187 ),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.DET_SIGN_DELAY/ip_reg_op [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.CARRY_MUX1  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .DI(N0),
    .S(N1),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_in1_rnd1 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.CARRY_MUX2  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_in1_rnd1 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zeros_add ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_in2_rnd1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [7]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [6]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [5]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [4]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [3]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [2]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [1]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [0]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [0])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [7]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/subtract_int1_202 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [7])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [6]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [6])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [6]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [10]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [7])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [5]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [5])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [5]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [9]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [6])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [4])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [4]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [8]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [5])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [3])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [3]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [7]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [4])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [2])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [2]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [6]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [3])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [1])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [1]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [5]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [2])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_rnd2 ),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sum_int_rnd2 [0])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_rnd2 ),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [4]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD2.ADD1/carry [1])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [5]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [5])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [5]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [3]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_rnd2 )
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [4])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [4]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [2]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [5])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [3])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [3]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [1]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [4])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [2])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [2]),
    .DI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [0]),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [3])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [1])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1 [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [2])
  );
  XORCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_in2_rnd1 ),
    .LI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [0])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/carry_in2_rnd1 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1 [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/carry [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [0]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [1]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [2]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [3]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [4]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/q_int [5]),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [5])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .O
(\NLW_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX_O_UNCONNECTED )

  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [3])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [2])
  );
  MUXCY 
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ZERO_DEL/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zeros_add ),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ZERO_DEL/ip_reg_op [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_b_0_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_b )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_a_0_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_Z/op_a )
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
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_329 ),
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
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_329 ),
    .I2(ce),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_329 ),
    .I2(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/subtract_int1  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract )
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux14  (
    .I0(b[13]),
    .I1(b[14]),
    .I2(b[10]),
    .I3(b[11]),
    .I4(b[12]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/b_mant_is_zero ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux14_183 )
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux29  (
    .I0(a[11]),
    .I1(a[10]),
    .I2(a[14]),
    .I3(a[12]),
    .I4(a[13]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_mant_is_zero ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux29_184 )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[9]),
    .I3(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [9])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[8]),
    .I3(a[8]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [8])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[7]),
    .I3(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [7])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[6]),
    .I3(a[6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [6])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[5]),
    .I3(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [5])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[4]),
    .I3(a[4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [4])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[3]),
    .I3(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [3])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[2]),
    .I3(a[2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [2])
  );
  LUT4 #(
    .INIT ( 16'h7323 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign_SW2  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_is_inf ),
    .I1(a[15]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I3(b[15]),
    .O(N7)
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[1]),
    .I3(a[1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [1])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ZERO_LARGEST1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N19 ),
    .I1(b[10]),
    .I2(b[13]),
    .I3(b[14]),
    .I4(b[12]),
    .I5(b[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I2(b[0]),
    .I3(a[0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [0])
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ZERO_LARGEST21  (
    .I0(a[14]),
    .I1(a[12]),
    .I2(a[13]),
    .I3(a[11]),
    .I4(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N19 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det_1_not00011  (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_is_inf1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_mant_is_zero ),
    .I1(a[14]),
    .I2(a[12]),
    .I3(a[13]),
    .I4(a[11]),
    .I5(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_is_inf )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det_0_not00011  (
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(a[4]),
    .I5(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I1(a[12]),
    .I2(b[12]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I1(a[11]),
    .I2(b[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [1])
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_xor_b_not00001  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I1(b[10]),
    .I2(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_xor_b [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/lrg_almost_over0_cmp_eq00001  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [0]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [2]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [3]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [4]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_largest_exp [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/lrg_almost_over0 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det_1_not00011  (
    .I0(b[6]),
    .I1(b[7]),
    .I2(b[8]),
    .I3(b[9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1])
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign11  (
    .I0(b[12]),
    .I1(b[13]),
    .I2(b[14]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/b_mant_is_zero ),
    .I4(b[10]),
    .I5(b[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N2 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det_0_not00011  (
    .I0(b[0]),
    .I1(b[1]),
    .I2(b[2]),
    .I3(b[3]),
    .I4(b[4]),
    .I5(b[5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero_3_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/all_bits_zero_del1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/cancellation )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [10]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [7])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [9]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [6])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [8]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [5])
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [10]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [2]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [3])
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [8]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [0]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [1])
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [9]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [1]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/Mxor_align_dist_0_ip_Result1  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3])
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd2_Result<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [8]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [12]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [4])
  );
  LUT6 #(
    .INIT ( 64'hCC88EEAAC480EEAA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/_mux0004_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [4]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [0]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [1]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [3]),
    .O(N9)
  );
  LUT5 #(
    .INIT ( 32'hEEEAFFFF ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/_mux0004_SW1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [7]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [8]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [2]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h88FA88FA88FAD8FA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/_mux0004_SW2  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [2]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [8]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [7]),
    .O(N11)
  );
  LUT5 #(
    .INIT ( 32'hB1BB111B ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/_mux0004  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I1(N9),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/zero_det_in [3]),
    .I3(N10),
    .I4(N11),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zeros_add )
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd2_Result<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [7]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [9]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [3])
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd2_Result<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [6]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [8]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [2])
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd2_Result<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [7]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[3] )
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd2_Result<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [4]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [6]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [8]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [0])
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd1_Result<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [5]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [6])
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd1_Result<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [4]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [5])
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd1_Result<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [3]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [4])
  );
  LUT6 #(
    .INIT ( 64'h6666999666666966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd1_Result<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [0]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [2]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<7>1  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00000001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd33  (
    .I0(b[12]),
    .I1(b[11]),
    .I2(b[14]),
    .I3(b[13]),
    .I4(b[10]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N19 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd33_127 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<7>1  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [7])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<6>1  (
    .I0(b[13]),
    .I1(b[12]),
    .I2(a[12]),
    .I3(a[13]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [6])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<6>21  (
    .I0(b[12]),
    .I1(a[12]),
    .I2(b[13]),
    .I3(a[13]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det_2_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [7]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [8]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [9]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [2])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[9]),
    .I3(b[8]),
    .I4(b[9]),
    .I5(a[8]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [9])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[8]),
    .I3(b[7]),
    .I4(b[8]),
    .I5(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [8])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[7]),
    .I3(b[6]),
    .I4(b[7]),
    .I5(a[6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [7])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<5>1  (
    .I0(b[11]),
    .I1(b[10]),
    .I2(a[10]),
    .I3(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [5])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<5>21  (
    .I0(b[10]),
    .I1(a[10]),
    .I2(b[11]),
    .I3(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [5])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<4>1  (
    .I0(b[9]),
    .I1(b[8]),
    .I2(a[8]),
    .I3(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<4>21  (
    .I0(b[8]),
    .I1(a[8]),
    .I2(b[9]),
    .I3(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det_1_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [5]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [6]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [1])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[6]),
    .I3(b[5]),
    .I4(b[6]),
    .I5(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [6])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[5]),
    .I3(b[4]),
    .I4(b[5]),
    .I5(a[4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [5])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[4]),
    .I3(b[3]),
    .I4(b[4]),
    .I5(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [4])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[3]),
    .I3(b[2]),
    .I4(b[3]),
    .I5(a[2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [3])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<3>1  (
    .I0(b[7]),
    .I1(b[6]),
    .I2(a[6]),
    .I3(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<3>21  (
    .I0(b[6]),
    .I1(a[6]),
    .I2(b[7]),
    .I3(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [3])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<2>1  (
    .I0(b[5]),
    .I1(b[4]),
    .I2(a[4]),
    .I3(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<2>21  (
    .I0(b[4]),
    .I1(a[4]),
    .I2(b[5]),
    .I3(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [2])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<1>1  (
    .I0(b[3]),
    .I1(b[2]),
    .I2(a[2]),
    .I3(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<1>21  (
    .I0(b[2]),
    .I1(a[2]),
    .I2(b[3]),
    .I3(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [1])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di<0>1  (
    .I0(b[1]),
    .I1(b[0]),
    .I2(a[0]),
    .I3(a[1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/di [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op<0>21  (
    .I0(b[0]),
    .I1(a[0]),
    .I2(b[1]),
    .I3(a[1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/NUMB_CMP/NOT_FAST.CMP/lut_op [0])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[2]),
    .I3(b[1]),
    .I4(b[2]),
    .I5(a[1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [2])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I2(a[1]),
    .I3(b[0]),
    .I4(b[1]),
    .I5(a[0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_lut<1>1  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [13]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [12]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [11]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [3])
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [9]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [12]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [10]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [11]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [2])
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [9]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [8]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [10]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [11]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [0]),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAA80 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/delay_0_145 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [7]),
    .I3(N13),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/cancellation ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_201 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCAAAAFF00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [8]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [9]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [7]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [0])
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCAAAAF0F0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [7]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [8]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [9]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [6]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [6]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [7]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [8]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [3])
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [6]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [7]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [5]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [6]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [1])
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [4]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [5]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd1 [0])
  );
  LUT5 #(
    .INIT ( 32'h00CCAAF0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/round1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [4]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/round )
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/lsb1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [4]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [5]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/lsb )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0000_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [7]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/delay_0_145 ),
    .O(N15)
  );
  LUT6 #(
    .INIT ( 64'hA2A2A2A2A2A2A2A0 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0000  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1]),
    .I3(N15),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/cancellation ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_201 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_9_and0000_293 )
  );
  LUT6 #(
    .INIT ( 64'hF0AACCFFF0AACC00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2<4>  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [13]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [12]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [11]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .I5(N17),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2 [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero_1_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [1])
  );
  LUT5 #(
    .INIT ( 32'h00000054 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [2]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [4]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0F0F0F0F8 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/delay_0_145 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [7]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [0]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/cancellation ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_201 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero_0_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [7]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [6]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [5]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [0])
  );
  LUT4 #(
    .INIT ( 16'hFFAB ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<1>_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [0]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [2]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h0000FFFF000E000E ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<1>  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [4]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [5]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [6]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [7]),
    .I4(N24),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<1>_204 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero_2_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [3]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/chunk_is_zero [2])
  );
  LUT4 #(
    .INIT ( 16'hFF45 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<0>_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [0]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [3]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h0000FFFF00AE00AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<0>  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [6]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [5]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [7]),
    .I4(N26),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_a<0>_203 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[0] )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<0>_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [1]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h0000FFFF44544454 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<0>  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [2]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [3]),
    .I4(N28),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/ENCODE[0].MUX_0/op_b<0>_205 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX_rt  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ZERO_DEL/ip_reg_op [0]),
    .O
(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/MODE_NO.NORM_2.RND_CHAIN/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX_rt_229 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/subtract_int11  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/subtract_int1_202 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_SW2  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .O(N32)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<13>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [2])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<12>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [3])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [4])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [5])
  );
  LUT4 #(
    .INIT ( 16'h99A5 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2_142 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[2] )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [4]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [6])
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [7])
  );
  LUT6 #(
    .INIT ( 64'h00FF00F000FF00B4 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_xor<2>11  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[0] ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [2]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [1]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [0]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [2])
  );
  LUT6 #(
    .INIT ( 64'h0F0F0F000F0F0E01 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_xor<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[0] ),
    .I1(N19),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [3]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [0]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [3])
  );
  LUT6 #(
    .INIT ( 64'h3333301233333021 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_xor<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[0] ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [4]),
    .I3(N34),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [0]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [4])
  );
  LUT5 #(
    .INIT ( 32'h781E5A0F ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_xor<2>11  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[2] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [2])
  );
  LUT6 #(
    .INIT ( 64'h3F55035533550055 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_xor<4>111  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2_142 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[2] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N0 )
  );
  LUT4 #(
    .INIT ( 16'h695A ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_xor<1>11  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [1])
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<7>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [0]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [8])
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [9])
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [10])
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [5]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [11])
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [4]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [2]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [12])
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/NORM_SHIFT/shifted_temp<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [5]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [3]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/part_norm_mant_ext [13])
  );
  LUT6 #(
    .INIT ( 64'h0001323300231033 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/dec_state_pre_op_1_cmp_eq00001  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[2] ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2_142 ),
    .I3(N36),
    .I4(N37),
    .I5(N32),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [1])
  );
  LUT5 #(
    .INIT ( 32'h0F060F09 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_lut<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [0]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h00FF00F000FF0096 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_xor<1>11  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [1]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_state [0]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_round_op [10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_pre_op [1])
  );
  FD   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0  (
    .C(clk),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_rstpot1_279 ),
    .Q(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [0])
  );
  FD   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_1  (
    .C(clk),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_1_rstpot1_281 ),
    .Q(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [1])
  );
  FD   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_2  (
    .C(clk),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_2_rstpot1_283 ),
    .Q(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [2])
  );
  FD   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_3  (
    .C(clk),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_3_rstpot1_285 ),
    .Q(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [3])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/dist_int_1_mux00001_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [6]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/SUM_RND2_DELAY/ip_reg_op [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .O(N39)
  );
  LUT5 #(
    .INIT ( 32'hCAFFCA00 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/mant_shifted_rnd2<4>_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [4]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .I4(N39),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF3FFFFFFF1 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/mod_zero_bit_21  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/STRUCT_ADD1.ADD1/Q_DEL/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/ROUND/RND_BIT_GEN/mod_zero_bit_2 )
  );
  FDR   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_4  (
    .C(clk),
    .D(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_4_rstpot_287 ),
    .R(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .Q(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [4])
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_3_rstpot1  (
    .I0(ce),
    .I1(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_3_rstpot1_285 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_2_rstpot1  (
    .I0(ce),
    .I1(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_2_rstpot1_283 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_1_rstpot1  (
    .I0(ce),
    .I1(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [1]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_1_rstpot1_281 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_rstpot1  (
    .I0(ce),
    .I1(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_and0000_278 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_0_rstpot1_279 )
  );
  LUT5 #(
    .INIT ( 32'h000A0E0E ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4_144 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[3] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(N36)
  );
  LUT5 #(
    .INIT ( 32'h000E0F0F ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_SW1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4_144 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[3] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(N37)
  );
  LUT5 #(
    .INIT ( 32'h9FE7AFF5 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_xor<3>1_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[2] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'hAAEAAAEAFAFAFEFE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_SW3  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4_144 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2_142 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'hECFCECFCFEFEFFFF ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_SW4  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_2_142 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4_144 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[2] ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[0] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h00FF0A5F087F0E1F ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_1_141 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I2(N42),
    .I3(N41),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[1] ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/state_sig_up_or0000_201 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_4_rstpot  (
    .I0(ce),
    .I1(\NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [4]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/round_mant [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op_4_rstpot_287 )
  );
  LUT4 #(
    .INIT ( 16'h599A ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_xor<4>12  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_4_144 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N0 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [4])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_xor<3>11  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_3_143 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N0 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [3])
  );
  LUT6 #(
    .INIT ( 64'hB7FFFFFFEDFFFFFF ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/Madd_exp_pre_op_lut<0>1_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/delay_0_0_140 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_norm_exp_Madd_lut[3] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[0] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [1]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/exp_op [2]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N0 ),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hFFF8FFF8F8FFFFF8 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd198  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd180_126 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd33_127 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [4]),
    .I4(N44),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAA2A ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/sign_sig_up1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.DET_SIGN_DELAY/ip_reg_op [0]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/norm_dist_skew[3] ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/NORM/LZE/c_int[3] ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [1]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/FAST_SPECIAL.STATE_DELAY/ip_reg_op [0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/op_sign )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux<10>1  (
    .I0(b[11]),
    .I1(b[10]),
    .I2(b[13]),
    .I3(b[14]),
    .I4(b[12]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N19 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [10])
  );
  LUT5 #(
    .INIT ( 32'h55555545 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_state<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux29_184 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N2 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux14_183 ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_is_inf ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_state [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10011011 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_state<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux14_183 ),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux29_184 ),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_is_inf ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N2 ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/subtract ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_state [1])
  );
  LUT6 #(
    .INIT ( 64'h0303020303020202 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<11>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I4(a[9]),
    .I5(b[9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [11])
  );
  LUT6 #(
    .INIT ( 64'h0028002800280022 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<10>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [9]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [10])
  );
  LUT6 #(
    .INIT ( 64'h0028002800280022 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<9>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [8]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [1]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [9])
  );
  LUT5 #(
    .INIT ( 32'h51154004 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<8>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I2(b[10]),
    .I3(a[10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [8])
  );
  LUT6 #(
    .INIT ( 64'h7337622651154004 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<4>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I2(b[10]),
    .I3(a[10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [3]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [7]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [4])
  );
  LUT6 #(
    .INIT ( 64'hE66EC44CA22A8008 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2]),
    .I2(b[10]),
    .I3(a[10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [7]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [0])
  );
  LUT6 #(
    .INIT ( 64'hFB0404FB04FBFB04 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd2_Result<6>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [12]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I4(b[15]),
    .I5(a[15]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [6])
  );
  LUT6 #(
    .INIT ( 64'h04FBFB04FB0404FB ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/Mxor_xor_rnd2_Result<5>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [11]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/lrg_mant_z_mux [9]),
    .I4(b[15]),
    .I5(a[15]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_xor<3>11  (
    .I0(b[13]),
    .I1(a[13]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N1 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [3])
  );
  LUT6 #(
    .INIT ( 64'hF00FF00F2DD27887 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [3]),
    .I2(b[15]),
    .I3(a[15]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [1]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1 [2])
  );
  LUT6 #(
    .INIT ( 64'hF00FF00F2DD27887 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1<1>1  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [2]),
    .I2(b[15]),
    .I3(a[15]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [0]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/LOGIC_ADD.FRAC_ADDSUB/sml_s_rnd1 [1])
  );
  LUT6 #(
    .INIT ( 64'h00020007000F000F ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det_0_not00011  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I1(a[0]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [1]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [2]),
    .I4(b[0]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [3]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux<4>1  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [4])
  );
  LUT5 #(
    .INIT ( 32'hFF6FF666 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<10>1  (
    .I0(a[10]),
    .I1(b[10]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I3(a[9]),
    .I4(b[9]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [10])
  );
  LUT5 #(
    .INIT ( 32'h66600600 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux<0>1  (
    .I0(b[10]),
    .I1(a[10]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/b_largest ),
    .I3(b[0]),
    .I4(a[0]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/sml_shift_mux [0])
  );
  LUT5 #(
    .INIT ( 32'h99696966 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_xor<4>12  (
    .I0(b[14]),
    .I1(a[14]),
    .I2(b[13]),
    .I3(a[13]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N1 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [4])
  );
  LUT4 #(
    .INIT ( 16'hEFC4 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux<3>1  (
    .I0(b[14]),
    .I1(a[13]),
    .I2(a[14]),
    .I3(b[13]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/ext_mux [3])
  );
  LUT5 #(
    .INIT ( 32'h5D04DF45 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy<4>11  (
    .I0(a[14]),
    .I1(b[13]),
    .I2(a[13]),
    .I3(b[14]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N1 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4])
  );
  LUT6 #(
    .INIT ( 64'h99999999A99A9999 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/Madd_abs_dist_mux_Madd_xor<3>11  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [3]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I2(a[10]),
    .I3(b[10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_lut [1]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [3])
  );
  LUT6 #(
    .INIT ( 64'h6999696966696666 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_xor<2>11  (
    .I0(b[12]),
    .I1(a[12]),
    .I2(b[11]),
    .I3(b[10]),
    .I4(a[10]),
    .I5(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2])
  );
  LUT6 #(
    .INIT ( 64'h7510F75175107510 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_xor<4>111  (
    .I0(b[12]),
    .I1(b[11]),
    .I2(a[11]),
    .I3(a[12]),
    .I4(b[10]),
    .I5(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N1 )
  );
  LUT4 #(
    .INIT ( 16'h5A96 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_xor<1>11  (
    .I0(b[11]),
    .I1(a[10]),
    .I2(a[11]),
    .I3(b[10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [1])
  );
  LUT5 #(
    .INIT ( 32'h3C96693C ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/Madd_abs_dist_mux_Madd_xor<1>11  (
    .I0(a[10]),
    .I1(b[11]),
    .I2(a[11]),
    .I3(b[10]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF6FF6 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd198_SW0  (
    .I0(b[10]),
    .I1(a[10]),
    .I2(b[11]),
    .I3(a[11]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [3]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h0990999999990990 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd180  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I2(b[10]),
    .I3(a[10]),
    .I4(b[11]),
    .I5(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/zero_sml_up_preadd180_126 )
  );
  LUT6 #(
    .INIT ( 64'h0009000900099000 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_SHIFT/shifted_temp<12>1  (
    .I0(a[10]),
    .I1(b[10]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2]),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [3]),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_lut [1]),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/aligned_mant_add [12])
  );
  LUT6 #(
    .INIT ( 64'hA99A99999999A99A ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/Madd_abs_dist_mux_Madd_xor<2>11  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/align_dist [2]),
    .I1(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/Msub_bma_exp_cy [4]),
    .I2(b[11]),
    .I3(a[11]),
    .I4(b[10]),
    .I5(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/ALIGN_BLK/abs_dist_mux [2])
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign  (
    .I0(N46),
    .I1(N47),
    .S(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/N2 ),
    .O(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign_187 )
  );
  LUT6 #(
    .INIT ( 64'h2222000222220003 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign_F  (
    .I0(a[15]),
    .I1(b[15]),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux14_183 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux29_184 ),
    .I4(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I5(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_is_inf ),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h00010001AAAB0001 ))
  \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/det_sign_G  (
    .I0(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/zero_largest ),
    .I1(N7),
    .I2(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux14_183 ),
    .I3(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/EXP/a_or_b_nan_mux29_184 ),
    .I4(a[15]),
    .I5(b[15]),
    .O(N47)
  );
  INV   \U0/op_inst/FLT_PT_OP/HND_SHK/Mcount_lat_count_xor<0>11_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [0]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [0])
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
