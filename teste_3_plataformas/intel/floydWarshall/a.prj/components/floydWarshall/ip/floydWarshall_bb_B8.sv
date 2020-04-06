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

// SystemVerilog created from floydWarshall_bb_B8
// SystemVerilog created on Mon Apr  6 12:54:49 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B8 (
    input wire [31:0] in_A_sroa_0_4_replace_phi191_0,
    input wire [31:0] in_A_sroa_0_4_replace_phi191_1,
    input wire [31:0] in_A_sroa_12_4_replace_phi193_0,
    input wire [31:0] in_A_sroa_12_4_replace_phi193_1,
    input wire [31:0] in_A_sroa_17_4_replace_phi194_0,
    input wire [31:0] in_A_sroa_17_4_replace_phi194_1,
    input wire [31:0] in_A_sroa_22_4_replace_phi195_0,
    input wire [31:0] in_A_sroa_22_4_replace_phi195_1,
    input wire [31:0] in_A_sroa_27_4_replace_phi198_0,
    input wire [31:0] in_A_sroa_27_4_replace_phi198_1,
    input wire [31:0] in_A_sroa_32_4_replace_phi201_0,
    input wire [31:0] in_A_sroa_32_4_replace_phi201_1,
    input wire [31:0] in_A_sroa_37_4_replace_phi204_0,
    input wire [31:0] in_A_sroa_37_4_replace_phi204_1,
    input wire [31:0] in_A_sroa_42_4_replace_phi196_0,
    input wire [31:0] in_A_sroa_42_4_replace_phi196_1,
    input wire [31:0] in_A_sroa_47_4_replace_phi199_0,
    input wire [31:0] in_A_sroa_47_4_replace_phi199_1,
    input wire [31:0] in_A_sroa_52_4_replace_phi202_0,
    input wire [31:0] in_A_sroa_52_4_replace_phi202_1,
    input wire [31:0] in_A_sroa_57_4_replace_phi205_0,
    input wire [31:0] in_A_sroa_57_4_replace_phi205_1,
    input wire [31:0] in_A_sroa_62_4_replace_phi197_0,
    input wire [31:0] in_A_sroa_62_4_replace_phi197_1,
    input wire [31:0] in_A_sroa_67_4_replace_phi200_0,
    input wire [31:0] in_A_sroa_67_4_replace_phi200_1,
    input wire [31:0] in_A_sroa_72_4_replace_phi203_0,
    input wire [31:0] in_A_sroa_72_4_replace_phi203_1,
    input wire [31:0] in_A_sroa_77_4_replace_phi206_0,
    input wire [31:0] in_A_sroa_77_4_replace_phi206_1,
    input wire [31:0] in_A_sroa_7_4_replace_phi192_0,
    input wire [31:0] in_A_sroa_7_4_replace_phi192_1,
    input wire [0:0] in_exitcond9207_0,
    input wire [0:0] in_exitcond9207_1,
    input wire [0:0] in_forked81_0,
    input wire [0:0] in_forked81_1,
    input wire [31:0] in_i_127_pop54209_0,
    input wire [31:0] in_i_127_pop54209_1,
    input wire [31:0] in_inc55178_pop55210_0,
    input wire [31:0] in_inc55178_pop55210_1,
    input wire [31:0] in_inc55190_0,
    input wire [31:0] in_inc55190_1,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_notcmp97208_0,
    input wire [0:0] in_notcmp97208_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe2278,
    output wire [31:0] out_c0_exe3279,
    output wire [31:0] out_c0_exe4280,
    output wire [31:0] out_c0_exe5281,
    output wire [31:0] out_c0_exe6282,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0,
    output wire [31:0] out_intel_reserved_ffwd_48_0,
    output wire [31:0] out_intel_reserved_ffwd_49_0,
    output wire [31:0] out_intel_reserved_ffwd_50_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_floydWarshall_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out;
    wire [0:0] bb_floydWarshall_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe10;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe11;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe12;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe13;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe14;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe15;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe16;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe17;
    wire [0:0] bb_floydWarshall_B8_stall_region_out_c0_exe18;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe19;
    wire [0:0] bb_floydWarshall_B8_stall_region_out_c0_exe20;
    wire [0:0] bb_floydWarshall_B8_stall_region_out_c0_exe21;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe2278;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe3279;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe4280;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe5281;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe6282;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe7;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe8;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_c0_exe9;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_35_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_38_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_39_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_41_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_43_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_44_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_45_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_46_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_47_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_48_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_49_0;
    wire [31:0] bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_50_0;
    wire [0:0] bb_floydWarshall_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B8_stall_region_out_stall_out;
    wire [0:0] bb_floydWarshall_B8_stall_region_out_valid_out;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe10;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe11;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe12;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe13;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe14;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe15;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe16;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe17;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe19;
    wire [0:0] floydWarshall_B8_branch_out_c0_exe20;
    wire [0:0] floydWarshall_B8_branch_out_c0_exe21;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe2278;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe3279;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe4280;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe5281;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe6282;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe7;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe8;
    wire [31:0] floydWarshall_B8_branch_out_c0_exe9;
    wire [0:0] floydWarshall_B8_branch_out_stall_out;
    wire [0:0] floydWarshall_B8_branch_out_valid_out_0;
    wire [0:0] floydWarshall_B8_branch_out_valid_out_1;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_0_4_replace_phi191;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_12_4_replace_phi193;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_17_4_replace_phi194;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_22_4_replace_phi195;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_27_4_replace_phi198;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_32_4_replace_phi201;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_37_4_replace_phi204;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_42_4_replace_phi196;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_47_4_replace_phi199;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_52_4_replace_phi202;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_57_4_replace_phi205;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_62_4_replace_phi197;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_67_4_replace_phi200;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_72_4_replace_phi203;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_77_4_replace_phi206;
    wire [31:0] floydWarshall_B8_merge_out_A_sroa_7_4_replace_phi192;
    wire [0:0] floydWarshall_B8_merge_out_exitcond9207;
    wire [0:0] floydWarshall_B8_merge_out_forked81;
    wire [31:0] floydWarshall_B8_merge_out_i_127_pop54209;
    wire [31:0] floydWarshall_B8_merge_out_inc55178_pop55210;
    wire [31:0] floydWarshall_B8_merge_out_inc55190;
    wire [0:0] floydWarshall_B8_merge_out_notcmp97208;
    wire [0:0] floydWarshall_B8_merge_out_stall_out_0;
    wire [0:0] floydWarshall_B8_merge_out_stall_out_1;
    wire [0:0] floydWarshall_B8_merge_out_valid_out;


    // floydWarshall_B8_merge(BLACKBOX,4)
    floydWarshall_B8_merge thefloydWarshall_B8_merge (
        .in_A_sroa_0_4_replace_phi191_0(in_A_sroa_0_4_replace_phi191_0),
        .in_A_sroa_0_4_replace_phi191_1(in_A_sroa_0_4_replace_phi191_1),
        .in_A_sroa_12_4_replace_phi193_0(in_A_sroa_12_4_replace_phi193_0),
        .in_A_sroa_12_4_replace_phi193_1(in_A_sroa_12_4_replace_phi193_1),
        .in_A_sroa_17_4_replace_phi194_0(in_A_sroa_17_4_replace_phi194_0),
        .in_A_sroa_17_4_replace_phi194_1(in_A_sroa_17_4_replace_phi194_1),
        .in_A_sroa_22_4_replace_phi195_0(in_A_sroa_22_4_replace_phi195_0),
        .in_A_sroa_22_4_replace_phi195_1(in_A_sroa_22_4_replace_phi195_1),
        .in_A_sroa_27_4_replace_phi198_0(in_A_sroa_27_4_replace_phi198_0),
        .in_A_sroa_27_4_replace_phi198_1(in_A_sroa_27_4_replace_phi198_1),
        .in_A_sroa_32_4_replace_phi201_0(in_A_sroa_32_4_replace_phi201_0),
        .in_A_sroa_32_4_replace_phi201_1(in_A_sroa_32_4_replace_phi201_1),
        .in_A_sroa_37_4_replace_phi204_0(in_A_sroa_37_4_replace_phi204_0),
        .in_A_sroa_37_4_replace_phi204_1(in_A_sroa_37_4_replace_phi204_1),
        .in_A_sroa_42_4_replace_phi196_0(in_A_sroa_42_4_replace_phi196_0),
        .in_A_sroa_42_4_replace_phi196_1(in_A_sroa_42_4_replace_phi196_1),
        .in_A_sroa_47_4_replace_phi199_0(in_A_sroa_47_4_replace_phi199_0),
        .in_A_sroa_47_4_replace_phi199_1(in_A_sroa_47_4_replace_phi199_1),
        .in_A_sroa_52_4_replace_phi202_0(in_A_sroa_52_4_replace_phi202_0),
        .in_A_sroa_52_4_replace_phi202_1(in_A_sroa_52_4_replace_phi202_1),
        .in_A_sroa_57_4_replace_phi205_0(in_A_sroa_57_4_replace_phi205_0),
        .in_A_sroa_57_4_replace_phi205_1(in_A_sroa_57_4_replace_phi205_1),
        .in_A_sroa_62_4_replace_phi197_0(in_A_sroa_62_4_replace_phi197_0),
        .in_A_sroa_62_4_replace_phi197_1(in_A_sroa_62_4_replace_phi197_1),
        .in_A_sroa_67_4_replace_phi200_0(in_A_sroa_67_4_replace_phi200_0),
        .in_A_sroa_67_4_replace_phi200_1(in_A_sroa_67_4_replace_phi200_1),
        .in_A_sroa_72_4_replace_phi203_0(in_A_sroa_72_4_replace_phi203_0),
        .in_A_sroa_72_4_replace_phi203_1(in_A_sroa_72_4_replace_phi203_1),
        .in_A_sroa_77_4_replace_phi206_0(in_A_sroa_77_4_replace_phi206_0),
        .in_A_sroa_77_4_replace_phi206_1(in_A_sroa_77_4_replace_phi206_1),
        .in_A_sroa_7_4_replace_phi192_0(in_A_sroa_7_4_replace_phi192_0),
        .in_A_sroa_7_4_replace_phi192_1(in_A_sroa_7_4_replace_phi192_1),
        .in_exitcond9207_0(in_exitcond9207_0),
        .in_exitcond9207_1(in_exitcond9207_1),
        .in_forked81_0(in_forked81_0),
        .in_forked81_1(in_forked81_1),
        .in_i_127_pop54209_0(in_i_127_pop54209_0),
        .in_i_127_pop54209_1(in_i_127_pop54209_1),
        .in_inc55178_pop55210_0(in_inc55178_pop55210_0),
        .in_inc55178_pop55210_1(in_inc55178_pop55210_1),
        .in_inc55190_0(in_inc55190_0),
        .in_inc55190_1(in_inc55190_1),
        .in_notcmp97208_0(in_notcmp97208_0),
        .in_notcmp97208_1(in_notcmp97208_1),
        .in_stall_in(bb_floydWarshall_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_A_sroa_0_4_replace_phi191(floydWarshall_B8_merge_out_A_sroa_0_4_replace_phi191),
        .out_A_sroa_12_4_replace_phi193(floydWarshall_B8_merge_out_A_sroa_12_4_replace_phi193),
        .out_A_sroa_17_4_replace_phi194(floydWarshall_B8_merge_out_A_sroa_17_4_replace_phi194),
        .out_A_sroa_22_4_replace_phi195(floydWarshall_B8_merge_out_A_sroa_22_4_replace_phi195),
        .out_A_sroa_27_4_replace_phi198(floydWarshall_B8_merge_out_A_sroa_27_4_replace_phi198),
        .out_A_sroa_32_4_replace_phi201(floydWarshall_B8_merge_out_A_sroa_32_4_replace_phi201),
        .out_A_sroa_37_4_replace_phi204(floydWarshall_B8_merge_out_A_sroa_37_4_replace_phi204),
        .out_A_sroa_42_4_replace_phi196(floydWarshall_B8_merge_out_A_sroa_42_4_replace_phi196),
        .out_A_sroa_47_4_replace_phi199(floydWarshall_B8_merge_out_A_sroa_47_4_replace_phi199),
        .out_A_sroa_52_4_replace_phi202(floydWarshall_B8_merge_out_A_sroa_52_4_replace_phi202),
        .out_A_sroa_57_4_replace_phi205(floydWarshall_B8_merge_out_A_sroa_57_4_replace_phi205),
        .out_A_sroa_62_4_replace_phi197(floydWarshall_B8_merge_out_A_sroa_62_4_replace_phi197),
        .out_A_sroa_67_4_replace_phi200(floydWarshall_B8_merge_out_A_sroa_67_4_replace_phi200),
        .out_A_sroa_72_4_replace_phi203(floydWarshall_B8_merge_out_A_sroa_72_4_replace_phi203),
        .out_A_sroa_77_4_replace_phi206(floydWarshall_B8_merge_out_A_sroa_77_4_replace_phi206),
        .out_A_sroa_7_4_replace_phi192(floydWarshall_B8_merge_out_A_sroa_7_4_replace_phi192),
        .out_exitcond9207(floydWarshall_B8_merge_out_exitcond9207),
        .out_forked81(floydWarshall_B8_merge_out_forked81),
        .out_i_127_pop54209(floydWarshall_B8_merge_out_i_127_pop54209),
        .out_inc55178_pop55210(floydWarshall_B8_merge_out_inc55178_pop55210),
        .out_inc55190(floydWarshall_B8_merge_out_inc55190),
        .out_notcmp97208(floydWarshall_B8_merge_out_notcmp97208),
        .out_stall_out_0(floydWarshall_B8_merge_out_stall_out_0),
        .out_stall_out_1(floydWarshall_B8_merge_out_stall_out_1),
        .out_valid_out(floydWarshall_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B8_stall_region(BLACKBOX,2)
    floydWarshall_bb_B8_stall_region thebb_floydWarshall_B8_stall_region (
        .in_A_sroa_0_4_replace_phi191(floydWarshall_B8_merge_out_A_sroa_0_4_replace_phi191),
        .in_A_sroa_12_4_replace_phi193(floydWarshall_B8_merge_out_A_sroa_12_4_replace_phi193),
        .in_A_sroa_17_4_replace_phi194(floydWarshall_B8_merge_out_A_sroa_17_4_replace_phi194),
        .in_A_sroa_22_4_replace_phi195(floydWarshall_B8_merge_out_A_sroa_22_4_replace_phi195),
        .in_A_sroa_27_4_replace_phi198(floydWarshall_B8_merge_out_A_sroa_27_4_replace_phi198),
        .in_A_sroa_32_4_replace_phi201(floydWarshall_B8_merge_out_A_sroa_32_4_replace_phi201),
        .in_A_sroa_37_4_replace_phi204(floydWarshall_B8_merge_out_A_sroa_37_4_replace_phi204),
        .in_A_sroa_42_4_replace_phi196(floydWarshall_B8_merge_out_A_sroa_42_4_replace_phi196),
        .in_A_sroa_47_4_replace_phi199(floydWarshall_B8_merge_out_A_sroa_47_4_replace_phi199),
        .in_A_sroa_52_4_replace_phi202(floydWarshall_B8_merge_out_A_sroa_52_4_replace_phi202),
        .in_A_sroa_57_4_replace_phi205(floydWarshall_B8_merge_out_A_sroa_57_4_replace_phi205),
        .in_A_sroa_62_4_replace_phi197(floydWarshall_B8_merge_out_A_sroa_62_4_replace_phi197),
        .in_A_sroa_67_4_replace_phi200(floydWarshall_B8_merge_out_A_sroa_67_4_replace_phi200),
        .in_A_sroa_72_4_replace_phi203(floydWarshall_B8_merge_out_A_sroa_72_4_replace_phi203),
        .in_A_sroa_77_4_replace_phi206(floydWarshall_B8_merge_out_A_sroa_77_4_replace_phi206),
        .in_A_sroa_7_4_replace_phi192(floydWarshall_B8_merge_out_A_sroa_7_4_replace_phi192),
        .in_exitcond9207(floydWarshall_B8_merge_out_exitcond9207),
        .in_forked81(floydWarshall_B8_merge_out_forked81),
        .in_i_127_pop54209(floydWarshall_B8_merge_out_i_127_pop54209),
        .in_inc55178_pop55210(floydWarshall_B8_merge_out_inc55178_pop55210),
        .in_inc55190(floydWarshall_B8_merge_out_inc55190),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_notcmp97208(floydWarshall_B8_merge_out_notcmp97208),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(floydWarshall_B8_branch_out_stall_out),
        .in_valid_in(floydWarshall_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out(bb_floydWarshall_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out(bb_floydWarshall_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out),
        .out_c0_exe10(bb_floydWarshall_B8_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_floydWarshall_B8_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_floydWarshall_B8_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_floydWarshall_B8_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_floydWarshall_B8_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_floydWarshall_B8_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_floydWarshall_B8_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_floydWarshall_B8_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_floydWarshall_B8_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_floydWarshall_B8_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_floydWarshall_B8_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_floydWarshall_B8_stall_region_out_c0_exe21),
        .out_c0_exe2278(bb_floydWarshall_B8_stall_region_out_c0_exe2278),
        .out_c0_exe3279(bb_floydWarshall_B8_stall_region_out_c0_exe3279),
        .out_c0_exe4280(bb_floydWarshall_B8_stall_region_out_c0_exe4280),
        .out_c0_exe5281(bb_floydWarshall_B8_stall_region_out_c0_exe5281),
        .out_c0_exe6282(bb_floydWarshall_B8_stall_region_out_c0_exe6282),
        .out_c0_exe7(bb_floydWarshall_B8_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_floydWarshall_B8_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_floydWarshall_B8_stall_region_out_c0_exe9),
        .out_intel_reserved_ffwd_35_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_50_0),
        .out_pipeline_valid_out(bb_floydWarshall_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_floydWarshall_B8_stall_region_out_stall_out),
        .out_valid_out(bb_floydWarshall_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // floydWarshall_B8_branch(BLACKBOX,3)
    floydWarshall_B8_branch thefloydWarshall_B8_branch (
        .in_c0_exe10(bb_floydWarshall_B8_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_floydWarshall_B8_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_floydWarshall_B8_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_floydWarshall_B8_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_floydWarshall_B8_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_floydWarshall_B8_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_floydWarshall_B8_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_floydWarshall_B8_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_floydWarshall_B8_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_floydWarshall_B8_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_floydWarshall_B8_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_floydWarshall_B8_stall_region_out_c0_exe21),
        .in_c0_exe2278(bb_floydWarshall_B8_stall_region_out_c0_exe2278),
        .in_c0_exe3279(bb_floydWarshall_B8_stall_region_out_c0_exe3279),
        .in_c0_exe4280(bb_floydWarshall_B8_stall_region_out_c0_exe4280),
        .in_c0_exe5281(bb_floydWarshall_B8_stall_region_out_c0_exe5281),
        .in_c0_exe6282(bb_floydWarshall_B8_stall_region_out_c0_exe6282),
        .in_c0_exe7(bb_floydWarshall_B8_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_floydWarshall_B8_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_floydWarshall_B8_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_floydWarshall_B8_stall_region_out_valid_out),
        .out_c0_exe10(floydWarshall_B8_branch_out_c0_exe10),
        .out_c0_exe11(floydWarshall_B8_branch_out_c0_exe11),
        .out_c0_exe12(floydWarshall_B8_branch_out_c0_exe12),
        .out_c0_exe13(floydWarshall_B8_branch_out_c0_exe13),
        .out_c0_exe14(floydWarshall_B8_branch_out_c0_exe14),
        .out_c0_exe15(floydWarshall_B8_branch_out_c0_exe15),
        .out_c0_exe16(floydWarshall_B8_branch_out_c0_exe16),
        .out_c0_exe17(floydWarshall_B8_branch_out_c0_exe17),
        .out_c0_exe19(floydWarshall_B8_branch_out_c0_exe19),
        .out_c0_exe20(floydWarshall_B8_branch_out_c0_exe20),
        .out_c0_exe21(floydWarshall_B8_branch_out_c0_exe21),
        .out_c0_exe2278(floydWarshall_B8_branch_out_c0_exe2278),
        .out_c0_exe3279(floydWarshall_B8_branch_out_c0_exe3279),
        .out_c0_exe4280(floydWarshall_B8_branch_out_c0_exe4280),
        .out_c0_exe5281(floydWarshall_B8_branch_out_c0_exe5281),
        .out_c0_exe6282(floydWarshall_B8_branch_out_c0_exe6282),
        .out_c0_exe7(floydWarshall_B8_branch_out_c0_exe7),
        .out_c0_exe8(floydWarshall_B8_branch_out_c0_exe8),
        .out_c0_exe9(floydWarshall_B8_branch_out_c0_exe9),
        .out_stall_out(floydWarshall_B8_branch_out_stall_out),
        .out_valid_out_0(floydWarshall_B8_branch_out_valid_out_0),
        .out_valid_out_1(floydWarshall_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,54)
    assign out_c0_exe10 = floydWarshall_B8_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,55)
    assign out_c0_exe11 = floydWarshall_B8_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,56)
    assign out_c0_exe12 = floydWarshall_B8_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,57)
    assign out_c0_exe13 = floydWarshall_B8_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,58)
    assign out_c0_exe14 = floydWarshall_B8_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,59)
    assign out_c0_exe15 = floydWarshall_B8_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,60)
    assign out_c0_exe16 = floydWarshall_B8_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,61)
    assign out_c0_exe17 = floydWarshall_B8_branch_out_c0_exe17;

    // out_c0_exe19(GPOUT,62)
    assign out_c0_exe19 = floydWarshall_B8_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,63)
    assign out_c0_exe20 = floydWarshall_B8_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,64)
    assign out_c0_exe21 = floydWarshall_B8_branch_out_c0_exe21;

    // out_c0_exe2278(GPOUT,65)
    assign out_c0_exe2278 = floydWarshall_B8_branch_out_c0_exe2278;

    // out_c0_exe3279(GPOUT,66)
    assign out_c0_exe3279 = floydWarshall_B8_branch_out_c0_exe3279;

    // out_c0_exe4280(GPOUT,67)
    assign out_c0_exe4280 = floydWarshall_B8_branch_out_c0_exe4280;

    // out_c0_exe5281(GPOUT,68)
    assign out_c0_exe5281 = floydWarshall_B8_branch_out_c0_exe5281;

    // out_c0_exe6282(GPOUT,69)
    assign out_c0_exe6282 = floydWarshall_B8_branch_out_c0_exe6282;

    // out_c0_exe7(GPOUT,70)
    assign out_c0_exe7 = floydWarshall_B8_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,71)
    assign out_c0_exe8 = floydWarshall_B8_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,72)
    assign out_c0_exe9 = floydWarshall_B8_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,73)
    assign out_exiting_stall_out = bb_floydWarshall_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,74)
    assign out_exiting_valid_out = bb_floydWarshall_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out;

    // out_intel_reserved_ffwd_35_0(GPOUT,75)
    assign out_intel_reserved_ffwd_35_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,76)
    assign out_intel_reserved_ffwd_36_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,77)
    assign out_intel_reserved_ffwd_37_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,78)
    assign out_intel_reserved_ffwd_38_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,79)
    assign out_intel_reserved_ffwd_39_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,80)
    assign out_intel_reserved_ffwd_40_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,81)
    assign out_intel_reserved_ffwd_41_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,82)
    assign out_intel_reserved_ffwd_42_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,83)
    assign out_intel_reserved_ffwd_43_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_43_0;

    // out_intel_reserved_ffwd_44_0(GPOUT,84)
    assign out_intel_reserved_ffwd_44_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_44_0;

    // out_intel_reserved_ffwd_45_0(GPOUT,85)
    assign out_intel_reserved_ffwd_45_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_45_0;

    // out_intel_reserved_ffwd_46_0(GPOUT,86)
    assign out_intel_reserved_ffwd_46_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_46_0;

    // out_intel_reserved_ffwd_47_0(GPOUT,87)
    assign out_intel_reserved_ffwd_47_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_47_0;

    // out_intel_reserved_ffwd_48_0(GPOUT,88)
    assign out_intel_reserved_ffwd_48_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_48_0;

    // out_intel_reserved_ffwd_49_0(GPOUT,89)
    assign out_intel_reserved_ffwd_49_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_49_0;

    // out_intel_reserved_ffwd_50_0(GPOUT,90)
    assign out_intel_reserved_ffwd_50_0 = bb_floydWarshall_B8_stall_region_out_intel_reserved_ffwd_50_0;

    // out_stall_out_0(GPOUT,91)
    assign out_stall_out_0 = floydWarshall_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,92)
    assign out_stall_out_1 = floydWarshall_B8_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,93)
    assign out_valid_out_0 = floydWarshall_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,94)
    assign out_valid_out_1 = floydWarshall_B8_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,96)
    assign out_pipeline_valid_out = bb_floydWarshall_B8_stall_region_out_pipeline_valid_out;

endmodule
