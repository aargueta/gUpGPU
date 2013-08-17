////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: fp_lte_micro.v
// /___/   /\     Timestamp: Thu Aug 08 19:51:50 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_lte_micro.ngc" "D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_lte_micro.v" 
// Device	: 5vfx70tff1136-1
// Input file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_lte_micro.ngc
// Output file	: D:/Unrelated Junk/gUp GPU/gUpGPU/Common/Math Pcores/tmp/_cg/fp_lte_micro.v
// # of Modules	: 1
// Design Name	: fp_lte_micro
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

module fp_lte_micro (
  clk, ce, operation_nd, operation_rfd, sclr, rdy, result, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input operation_nd;
  output operation_rfd;
  input sclr;
  output rdy;
  output [0 : 0] result;
  input [15 : 0] a;
  input [15 : 0] b;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire N2;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/BOTH_NEGATIVE_DELAY/delay_0_3 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/CMP_COND_DELAY/delay_0_1_4 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/MET_REG/delay_0_5 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/chunk_det ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/chunk_det ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_eq_b_p1 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_frac_not_zero_p0 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_gt_b_p1 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_is_nan_p1 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/b_frac_not_zero_p0 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/b_is_nan_p1 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/both_negative_p0 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/both_zero_p1 ;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/result_p1 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_65 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_73 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/nd_int ;
  wire \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_77 ;
  wire [6 : 1] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry ;
  wire [5 : 0] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/WIDE_NOR/carry ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/zero_det ;
  wire [8 : 1] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry ;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di ;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry ;
  wire [1 : 1] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/WIDE_NOR/carry ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/zero_det ;
  wire [2 : 1] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/chunk_det ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/Result ;
  wire [0 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/delay ;
  wire [1 : 0] \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count ;
  assign
    operation_rfd = \NlwRenamedSig_OI_U0/op_inst/FLT_PT_OP/HND_SHK/rfd_int ,
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY_65 ,
    result[0] = \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/MET_REG/delay_0_5 ;
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
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_77 ),
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
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/rfd_var_77 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/RDY  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 ),
    .R(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_65 )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started  (
    .C(clk),
    .CE(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 ),
    .D(N0),
    .S(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_73 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/HND_SHK/nd_int ),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/delay [0])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[7].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [7]),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [7]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [7]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [8])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[6].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [6]),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [6]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [6]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [7])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [5]),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [5]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [5]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [4]),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [4]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [4]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [3]),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [3]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [3]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [2]),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [2]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [2]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [1]),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [1]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [1]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N0),
    .DI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [0]),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [0]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/CHAIN_GEN[7].NO_RLOCS.CARRYS_DEL.NEED_DEL.CARRYS_FD  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/BPL_GT_1.C_CHAIN/carry [8]),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_gt_b_p1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/CHAIN_GEN[5].NO_RLOCS.CARRYS_DEL.NEED_DEL.CARRYS_FD  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [6]),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_eq_b_p1 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/CHAIN_GEN[2].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [2]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [2]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [3])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/CHAIN_GEN[3].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [3]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [3]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [4])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/CHAIN_GEN[4].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [4]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [4]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [5])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/CHAIN_GEN[5].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [5]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [5]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/WIDE_AND/carry [6])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_frac_not_zero_p0 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/chunk_det ),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/b_frac_not_zero_p0 ),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/chunk_det ),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/WIDE_NOR/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/WIDE_NOR/carry [1]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/zero_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_frac_not_zero_p0 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/WIDE_NOR/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N0),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/zero_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/WIDE_NOR/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/WIDE_NOR/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/WIDE_NOR/carry [1]),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/zero_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/b_frac_not_zero_p0 )
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/WIDE_NOR/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N0),
    .DI(N1),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/zero_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/WIDE_NOR/carry [1])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1]),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/chunk_det [1]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry [2])
  );
  MUXCY   \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.C_MUX.CARRY_MUX  (
    .CI(N1),
    .DI(N0),
    .S(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/chunk_det [0]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.CARRYS_DEL.NEED_DEL.CARRYS_FD  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry [1]),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_is_nan_p1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/CARRY_ZERO_DET/CHAIN_GEN[0].NO_RLOCS.CARRYS_DEL.NEED_DEL.CARRYS_FD  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/CARRY_ZERO_DET/carry [1]),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/b_is_nan_p1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[1].NO_RLOCS.CARRYS_DEL.NEED_DEL.CARRYS_FD  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/CARRY_ZERO_DET/carry [2]),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/both_zero_p1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/MET_REG/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/result_p1 ),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/MET_REG/delay_0_5 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/BOTH_NEGATIVE_DELAY/delay_0  (
    .C(clk),
    .CE(ce),
    .D(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/both_negative_p0 ),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/BOTH_NEGATIVE_DELAY/delay_0_3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/CMP_COND_DELAY/delay_0_1  (
    .C(clk),
    .CE(ce),
    .D(N1),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/CMP_COND_DELAY/delay_0_1_4 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/both_negative_p01  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/both_negative_p0 )
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<7>1  (
    .I0(a[15]),
    .I1(a[14]),
    .I2(b[14]),
    .I3(b[15]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det<5>1  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/chunk_det_1_not00011  (
    .I0(a[11]),
    .I1(a[12]),
    .I2(a[13]),
    .I3(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/chunk_det [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<7>21  (
    .I0(a[14]),
    .I1(b[14]),
    .I2(a[15]),
    .I3(b[15]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [7])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/chunk_det_0_not00011  (
    .I0(b[10]),
    .I1(b[11]),
    .I2(b[12]),
    .I3(b[13]),
    .I4(b[14]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_EXP_ALL_ONE_DET/chunk_det )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/chunk_det_0_not00011  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[12]),
    .I3(a[13]),
    .I4(a[14]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EXP_ALL_ONE_DET/chunk_det )
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<6>1  (
    .I0(b[13]),
    .I1(a[12]),
    .I2(b[12]),
    .I3(a[13]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/zero_det_1_not00011  (
    .I0(b[6]),
    .I1(b[7]),
    .I2(b[8]),
    .I3(b[9]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/zero_det [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/zero_det_1_not00011  (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/zero_det [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<6>21  (
    .I0(a[12]),
    .I1(b[12]),
    .I2(a[13]),
    .I3(b[13]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [6])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/chunk_det_0_not00011  (
    .I0(b[10]),
    .I1(b[11]),
    .I2(b[12]),
    .I3(b[13]),
    .I4(b[14]),
    .I5(a[10]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.EXP_ALL_ZERO_DET/chunk_det [0])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det<4>31  (
    .I0(a[14]),
    .I1(b[14]),
    .I2(a[13]),
    .I3(b[13]),
    .I4(a[12]),
    .I5(b[12]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [4])
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<5>1  (
    .I0(b[11]),
    .I1(a[10]),
    .I2(b[10]),
    .I3(a[11]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [5])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<5>21  (
    .I0(a[10]),
    .I1(b[10]),
    .I2(a[11]),
    .I3(b[11]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [5])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/zero_det_0_not00011  (
    .I0(b[0]),
    .I1(b[1]),
    .I2(b[2]),
    .I3(b[3]),
    .I4(b[4]),
    .I5(b[5]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.B_FRAC_NOT_ZERO_DET/zero_det [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/zero_det_0_not00011  (
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(a[4]),
    .I5(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_FRAC_NOT_ZERO_DET/zero_det [0])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det<3>31  (
    .I0(a[9]),
    .I1(b[9]),
    .I2(a[11]),
    .I3(b[11]),
    .I4(a[10]),
    .I5(b[10]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [3])
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<4>1  (
    .I0(b[9]),
    .I1(a[8]),
    .I2(b[8]),
    .I3(a[9]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<4>21  (
    .I0(a[8]),
    .I1(b[8]),
    .I2(a[9]),
    .I3(b[9]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [4])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det<2>31  (
    .I0(a[8]),
    .I1(b[8]),
    .I2(a[7]),
    .I3(b[7]),
    .I4(a[6]),
    .I5(b[6]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [2])
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<3>1  (
    .I0(b[7]),
    .I1(a[6]),
    .I2(b[6]),
    .I3(a[7]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [3])
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
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_73 ),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/Mcount_lat_count_xor<1>11  (
    .I0(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [0]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/Result [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<3>21  (
    .I0(a[6]),
    .I1(b[6]),
    .I2(a[7]),
    .I3(b[7]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [3])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det<1>31  (
    .I0(a[5]),
    .I1(b[5]),
    .I2(a[4]),
    .I3(b[4]),
    .I4(a[3]),
    .I5(b[3]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [1])
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<2>1  (
    .I0(b[5]),
    .I1(a[4]),
    .I2(b[4]),
    .I3(a[5]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<2>21  (
    .I0(a[4]),
    .I1(b[4]),
    .I2(a[5]),
    .I3(b[5]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [2])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det<0>31  (
    .I0(a[2]),
    .I1(b[2]),
    .I2(a[1]),
    .I3(b[1]),
    .I4(a[0]),
    .I5(b[0]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_EQ_B_DET/eq_det [0])
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<1>1  (
    .I0(b[3]),
    .I1(a[2]),
    .I2(b[2]),
    .I3(a[3]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<1>21  (
    .I0(a[2]),
    .I1(b[2]),
    .I2(a[3]),
    .I3(b[3]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [1])
  );
  LUT4 #(
    .INIT ( 16'h5D04 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di<0>1  (
    .I0(b[1]),
    .I1(a[0]),
    .I2(b[0]),
    .I3(a[1]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/di [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op<0>21  (
    .I0(a[0]),
    .I1(b[0]),
    .I2(a[1]),
    .I3(b[1]),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/STRUCT_CMP.A_GT_B_DET/lut_op [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_73 ),
    .I2(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not00011  (
    .I0(ce),
    .I1(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_started_73 ),
    .I2(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count [1]),
    .O(\U0/op_inst/FLT_PT_OP/HND_SHK/lat_count_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/Mmux_result_p1<0>1_SW0  (
    .I0(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/b_is_nan_p1 ),
    .I1(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_is_nan_p1 ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hF0C0E0F00F0F0F0F ))
  \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/Mmux_result_p1<0>1  (
    .I0(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_eq_b_p1 ),
    .I1(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/both_zero_p1 ),
    .I2(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/CMP_COND_DELAY/delay_0_1_4 ),
    .I3(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/BOTH_NEGATIVE_DELAY/delay_0_3 ),
    .I4(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/a_gt_b_p1 ),
    .I5(N2),
    .O(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/result_p1 )
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
