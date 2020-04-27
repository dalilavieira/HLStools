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

// SystemVerilog created from kmeans_bb_B15_stall_region
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B15_stall_region (
    input wire [15:0] in_lm1_kmeans_avm_readdata,
    input wire [0:0] in_lm1_kmeans_avm_writeack,
    input wire [0:0] in_lm1_kmeans_avm_waitrequest,
    input wire [0:0] in_lm1_kmeans_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_flush,
    input wire [32:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [15:0] in_c_044_pop35138,
    input wire [0:0] in_forked111136,
    input wire [0:0] in_forked39,
    input wire [31:0] in_i27_047_pop32114_pop40142,
    input wire [31:0] in_i27_047_pop32132,
    input wire [31:0] in_mul46137,
    input wire [0:0] in_notcmp41139,
    input wire [0:0] in_notcmp46112_pop39141,
    input wire [0:0] in_notcmp46129,
    input wire [0:0] in_notcmp51108_pop33135,
    input wire [0:0] in_notcmp51109_pop38140,
    input wire [0:0] in_notcmp51125,
    input wire [0:0] in_unnamed_kmeans22,
    input wire [0:0] in_valid_in,
    input wire [15:0] in_lm252_kmeans_avm_readdata,
    input wire [0:0] in_lm252_kmeans_avm_writeack,
    input wire [0:0] in_lm252_kmeans_avm_waitrequest,
    input wire [0:0] in_lm252_kmeans_avm_readdatavalid,
    output wire [31:0] out_lm1_kmeans_avm_address,
    output wire [0:0] out_lm1_kmeans_avm_enable,
    output wire [0:0] out_lm1_kmeans_avm_read,
    output wire [0:0] out_lm1_kmeans_avm_write,
    output wire [15:0] out_lm1_kmeans_avm_writedata,
    output wire [1:0] out_lm1_kmeans_avm_byteenable,
    output wire [0:0] out_lm1_kmeans_avm_burstcount,
    output wire [0:0] out_c0_exe10259,
    output wire [31:0] out_c0_exe2251,
    output wire [0:0] out_c0_exe3252,
    output wire [15:0] out_c0_exe4253,
    output wire [0:0] out_c0_exe5254,
    output wire [0:0] out_c0_exe6255,
    output wire [0:0] out_c0_exe7256,
    output wire [15:0] out_c0_exe8257,
    output wire [0:0] out_c0_exe9258,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_lm252_kmeans_avm_address,
    output wire [0:0] out_lm252_kmeans_avm_enable,
    output wire [0:0] out_lm252_kmeans_avm_read,
    output wire [0:0] out_lm252_kmeans_avm_write,
    output wire [15:0] out_lm252_kmeans_avm_writedata,
    output wire [1:0] out_lm252_kmeans_avm_byteenable,
    output wire [0:0] out_lm252_kmeans_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_burstcount;
    wire [1:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_write;
    wire [15:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_burstcount;
    wire [1:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_write;
    wire [15:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_3_tpl;
    wire [15:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_7_tpl;
    wire [15:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_10_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [15:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] kmeans_B15_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [120:0] bubble_join_stall_entry_q;
    wire [15:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [69:0] bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_c;
    wire [15:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_g;
    wire [15:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_j;
    wire [120:0] bubble_join_kmeans_B15_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_h;
    wire [15:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_kmeans_B15_merge_reg_aunroll_x_n;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_V0;
    wire [0:0] SE_out_kmeans_B15_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kmeans_B15_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kmeans_B15_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,29)
    assign bubble_join_stall_entry_q = {in_unnamed_kmeans22, in_notcmp51125, in_notcmp51109_pop38140, in_notcmp51108_pop33135, in_notcmp46129, in_notcmp46112_pop39141, in_notcmp41139, in_mul46137, in_i27_047_pop32132, in_i27_047_pop32114_pop40142, in_forked39, in_forked111136, in_c_044_pop35138};

    // bubble_select_stall_entry(BITSELECT,30)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[15:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[16:16]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[17:17]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[49:18]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[81:50]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[113:82]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[114:114]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[115:115]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[116:116]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[117:117]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[118:118]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[119:119]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[120:120]);

    // SE_stall_entry(STALLENABLE,39)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kmeans_B15_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kmeans_B15_merge_reg_aunroll_x(BLACKBOX,27)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    kmeans_B15_merge_reg thekmeans_B15_merge_reg_aunroll_x (
        .in_stall_in(SE_out_kmeans_B15_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_m),
        .in_data_in_2_tpl(bubble_select_stall_entry_j),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_k),
        .in_data_in_5_tpl(bubble_select_stall_entry_c),
        .in_data_in_6_tpl(bubble_select_stall_entry_g),
        .in_data_in_7_tpl(bubble_select_stall_entry_b),
        .in_data_in_8_tpl(bubble_select_stall_entry_n),
        .in_data_in_9_tpl(bubble_select_stall_entry_h),
        .in_data_in_10_tpl(bubble_select_stall_entry_l),
        .in_data_in_11_tpl(bubble_select_stall_entry_i),
        .in_data_in_12_tpl(bubble_select_stall_entry_e),
        .out_stall_out(kmeans_B15_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kmeans_B15_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(kmeans_B15_merge_reg_aunroll_x_out_data_out_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_kmeans_B15_merge_reg_aunroll_x(BITJOIN,37)
    assign bubble_join_kmeans_B15_merge_reg_aunroll_x_q = {kmeans_B15_merge_reg_aunroll_x_out_data_out_12_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_11_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_10_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_9_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_8_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_7_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_6_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_5_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_4_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_3_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_2_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_1_tpl, kmeans_B15_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kmeans_B15_merge_reg_aunroll_x(BITSELECT,38)
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_b = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_c = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_d = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_e = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_f = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_g = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_h = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[68:37]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_i = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[84:69]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_j = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[85:85]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_k = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[86:86]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_l = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[87:87]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_m = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[88:88]);
    assign bubble_select_kmeans_B15_merge_reg_aunroll_x_n = $unsigned(bubble_join_kmeans_B15_merge_reg_aunroll_x_q[120:89]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_kmeans_B15_merge_reg_aunroll_x(STALLENABLE,44)
    // Valid signal propagation
    assign SE_out_kmeans_B15_merge_reg_aunroll_x_V0 = SE_out_kmeans_B15_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kmeans_B15_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_o_stall | ~ (SE_out_kmeans_B15_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kmeans_B15_merge_reg_aunroll_x_wireValid = kmeans_B15_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x(BLACKBOX,26)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out@20000000
    // out out_lm1_kmeans_avm_address@20000000
    // out out_lm1_kmeans_avm_burstcount@20000000
    // out out_lm1_kmeans_avm_byteenable@20000000
    // out out_lm1_kmeans_avm_enable@20000000
    // out out_lm1_kmeans_avm_read@20000000
    // out out_lm1_kmeans_avm_write@20000000
    // out out_lm1_kmeans_avm_writedata@20000000
    // out out_lm252_kmeans_avm_address@20000000
    // out out_lm252_kmeans_avm_burstcount@20000000
    // out out_lm252_kmeans_avm_byteenable@20000000
    // out out_lm252_kmeans_avm_enable@20000000
    // out out_lm252_kmeans_avm_read@20000000
    // out out_lm252_kmeans_avm_write@20000000
    // out out_lm252_kmeans_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit249_0_tpl@14
    // out out_c0_exit249_1_tpl@14
    // out out_c0_exit249_2_tpl@14
    // out out_c0_exit249_3_tpl@14
    // out out_c0_exit249_4_tpl@14
    // out out_c0_exit249_5_tpl@14
    // out out_c0_exit249_6_tpl@14
    // out out_c0_exit249_7_tpl@14
    // out out_c0_exit249_8_tpl@14
    // out out_c0_exit249_9_tpl@14
    // out out_c0_exit249_10_tpl@14
    // out out_c0_exit249_11_tpl@14
    // out out_c0_exit249_12_tpl@14
    // out out_c0_exit249_13_tpl@14
    // out out_c0_exit249_14_tpl@14
    kmeans_i_sfc_s_c0_in_for_body40_s_c0_enter23121_kmeans1 thei_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_backStall),
        .in_i_valid(SE_out_kmeans_B15_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm1_kmeans_avm_readdata(in_lm1_kmeans_avm_readdata),
        .in_lm1_kmeans_avm_readdatavalid(in_lm1_kmeans_avm_readdatavalid),
        .in_lm1_kmeans_avm_waitrequest(in_lm1_kmeans_avm_waitrequest),
        .in_lm1_kmeans_avm_writeack(in_lm1_kmeans_avm_writeack),
        .in_lm252_kmeans_avm_readdata(in_lm252_kmeans_avm_readdata),
        .in_lm252_kmeans_avm_readdatavalid(in_lm252_kmeans_avm_readdatavalid),
        .in_lm252_kmeans_avm_waitrequest(in_lm252_kmeans_avm_waitrequest),
        .in_lm252_kmeans_avm_writeack(in_lm252_kmeans_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_b),
        .in_c0_eni13_2_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_n),
        .in_c0_eni13_3_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_h),
        .in_c0_eni13_4_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_l),
        .in_c0_eni13_5_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_m),
        .in_c0_eni13_6_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_g),
        .in_c0_eni13_7_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_i),
        .in_c0_eni13_8_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_j),
        .in_c0_eni13_9_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_k),
        .in_c0_eni13_10_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_c),
        .in_c0_eni13_11_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_d),
        .in_c0_eni13_12_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_e),
        .in_c0_eni13_13_tpl(bubble_select_kmeans_B15_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out),
        .out_lm1_kmeans_avm_address(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_address),
        .out_lm1_kmeans_avm_burstcount(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_burstcount),
        .out_lm1_kmeans_avm_byteenable(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_byteenable),
        .out_lm1_kmeans_avm_enable(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_enable),
        .out_lm1_kmeans_avm_read(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_read),
        .out_lm1_kmeans_avm_write(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_write),
        .out_lm1_kmeans_avm_writedata(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_writedata),
        .out_lm252_kmeans_avm_address(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_address),
        .out_lm252_kmeans_avm_burstcount(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_burstcount),
        .out_lm252_kmeans_avm_byteenable(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_byteenable),
        .out_lm252_kmeans_avm_enable(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_enable),
        .out_lm252_kmeans_avm_read(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_read),
        .out_lm252_kmeans_avm_write(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_write),
        .out_lm252_kmeans_avm_writedata(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit249_0_tpl(),
        .out_c0_exit249_1_tpl(),
        .out_c0_exit249_2_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_2_tpl),
        .out_c0_exit249_3_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_3_tpl),
        .out_c0_exit249_4_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_4_tpl),
        .out_c0_exit249_5_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_5_tpl),
        .out_c0_exit249_6_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_6_tpl),
        .out_c0_exit249_7_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_7_tpl),
        .out_c0_exit249_8_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_8_tpl),
        .out_c0_exit249_9_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_9_tpl),
        .out_c0_exit249_10_tpl(i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_10_tpl),
        .out_c0_exit249_11_tpl(),
        .out_c0_exit249_12_tpl(),
        .out_c0_exit249_13_tpl(),
        .out_c0_exit249_14_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,23)
    assign out_lm1_kmeans_avm_address = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_address;
    assign out_lm1_kmeans_avm_enable = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_enable;
    assign out_lm1_kmeans_avm_read = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_read;
    assign out_lm1_kmeans_avm_write = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_write;
    assign out_lm1_kmeans_avm_writedata = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_writedata;
    assign out_lm1_kmeans_avm_byteenable = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_byteenable;
    assign out_lm1_kmeans_avm_burstcount = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm1_kmeans_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x(BITJOIN,33)
    assign bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q = {i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_10_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_9_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_8_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_7_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_6_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_5_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_4_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_3_tpl, i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_c0_exit249_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x(BITSELECT,34)
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[32:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[48:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[49:49]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[50:50]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[51:51]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[67:52]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_q[69:69]);

    // dupName_0_sync_out_x(GPOUT,24)@14
    assign out_c0_exe10259 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_j;
    assign out_c0_exe2251 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_b;
    assign out_c0_exe3252 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_c;
    assign out_c0_exe4253 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_d;
    assign out_c0_exe5254 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_e;
    assign out_c0_exe6255 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_f;
    assign out_c0_exe7256 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_g;
    assign out_c0_exe8257 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_h;
    assign out_c0_exe9258 = bubble_select_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,25)
    assign out_lm252_kmeans_avm_address = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_address;
    assign out_lm252_kmeans_avm_enable = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_enable;
    assign out_lm252_kmeans_avm_read = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_read;
    assign out_lm252_kmeans_avm_write = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_write;
    assign out_lm252_kmeans_avm_writedata = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_writedata;
    assign out_lm252_kmeans_avm_byteenable = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_byteenable;
    assign out_lm252_kmeans_avm_burstcount = i_sfc_s_c0_in_for_body40_kmeanss_c0_enter23121_kmeans1_aunroll_x_out_lm252_kmeans_avm_burstcount;

endmodule
