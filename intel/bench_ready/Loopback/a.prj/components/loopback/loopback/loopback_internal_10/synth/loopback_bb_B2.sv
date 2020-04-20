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

// SystemVerilog created from loopback_bb_B2
// SystemVerilog created on Sun Apr 19 21:18:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_bb_B2 (
    input wire [0:0] in_forked714_0,
    input wire [0:0] in_forked714_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [15:0] out_intel_reserved_ffwd_10_0,
    output wire [15:0] out_intel_reserved_ffwd_11_0,
    output wire [15:0] out_intel_reserved_ffwd_12_0,
    output wire [15:0] out_intel_reserved_ffwd_13_0,
    output wire [15:0] out_intel_reserved_ffwd_14_0,
    output wire [15:0] out_intel_reserved_ffwd_15_0,
    output wire [15:0] out_intel_reserved_ffwd_16_0,
    output wire [15:0] out_intel_reserved_ffwd_17_0,
    output wire [15:0] out_intel_reserved_ffwd_18_0,
    output wire [15:0] out_intel_reserved_ffwd_19_0,
    output wire [15:0] out_intel_reserved_ffwd_1_0,
    output wire [15:0] out_intel_reserved_ffwd_20_0,
    output wire [15:0] out_intel_reserved_ffwd_21_0,
    output wire [15:0] out_intel_reserved_ffwd_22_0,
    output wire [15:0] out_intel_reserved_ffwd_23_0,
    output wire [15:0] out_intel_reserved_ffwd_24_0,
    output wire [15:0] out_intel_reserved_ffwd_25_0,
    output wire [15:0] out_intel_reserved_ffwd_26_0,
    output wire [15:0] out_intel_reserved_ffwd_27_0,
    output wire [15:0] out_intel_reserved_ffwd_28_0,
    output wire [15:0] out_intel_reserved_ffwd_29_0,
    output wire [15:0] out_intel_reserved_ffwd_2_0,
    output wire [15:0] out_intel_reserved_ffwd_30_0,
    output wire [15:0] out_intel_reserved_ffwd_31_0,
    output wire [15:0] out_intel_reserved_ffwd_32_0,
    output wire [15:0] out_intel_reserved_ffwd_33_0,
    output wire [15:0] out_intel_reserved_ffwd_34_0,
    output wire [15:0] out_intel_reserved_ffwd_35_0,
    output wire [15:0] out_intel_reserved_ffwd_36_0,
    output wire [15:0] out_intel_reserved_ffwd_37_0,
    output wire [15:0] out_intel_reserved_ffwd_38_0,
    output wire [15:0] out_intel_reserved_ffwd_39_0,
    output wire [15:0] out_intel_reserved_ffwd_3_0,
    output wire [15:0] out_intel_reserved_ffwd_40_0,
    output wire [15:0] out_intel_reserved_ffwd_41_0,
    output wire [15:0] out_intel_reserved_ffwd_42_0,
    output wire [15:0] out_intel_reserved_ffwd_43_0,
    output wire [15:0] out_intel_reserved_ffwd_44_0,
    output wire [15:0] out_intel_reserved_ffwd_45_0,
    output wire [15:0] out_intel_reserved_ffwd_46_0,
    output wire [15:0] out_intel_reserved_ffwd_47_0,
    output wire [15:0] out_intel_reserved_ffwd_48_0,
    output wire [15:0] out_intel_reserved_ffwd_49_0,
    output wire [15:0] out_intel_reserved_ffwd_4_0,
    output wire [15:0] out_intel_reserved_ffwd_50_0,
    output wire [15:0] out_intel_reserved_ffwd_51_0,
    output wire [15:0] out_intel_reserved_ffwd_52_0,
    output wire [15:0] out_intel_reserved_ffwd_53_0,
    output wire [15:0] out_intel_reserved_ffwd_54_0,
    output wire [15:0] out_intel_reserved_ffwd_55_0,
    output wire [15:0] out_intel_reserved_ffwd_56_0,
    output wire [15:0] out_intel_reserved_ffwd_57_0,
    output wire [15:0] out_intel_reserved_ffwd_58_0,
    output wire [15:0] out_intel_reserved_ffwd_59_0,
    output wire [15:0] out_intel_reserved_ffwd_5_0,
    output wire [15:0] out_intel_reserved_ffwd_60_0,
    output wire [15:0] out_intel_reserved_ffwd_61_0,
    output wire [15:0] out_intel_reserved_ffwd_62_0,
    output wire [15:0] out_intel_reserved_ffwd_63_0,
    output wire [15:0] out_intel_reserved_ffwd_64_0,
    output wire [15:0] out_intel_reserved_ffwd_6_0,
    output wire [15:0] out_intel_reserved_ffwd_7_0,
    output wire [15:0] out_intel_reserved_ffwd_8_0,
    output wire [15:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_loopback_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out;
    wire [0:0] bb_loopback_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out;
    wire [0:0] bb_loopback_B2_stall_region_out_c0_exe2;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_10_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_11_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_12_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_13_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_14_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_15_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_16_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_17_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_18_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_19_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_1_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_20_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_21_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_22_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_23_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_24_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_25_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_26_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_27_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_28_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_29_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_2_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_30_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_31_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_32_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_33_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_34_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_35_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_36_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_37_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_38_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_39_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_3_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_40_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_41_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_42_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_43_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_44_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_45_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_46_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_47_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_48_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_49_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_4_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_50_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_51_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_52_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_53_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_54_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_55_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_56_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_57_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_58_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_59_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_5_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_60_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_61_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_62_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_63_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_64_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_6_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_7_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_8_0;
    wire [15:0] bb_loopback_B2_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_loopback_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_loopback_B2_stall_region_out_stall_out;
    wire [0:0] bb_loopback_B2_stall_region_out_valid_out;
    wire [0:0] loopback_B2_branch_out_stall_out;
    wire [0:0] loopback_B2_branch_out_valid_out_0;
    wire [0:0] loopback_B2_branch_out_valid_out_1;
    wire [0:0] loopback_B2_merge_out_forked714;
    wire [0:0] loopback_B2_merge_out_stall_out_0;
    wire [0:0] loopback_B2_merge_out_stall_out_1;
    wire [0:0] loopback_B2_merge_out_valid_out;


    // loopback_B2_branch(BLACKBOX,9)
    loopback_B2_branch theloopback_B2_branch (
        .in_c0_exe2(bb_loopback_B2_stall_region_out_c0_exe2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_loopback_B2_stall_region_out_valid_out),
        .out_stall_out(loopback_B2_branch_out_stall_out),
        .out_valid_out_0(loopback_B2_branch_out_valid_out_0),
        .out_valid_out_1(loopback_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // loopback_B2_merge(BLACKBOX,10)
    loopback_B2_merge theloopback_B2_merge (
        .in_forked714_0(in_forked714_0),
        .in_forked714_1(in_forked714_1),
        .in_stall_in(bb_loopback_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked714(loopback_B2_merge_out_forked714),
        .out_stall_out_0(loopback_B2_merge_out_stall_out_0),
        .out_stall_out_1(loopback_B2_merge_out_stall_out_1),
        .out_valid_out(loopback_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B2_stall_region(BLACKBOX,2)
    loopback_bb_B2_stall_region thebb_loopback_B2_stall_region (
        .in_forked714(loopback_B2_merge_out_forked714),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(loopback_B2_branch_out_stall_out),
        .in_valid_in(loopback_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out(bb_loopback_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out(bb_loopback_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out),
        .out_c0_exe2(bb_loopback_B2_stall_region_out_c0_exe2),
        .out_intel_reserved_ffwd_10_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_2_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_30_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_3_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_40_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_4_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_50_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_5_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_60_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_6_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_loopback_B2_stall_region_out_intel_reserved_ffwd_9_0),
        .out_pipeline_valid_out(bb_loopback_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_loopback_B2_stall_region_out_stall_out),
        .out_valid_out(bb_loopback_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,11)
    assign out_exiting_stall_out = bb_loopback_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,12)
    assign out_exiting_valid_out = bb_loopback_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out;

    // out_intel_reserved_ffwd_10_0(GPOUT,13)
    assign out_intel_reserved_ffwd_10_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,14)
    assign out_intel_reserved_ffwd_11_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,15)
    assign out_intel_reserved_ffwd_12_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,16)
    assign out_intel_reserved_ffwd_13_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,17)
    assign out_intel_reserved_ffwd_14_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,18)
    assign out_intel_reserved_ffwd_15_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,19)
    assign out_intel_reserved_ffwd_16_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,20)
    assign out_intel_reserved_ffwd_17_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,21)
    assign out_intel_reserved_ffwd_18_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,22)
    assign out_intel_reserved_ffwd_19_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,23)
    assign out_intel_reserved_ffwd_1_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,24)
    assign out_intel_reserved_ffwd_20_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,25)
    assign out_intel_reserved_ffwd_21_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,26)
    assign out_intel_reserved_ffwd_22_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,27)
    assign out_intel_reserved_ffwd_23_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,28)
    assign out_intel_reserved_ffwd_24_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,29)
    assign out_intel_reserved_ffwd_25_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,30)
    assign out_intel_reserved_ffwd_26_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,31)
    assign out_intel_reserved_ffwd_27_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,32)
    assign out_intel_reserved_ffwd_28_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,33)
    assign out_intel_reserved_ffwd_29_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,34)
    assign out_intel_reserved_ffwd_2_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,35)
    assign out_intel_reserved_ffwd_30_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,36)
    assign out_intel_reserved_ffwd_31_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,37)
    assign out_intel_reserved_ffwd_32_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,38)
    assign out_intel_reserved_ffwd_33_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,39)
    assign out_intel_reserved_ffwd_34_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,40)
    assign out_intel_reserved_ffwd_35_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,41)
    assign out_intel_reserved_ffwd_36_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,42)
    assign out_intel_reserved_ffwd_37_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,43)
    assign out_intel_reserved_ffwd_38_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,44)
    assign out_intel_reserved_ffwd_39_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,45)
    assign out_intel_reserved_ffwd_3_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,46)
    assign out_intel_reserved_ffwd_40_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,47)
    assign out_intel_reserved_ffwd_41_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,48)
    assign out_intel_reserved_ffwd_42_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,49)
    assign out_intel_reserved_ffwd_43_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_43_0;

    // out_intel_reserved_ffwd_44_0(GPOUT,50)
    assign out_intel_reserved_ffwd_44_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_44_0;

    // out_intel_reserved_ffwd_45_0(GPOUT,51)
    assign out_intel_reserved_ffwd_45_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_45_0;

    // out_intel_reserved_ffwd_46_0(GPOUT,52)
    assign out_intel_reserved_ffwd_46_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_46_0;

    // out_intel_reserved_ffwd_47_0(GPOUT,53)
    assign out_intel_reserved_ffwd_47_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_47_0;

    // out_intel_reserved_ffwd_48_0(GPOUT,54)
    assign out_intel_reserved_ffwd_48_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_48_0;

    // out_intel_reserved_ffwd_49_0(GPOUT,55)
    assign out_intel_reserved_ffwd_49_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_49_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,56)
    assign out_intel_reserved_ffwd_4_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_50_0(GPOUT,57)
    assign out_intel_reserved_ffwd_50_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_50_0;

    // out_intel_reserved_ffwd_51_0(GPOUT,58)
    assign out_intel_reserved_ffwd_51_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_51_0;

    // out_intel_reserved_ffwd_52_0(GPOUT,59)
    assign out_intel_reserved_ffwd_52_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_52_0;

    // out_intel_reserved_ffwd_53_0(GPOUT,60)
    assign out_intel_reserved_ffwd_53_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_53_0;

    // out_intel_reserved_ffwd_54_0(GPOUT,61)
    assign out_intel_reserved_ffwd_54_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_54_0;

    // out_intel_reserved_ffwd_55_0(GPOUT,62)
    assign out_intel_reserved_ffwd_55_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_55_0;

    // out_intel_reserved_ffwd_56_0(GPOUT,63)
    assign out_intel_reserved_ffwd_56_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_56_0;

    // out_intel_reserved_ffwd_57_0(GPOUT,64)
    assign out_intel_reserved_ffwd_57_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_57_0;

    // out_intel_reserved_ffwd_58_0(GPOUT,65)
    assign out_intel_reserved_ffwd_58_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_58_0;

    // out_intel_reserved_ffwd_59_0(GPOUT,66)
    assign out_intel_reserved_ffwd_59_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_59_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,67)
    assign out_intel_reserved_ffwd_5_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_60_0(GPOUT,68)
    assign out_intel_reserved_ffwd_60_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_60_0;

    // out_intel_reserved_ffwd_61_0(GPOUT,69)
    assign out_intel_reserved_ffwd_61_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_61_0;

    // out_intel_reserved_ffwd_62_0(GPOUT,70)
    assign out_intel_reserved_ffwd_62_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_62_0;

    // out_intel_reserved_ffwd_63_0(GPOUT,71)
    assign out_intel_reserved_ffwd_63_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_63_0;

    // out_intel_reserved_ffwd_64_0(GPOUT,72)
    assign out_intel_reserved_ffwd_64_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_64_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,73)
    assign out_intel_reserved_ffwd_6_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,74)
    assign out_intel_reserved_ffwd_7_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,75)
    assign out_intel_reserved_ffwd_8_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,76)
    assign out_intel_reserved_ffwd_9_0 = bb_loopback_B2_stall_region_out_intel_reserved_ffwd_9_0;

    // out_stall_out_0(GPOUT,77)
    assign out_stall_out_0 = loopback_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,78)
    assign out_stall_out_1 = loopback_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,79)
    assign out_valid_out_0 = loopback_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,80)
    assign out_valid_out_1 = loopback_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = bb_loopback_B2_stall_region_out_pipeline_valid_out;

endmodule
