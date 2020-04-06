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

// SystemVerilog created from bubbleSort_bb_B3
// SystemVerilog created on Mon Apr  6 11:16:20 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_bb_B3 (
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [32:0] out_c0_exe156,
    output wire [31:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi3_pop12,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bubbleSort_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_stall_out;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_valid_out;
    wire [32:0] bb_bubbleSort_B3_stall_region_out_c0_exe156;
    wire [31:0] bb_bubbleSort_B3_stall_region_out_c0_exe2;
    wire [31:0] bb_bubbleSort_B3_stall_region_out_c0_exe3;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_c0_exe4;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_c0_exe5;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_memdep_phi3_pop12;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_stall_out;
    wire [0:0] bb_bubbleSort_B3_stall_region_out_valid_out;
    wire [32:0] bubbleSort_B3_branch_out_c0_exe156;
    wire [31:0] bubbleSort_B3_branch_out_c0_exe2;
    wire [31:0] bubbleSort_B3_branch_out_c0_exe3;
    wire [0:0] bubbleSort_B3_branch_out_c0_exe4;
    wire [0:0] bubbleSort_B3_branch_out_c0_exe5;
    wire [0:0] bubbleSort_B3_branch_out_c0_exe6;
    wire [0:0] bubbleSort_B3_branch_out_memdep_phi3_pop12;
    wire [0:0] bubbleSort_B3_branch_out_stall_out;
    wire [0:0] bubbleSort_B3_branch_out_valid_out_0;
    wire [0:0] bubbleSort_B3_merge_out_forked;
    wire [0:0] bubbleSort_B3_merge_out_stall_out_0;
    wire [0:0] bubbleSort_B3_merge_out_stall_out_1;
    wire [0:0] bubbleSort_B3_merge_out_valid_out;


    // bubbleSort_B3_branch(BLACKBOX,3)
    bubbleSort_B3_branch thebubbleSort_B3_branch (
        .in_c0_exe156(bb_bubbleSort_B3_stall_region_out_c0_exe156),
        .in_c0_exe2(bb_bubbleSort_B3_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_bubbleSort_B3_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_bubbleSort_B3_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_bubbleSort_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_bubbleSort_B3_stall_region_out_c0_exe6),
        .in_memdep_phi3_pop12(bb_bubbleSort_B3_stall_region_out_memdep_phi3_pop12),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_bubbleSort_B3_stall_region_out_valid_out),
        .out_c0_exe156(bubbleSort_B3_branch_out_c0_exe156),
        .out_c0_exe2(bubbleSort_B3_branch_out_c0_exe2),
        .out_c0_exe3(bubbleSort_B3_branch_out_c0_exe3),
        .out_c0_exe4(bubbleSort_B3_branch_out_c0_exe4),
        .out_c0_exe5(bubbleSort_B3_branch_out_c0_exe5),
        .out_c0_exe6(bubbleSort_B3_branch_out_c0_exe6),
        .out_memdep_phi3_pop12(bubbleSort_B3_branch_out_memdep_phi3_pop12),
        .out_stall_out(bubbleSort_B3_branch_out_stall_out),
        .out_valid_out_0(bubbleSort_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bubbleSort_B3_merge(BLACKBOX,4)
    bubbleSort_B3_merge thebubbleSort_B3_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_bubbleSort_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(bubbleSort_B3_merge_out_forked),
        .out_stall_out_0(bubbleSort_B3_merge_out_stall_out_0),
        .out_stall_out_1(bubbleSort_B3_merge_out_stall_out_1),
        .out_valid_out(bubbleSort_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bubbleSort_B3_stall_region(BLACKBOX,2)
    bubbleSort_bb_B3_stall_region thebb_bubbleSort_B3_stall_region (
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_forked(bubbleSort_B3_merge_out_forked),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(bubbleSort_B3_branch_out_stall_out),
        .in_valid_in(bubbleSort_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_stall_out(bb_bubbleSort_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_valid_out(bb_bubbleSort_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_valid_out),
        .out_c0_exe156(bb_bubbleSort_B3_stall_region_out_c0_exe156),
        .out_c0_exe2(bb_bubbleSort_B3_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_bubbleSort_B3_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_bubbleSort_B3_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_bubbleSort_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_bubbleSort_B3_stall_region_out_c0_exe6),
        .out_feedback_stall_out_13(bb_bubbleSort_B3_stall_region_out_feedback_stall_out_13),
        .out_memdep_phi3_pop12(bb_bubbleSort_B3_stall_region_out_memdep_phi3_pop12),
        .out_pipeline_valid_out(bb_bubbleSort_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_bubbleSort_B3_stall_region_out_stall_out),
        .out_valid_out(bb_bubbleSort_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,6)
    assign out_feedback_stall_out_13 = bb_bubbleSort_B3_stall_region_out_feedback_stall_out_13;

    // out_c0_exe156(GPOUT,16)
    assign out_c0_exe156 = bubbleSort_B3_branch_out_c0_exe156;

    // out_c0_exe2(GPOUT,17)
    assign out_c0_exe2 = bubbleSort_B3_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,18)
    assign out_c0_exe3 = bubbleSort_B3_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,19)
    assign out_c0_exe4 = bubbleSort_B3_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,20)
    assign out_c0_exe5 = bubbleSort_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,21)
    assign out_c0_exe6 = bubbleSort_B3_branch_out_c0_exe6;

    // out_exiting_stall_out(GPOUT,22)
    assign out_exiting_stall_out = bb_bubbleSort_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,23)
    assign out_exiting_valid_out = bb_bubbleSort_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_valid_out;

    // out_memdep_phi3_pop12(GPOUT,24)
    assign out_memdep_phi3_pop12 = bubbleSort_B3_branch_out_memdep_phi3_pop12;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = bubbleSort_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = bubbleSort_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = bubbleSort_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = bb_bubbleSort_B3_stall_region_out_pipeline_valid_out;

endmodule
