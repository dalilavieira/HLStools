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

// SystemVerilog created from loopback_bb_B5
// SystemVerilog created on Mon Apr 27 09:48:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_bb_B5 (
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [15:0] out_intel_reserved_ffwd_100_0,
    output wire [15:0] out_intel_reserved_ffwd_69_0,
    output wire [15:0] out_intel_reserved_ffwd_70_0,
    output wire [15:0] out_intel_reserved_ffwd_71_0,
    output wire [15:0] out_intel_reserved_ffwd_72_0,
    output wire [15:0] out_intel_reserved_ffwd_73_0,
    output wire [15:0] out_intel_reserved_ffwd_74_0,
    output wire [15:0] out_intel_reserved_ffwd_75_0,
    output wire [15:0] out_intel_reserved_ffwd_76_0,
    output wire [15:0] out_intel_reserved_ffwd_77_0,
    output wire [15:0] out_intel_reserved_ffwd_78_0,
    output wire [15:0] out_intel_reserved_ffwd_79_0,
    output wire [15:0] out_intel_reserved_ffwd_80_0,
    output wire [15:0] out_intel_reserved_ffwd_81_0,
    output wire [15:0] out_intel_reserved_ffwd_82_0,
    output wire [15:0] out_intel_reserved_ffwd_83_0,
    output wire [15:0] out_intel_reserved_ffwd_84_0,
    output wire [15:0] out_intel_reserved_ffwd_85_0,
    output wire [15:0] out_intel_reserved_ffwd_86_0,
    output wire [15:0] out_intel_reserved_ffwd_87_0,
    output wire [15:0] out_intel_reserved_ffwd_88_0,
    output wire [15:0] out_intel_reserved_ffwd_89_0,
    output wire [15:0] out_intel_reserved_ffwd_90_0,
    output wire [15:0] out_intel_reserved_ffwd_91_0,
    output wire [15:0] out_intel_reserved_ffwd_92_0,
    output wire [15:0] out_intel_reserved_ffwd_93_0,
    output wire [15:0] out_intel_reserved_ffwd_94_0,
    output wire [15:0] out_intel_reserved_ffwd_95_0,
    output wire [15:0] out_intel_reserved_ffwd_96_0,
    output wire [15:0] out_intel_reserved_ffwd_97_0,
    output wire [15:0] out_intel_reserved_ffwd_98_0,
    output wire [15:0] out_intel_reserved_ffwd_99_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [15:0] in_intel_reserved_ffwd_1_0,
    input wire [15:0] in_intel_reserved_ffwd_33_0,
    input wire [15:0] in_intel_reserved_ffwd_34_0,
    input wire [15:0] in_intel_reserved_ffwd_35_0,
    input wire [15:0] in_intel_reserved_ffwd_36_0,
    input wire [15:0] in_intel_reserved_ffwd_37_0,
    input wire [15:0] in_intel_reserved_ffwd_38_0,
    input wire [15:0] in_intel_reserved_ffwd_39_0,
    input wire [15:0] in_intel_reserved_ffwd_40_0,
    input wire [15:0] in_intel_reserved_ffwd_41_0,
    input wire [15:0] in_intel_reserved_ffwd_42_0,
    input wire [15:0] in_intel_reserved_ffwd_43_0,
    input wire [15:0] in_intel_reserved_ffwd_44_0,
    input wire [15:0] in_intel_reserved_ffwd_45_0,
    input wire [15:0] in_intel_reserved_ffwd_46_0,
    input wire [15:0] in_intel_reserved_ffwd_47_0,
    input wire [15:0] in_intel_reserved_ffwd_48_0,
    input wire [15:0] in_intel_reserved_ffwd_49_0,
    input wire [15:0] in_intel_reserved_ffwd_50_0,
    input wire [15:0] in_intel_reserved_ffwd_51_0,
    input wire [15:0] in_intel_reserved_ffwd_52_0,
    input wire [15:0] in_intel_reserved_ffwd_53_0,
    input wire [15:0] in_intel_reserved_ffwd_54_0,
    input wire [15:0] in_intel_reserved_ffwd_55_0,
    input wire [15:0] in_intel_reserved_ffwd_56_0,
    input wire [15:0] in_intel_reserved_ffwd_57_0,
    input wire [15:0] in_intel_reserved_ffwd_58_0,
    input wire [15:0] in_intel_reserved_ffwd_59_0,
    input wire [15:0] in_intel_reserved_ffwd_60_0,
    input wire [15:0] in_intel_reserved_ffwd_61_0,
    input wire [15:0] in_intel_reserved_ffwd_62_0,
    input wire [15:0] in_intel_reserved_ffwd_63_0,
    input wire [15:0] in_intel_reserved_ffwd_64_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [15:0] in_intel_reserved_ffwd_65_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_7_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_7_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_loopback_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out;
    wire [0:0] bb_loopback_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out;
    wire [0:0] bb_loopback_B5_stall_region_out_c0_exe2807;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_100_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_69_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_70_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_71_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_72_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_73_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_74_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_75_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_76_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_77_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_78_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_79_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_80_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_81_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_82_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_83_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_84_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_85_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_86_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_87_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_88_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_89_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_90_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_91_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_92_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_93_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_94_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_95_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_96_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_97_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_98_0;
    wire [15:0] bb_loopback_B5_stall_region_out_intel_reserved_ffwd_99_0;
    wire [0:0] bb_loopback_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_loopback_B5_stall_region_out_stall_out;
    wire [0:0] bb_loopback_B5_stall_region_out_valid_out;
    wire [0:0] loopback_B5_branch_out_stall_out;
    wire [0:0] loopback_B5_branch_out_valid_out_0;
    wire [0:0] loopback_B5_branch_out_valid_out_1;
    wire [0:0] loopback_B5_merge_out_forked;
    wire [0:0] loopback_B5_merge_out_stall_out_0;
    wire [0:0] loopback_B5_merge_out_stall_out_1;
    wire [0:0] loopback_B5_merge_out_valid_out;


    // loopback_B5_branch(BLACKBOX,3)
    loopback_B5_branch theloopback_B5_branch (
        .in_c0_exe2807(bb_loopback_B5_stall_region_out_c0_exe2807),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_loopback_B5_stall_region_out_valid_out),
        .out_stall_out(loopback_B5_branch_out_stall_out),
        .out_valid_out_0(loopback_B5_branch_out_valid_out_0),
        .out_valid_out_1(loopback_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // loopback_B5_merge(BLACKBOX,4)
    loopback_B5_merge theloopback_B5_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_loopback_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(loopback_B5_merge_out_forked),
        .out_stall_out_0(loopback_B5_merge_out_stall_out_0),
        .out_stall_out_1(loopback_B5_merge_out_stall_out_1),
        .out_valid_out(loopback_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B5_stall_region(BLACKBOX,2)
    loopback_bb_B5_stall_region thebb_loopback_B5_stall_region (
        .in_forked(loopback_B5_merge_out_forked),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(loopback_B5_branch_out_stall_out),
        .in_valid_in(loopback_B5_merge_out_valid_out),
        .in_intel_reserved_ffwd_65_0_0_tpl(in_intel_reserved_ffwd_65_0_0_tpl),
        .in_intel_reserved_ffwd_65_0_1_tpl(in_intel_reserved_ffwd_65_0_1_tpl),
        .in_intel_reserved_ffwd_65_0_2_tpl(in_intel_reserved_ffwd_65_0_2_tpl),
        .in_intel_reserved_ffwd_65_0_3_tpl(in_intel_reserved_ffwd_65_0_3_tpl),
        .in_intel_reserved_ffwd_65_0_4_tpl(in_intel_reserved_ffwd_65_0_4_tpl),
        .in_intel_reserved_ffwd_65_0_5_tpl(in_intel_reserved_ffwd_65_0_5_tpl),
        .in_intel_reserved_ffwd_65_0_6_tpl(in_intel_reserved_ffwd_65_0_6_tpl),
        .in_intel_reserved_ffwd_66_0_0_tpl(in_intel_reserved_ffwd_66_0_0_tpl),
        .in_intel_reserved_ffwd_66_0_1_tpl(in_intel_reserved_ffwd_66_0_1_tpl),
        .in_intel_reserved_ffwd_66_0_2_tpl(in_intel_reserved_ffwd_66_0_2_tpl),
        .in_intel_reserved_ffwd_66_0_3_tpl(in_intel_reserved_ffwd_66_0_3_tpl),
        .in_intel_reserved_ffwd_66_0_4_tpl(in_intel_reserved_ffwd_66_0_4_tpl),
        .in_intel_reserved_ffwd_66_0_5_tpl(in_intel_reserved_ffwd_66_0_5_tpl),
        .in_intel_reserved_ffwd_66_0_6_tpl(in_intel_reserved_ffwd_66_0_6_tpl),
        .in_intel_reserved_ffwd_66_0_7_tpl(in_intel_reserved_ffwd_66_0_7_tpl),
        .in_intel_reserved_ffwd_67_0_0_tpl(in_intel_reserved_ffwd_67_0_0_tpl),
        .in_intel_reserved_ffwd_67_0_1_tpl(in_intel_reserved_ffwd_67_0_1_tpl),
        .in_intel_reserved_ffwd_67_0_2_tpl(in_intel_reserved_ffwd_67_0_2_tpl),
        .in_intel_reserved_ffwd_67_0_3_tpl(in_intel_reserved_ffwd_67_0_3_tpl),
        .in_intel_reserved_ffwd_67_0_4_tpl(in_intel_reserved_ffwd_67_0_4_tpl),
        .in_intel_reserved_ffwd_67_0_5_tpl(in_intel_reserved_ffwd_67_0_5_tpl),
        .in_intel_reserved_ffwd_67_0_6_tpl(in_intel_reserved_ffwd_67_0_6_tpl),
        .in_intel_reserved_ffwd_67_0_7_tpl(in_intel_reserved_ffwd_67_0_7_tpl),
        .in_intel_reserved_ffwd_68_0_0_tpl(in_intel_reserved_ffwd_68_0_0_tpl),
        .in_intel_reserved_ffwd_68_0_1_tpl(in_intel_reserved_ffwd_68_0_1_tpl),
        .in_intel_reserved_ffwd_68_0_2_tpl(in_intel_reserved_ffwd_68_0_2_tpl),
        .in_intel_reserved_ffwd_68_0_3_tpl(in_intel_reserved_ffwd_68_0_3_tpl),
        .in_intel_reserved_ffwd_68_0_4_tpl(in_intel_reserved_ffwd_68_0_4_tpl),
        .in_intel_reserved_ffwd_68_0_5_tpl(in_intel_reserved_ffwd_68_0_5_tpl),
        .in_intel_reserved_ffwd_68_0_6_tpl(in_intel_reserved_ffwd_68_0_6_tpl),
        .in_intel_reserved_ffwd_68_0_7_tpl(in_intel_reserved_ffwd_68_0_7_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out(bb_loopback_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out(bb_loopback_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out),
        .out_c0_exe2807(bb_loopback_B5_stall_region_out_c0_exe2807),
        .out_intel_reserved_ffwd_100_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_100_0),
        .out_intel_reserved_ffwd_69_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_80_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_90_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_92_0),
        .out_intel_reserved_ffwd_93_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_93_0),
        .out_intel_reserved_ffwd_94_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_94_0),
        .out_intel_reserved_ffwd_95_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_95_0),
        .out_intel_reserved_ffwd_96_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_96_0),
        .out_intel_reserved_ffwd_97_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_97_0),
        .out_intel_reserved_ffwd_98_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_98_0),
        .out_intel_reserved_ffwd_99_0(bb_loopback_B5_stall_region_out_intel_reserved_ffwd_99_0),
        .out_pipeline_valid_out(bb_loopback_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_loopback_B5_stall_region_out_stall_out),
        .out_valid_out(bb_loopback_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,5)
    assign out_exiting_stall_out = bb_loopback_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,6)
    assign out_exiting_valid_out = bb_loopback_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out;

    // out_intel_reserved_ffwd_100_0(GPOUT,7)
    assign out_intel_reserved_ffwd_100_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_100_0;

    // out_intel_reserved_ffwd_69_0(GPOUT,8)
    assign out_intel_reserved_ffwd_69_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_69_0;

    // out_intel_reserved_ffwd_70_0(GPOUT,9)
    assign out_intel_reserved_ffwd_70_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_70_0;

    // out_intel_reserved_ffwd_71_0(GPOUT,10)
    assign out_intel_reserved_ffwd_71_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_71_0;

    // out_intel_reserved_ffwd_72_0(GPOUT,11)
    assign out_intel_reserved_ffwd_72_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_72_0;

    // out_intel_reserved_ffwd_73_0(GPOUT,12)
    assign out_intel_reserved_ffwd_73_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_73_0;

    // out_intel_reserved_ffwd_74_0(GPOUT,13)
    assign out_intel_reserved_ffwd_74_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_74_0;

    // out_intel_reserved_ffwd_75_0(GPOUT,14)
    assign out_intel_reserved_ffwd_75_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_75_0;

    // out_intel_reserved_ffwd_76_0(GPOUT,15)
    assign out_intel_reserved_ffwd_76_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_76_0;

    // out_intel_reserved_ffwd_77_0(GPOUT,16)
    assign out_intel_reserved_ffwd_77_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_77_0;

    // out_intel_reserved_ffwd_78_0(GPOUT,17)
    assign out_intel_reserved_ffwd_78_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_78_0;

    // out_intel_reserved_ffwd_79_0(GPOUT,18)
    assign out_intel_reserved_ffwd_79_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_79_0;

    // out_intel_reserved_ffwd_80_0(GPOUT,19)
    assign out_intel_reserved_ffwd_80_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_80_0;

    // out_intel_reserved_ffwd_81_0(GPOUT,20)
    assign out_intel_reserved_ffwd_81_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_81_0;

    // out_intel_reserved_ffwd_82_0(GPOUT,21)
    assign out_intel_reserved_ffwd_82_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_82_0;

    // out_intel_reserved_ffwd_83_0(GPOUT,22)
    assign out_intel_reserved_ffwd_83_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_83_0;

    // out_intel_reserved_ffwd_84_0(GPOUT,23)
    assign out_intel_reserved_ffwd_84_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_84_0;

    // out_intel_reserved_ffwd_85_0(GPOUT,24)
    assign out_intel_reserved_ffwd_85_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_85_0;

    // out_intel_reserved_ffwd_86_0(GPOUT,25)
    assign out_intel_reserved_ffwd_86_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_86_0;

    // out_intel_reserved_ffwd_87_0(GPOUT,26)
    assign out_intel_reserved_ffwd_87_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_87_0;

    // out_intel_reserved_ffwd_88_0(GPOUT,27)
    assign out_intel_reserved_ffwd_88_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_88_0;

    // out_intel_reserved_ffwd_89_0(GPOUT,28)
    assign out_intel_reserved_ffwd_89_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_89_0;

    // out_intel_reserved_ffwd_90_0(GPOUT,29)
    assign out_intel_reserved_ffwd_90_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_90_0;

    // out_intel_reserved_ffwd_91_0(GPOUT,30)
    assign out_intel_reserved_ffwd_91_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_91_0;

    // out_intel_reserved_ffwd_92_0(GPOUT,31)
    assign out_intel_reserved_ffwd_92_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_92_0;

    // out_intel_reserved_ffwd_93_0(GPOUT,32)
    assign out_intel_reserved_ffwd_93_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_93_0;

    // out_intel_reserved_ffwd_94_0(GPOUT,33)
    assign out_intel_reserved_ffwd_94_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_94_0;

    // out_intel_reserved_ffwd_95_0(GPOUT,34)
    assign out_intel_reserved_ffwd_95_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_95_0;

    // out_intel_reserved_ffwd_96_0(GPOUT,35)
    assign out_intel_reserved_ffwd_96_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_96_0;

    // out_intel_reserved_ffwd_97_0(GPOUT,36)
    assign out_intel_reserved_ffwd_97_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_97_0;

    // out_intel_reserved_ffwd_98_0(GPOUT,37)
    assign out_intel_reserved_ffwd_98_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_98_0;

    // out_intel_reserved_ffwd_99_0(GPOUT,38)
    assign out_intel_reserved_ffwd_99_0 = bb_loopback_B5_stall_region_out_intel_reserved_ffwd_99_0;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = loopback_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = loopback_B5_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = loopback_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,42)
    assign out_valid_out_1 = loopback_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,44)
    assign out_pipeline_valid_out = bb_loopback_B5_stall_region_out_pipeline_valid_out;

endmodule
