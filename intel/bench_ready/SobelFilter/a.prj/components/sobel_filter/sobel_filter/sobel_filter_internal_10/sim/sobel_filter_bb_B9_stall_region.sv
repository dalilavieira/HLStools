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

// SystemVerilog created from sobel_filter_bb_B9_stall_region
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B9_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_c0_exe2339,
    output wire [0:0] out_c0_exe3340,
    output wire [0:0] out_c0_exe4341,
    output wire [0:0] out_c0_exe5342,
    output wire [0:0] out_c0_exe6343,
    output wire [0:0] out_c0_exe7344,
    output wire [63:0] out_c0_exe8345,
    output wire [0:0] out_c0_exe9346,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_acl_113208,
    input wire [31:0] in_acl_114209,
    input wire [31:0] in_acl_207,
    input wire [31:0] in_case_assign172211_0_tpl,
    input wire [31:0] in_case_assign172211_1_tpl,
    input wire [31:0] in_case_assign172211_2_tpl,
    input wire [31:0] in_case_assign172211_3_tpl,
    input wire [31:0] in_case_assign172211_4_tpl,
    input wire [31:0] in_case_assign172211_5_tpl,
    input wire [0:0] in_exitcond45161_pop32201,
    input wire [0:0] in_exitcond45162_pop37214,
    input wire [0:0] in_forked156157_pop31197,
    input wire [0:0] in_forked156158_pop36213,
    input wire [0:0] in_forked95,
    input wire [63:0] in_idxprom43_i_i210,
    input wire [0:0] in_memdep_phi_pop27176_pop39216,
    input wire [0:0] in_memdep_phi_pop27194,
    input wire [0:0] in_notcmp110212,
    input wire [0:0] in_notcmp131168_pop33205,
    input wire [0:0] in_notcmp131169_pop38215,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_9_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [63:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] sobel_filter_B9_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [361:0] bubble_join_stall_entry_aunroll_q;
    wire [31:0] bubble_select_stall_entry_aunroll_b;
    wire [31:0] bubble_select_stall_entry_aunroll_c;
    wire [31:0] bubble_select_stall_entry_aunroll_d;
    wire [31:0] bubble_select_stall_entry_aunroll_e;
    wire [31:0] bubble_select_stall_entry_aunroll_f;
    wire [31:0] bubble_select_stall_entry_aunroll_g;
    wire [31:0] bubble_select_stall_entry_aunroll_h;
    wire [31:0] bubble_select_stall_entry_aunroll_i;
    wire [31:0] bubble_select_stall_entry_aunroll_j;
    wire [0:0] bubble_select_stall_entry_aunroll_k;
    wire [0:0] bubble_select_stall_entry_aunroll_l;
    wire [0:0] bubble_select_stall_entry_aunroll_m;
    wire [0:0] bubble_select_stall_entry_aunroll_n;
    wire [0:0] bubble_select_stall_entry_aunroll_o;
    wire [63:0] bubble_select_stall_entry_aunroll_p;
    wire [0:0] bubble_select_stall_entry_aunroll_q;
    wire [0:0] bubble_select_stall_entry_aunroll_r;
    wire [0:0] bubble_select_stall_entry_aunroll_s;
    wire [0:0] bubble_select_stall_entry_aunroll_t;
    wire [0:0] bubble_select_stall_entry_aunroll_u;
    wire [101:0] bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_i;
    wire [361:0] bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_i;
    wire [63:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_s;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_sobel_filter_B9_merge_reg_aunroll_x_u;
    wire [0:0] SE_stall_entry_aunroll_wireValid;
    wire [0:0] SE_stall_entry_aunroll_backStall;
    wire [0:0] SE_stall_entry_aunroll_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_V0;
    wire [0:0] SE_out_sobel_filter_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_sobel_filter_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_sobel_filter_B9_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry_aunroll(BITJOIN,21)
    assign bubble_join_stall_entry_aunroll_q = {in_notcmp131169_pop38215, in_notcmp131168_pop33205, in_notcmp110212, in_memdep_phi_pop27194, in_memdep_phi_pop27176_pop39216, in_idxprom43_i_i210, in_forked95, in_forked156158_pop36213, in_forked156157_pop31197, in_exitcond45162_pop37214, in_exitcond45161_pop32201, in_case_assign172211_5_tpl, in_case_assign172211_4_tpl, in_case_assign172211_3_tpl, in_case_assign172211_2_tpl, in_case_assign172211_1_tpl, in_case_assign172211_0_tpl, in_acl_207, in_acl_114209, in_acl_113208};

    // bubble_select_stall_entry_aunroll(BITSELECT,22)
    assign bubble_select_stall_entry_aunroll_b = $unsigned(bubble_join_stall_entry_aunroll_q[31:0]);
    assign bubble_select_stall_entry_aunroll_c = $unsigned(bubble_join_stall_entry_aunroll_q[63:32]);
    assign bubble_select_stall_entry_aunroll_d = $unsigned(bubble_join_stall_entry_aunroll_q[95:64]);
    assign bubble_select_stall_entry_aunroll_e = $unsigned(bubble_join_stall_entry_aunroll_q[127:96]);
    assign bubble_select_stall_entry_aunroll_f = $unsigned(bubble_join_stall_entry_aunroll_q[159:128]);
    assign bubble_select_stall_entry_aunroll_g = $unsigned(bubble_join_stall_entry_aunroll_q[191:160]);
    assign bubble_select_stall_entry_aunroll_h = $unsigned(bubble_join_stall_entry_aunroll_q[223:192]);
    assign bubble_select_stall_entry_aunroll_i = $unsigned(bubble_join_stall_entry_aunroll_q[255:224]);
    assign bubble_select_stall_entry_aunroll_j = $unsigned(bubble_join_stall_entry_aunroll_q[287:256]);
    assign bubble_select_stall_entry_aunroll_k = $unsigned(bubble_join_stall_entry_aunroll_q[288:288]);
    assign bubble_select_stall_entry_aunroll_l = $unsigned(bubble_join_stall_entry_aunroll_q[289:289]);
    assign bubble_select_stall_entry_aunroll_m = $unsigned(bubble_join_stall_entry_aunroll_q[290:290]);
    assign bubble_select_stall_entry_aunroll_n = $unsigned(bubble_join_stall_entry_aunroll_q[291:291]);
    assign bubble_select_stall_entry_aunroll_o = $unsigned(bubble_join_stall_entry_aunroll_q[292:292]);
    assign bubble_select_stall_entry_aunroll_p = $unsigned(bubble_join_stall_entry_aunroll_q[356:293]);
    assign bubble_select_stall_entry_aunroll_q = $unsigned(bubble_join_stall_entry_aunroll_q[357:357]);
    assign bubble_select_stall_entry_aunroll_r = $unsigned(bubble_join_stall_entry_aunroll_q[358:358]);
    assign bubble_select_stall_entry_aunroll_s = $unsigned(bubble_join_stall_entry_aunroll_q[359:359]);
    assign bubble_select_stall_entry_aunroll_t = $unsigned(bubble_join_stall_entry_aunroll_q[360:360]);
    assign bubble_select_stall_entry_aunroll_u = $unsigned(bubble_join_stall_entry_aunroll_q[361:361]);

    // SE_stall_entry_aunroll(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_aunroll_V0 = SE_stall_entry_aunroll_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_aunroll_backStall = sobel_filter_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_aunroll_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_aunroll_wireValid = in_valid_in;

    // sobel_filter_B9_merge_reg_aunroll_x(BLACKBOX,18)@0
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
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    sobel_filter_B9_merge_reg thesobel_filter_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_sobel_filter_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_aunroll_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_aunroll_o),
        .in_data_in_1_tpl(bubble_select_stall_entry_aunroll_r),
        .in_data_in_2_tpl(bubble_select_stall_entry_aunroll_m),
        .in_data_in_3_tpl(bubble_select_stall_entry_aunroll_k),
        .in_data_in_4_tpl(bubble_select_stall_entry_aunroll_t),
        .in_data_in_5_tpl(bubble_select_stall_entry_aunroll_d),
        .in_data_in_6_tpl(bubble_select_stall_entry_aunroll_b),
        .in_data_in_7_tpl(bubble_select_stall_entry_aunroll_c),
        .in_data_in_8_tpl(bubble_select_stall_entry_aunroll_p),
        .in_data_in_9_tpl(bubble_select_stall_entry_aunroll_e),
        .in_data_in_10_tpl(bubble_select_stall_entry_aunroll_f),
        .in_data_in_11_tpl(bubble_select_stall_entry_aunroll_g),
        .in_data_in_12_tpl(bubble_select_stall_entry_aunroll_h),
        .in_data_in_13_tpl(bubble_select_stall_entry_aunroll_i),
        .in_data_in_14_tpl(bubble_select_stall_entry_aunroll_j),
        .in_data_in_15_tpl(bubble_select_stall_entry_aunroll_s),
        .in_data_in_16_tpl(bubble_select_stall_entry_aunroll_n),
        .in_data_in_17_tpl(bubble_select_stall_entry_aunroll_l),
        .in_data_in_18_tpl(bubble_select_stall_entry_aunroll_u),
        .in_data_in_19_tpl(bubble_select_stall_entry_aunroll_q),
        .out_stall_out(sobel_filter_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(sobel_filter_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(sobel_filter_B9_merge_reg_aunroll_x_out_data_out_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_sobel_filter_B9_merge_reg_aunroll_x(BITJOIN,29)
    assign bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q = {sobel_filter_B9_merge_reg_aunroll_x_out_data_out_19_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_18_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_17_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_16_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_15_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_14_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_13_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_12_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_11_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_10_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_9_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_8_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_7_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_6_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_5_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_4_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_3_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_2_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_1_tpl, sobel_filter_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_sobel_filter_B9_merge_reg_aunroll_x(BITSELECT,30)
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[4:4]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[36:5]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_h = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[68:37]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_i = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[100:69]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_j = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[164:101]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_k = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[196:165]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_l = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[228:197]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_m = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[260:229]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_n = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[292:261]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_o = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[324:293]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_p = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[356:325]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_q = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[357:357]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_r = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[358:358]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_s = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[359:359]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_t = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[360:360]);
    assign bubble_select_sobel_filter_B9_merge_reg_aunroll_x_u = $unsigned(bubble_join_sobel_filter_B9_merge_reg_aunroll_x_q[361:361]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_sobel_filter_B9_merge_reg_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_sobel_filter_B9_merge_reg_aunroll_x_V0 = SE_out_sobel_filter_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_sobel_filter_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_o_stall | ~ (SE_out_sobel_filter_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_sobel_filter_B9_merge_reg_aunroll_x_wireValid = sobel_filter_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit337_0_tpl@10
    // out out_c0_exit337_1_tpl@10
    // out out_c0_exit337_2_tpl@10
    // out out_c0_exit337_3_tpl@10
    // out out_c0_exit337_4_tpl@10
    // out out_c0_exit337_5_tpl@10
    // out out_c0_exit337_6_tpl@10
    // out out_c0_exit337_7_tpl@10
    // out out_c0_exit337_8_tpl@10
    // out out_c0_exit337_9_tpl@10
    // out out_c0_exit337_10_tpl@10
    // out out_c0_exit337_11_tpl@10
    // out out_c0_exit337_12_tpl@10
    // out out_c0_exit337_13_tpl@10
    sobel_filter_i_sfc_s_c0_in_for_body_i_i_A000000Zr31837_sobel_filter1 thei_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_backStall),
        .in_i_valid(SE_out_sobel_filter_B9_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni15_0_tpl(GND_q),
        .in_c0_eni15_1_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_b),
        .in_c0_eni15_2_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_h),
        .in_c0_eni15_3_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_g),
        .in_c0_eni15_4_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_i),
        .in_c0_eni15_5_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_k),
        .in_c0_eni15_6_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_l),
        .in_c0_eni15_7_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_m),
        .in_c0_eni15_8_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_n),
        .in_c0_eni15_9_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_o),
        .in_c0_eni15_10_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_p),
        .in_c0_eni15_11_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_r),
        .in_c0_eni15_12_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_s),
        .in_c0_eni15_13_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_t),
        .in_c0_eni15_14_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_u),
        .in_c0_eni15_15_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_j),
        .in_c0_eni15_16_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_q),
        .in_c0_eni15_17_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_c),
        .in_c0_eni15_18_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_d),
        .in_c0_eni15_19_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_e),
        .in_c0_eni15_20_tpl(bubble_select_sobel_filter_B9_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit337_0_tpl(),
        .out_c0_exit337_1_tpl(),
        .out_c0_exit337_2_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_2_tpl),
        .out_c0_exit337_3_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_3_tpl),
        .out_c0_exit337_4_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_4_tpl),
        .out_c0_exit337_5_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_5_tpl),
        .out_c0_exit337_6_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_6_tpl),
        .out_c0_exit337_7_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_7_tpl),
        .out_c0_exit337_8_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_8_tpl),
        .out_c0_exit337_9_tpl(i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_9_tpl),
        .out_c0_exit337_10_tpl(),
        .out_c0_exit337_11_tpl(),
        .out_c0_exit337_12_tpl(),
        .out_c0_exit337_13_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out = i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out = i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_aunroll_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q = {i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_9_tpl, i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_8_tpl, i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_7_tpl, i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_6_tpl, i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_5_tpl, i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_4_tpl, i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_3_tpl, i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_out_c0_exit337_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[32:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[36:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[100:37]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_q[101:101]);

    // dupName_0_sync_out_x(GPOUT,16)@10
    assign out_c0_exe2339 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_b;
    assign out_c0_exe3340 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_c;
    assign out_c0_exe4341 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_d;
    assign out_c0_exe5342 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_e;
    assign out_c0_exe6343 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_f;
    assign out_c0_exe7344 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_g;
    assign out_c0_exe8345 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_h;
    assign out_c0_exe9346 = bubble_select_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body_i_i_for_body_i_i_crit_edge_sobel_filters_c0_enter31837_sobel_filter1_aunroll_x_V0;

endmodule
