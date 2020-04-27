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

// SystemVerilog created from sobel_filter_bb_B12
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B12 (
    input wire [0:0] in_exitcond45163_pop61221_0,
    input wire [0:0] in_exitcond45163_pop61221_1,
    input wire [0:0] in_forked156159_pop60218_0,
    input wire [0:0] in_forked156159_pop60218_1,
    input wire [0:0] in_forked79_0,
    input wire [0:0] in_forked79_1,
    input wire [0:0] in_notcmp131170_pop62224_0,
    input wire [0:0] in_notcmp131170_pop62224_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe3368,
    output wire [0:0] out_c0_exe4369,
    output wire [0:0] out_c0_exe5370,
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

    wire [0:0] bb_sobel_filter_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_c0_exe2367;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_c0_exe3368;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_c0_exe4369;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_c0_exe5370;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B12_stall_region_out_valid_out;
    wire [0:0] sobel_filter_B12_branch_out_c0_exe3368;
    wire [0:0] sobel_filter_B12_branch_out_c0_exe4369;
    wire [0:0] sobel_filter_B12_branch_out_c0_exe5370;
    wire [0:0] sobel_filter_B12_branch_out_stall_out;
    wire [0:0] sobel_filter_B12_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B12_branch_out_valid_out_1;
    wire [0:0] sobel_filter_B12_merge_out_exitcond45163_pop61221;
    wire [0:0] sobel_filter_B12_merge_out_forked156159_pop60218;
    wire [0:0] sobel_filter_B12_merge_out_forked79;
    wire [0:0] sobel_filter_B12_merge_out_notcmp131170_pop62224;
    wire [0:0] sobel_filter_B12_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B12_merge_out_stall_out_1;
    wire [0:0] sobel_filter_B12_merge_out_valid_out;


    // sobel_filter_B12_merge(BLACKBOX,27)
    sobel_filter_B12_merge thesobel_filter_B12_merge (
        .in_exitcond45163_pop61221_0(in_exitcond45163_pop61221_0),
        .in_exitcond45163_pop61221_1(in_exitcond45163_pop61221_1),
        .in_forked156159_pop60218_0(in_forked156159_pop60218_0),
        .in_forked156159_pop60218_1(in_forked156159_pop60218_1),
        .in_forked79_0(in_forked79_0),
        .in_forked79_1(in_forked79_1),
        .in_notcmp131170_pop62224_0(in_notcmp131170_pop62224_0),
        .in_notcmp131170_pop62224_1(in_notcmp131170_pop62224_1),
        .in_stall_in(bb_sobel_filter_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond45163_pop61221(sobel_filter_B12_merge_out_exitcond45163_pop61221),
        .out_forked156159_pop60218(sobel_filter_B12_merge_out_forked156159_pop60218),
        .out_forked79(sobel_filter_B12_merge_out_forked79),
        .out_notcmp131170_pop62224(sobel_filter_B12_merge_out_notcmp131170_pop62224),
        .out_stall_out_0(sobel_filter_B12_merge_out_stall_out_0),
        .out_stall_out_1(sobel_filter_B12_merge_out_stall_out_1),
        .out_valid_out(sobel_filter_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B12_stall_region(BLACKBOX,2)
    sobel_filter_bb_B12_stall_region thebb_sobel_filter_B12_stall_region (
        .in_exitcond45163_pop61221(sobel_filter_B12_merge_out_exitcond45163_pop61221),
        .in_forked156159_pop60218(sobel_filter_B12_merge_out_forked156159_pop60218),
        .in_forked79(sobel_filter_B12_merge_out_forked79),
        .in_notcmp131170_pop62224(sobel_filter_B12_merge_out_notcmp131170_pop62224),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_filter_B12_branch_out_stall_out),
        .in_valid_in(sobel_filter_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_stall_out(bb_sobel_filter_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_valid_out(bb_sobel_filter_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_valid_out),
        .out_c0_exe2367(bb_sobel_filter_B12_stall_region_out_c0_exe2367),
        .out_c0_exe3368(bb_sobel_filter_B12_stall_region_out_c0_exe3368),
        .out_c0_exe4369(bb_sobel_filter_B12_stall_region_out_c0_exe4369),
        .out_c0_exe5370(bb_sobel_filter_B12_stall_region_out_c0_exe5370),
        .out_pipeline_valid_out(bb_sobel_filter_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_filter_B12_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B12_branch(BLACKBOX,26)
    sobel_filter_B12_branch thesobel_filter_B12_branch (
        .in_c0_exe2367(bb_sobel_filter_B12_stall_region_out_c0_exe2367),
        .in_c0_exe3368(bb_sobel_filter_B12_stall_region_out_c0_exe3368),
        .in_c0_exe4369(bb_sobel_filter_B12_stall_region_out_c0_exe4369),
        .in_c0_exe5370(bb_sobel_filter_B12_stall_region_out_c0_exe5370),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_filter_B12_stall_region_out_valid_out),
        .out_c0_exe3368(sobel_filter_B12_branch_out_c0_exe3368),
        .out_c0_exe4369(sobel_filter_B12_branch_out_c0_exe4369),
        .out_c0_exe5370(sobel_filter_B12_branch_out_c0_exe5370),
        .out_stall_out(sobel_filter_B12_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B12_branch_out_valid_out_0),
        .out_valid_out_1(sobel_filter_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3368(GPOUT,15)
    assign out_c0_exe3368 = sobel_filter_B12_branch_out_c0_exe3368;

    // out_c0_exe4369(GPOUT,16)
    assign out_c0_exe4369 = sobel_filter_B12_branch_out_c0_exe4369;

    // out_c0_exe5370(GPOUT,17)
    assign out_c0_exe5370 = sobel_filter_B12_branch_out_c0_exe5370;

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_sobel_filter_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_sobel_filter_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_valid_out;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = sobel_filter_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,21)
    assign out_stall_out_1 = sobel_filter_B12_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,22)
    assign out_valid_out_0 = sobel_filter_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,23)
    assign out_valid_out_1 = sobel_filter_B12_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,25)
    assign out_pipeline_valid_out = bb_sobel_filter_B12_stall_region_out_pipeline_valid_out;

endmodule
