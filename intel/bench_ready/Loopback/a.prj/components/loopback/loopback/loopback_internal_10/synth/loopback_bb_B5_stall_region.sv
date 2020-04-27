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

// SystemVerilog created from loopback_bb_B5_stall_region
// SystemVerilog created on Mon Apr 27 09:48:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_bb_B5_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
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
    input wire [15:0] in_intel_reserved_ffwd_1_0,
    input wire [15:0] in_intel_reserved_ffwd_33_0,
    input wire [15:0] in_intel_reserved_ffwd_34_0,
    input wire [15:0] in_intel_reserved_ffwd_35_0,
    output wire [15:0] out_intel_reserved_ffwd_100_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    output wire [15:0] out_intel_reserved_ffwd_69_0,
    output wire [0:0] out_c0_exe2807,
    output wire [0:0] out_valid_out,
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

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_100_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_69_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_70_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_71_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_72_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_75_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_76_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_77_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_78_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_79_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_80_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_81_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_82_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_83_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_84_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_85_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_86_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_87_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_88_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_89_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_90_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_91_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_92_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_93_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_94_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_95_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_96_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_97_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_98_0;
    wire [15:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_99_0;
    wire [0:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_c0_exit805_2_tpl;
    wire [0:0] loopback_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] loopback_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] loopback_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_b;
    wire [0:0] bubble_join_loopback_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_loopback_B5_merge_reg_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_V0;
    wire [0:0] SE_out_loopback_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_loopback_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_loopback_B5_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,90)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,91)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,100)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = loopback_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // loopback_B5_merge_reg_aunroll_x(BLACKBOX,84)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    loopback_B5_merge_reg theloopback_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_loopback_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(loopback_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(loopback_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(loopback_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_loopback_B5_merge_reg_aunroll_x(BITJOIN,98)
    assign bubble_join_loopback_B5_merge_reg_aunroll_x_q = loopback_B5_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_loopback_B5_merge_reg_aunroll_x(BITSELECT,99)
    assign bubble_select_loopback_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_loopback_B5_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_loopback_B5_merge_reg_aunroll_x(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_loopback_B5_merge_reg_aunroll_x_V0 = SE_out_loopback_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_loopback_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_o_stall | ~ (SE_out_loopback_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_loopback_B5_merge_reg_aunroll_x_wireValid = loopback_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x(STALLENABLE,103)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x(BLACKBOX,83)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_100_0@20000000
    // out out_intel_reserved_ffwd_69_0@20000000
    // out out_intel_reserved_ffwd_70_0@20000000
    // out out_intel_reserved_ffwd_71_0@20000000
    // out out_intel_reserved_ffwd_72_0@20000000
    // out out_intel_reserved_ffwd_73_0@20000000
    // out out_intel_reserved_ffwd_74_0@20000000
    // out out_intel_reserved_ffwd_75_0@20000000
    // out out_intel_reserved_ffwd_76_0@20000000
    // out out_intel_reserved_ffwd_77_0@20000000
    // out out_intel_reserved_ffwd_78_0@20000000
    // out out_intel_reserved_ffwd_79_0@20000000
    // out out_intel_reserved_ffwd_80_0@20000000
    // out out_intel_reserved_ffwd_81_0@20000000
    // out out_intel_reserved_ffwd_82_0@20000000
    // out out_intel_reserved_ffwd_83_0@20000000
    // out out_intel_reserved_ffwd_84_0@20000000
    // out out_intel_reserved_ffwd_85_0@20000000
    // out out_intel_reserved_ffwd_86_0@20000000
    // out out_intel_reserved_ffwd_87_0@20000000
    // out out_intel_reserved_ffwd_88_0@20000000
    // out out_intel_reserved_ffwd_89_0@20000000
    // out out_intel_reserved_ffwd_90_0@20000000
    // out out_intel_reserved_ffwd_91_0@20000000
    // out out_intel_reserved_ffwd_92_0@20000000
    // out out_intel_reserved_ffwd_93_0@20000000
    // out out_intel_reserved_ffwd_94_0@20000000
    // out out_intel_reserved_ffwd_95_0@20000000
    // out out_intel_reserved_ffwd_96_0@20000000
    // out out_intel_reserved_ffwd_97_0@20000000
    // out out_intel_reserved_ffwd_98_0@20000000
    // out out_intel_reserved_ffwd_99_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit805_0_tpl@6
    // out out_c0_exit805_1_tpl@6
    // out out_c0_exit805_2_tpl@6
    loopback_i_sfc_s_c0_in_for_body11_s_c0_enter8013_loopback1 thei_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_backStall),
        .in_i_valid(SE_out_loopback_B5_merge_reg_aunroll_x_V0),
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
        .in_c0_eni1800_0_tpl(GND_q),
        .in_c0_eni1800_1_tpl(bubble_select_loopback_B5_merge_reg_aunroll_x_b),
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
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out),
        .out_intel_reserved_ffwd_100_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_100_0),
        .out_intel_reserved_ffwd_69_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_80_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_90_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_92_0),
        .out_intel_reserved_ffwd_93_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_93_0),
        .out_intel_reserved_ffwd_94_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_94_0),
        .out_intel_reserved_ffwd_95_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_95_0),
        .out_intel_reserved_ffwd_96_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_96_0),
        .out_intel_reserved_ffwd_97_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_97_0),
        .out_intel_reserved_ffwd_98_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_98_0),
        .out_intel_reserved_ffwd_99_0(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_99_0),
        .out_o_stall(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit805_0_tpl(),
        .out_c0_exit805_1_tpl(),
        .out_c0_exit805_2_tpl(i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_c0_exit805_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,45)
    assign out_intel_reserved_ffwd_100_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_100_0;

    // sync_out(GPOUT,49)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,51)
    assign out_intel_reserved_ffwd_69_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_69_0;

    // bubble_join_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x(BITJOIN,94)
    assign bubble_join_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_q = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_c0_exit805_2_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x(BITSELECT,95)
    assign bubble_select_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,52)@6
    assign out_c0_exe2807 = bubble_select_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,53)
    assign out_intel_reserved_ffwd_70_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_70_0;

    // dupName_2_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_71_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_71_0;

    // dupName_3_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_72_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_72_0;

    // dupName_4_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_73_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_73_0;

    // dupName_5_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_74_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_74_0;

    // dupName_6_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_75_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_75_0;

    // dupName_7_regfree_osync_x(GPOUT,59)
    assign out_intel_reserved_ffwd_76_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_76_0;

    // dupName_8_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_77_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_77_0;

    // dupName_9_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_78_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_78_0;

    // dupName_10_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_79_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_79_0;

    // dupName_11_regfree_osync_x(GPOUT,63)
    assign out_intel_reserved_ffwd_80_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_80_0;

    // dupName_12_regfree_osync_x(GPOUT,64)
    assign out_intel_reserved_ffwd_81_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_81_0;

    // dupName_13_regfree_osync_x(GPOUT,65)
    assign out_intel_reserved_ffwd_82_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_82_0;

    // dupName_14_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_83_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_83_0;

    // dupName_15_regfree_osync_x(GPOUT,67)
    assign out_intel_reserved_ffwd_84_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_84_0;

    // dupName_16_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_85_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_85_0;

    // dupName_17_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_86_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_86_0;

    // dupName_18_regfree_osync_x(GPOUT,70)
    assign out_intel_reserved_ffwd_87_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_87_0;

    // dupName_19_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_88_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_88_0;

    // dupName_20_regfree_osync_x(GPOUT,72)
    assign out_intel_reserved_ffwd_89_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_89_0;

    // dupName_21_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_90_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_90_0;

    // dupName_22_regfree_osync_x(GPOUT,74)
    assign out_intel_reserved_ffwd_91_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_91_0;

    // dupName_23_regfree_osync_x(GPOUT,75)
    assign out_intel_reserved_ffwd_92_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_92_0;

    // dupName_24_regfree_osync_x(GPOUT,76)
    assign out_intel_reserved_ffwd_93_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_93_0;

    // dupName_25_regfree_osync_x(GPOUT,77)
    assign out_intel_reserved_ffwd_94_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_94_0;

    // dupName_26_regfree_osync_x(GPOUT,78)
    assign out_intel_reserved_ffwd_95_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_95_0;

    // dupName_27_regfree_osync_x(GPOUT,79)
    assign out_intel_reserved_ffwd_96_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_96_0;

    // dupName_28_regfree_osync_x(GPOUT,80)
    assign out_intel_reserved_ffwd_97_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_97_0;

    // dupName_29_regfree_osync_x(GPOUT,81)
    assign out_intel_reserved_ffwd_98_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_98_0;

    // dupName_30_regfree_osync_x(GPOUT,82)
    assign out_intel_reserved_ffwd_99_0 = i_sfc_s_c0_in_for_body11_loopbacks_c0_enter8013_loopback1_aunroll_x_out_intel_reserved_ffwd_99_0;

endmodule
