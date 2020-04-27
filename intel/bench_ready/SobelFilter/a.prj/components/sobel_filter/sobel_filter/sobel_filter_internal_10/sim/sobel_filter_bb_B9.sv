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

// SystemVerilog created from sobel_filter_bb_B9
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B9 (
    output wire [31:0] out_c0_exe2339,
    output wire [0:0] out_c0_exe4341,
    output wire [0:0] out_c0_exe5342,
    output wire [0:0] out_c0_exe6343,
    output wire [0:0] out_c0_exe7344,
    output wire [63:0] out_c0_exe8345,
    output wire [0:0] out_c0_exe9346,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_acl_113208_0,
    input wire [31:0] in_acl_113208_1,
    input wire [31:0] in_acl_114209_0,
    input wire [31:0] in_acl_114209_1,
    input wire [31:0] in_acl_207_0,
    input wire [31:0] in_acl_207_1,
    input wire [0:0] in_exitcond45161_pop32201_0,
    input wire [0:0] in_exitcond45161_pop32201_1,
    input wire [0:0] in_exitcond45162_pop37214_0,
    input wire [0:0] in_exitcond45162_pop37214_1,
    input wire [0:0] in_forked156157_pop31197_0,
    input wire [0:0] in_forked156157_pop31197_1,
    input wire [0:0] in_forked156158_pop36213_0,
    input wire [0:0] in_forked156158_pop36213_1,
    input wire [0:0] in_forked95_0,
    input wire [0:0] in_forked95_1,
    input wire [63:0] in_idxprom43_i_i210_0,
    input wire [63:0] in_idxprom43_i_i210_1,
    input wire [0:0] in_memdep_phi_pop27176_pop39216_0,
    input wire [0:0] in_memdep_phi_pop27176_pop39216_1,
    input wire [0:0] in_memdep_phi_pop27194_0,
    input wire [0:0] in_memdep_phi_pop27194_1,
    input wire [0:0] in_notcmp110212_0,
    input wire [0:0] in_notcmp110212_1,
    input wire [0:0] in_notcmp131168_pop33205_0,
    input wire [0:0] in_notcmp131168_pop33205_1,
    input wire [0:0] in_notcmp131169_pop38215_0,
    input wire [0:0] in_notcmp131169_pop38215_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_case_assign172211_0_0_tpl,
    input wire [31:0] in_case_assign172211_0_1_tpl,
    input wire [31:0] in_case_assign172211_0_2_tpl,
    input wire [31:0] in_case_assign172211_0_3_tpl,
    input wire [31:0] in_case_assign172211_0_4_tpl,
    input wire [31:0] in_case_assign172211_0_5_tpl,
    input wire [31:0] in_case_assign172211_1_0_tpl,
    input wire [31:0] in_case_assign172211_1_1_tpl,
    input wire [31:0] in_case_assign172211_1_2_tpl,
    input wire [31:0] in_case_assign172211_1_3_tpl,
    input wire [31:0] in_case_assign172211_1_4_tpl,
    input wire [31:0] in_case_assign172211_1_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out;
    wire [31:0] bb_sobel_filter_B9_stall_region_out_c0_exe2339;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_c0_exe3340;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_c0_exe4341;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_c0_exe5342;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_c0_exe6343;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_c0_exe7344;
    wire [63:0] bb_sobel_filter_B9_stall_region_out_c0_exe8345;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_c0_exe9346;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B9_stall_region_out_valid_out;
    wire [31:0] sobel_filter_B9_branch_out_c0_exe2339;
    wire [0:0] sobel_filter_B9_branch_out_c0_exe4341;
    wire [0:0] sobel_filter_B9_branch_out_c0_exe5342;
    wire [0:0] sobel_filter_B9_branch_out_c0_exe6343;
    wire [0:0] sobel_filter_B9_branch_out_c0_exe7344;
    wire [63:0] sobel_filter_B9_branch_out_c0_exe8345;
    wire [0:0] sobel_filter_B9_branch_out_c0_exe9346;
    wire [0:0] sobel_filter_B9_branch_out_stall_out;
    wire [0:0] sobel_filter_B9_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B9_branch_out_valid_out_1;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_acl_113208;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_acl_114209;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_acl_207;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_exitcond45161_pop32201;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_exitcond45162_pop37214;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_forked156157_pop31197;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_forked156158_pop36213;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_forked95;
    wire [63:0] sobel_filter_B9_merge_aunroll_x_out_idxprom43_i_i210;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_memdep_phi_pop27176_pop39216;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_memdep_phi_pop27194;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_notcmp110212;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_notcmp131168_pop33205;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_notcmp131169_pop38215;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_stall_out_0;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_stall_out_1;
    wire [0:0] sobel_filter_B9_merge_aunroll_x_out_valid_out;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_case_assign172211_0_tpl;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_case_assign172211_1_tpl;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_case_assign172211_2_tpl;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_case_assign172211_3_tpl;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_case_assign172211_4_tpl;
    wire [31:0] sobel_filter_B9_merge_aunroll_x_out_case_assign172211_5_tpl;


    // sobel_filter_B9_merge_aunroll_x(BLACKBOX,63)
    sobel_filter_B9_merge thesobel_filter_B9_merge_aunroll_x (
        .in_acl_113208_0(in_acl_113208_0),
        .in_acl_113208_1(in_acl_113208_1),
        .in_acl_114209_0(in_acl_114209_0),
        .in_acl_114209_1(in_acl_114209_1),
        .in_acl_207_0(in_acl_207_0),
        .in_acl_207_1(in_acl_207_1),
        .in_exitcond45161_pop32201_0(in_exitcond45161_pop32201_0),
        .in_exitcond45161_pop32201_1(in_exitcond45161_pop32201_1),
        .in_exitcond45162_pop37214_0(in_exitcond45162_pop37214_0),
        .in_exitcond45162_pop37214_1(in_exitcond45162_pop37214_1),
        .in_forked156157_pop31197_0(in_forked156157_pop31197_0),
        .in_forked156157_pop31197_1(in_forked156157_pop31197_1),
        .in_forked156158_pop36213_0(in_forked156158_pop36213_0),
        .in_forked156158_pop36213_1(in_forked156158_pop36213_1),
        .in_forked95_0(in_forked95_0),
        .in_forked95_1(in_forked95_1),
        .in_idxprom43_i_i210_0(in_idxprom43_i_i210_0),
        .in_idxprom43_i_i210_1(in_idxprom43_i_i210_1),
        .in_memdep_phi_pop27176_pop39216_0(in_memdep_phi_pop27176_pop39216_0),
        .in_memdep_phi_pop27176_pop39216_1(in_memdep_phi_pop27176_pop39216_1),
        .in_memdep_phi_pop27194_0(in_memdep_phi_pop27194_0),
        .in_memdep_phi_pop27194_1(in_memdep_phi_pop27194_1),
        .in_notcmp110212_0(in_notcmp110212_0),
        .in_notcmp110212_1(in_notcmp110212_1),
        .in_notcmp131168_pop33205_0(in_notcmp131168_pop33205_0),
        .in_notcmp131168_pop33205_1(in_notcmp131168_pop33205_1),
        .in_notcmp131169_pop38215_0(in_notcmp131169_pop38215_0),
        .in_notcmp131169_pop38215_1(in_notcmp131169_pop38215_1),
        .in_stall_in(bb_sobel_filter_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .in_case_assign172211_0_0_tpl(in_case_assign172211_0_0_tpl),
        .in_case_assign172211_0_1_tpl(in_case_assign172211_0_1_tpl),
        .in_case_assign172211_0_2_tpl(in_case_assign172211_0_2_tpl),
        .in_case_assign172211_0_3_tpl(in_case_assign172211_0_3_tpl),
        .in_case_assign172211_0_4_tpl(in_case_assign172211_0_4_tpl),
        .in_case_assign172211_0_5_tpl(in_case_assign172211_0_5_tpl),
        .in_case_assign172211_1_0_tpl(in_case_assign172211_1_0_tpl),
        .in_case_assign172211_1_1_tpl(in_case_assign172211_1_1_tpl),
        .in_case_assign172211_1_2_tpl(in_case_assign172211_1_2_tpl),
        .in_case_assign172211_1_3_tpl(in_case_assign172211_1_3_tpl),
        .in_case_assign172211_1_4_tpl(in_case_assign172211_1_4_tpl),
        .in_case_assign172211_1_5_tpl(in_case_assign172211_1_5_tpl),
        .out_acl_113208(sobel_filter_B9_merge_aunroll_x_out_acl_113208),
        .out_acl_114209(sobel_filter_B9_merge_aunroll_x_out_acl_114209),
        .out_acl_207(sobel_filter_B9_merge_aunroll_x_out_acl_207),
        .out_exitcond45161_pop32201(sobel_filter_B9_merge_aunroll_x_out_exitcond45161_pop32201),
        .out_exitcond45162_pop37214(sobel_filter_B9_merge_aunroll_x_out_exitcond45162_pop37214),
        .out_forked156157_pop31197(sobel_filter_B9_merge_aunroll_x_out_forked156157_pop31197),
        .out_forked156158_pop36213(sobel_filter_B9_merge_aunroll_x_out_forked156158_pop36213),
        .out_forked95(sobel_filter_B9_merge_aunroll_x_out_forked95),
        .out_idxprom43_i_i210(sobel_filter_B9_merge_aunroll_x_out_idxprom43_i_i210),
        .out_memdep_phi_pop27176_pop39216(sobel_filter_B9_merge_aunroll_x_out_memdep_phi_pop27176_pop39216),
        .out_memdep_phi_pop27194(sobel_filter_B9_merge_aunroll_x_out_memdep_phi_pop27194),
        .out_notcmp110212(sobel_filter_B9_merge_aunroll_x_out_notcmp110212),
        .out_notcmp131168_pop33205(sobel_filter_B9_merge_aunroll_x_out_notcmp131168_pop33205),
        .out_notcmp131169_pop38215(sobel_filter_B9_merge_aunroll_x_out_notcmp131169_pop38215),
        .out_stall_out_0(sobel_filter_B9_merge_aunroll_x_out_stall_out_0),
        .out_stall_out_1(sobel_filter_B9_merge_aunroll_x_out_stall_out_1),
        .out_valid_out(sobel_filter_B9_merge_aunroll_x_out_valid_out),
        .out_case_assign172211_0_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_0_tpl),
        .out_case_assign172211_1_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_1_tpl),
        .out_case_assign172211_2_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_2_tpl),
        .out_case_assign172211_3_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_3_tpl),
        .out_case_assign172211_4_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_4_tpl),
        .out_case_assign172211_5_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B9_stall_region(BLACKBOX,2)
    sobel_filter_bb_B9_stall_region thebb_sobel_filter_B9_stall_region (
        .in_acl_113208(sobel_filter_B9_merge_aunroll_x_out_acl_113208),
        .in_acl_114209(sobel_filter_B9_merge_aunroll_x_out_acl_114209),
        .in_acl_207(sobel_filter_B9_merge_aunroll_x_out_acl_207),
        .in_exitcond45161_pop32201(sobel_filter_B9_merge_aunroll_x_out_exitcond45161_pop32201),
        .in_exitcond45162_pop37214(sobel_filter_B9_merge_aunroll_x_out_exitcond45162_pop37214),
        .in_forked156157_pop31197(sobel_filter_B9_merge_aunroll_x_out_forked156157_pop31197),
        .in_forked156158_pop36213(sobel_filter_B9_merge_aunroll_x_out_forked156158_pop36213),
        .in_forked95(sobel_filter_B9_merge_aunroll_x_out_forked95),
        .in_idxprom43_i_i210(sobel_filter_B9_merge_aunroll_x_out_idxprom43_i_i210),
        .in_memdep_phi_pop27176_pop39216(sobel_filter_B9_merge_aunroll_x_out_memdep_phi_pop27176_pop39216),
        .in_memdep_phi_pop27194(sobel_filter_B9_merge_aunroll_x_out_memdep_phi_pop27194),
        .in_notcmp110212(sobel_filter_B9_merge_aunroll_x_out_notcmp110212),
        .in_notcmp131168_pop33205(sobel_filter_B9_merge_aunroll_x_out_notcmp131168_pop33205),
        .in_notcmp131169_pop38215(sobel_filter_B9_merge_aunroll_x_out_notcmp131169_pop38215),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_filter_B9_branch_out_stall_out),
        .in_valid_in(sobel_filter_B9_merge_aunroll_x_out_valid_out),
        .in_case_assign172211_0_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_0_tpl),
        .in_case_assign172211_1_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_1_tpl),
        .in_case_assign172211_2_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_2_tpl),
        .in_case_assign172211_3_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_3_tpl),
        .in_case_assign172211_4_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_4_tpl),
        .in_case_assign172211_5_tpl(sobel_filter_B9_merge_aunroll_x_out_case_assign172211_5_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out(bb_sobel_filter_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out(bb_sobel_filter_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out),
        .out_c0_exe2339(bb_sobel_filter_B9_stall_region_out_c0_exe2339),
        .out_c0_exe3340(bb_sobel_filter_B9_stall_region_out_c0_exe3340),
        .out_c0_exe4341(bb_sobel_filter_B9_stall_region_out_c0_exe4341),
        .out_c0_exe5342(bb_sobel_filter_B9_stall_region_out_c0_exe5342),
        .out_c0_exe6343(bb_sobel_filter_B9_stall_region_out_c0_exe6343),
        .out_c0_exe7344(bb_sobel_filter_B9_stall_region_out_c0_exe7344),
        .out_c0_exe8345(bb_sobel_filter_B9_stall_region_out_c0_exe8345),
        .out_c0_exe9346(bb_sobel_filter_B9_stall_region_out_c0_exe9346),
        .out_pipeline_valid_out(bb_sobel_filter_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_filter_B9_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B9_branch(BLACKBOX,18)
    sobel_filter_B9_branch thesobel_filter_B9_branch (
        .in_c0_exe2339(bb_sobel_filter_B9_stall_region_out_c0_exe2339),
        .in_c0_exe3340(bb_sobel_filter_B9_stall_region_out_c0_exe3340),
        .in_c0_exe4341(bb_sobel_filter_B9_stall_region_out_c0_exe4341),
        .in_c0_exe5342(bb_sobel_filter_B9_stall_region_out_c0_exe5342),
        .in_c0_exe6343(bb_sobel_filter_B9_stall_region_out_c0_exe6343),
        .in_c0_exe7344(bb_sobel_filter_B9_stall_region_out_c0_exe7344),
        .in_c0_exe8345(bb_sobel_filter_B9_stall_region_out_c0_exe8345),
        .in_c0_exe9346(bb_sobel_filter_B9_stall_region_out_c0_exe9346),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_filter_B9_stall_region_out_valid_out),
        .out_c0_exe2339(sobel_filter_B9_branch_out_c0_exe2339),
        .out_c0_exe4341(sobel_filter_B9_branch_out_c0_exe4341),
        .out_c0_exe5342(sobel_filter_B9_branch_out_c0_exe5342),
        .out_c0_exe6343(sobel_filter_B9_branch_out_c0_exe6343),
        .out_c0_exe7344(sobel_filter_B9_branch_out_c0_exe7344),
        .out_c0_exe8345(sobel_filter_B9_branch_out_c0_exe8345),
        .out_c0_exe9346(sobel_filter_B9_branch_out_c0_exe9346),
        .out_stall_out(sobel_filter_B9_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B9_branch_out_valid_out_0),
        .out_valid_out_1(sobel_filter_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2339(GPOUT,3)
    assign out_c0_exe2339 = sobel_filter_B9_branch_out_c0_exe2339;

    // out_c0_exe4341(GPOUT,4)
    assign out_c0_exe4341 = sobel_filter_B9_branch_out_c0_exe4341;

    // out_c0_exe5342(GPOUT,5)
    assign out_c0_exe5342 = sobel_filter_B9_branch_out_c0_exe5342;

    // out_c0_exe6343(GPOUT,6)
    assign out_c0_exe6343 = sobel_filter_B9_branch_out_c0_exe6343;

    // out_c0_exe7344(GPOUT,7)
    assign out_c0_exe7344 = sobel_filter_B9_branch_out_c0_exe7344;

    // out_c0_exe8345(GPOUT,8)
    assign out_c0_exe8345 = sobel_filter_B9_branch_out_c0_exe8345;

    // out_c0_exe9346(GPOUT,9)
    assign out_c0_exe9346 = sobel_filter_B9_branch_out_c0_exe9346;

    // out_exiting_stall_out(GPOUT,10)
    assign out_exiting_stall_out = bb_sobel_filter_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,11)
    assign out_exiting_valid_out = bb_sobel_filter_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = sobel_filter_B9_merge_aunroll_x_out_stall_out_0;

    // out_stall_out_1(GPOUT,13)
    assign out_stall_out_1 = sobel_filter_B9_merge_aunroll_x_out_stall_out_1;

    // out_valid_out_0(GPOUT,14)
    assign out_valid_out_0 = sobel_filter_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,15)
    assign out_valid_out_1 = sobel_filter_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,17)
    assign out_pipeline_valid_out = bb_sobel_filter_B9_stall_region_out_pipeline_valid_out;

endmodule
