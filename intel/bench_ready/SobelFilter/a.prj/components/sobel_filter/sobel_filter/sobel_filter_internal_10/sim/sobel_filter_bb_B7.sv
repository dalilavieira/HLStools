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

// SystemVerilog created from sobel_filter_bb_B7
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B7 (
    input wire [0:0] in_exitcond45190_0,
    input wire [0:0] in_exitcond45190_1,
    input wire [0:0] in_forked116_0,
    input wire [0:0] in_forked116_1,
    input wire [0:0] in_forked156189_0,
    input wire [0:0] in_forked156189_1,
    input wire [0:0] in_notcmp131191_0,
    input wire [0:0] in_notcmp131191_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe3292,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_c0_exe2291;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_c0_exe3292;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_c0_exe4;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_c0_exe5;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B7_stall_region_out_valid_out;
    wire [0:0] sobel_filter_B7_branch_out_c0_exe3292;
    wire [0:0] sobel_filter_B7_branch_out_c0_exe4;
    wire [0:0] sobel_filter_B7_branch_out_c0_exe5;
    wire [0:0] sobel_filter_B7_branch_out_stall_out;
    wire [0:0] sobel_filter_B7_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B7_branch_out_valid_out_1;
    wire [0:0] sobel_filter_B7_merge_out_exitcond45190;
    wire [0:0] sobel_filter_B7_merge_out_forked116;
    wire [0:0] sobel_filter_B7_merge_out_forked156189;
    wire [0:0] sobel_filter_B7_merge_out_notcmp131191;
    wire [0:0] sobel_filter_B7_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B7_merge_out_stall_out_1;
    wire [0:0] sobel_filter_B7_merge_out_valid_out;


    // sobel_filter_B7_merge(BLACKBOX,27)
    sobel_filter_B7_merge thesobel_filter_B7_merge (
        .in_exitcond45190_0(in_exitcond45190_0),
        .in_exitcond45190_1(in_exitcond45190_1),
        .in_forked116_0(in_forked116_0),
        .in_forked116_1(in_forked116_1),
        .in_forked156189_0(in_forked156189_0),
        .in_forked156189_1(in_forked156189_1),
        .in_notcmp131191_0(in_notcmp131191_0),
        .in_notcmp131191_1(in_notcmp131191_1),
        .in_stall_in(bb_sobel_filter_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond45190(sobel_filter_B7_merge_out_exitcond45190),
        .out_forked116(sobel_filter_B7_merge_out_forked116),
        .out_forked156189(sobel_filter_B7_merge_out_forked156189),
        .out_notcmp131191(sobel_filter_B7_merge_out_notcmp131191),
        .out_stall_out_0(sobel_filter_B7_merge_out_stall_out_0),
        .out_stall_out_1(sobel_filter_B7_merge_out_stall_out_1),
        .out_valid_out(sobel_filter_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B7_stall_region(BLACKBOX,2)
    sobel_filter_bb_B7_stall_region thebb_sobel_filter_B7_stall_region (
        .in_exitcond45190(sobel_filter_B7_merge_out_exitcond45190),
        .in_forked116(sobel_filter_B7_merge_out_forked116),
        .in_forked156189(sobel_filter_B7_merge_out_forked156189),
        .in_notcmp131191(sobel_filter_B7_merge_out_notcmp131191),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_filter_B7_branch_out_stall_out),
        .in_valid_in(sobel_filter_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_stall_out(bb_sobel_filter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_valid_out(bb_sobel_filter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_valid_out),
        .out_c0_exe2291(bb_sobel_filter_B7_stall_region_out_c0_exe2291),
        .out_c0_exe3292(bb_sobel_filter_B7_stall_region_out_c0_exe3292),
        .out_c0_exe4(bb_sobel_filter_B7_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_sobel_filter_B7_stall_region_out_c0_exe5),
        .out_pipeline_valid_out(bb_sobel_filter_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_filter_B7_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B7_branch(BLACKBOX,26)
    sobel_filter_B7_branch thesobel_filter_B7_branch (
        .in_c0_exe2291(bb_sobel_filter_B7_stall_region_out_c0_exe2291),
        .in_c0_exe3292(bb_sobel_filter_B7_stall_region_out_c0_exe3292),
        .in_c0_exe4(bb_sobel_filter_B7_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_sobel_filter_B7_stall_region_out_c0_exe5),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_filter_B7_stall_region_out_valid_out),
        .out_c0_exe3292(sobel_filter_B7_branch_out_c0_exe3292),
        .out_c0_exe4(sobel_filter_B7_branch_out_c0_exe4),
        .out_c0_exe5(sobel_filter_B7_branch_out_c0_exe5),
        .out_stall_out(sobel_filter_B7_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B7_branch_out_valid_out_0),
        .out_valid_out_1(sobel_filter_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3292(GPOUT,15)
    assign out_c0_exe3292 = sobel_filter_B7_branch_out_c0_exe3292;

    // out_c0_exe4(GPOUT,16)
    assign out_c0_exe4 = sobel_filter_B7_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,17)
    assign out_c0_exe5 = sobel_filter_B7_branch_out_c0_exe5;

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_sobel_filter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_sobel_filter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going119_sobel_filter6_exiting_valid_out;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = sobel_filter_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,21)
    assign out_stall_out_1 = sobel_filter_B7_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,22)
    assign out_valid_out_0 = sobel_filter_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,23)
    assign out_valid_out_1 = sobel_filter_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,25)
    assign out_pipeline_valid_out = bb_sobel_filter_B7_stall_region_out_pipeline_valid_out;

endmodule
