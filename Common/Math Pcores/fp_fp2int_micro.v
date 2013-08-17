////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: fp_fp2int_micro.v
// /___/   /\     Timestamp: Sat Aug 10 15:41:56 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_fp2int_micro.ngc" "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_fp2int_micro.v" 
// Device	: 5vfx70tff1136-1
// Input file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_fp2int_micro.ngc
// Output file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_fp2int_micro.v
// # of Modules	: 1
// Design Name	: fp_fp2int_micro
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

module fp_fp2int_micro (
  clk, ce, operation_nd, operation_rfd, sclr, rdy, result, a
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input operation_nd;
  output operation_rfd;
  input sclr;
  output rdy;
  output [12 : 0] result;
  input [15 : 0] a;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire N17;
  wire N18;
  wire N19;
  wire N21;
  wire N23;
  wire N25;
  wire N36;
  wire N37;
  wire N38;
  wire N39;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_0_12 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_1_13 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_10_14 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_11_15 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_12_16 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_2_17 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_3_18 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_4_19 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_5_20 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_6_21 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_7_22 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_8_23 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_9_24 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>1_26 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>2_27 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>1_37 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>2_38 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>1_40 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>2_41 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>1_43 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>2_44 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>1_46 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>2_47 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/delay_0_0_58 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det_1_or0000 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/N4 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_0_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_10_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_11_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_12_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_1_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_2_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_3_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_4_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_5_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_6_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_7_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_8_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_9_mux0002 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].NO_RLOCS.C_MUX.CARRY_MUX_rt_102 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_one_p1 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_zero_p1 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p1 ;
  wire \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_bit_mod_pr ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_152 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_160 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/nd_int ;
  wire \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_164 ;
  wire \NLW_U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED ;
  wire \NLW_U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX_O_UNCONNECTED ;
  wire [12 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 ;
  wire [8 : 1] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det ;
  wire [3 : 1] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_unreg<1> ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/chunk_det ;
  wire [2 : 1] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry ;
  wire [2 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op ;
  wire [12 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT ;
  wire [14 : 1] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry ;
  wire [3 : 2] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 ;
  wire [11 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1 ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated ;
  wire [13 : 1] \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/Result ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/delay ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count ;
  assign
    operation_rfd = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ,
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_152 ,
    result[12] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [12],
    result[11] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [11],
    result[10] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [10],
    result[9] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [9],
    result[8] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [8],
    result[7] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [7],
    result[6] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [6],
    result[5] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [5],
    result[4] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [4],
    result[3] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [3],
    result[2] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [2],
    result[1] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [1],
    result[0] = \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [0];
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
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_164 ),
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
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_164 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/RDY  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ),
    .R(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_152 )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started  (
    .C(clk),
    .CE(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ),
    .D(N0),
    .S(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_160 )
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
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/delay_0_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_unreg<1> [0]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/delay_0_0_58 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [2]),
    .DI(N0),
    .S(N0),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_12  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [12]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_12_16 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_11  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [11]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_11_15 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_10  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [10]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_10_14 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [9]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_9_24 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [8]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_8_23 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [7]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_7_22 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [6]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_6_21 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [5]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_5_20 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [4]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_4_19 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [3]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_3_18 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [2]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_2_17 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [1]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_1_13 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [0]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_0_12 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_bit_mod_pr ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [1])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(N1),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_bit_mod_pr ),
    .O(\NLW_U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [2])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[1].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [1]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [1]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [3])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[2].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [2]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [1]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [2]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [4])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [3]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [2]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [3]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [5])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [4]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [3]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [5]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [4]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [6])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[5].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [5]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [4]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [6]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [5]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [7])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[6].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [6]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [5]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [7]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [6]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [8])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [7]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [6]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [8]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [9])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [8]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[9].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [9]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [8]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [10])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[9].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [9]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [8]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [9])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[10].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [10]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [9]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [11])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[10].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [10]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [9]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [10])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [11]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [10]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [12])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [11]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [10]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [11])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [12]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [11]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [13])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [12]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [11]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [12])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [13]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].NO_RLOCS.C_MUX.CARRY_MUX_rt_102 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [14])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [13]),
    .LI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].NO_RLOCS.C_MUX.CARRY_MUX_rt_102 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13])
  );
  XORCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].NO_RLOCS.Q_XOR.SUM_XOR  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/carry [14]),
    .LI(N0),
    .O(\NLW_U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].NO_RLOCS.Q_XOR.SUM_XOR_O_UNCONNECTED )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det_1_or0000 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_zero_p1 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry [1]),
    .DI(N0),
    .S(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_one_p1 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [2]),
    .O
(\NLW_U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX_O_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0  (
    .C(clk),
    .CE(ce),
    .D(a[15]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated [0]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated [1]),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_9_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [9])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_7_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [7])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_6_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [6])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_8_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [8])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_5_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [5])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_4_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [4])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_3_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [3])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_2_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [2])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_1_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [1])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_12  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_12_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [12])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_11  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_11_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [11])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_0_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [0])
  );
  FDE   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_10  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_10_mux0002 ),
    .Q(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT [10])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det_2_not00011  (
    .I0(a[8]),
    .I1(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [2])
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
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_160 ),
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
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_160 ),
    .I2(ce),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_160 ),
    .I2(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/Madd_align_dist_p0_xor<2>11  (
    .I0(a[10]),
    .I1(a[12]),
    .I2(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [2])
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<3>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [2]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [3]),
    .I2(a[1]),
    .I3(a[9]),
    .I4(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [3])
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<2>1  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [2]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [3]),
    .I2(a[0]),
    .I3(a[8]),
    .I4(a[4]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/overflow_p1_updated221  (
    .I0(a[3]),
    .I1(a[2]),
    .I2(a[1]),
    .I3(a[0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/overflow_p1_updated211  (
    .I0(a[7]),
    .I1(a[6]),
    .I2(a[4]),
    .I3(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1])
  );
  LUT4 #(
    .INIT ( 16'hC999 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/Madd_align_dist_p0_xor<3>11  (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[10]),
    .I3(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det_1_not00011  (
    .I0(a[4]),
    .I1(a[5]),
    .I2(a[6]),
    .I3(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det_0_not00011  (
    .I0(a[10]),
    .I1(a[13]),
    .I2(a[11]),
    .I3(a[12]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det_0_not00011  (
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [0])
  );
  LUT4 #(
    .INIT ( 16'h9888 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_12_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_12_mux0002 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p11  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_one_p1 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_zero_p1 ),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/N4 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p1 )
  );
  LUT6 #(
    .INIT ( 64'hEAEAEAEA4262EAEA ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated<0>_SW0  (
    .I0(a[14]),
    .I1(a[12]),
    .I2(a[11]),
    .I3(a[10]),
    .I4(a[15]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p1 ),
    .O(N21)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated<0>  (
    .I0(a[13]),
    .I1(a[14]),
    .I2(N21),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1 [0]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_11_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_12_16 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [11])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/chunk_det<0>1  (
    .I0(a[13]),
    .I1(a[10]),
    .I2(a[11]),
    .I3(a[12]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ZERO_DET/chunk_det [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_10_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_11_15 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_9_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_10_14 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_8_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_9_24 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_7_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_8_23 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_6_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_7_22 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_5_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_6_21 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [5])
  );
  LUT6 #(
    .INIT ( 64'hAAAAFAAA8888F888 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1<0>  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_one_p1 ),
    .I1(a[15]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/a_exp_flt_all_zero_p1 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1]),
    .I4(N23),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/N4 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1 [0])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p111_SW0  (
    .I0(a[4]),
    .I1(a[3]),
    .I2(a[2]),
    .I3(a[1]),
    .I4(a[0]),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p111  (
    .I0(a[9]),
    .I1(a[8]),
    .I2(a[7]),
    .I3(a[6]),
    .I4(a[5]),
    .I5(N25),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/N4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_4_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_5_20 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_3_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_4_19 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_2_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_3_18 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_1_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_2_17 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza_0_mux00001  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_1_13 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/neg_mant_pza [0])
  );
  LUT4 #(
    .INIT ( 16'h3BC4 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/Mxor_round_bit_mod_pr_Result1  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/delay_0_0_58 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_0_12 ),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/delay_0_1_13 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_bit_mod_pr )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].NO_RLOCS.C_MUX.CARRY_MUX_rt  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].NO_RLOCS.C_MUX.CARRY_MUX_rt_102 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_9_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [10]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_9_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_8_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [9]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_8_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_7_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [8]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_7_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_6_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [7]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_6_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_5_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [6]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_5_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_4_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [5]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_4_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_3_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [4]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_3_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_2_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [3]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_2_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_1_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [2]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_1_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_11_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [12]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_11_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_10_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [11]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_10_mux0002 )
  );
  LUT5 #(
    .INIT ( 32'h33233322 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_0_mux00021  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [1]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/ip_reg_op [0]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/delay_0_117 ),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [1]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/round_op_pr [13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/RESULT_0_mux0002 )
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<5>1  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [6]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [5]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [7]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [8]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [5])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<4>1  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [5]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [4]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [6]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [4])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<3>1  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [4]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [3]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [5]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [6]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [3])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<2>1  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [3]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [2]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [4]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [5]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [2])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<1>1  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [2]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [1]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [3]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [4]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [1])
  );
  LUT5 #(
    .INIT ( 32'hDAD8DAC8 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/_mux0003_SW0  (
    .I0(a[11]),
    .I1(a[0]),
    .I2(a[10]),
    .I3(a[1]),
    .I4(a[2]),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'hEE62EE60FFFFFFFF ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/_mux0003_SW1  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[5]),
    .I3(a[4]),
    .I4(a[6]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [1]),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'hE6FFE2FF ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/_mux0003_SW2  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[8]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [2]),
    .I4(a[9]),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1<0>_SW0  (
    .I0(a[8]),
    .I1(a[9]),
    .I2(a[3]),
    .I3(a[2]),
    .I4(a[1]),
    .I5(a[0]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'h3624664412002200 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<5>1  (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[10]),
    .I3(a[7]),
    .I4(a[11]),
    .I5(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [5])
  );
  LUT6 #(
    .INIT ( 64'h9830F7FF98309133 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<4>1  (
    .I0(a[10]),
    .I1(a[12]),
    .I2(a[2]),
    .I3(a[11]),
    .I4(a[13]),
    .I5(a[6]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [4])
  );
  LUT6 #(
    .INIT ( 64'h3624664412002200 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<7>1  (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[10]),
    .I3(a[9]),
    .I4(a[11]),
    .I5(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [7])
  );
  LUT6 #(
    .INIT ( 64'h3624664412002200 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<6>1  (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[10]),
    .I3(a[8]),
    .I4(a[11]),
    .I5(a[4]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [6])
  );
  LUT6 #(
    .INIT ( 64'h87060F0C81000300 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<1>1  (
    .I0(a[11]),
    .I1(a[12]),
    .I2(a[13]),
    .I3(a[7]),
    .I4(a[10]),
    .I5(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [1])
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<12>1  (
    .I0(a[10]),
    .I1(a[12]),
    .I2(a[11]),
    .I3(a[13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [12])
  );
  LUT5 #(
    .INIT ( 32'h06000200 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<11>1  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[12]),
    .I3(a[13]),
    .I4(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [11])
  );
  LUT6 #(
    .INIT ( 64'h1000505010001010 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<10>1  (
    .I0(a[12]),
    .I1(a[10]),
    .I2(a[13]),
    .I3(a[8]),
    .I4(a[11]),
    .I5(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [10])
  );
  LUT5 #(
    .INIT ( 32'h31626262 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp<8>1  (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[6]),
    .I3(a[10]),
    .I4(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [8])
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/_mux0003  (
    .I0(N36),
    .I1(N37),
    .S(a[13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_unreg<1> [0])
  );
  LUT6 #(
    .INIT ( 64'h0C083F6E0C193F7F ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/_mux0003_F  (
    .I0(a[10]),
    .I1(a[12]),
    .I2(N17),
    .I3(a[11]),
    .I4(N18),
    .I5(N19),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h3F6E3F7F0C080C19 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/_mux0003_G  (
    .I0(a[11]),
    .I1(a[12]),
    .I2(N19),
    .I3(a[10]),
    .I4(N17),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/zero_det_in [3]),
    .O(N37)
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated<1>  (
    .I0(N38),
    .I1(N39),
    .S(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated<1>_F  (
    .I0(a[13]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p1 ),
    .I2(a[12]),
    .I3(a[11]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hFF22FF20FF20FF20 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1_updated<1>_G  (
    .I0(a[13]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/op_state_p1 [0]),
    .I2(a[12]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/invalid_op_p1 ),
    .I4(a[11]),
    .I5(a[10]),
    .O(N39)
  );
  INV   \U0/op_inst/FLT_PT_OP/HND_SHK/Mcount_lat_count_xor<0>11_INV_0  (
    .I(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [0]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [0])
  );
  INV   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det_1_or00001_INV_0  (
    .I(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_CARRY.EXP_ALL_ONE_DET/chunk_det_1_or0000 )
  );
  LUT5 #(
    .INIT ( 32'h4E444444 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>1  (
    .I0(a[10]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [6]),
    .I2(a[13]),
    .I3(a[12]),
    .I4(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>1_37 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>2  (
    .I0(a[10]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [8]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>2_38 )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>_f7  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>2_38 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<6>1_37 ),
    .S(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [6])
  );
  LUT6 #(
    .INIT ( 64'h6240EAC862406240 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>1  (
    .I0(a[11]),
    .I1(a[10]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [8]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [7]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [3]),
    .I5(a[8]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>1_40 )
  );
  LUT6 #(
    .INIT ( 64'h6240735162406240 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>2  (
    .I0(a[11]),
    .I1(a[10]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [8]),
    .I3(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [7]),
    .I4(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/align_dist_p0 [3]),
    .I5(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>2_41 )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>_f7  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>2_41 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<7>1_40 ),
    .S(a[12]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [7])
  );
  LUT6 #(
    .INIT ( 64'hEEFBEEEA44514440 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>1  (
    .I0(a[10]),
    .I1(a[12]),
    .I2(a[2]),
    .I3(a[13]),
    .I4(a[6]),
    .I5(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [3]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>1_26 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>2  (
    .I0(a[10]),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [2]),
    .I2(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp [1]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>2_27 )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>_f7  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>2_27 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<0>1_26 ),
    .S(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [0])
  );
  LUT6 #(
    .INIT ( 64'h2420444424200404 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>1  (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[11]),
    .I3(a[8]),
    .I4(a[10]),
    .I5(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>1_46 )
  );
  LUT6 #(
    .INIT ( 64'h2440240020402000 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>2  (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[10]),
    .I3(a[11]),
    .I4(a[8]),
    .I5(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>2_47 )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>_f7  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>2_47 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<9>1_46 ),
    .S(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [9])
  );
  LUT6 #(
    .INIT ( 64'h1514111005040100 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>1  (
    .I0(a[12]),
    .I1(a[10]),
    .I2(a[11]),
    .I3(a[8]),
    .I4(a[7]),
    .I5(a[6]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>1_43 )
  );
  LUT4 #(
    .INIT ( 16'hC040 ))
  \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>2  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[12]),
    .I3(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>2_44 )
  );
  MUXF7   \U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>_f7  (
    .I0(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>2_44 ),
    .I1(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0<8>1_43 ),
    .S(a[13]),
    .O(\U0/op_inst/FLT_PT_OP/FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/shifted_temp0 [8])
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
