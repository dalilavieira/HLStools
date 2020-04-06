// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 19.4 (Release Build #64)
// 
// Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from floydWarshall_bb_B7
// SystemVerilog created on Mon Apr  6 11:17:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B7 (
    input wire [31:0] in_feedback_in_38,
    input wire [31:0] in_feedback_in_39,
    input wire [31:0] in_feedback_in_40,
    input wire [31:0] in_feedback_in_41,
    input wire [31:0] in_feedback_in_42,
    input wire [31:0] in_feedback_in_43,
    input wire [31:0] in_feedback_in_44,
    input wire [31:0] in_feedback_in_45,
    input wire [31:0] in_feedback_in_46,
    input wire [31:0] in_feedback_in_47,
    input wire [31:0] in_feedback_in_48,
    input wire [31:0] in_feedback_in_49,
    input wire [31:0] in_feedback_in_50,
    input wire [31:0] in_feedback_in_51,
    input wire [31:0] in_feedback_in_52,
    input wire [31:0] in_feedback_in_53,
    output wire [0:0] out_feedback_stall_out_38,
    output wire [0:0] out_feedback_stall_out_39,
    output wire [0:0] out_feedback_stall_out_40,
    output wire [0:0] out_feedback_stall_out_41,
    output wire [0:0] out_feedback_stall_out_42,
    output wire [0:0] out_feedback_stall_out_43,
    output wire [0:0] out_feedback_stall_out_44,
    output wire [0:0] out_feedback_stall_out_45,
    output wire [0:0] out_feedback_stall_out_46,
    output wire [0:0] out_feedback_stall_out_47,
    output wire [0:0] out_feedback_stall_out_48,
    output wire [0:0] out_feedback_stall_out_49,
    output wire [0:0] out_feedback_stall_out_50,
    output wire [0:0] out_feedback_stall_out_51,
    output wire [0:0] out_feedback_stall_out_52,
    output wire [0:0] out_feedback_stall_out_53,
    input wire [0:0] in_feedback_valid_in_38,
    input wire [0:0] in_feedback_valid_in_39,
    input wire [0:0] in_feedback_valid_in_40,
    input wire [0:0] in_feedback_valid_in_41,
    input wire [0:0] in_feedback_valid_in_42,
    input wire [0:0] in_feedback_valid_in_43,
    input wire [0:0] in_feedback_valid_in_44,
    input wire [0:0] in_feedback_valid_in_45,
    input wire [0:0] in_feedback_valid_in_46,
    input wire [0:0] in_feedback_valid_in_47,
    input wire [0:0] in_feedback_valid_in_48,
    input wire [0:0] in_feedback_valid_in_49,
    input wire [0:0] in_feedback_valid_in_50,
    input wire [0:0] in_feedback_valid_in_51,
    input wire [0:0] in_feedback_valid_in_52,
    input wire [0:0] in_feedback_valid_in_53,
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [31:0] in_inc55188_0,
    input wire [31:0] in_inc55188_1,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_A_sroa_0_4_replace_phi,
    output wire [31:0] out_A_sroa_12_4_replace_phi,
    output wire [31:0] out_A_sroa_17_4_replace_phi,
    output wire [31:0] out_A_sroa_22_4_replace_phi,
    output wire [31:0] out_A_sroa_27_4_replace_phi,
    output wire [31:0] out_A_sroa_32_4_replace_phi,
    output wire [31:0] out_A_sroa_37_4_replace_phi,
    output wire [31:0] out_A_sroa_42_4_replace_phi,
    output wire [31:0] out_A_sroa_47_4_replace_phi,
    output wire [31:0] out_A_sroa_52_4_replace_phi,
    output wire [31:0] out_A_sroa_57_4_replace_phi,
    output wire [31:0] out_A_sroa_62_4_replace_phi,
    output wire [31:0] out_A_sroa_67_4_replace_phi,
    output wire [31:0] out_A_sroa_72_4_replace_phi,
    output wire [31:0] out_A_sroa_77_4_replace_phi,
    output wire [31:0] out_A_sroa_7_4_replace_phi,
    output wire [0:0] out_c0_exe1255,
    output wire [0:0] out_c0_exe2256,
    output wire [31:0] out_c0_exe3257,
    output wire [31:0] out_c0_exe4258,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_0_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_12_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_17_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_22_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_27_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_32_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_37_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_42_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_47_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_52_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_57_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_62_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_67_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_72_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_77_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_A_sroa_7_4_replace_phi;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_c0_exe1255;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_c0_exe2256;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_c0_exe3257;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_c0_exe4258;
    wire [31:0] bb_floydWarshall_B7_stall_region_out_c0_exe6;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_38;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_39;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_40;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_41;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_42;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_43;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_44;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_45;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_46;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_47;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_48;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_49;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_50;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_51;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_52;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_feedback_stall_out_53;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_stall_out;
    wire [0:0] bb_floydWarshall_B7_stall_region_out_valid_out;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_0_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_12_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_17_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_22_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_27_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_32_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_37_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_42_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_47_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_52_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_57_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_62_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_67_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_72_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_77_4_replace_phi;
    wire [31:0] floydWarshall_B7_branch_out_A_sroa_7_4_replace_phi;
    wire [0:0] floydWarshall_B7_branch_out_c0_exe1255;
    wire [0:0] floydWarshall_B7_branch_out_c0_exe2256;
    wire [31:0] floydWarshall_B7_branch_out_c0_exe3257;
    wire [31:0] floydWarshall_B7_branch_out_c0_exe4258;
    wire [31:0] floydWarshall_B7_branch_out_c0_exe6;
    wire [0:0] floydWarshall_B7_branch_out_stall_out;
    wire [0:0] floydWarshall_B7_branch_out_valid_out_0;
    wire [0:0] floydWarshall_B7_merge_out_forked31;
    wire [31:0] floydWarshall_B7_merge_out_inc55188;
    wire [0:0] floydWarshall_B7_merge_out_stall_out_0;
    wire [0:0] floydWarshall_B7_merge_out_stall_out_1;
    wire [0:0] floydWarshall_B7_merge_out_valid_out;


    // floydWarshall_B7_branch(BLACKBOX,51)
    floydWarshall_B7_branch thefloydWarshall_B7_branch (
        .in_A_sroa_0_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_0_4_replace_phi),
        .in_A_sroa_12_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_12_4_replace_phi),
        .in_A_sroa_17_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_17_4_replace_phi),
        .in_A_sroa_22_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_22_4_replace_phi),
        .in_A_sroa_27_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_27_4_replace_phi),
        .in_A_sroa_32_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_32_4_replace_phi),
        .in_A_sroa_37_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_37_4_replace_phi),
        .in_A_sroa_42_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_42_4_replace_phi),
        .in_A_sroa_47_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_47_4_replace_phi),
        .in_A_sroa_52_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_52_4_replace_phi),
        .in_A_sroa_57_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_57_4_replace_phi),
        .in_A_sroa_62_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_62_4_replace_phi),
        .in_A_sroa_67_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_67_4_replace_phi),
        .in_A_sroa_72_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_72_4_replace_phi),
        .in_A_sroa_77_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_77_4_replace_phi),
        .in_A_sroa_7_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_7_4_replace_phi),
        .in_c0_exe1255(bb_floydWarshall_B7_stall_region_out_c0_exe1255),
        .in_c0_exe2256(bb_floydWarshall_B7_stall_region_out_c0_exe2256),
        .in_c0_exe3257(bb_floydWarshall_B7_stall_region_out_c0_exe3257),
        .in_c0_exe4258(bb_floydWarshall_B7_stall_region_out_c0_exe4258),
        .in_c0_exe6(bb_floydWarshall_B7_stall_region_out_c0_exe6),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_floydWarshall_B7_stall_region_out_valid_out),
        .out_A_sroa_0_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_0_4_replace_phi),
        .out_A_sroa_12_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_12_4_replace_phi),
        .out_A_sroa_17_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_17_4_replace_phi),
        .out_A_sroa_22_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_22_4_replace_phi),
        .out_A_sroa_27_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_27_4_replace_phi),
        .out_A_sroa_32_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_32_4_replace_phi),
        .out_A_sroa_37_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_37_4_replace_phi),
        .out_A_sroa_42_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_42_4_replace_phi),
        .out_A_sroa_47_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_47_4_replace_phi),
        .out_A_sroa_52_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_52_4_replace_phi),
        .out_A_sroa_57_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_57_4_replace_phi),
        .out_A_sroa_62_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_62_4_replace_phi),
        .out_A_sroa_67_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_67_4_replace_phi),
        .out_A_sroa_72_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_72_4_replace_phi),
        .out_A_sroa_77_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_77_4_replace_phi),
        .out_A_sroa_7_4_replace_phi(floydWarshall_B7_branch_out_A_sroa_7_4_replace_phi),
        .out_c0_exe1255(floydWarshall_B7_branch_out_c0_exe1255),
        .out_c0_exe2256(floydWarshall_B7_branch_out_c0_exe2256),
        .out_c0_exe3257(floydWarshall_B7_branch_out_c0_exe3257),
        .out_c0_exe4258(floydWarshall_B7_branch_out_c0_exe4258),
        .out_c0_exe6(floydWarshall_B7_branch_out_c0_exe6),
        .out_stall_out(floydWarshall_B7_branch_out_stall_out),
        .out_valid_out_0(floydWarshall_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // floydWarshall_B7_merge(BLACKBOX,52)
    floydWarshall_B7_merge thefloydWarshall_B7_merge (
        .in_forked31_0(in_forked31_0),
        .in_forked31_1(in_forked31_1),
        .in_inc55188_0(in_inc55188_0),
        .in_inc55188_1(in_inc55188_1),
        .in_stall_in(bb_floydWarshall_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked31(floydWarshall_B7_merge_out_forked31),
        .out_inc55188(floydWarshall_B7_merge_out_inc55188),
        .out_stall_out_0(floydWarshall_B7_merge_out_stall_out_0),
        .out_stall_out_1(floydWarshall_B7_merge_out_stall_out_1),
        .out_valid_out(floydWarshall_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B7_stall_region(BLACKBOX,2)
    floydWarshall_bb_B7_stall_region thebb_floydWarshall_B7_stall_region (
        .in_feedback_in_38(in_feedback_in_38),
        .in_feedback_in_39(in_feedback_in_39),
        .in_feedback_in_40(in_feedback_in_40),
        .in_feedback_in_41(in_feedback_in_41),
        .in_feedback_in_42(in_feedback_in_42),
        .in_feedback_in_43(in_feedback_in_43),
        .in_feedback_in_44(in_feedback_in_44),
        .in_feedback_in_45(in_feedback_in_45),
        .in_feedback_in_46(in_feedback_in_46),
        .in_feedback_in_47(in_feedback_in_47),
        .in_feedback_in_48(in_feedback_in_48),
        .in_feedback_in_49(in_feedback_in_49),
        .in_feedback_in_50(in_feedback_in_50),
        .in_feedback_in_51(in_feedback_in_51),
        .in_feedback_in_52(in_feedback_in_52),
        .in_feedback_in_53(in_feedback_in_53),
        .in_feedback_valid_in_38(in_feedback_valid_in_38),
        .in_feedback_valid_in_39(in_feedback_valid_in_39),
        .in_feedback_valid_in_40(in_feedback_valid_in_40),
        .in_feedback_valid_in_41(in_feedback_valid_in_41),
        .in_feedback_valid_in_42(in_feedback_valid_in_42),
        .in_feedback_valid_in_43(in_feedback_valid_in_43),
        .in_feedback_valid_in_44(in_feedback_valid_in_44),
        .in_feedback_valid_in_45(in_feedback_valid_in_45),
        .in_feedback_valid_in_46(in_feedback_valid_in_46),
        .in_feedback_valid_in_47(in_feedback_valid_in_47),
        .in_feedback_valid_in_48(in_feedback_valid_in_48),
        .in_feedback_valid_in_49(in_feedback_valid_in_49),
        .in_feedback_valid_in_50(in_feedback_valid_in_50),
        .in_feedback_valid_in_51(in_feedback_valid_in_51),
        .in_feedback_valid_in_52(in_feedback_valid_in_52),
        .in_feedback_valid_in_53(in_feedback_valid_in_53),
        .in_forked31(floydWarshall_B7_merge_out_forked31),
        .in_inc55188(floydWarshall_B7_merge_out_inc55188),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(floydWarshall_B7_branch_out_stall_out),
        .in_valid_in(floydWarshall_B7_merge_out_valid_out),
        .out_A_sroa_0_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_0_4_replace_phi),
        .out_A_sroa_12_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_12_4_replace_phi),
        .out_A_sroa_17_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_17_4_replace_phi),
        .out_A_sroa_22_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_22_4_replace_phi),
        .out_A_sroa_27_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_27_4_replace_phi),
        .out_A_sroa_32_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_32_4_replace_phi),
        .out_A_sroa_37_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_37_4_replace_phi),
        .out_A_sroa_42_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_42_4_replace_phi),
        .out_A_sroa_47_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_47_4_replace_phi),
        .out_A_sroa_52_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_52_4_replace_phi),
        .out_A_sroa_57_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_57_4_replace_phi),
        .out_A_sroa_62_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_62_4_replace_phi),
        .out_A_sroa_67_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_67_4_replace_phi),
        .out_A_sroa_72_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_72_4_replace_phi),
        .out_A_sroa_77_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_77_4_replace_phi),
        .out_A_sroa_7_4_replace_phi(bb_floydWarshall_B7_stall_region_out_A_sroa_7_4_replace_phi),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out(bb_floydWarshall_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out(bb_floydWarshall_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out),
        .out_c0_exe1255(bb_floydWarshall_B7_stall_region_out_c0_exe1255),
        .out_c0_exe2256(bb_floydWarshall_B7_stall_region_out_c0_exe2256),
        .out_c0_exe3257(bb_floydWarshall_B7_stall_region_out_c0_exe3257),
        .out_c0_exe4258(bb_floydWarshall_B7_stall_region_out_c0_exe4258),
        .out_c0_exe6(bb_floydWarshall_B7_stall_region_out_c0_exe6),
        .out_feedback_stall_out_38(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_38),
        .out_feedback_stall_out_39(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_39),
        .out_feedback_stall_out_40(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_40),
        .out_feedback_stall_out_41(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_41),
        .out_feedback_stall_out_42(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_42),
        .out_feedback_stall_out_43(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_43),
        .out_feedback_stall_out_44(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_44),
        .out_feedback_stall_out_45(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_45),
        .out_feedback_stall_out_46(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_46),
        .out_feedback_stall_out_47(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_47),
        .out_feedback_stall_out_48(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_48),
        .out_feedback_stall_out_49(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_49),
        .out_feedback_stall_out_50(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_50),
        .out_feedback_stall_out_51(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_51),
        .out_feedback_stall_out_52(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_52),
        .out_feedback_stall_out_53(bb_floydWarshall_B7_stall_region_out_feedback_stall_out_53),
        .out_pipeline_valid_out(bb_floydWarshall_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_floydWarshall_B7_stall_region_out_stall_out),
        .out_valid_out(bb_floydWarshall_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_38_sync(GPOUT,19)
    assign out_feedback_stall_out_38 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_38;

    // feedback_stall_out_39_sync(GPOUT,20)
    assign out_feedback_stall_out_39 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_39;

    // feedback_stall_out_40_sync(GPOUT,21)
    assign out_feedback_stall_out_40 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_40;

    // feedback_stall_out_41_sync(GPOUT,22)
    assign out_feedback_stall_out_41 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_41;

    // feedback_stall_out_42_sync(GPOUT,23)
    assign out_feedback_stall_out_42 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_42;

    // feedback_stall_out_43_sync(GPOUT,24)
    assign out_feedback_stall_out_43 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_43;

    // feedback_stall_out_44_sync(GPOUT,25)
    assign out_feedback_stall_out_44 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_44;

    // feedback_stall_out_45_sync(GPOUT,26)
    assign out_feedback_stall_out_45 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_45;

    // feedback_stall_out_46_sync(GPOUT,27)
    assign out_feedback_stall_out_46 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_46;

    // feedback_stall_out_47_sync(GPOUT,28)
    assign out_feedback_stall_out_47 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_47;

    // feedback_stall_out_48_sync(GPOUT,29)
    assign out_feedback_stall_out_48 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_48;

    // feedback_stall_out_49_sync(GPOUT,30)
    assign out_feedback_stall_out_49 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_49;

    // feedback_stall_out_50_sync(GPOUT,31)
    assign out_feedback_stall_out_50 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_50;

    // feedback_stall_out_51_sync(GPOUT,32)
    assign out_feedback_stall_out_51 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_51;

    // feedback_stall_out_52_sync(GPOUT,33)
    assign out_feedback_stall_out_52 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_52;

    // feedback_stall_out_53_sync(GPOUT,34)
    assign out_feedback_stall_out_53 = bb_floydWarshall_B7_stall_region_out_feedback_stall_out_53;

    // out_A_sroa_0_4_replace_phi(GPOUT,76)
    assign out_A_sroa_0_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_0_4_replace_phi;

    // out_A_sroa_12_4_replace_phi(GPOUT,77)
    assign out_A_sroa_12_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_12_4_replace_phi;

    // out_A_sroa_17_4_replace_phi(GPOUT,78)
    assign out_A_sroa_17_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_17_4_replace_phi;

    // out_A_sroa_22_4_replace_phi(GPOUT,79)
    assign out_A_sroa_22_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_22_4_replace_phi;

    // out_A_sroa_27_4_replace_phi(GPOUT,80)
    assign out_A_sroa_27_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_27_4_replace_phi;

    // out_A_sroa_32_4_replace_phi(GPOUT,81)
    assign out_A_sroa_32_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_32_4_replace_phi;

    // out_A_sroa_37_4_replace_phi(GPOUT,82)
    assign out_A_sroa_37_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_37_4_replace_phi;

    // out_A_sroa_42_4_replace_phi(GPOUT,83)
    assign out_A_sroa_42_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_42_4_replace_phi;

    // out_A_sroa_47_4_replace_phi(GPOUT,84)
    assign out_A_sroa_47_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_47_4_replace_phi;

    // out_A_sroa_52_4_replace_phi(GPOUT,85)
    assign out_A_sroa_52_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_52_4_replace_phi;

    // out_A_sroa_57_4_replace_phi(GPOUT,86)
    assign out_A_sroa_57_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_57_4_replace_phi;

    // out_A_sroa_62_4_replace_phi(GPOUT,87)
    assign out_A_sroa_62_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_62_4_replace_phi;

    // out_A_sroa_67_4_replace_phi(GPOUT,88)
    assign out_A_sroa_67_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_67_4_replace_phi;

    // out_A_sroa_72_4_replace_phi(GPOUT,89)
    assign out_A_sroa_72_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_72_4_replace_phi;

    // out_A_sroa_77_4_replace_phi(GPOUT,90)
    assign out_A_sroa_77_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_77_4_replace_phi;

    // out_A_sroa_7_4_replace_phi(GPOUT,91)
    assign out_A_sroa_7_4_replace_phi = floydWarshall_B7_branch_out_A_sroa_7_4_replace_phi;

    // out_c0_exe1255(GPOUT,92)
    assign out_c0_exe1255 = floydWarshall_B7_branch_out_c0_exe1255;

    // out_c0_exe2256(GPOUT,93)
    assign out_c0_exe2256 = floydWarshall_B7_branch_out_c0_exe2256;

    // out_c0_exe3257(GPOUT,94)
    assign out_c0_exe3257 = floydWarshall_B7_branch_out_c0_exe3257;

    // out_c0_exe4258(GPOUT,95)
    assign out_c0_exe4258 = floydWarshall_B7_branch_out_c0_exe4258;

    // out_c0_exe6(GPOUT,96)
    assign out_c0_exe6 = floydWarshall_B7_branch_out_c0_exe6;

    // out_exiting_stall_out(GPOUT,97)
    assign out_exiting_stall_out = bb_floydWarshall_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,98)
    assign out_exiting_valid_out = bb_floydWarshall_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out;

    // out_stall_out_0(GPOUT,99)
    assign out_stall_out_0 = floydWarshall_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,100)
    assign out_stall_out_1 = floydWarshall_B7_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,101)
    assign out_valid_out_0 = floydWarshall_B7_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,103)
    assign out_pipeline_valid_out = bb_floydWarshall_B7_stall_region_out_pipeline_valid_out;

endmodule
