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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B2
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B2 (
    input wire [0:0] in_feedback_in_26,
    input wire [0:0] in_feedback_in_36,
    output wire [0:0] out_feedback_stall_out_26,
    output wire [0:0] out_feedback_stall_out_36,
    input wire [0:0] in_feedback_valid_in_26,
    input wire [0:0] in_feedback_valid_in_36,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe1423,
    output wire [63:0] out_c0_exe2,
    output wire [63:0] out_c0_exe3,
    output wire [63:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [63:0] out_c0_exe8,
    output wire [63:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi126_pop27,
    output wire [0:0] out_memdep_phi18_pop15,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out;
    wire [63:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe1423;
    wire [63:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe2;
    wire [63:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe3;
    wire [63:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe4;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe5;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe6;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe7;
    wire [63:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe8;
    wire [63:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe9;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_feedback_stall_out_26;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_feedback_stall_out_36;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_memdep_phi126_pop27;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_memdep_phi18_pop15;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B2_stall_region_out_valid_out;
    wire [63:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe1423;
    wire [63:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe2;
    wire [63:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe3;
    wire [63:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe4;
    wire [0:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe5;
    wire [0:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe6;
    wire [0:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe7;
    wire [63:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe8;
    wire [63:0] ff_rgb24toyv12_c_B2_branch_out_c0_exe9;
    wire [0:0] ff_rgb24toyv12_c_B2_branch_out_memdep_phi126_pop27;
    wire [0:0] ff_rgb24toyv12_c_B2_branch_out_memdep_phi18_pop15;
    wire [0:0] ff_rgb24toyv12_c_B2_branch_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B2_branch_out_valid_out_0;
    wire [0:0] ff_rgb24toyv12_c_B2_merge_out_forked;
    wire [0:0] ff_rgb24toyv12_c_B2_merge_out_stall_out_0;
    wire [0:0] ff_rgb24toyv12_c_B2_merge_out_stall_out_1;
    wire [0:0] ff_rgb24toyv12_c_B2_merge_out_valid_out;


    // ff_rgb24toyv12_c_B2_branch(BLACKBOX,9)
    ff_rgb24toyv12_c_B2_branch theff_rgb24toyv12_c_B2_branch (
        .in_c0_exe1423(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe1423),
        .in_c0_exe2(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe9),
        .in_memdep_phi126_pop27(bb_ff_rgb24toyv12_c_B2_stall_region_out_memdep_phi126_pop27),
        .in_memdep_phi18_pop15(bb_ff_rgb24toyv12_c_B2_stall_region_out_memdep_phi18_pop15),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ff_rgb24toyv12_c_B2_stall_region_out_valid_out),
        .out_c0_exe1423(ff_rgb24toyv12_c_B2_branch_out_c0_exe1423),
        .out_c0_exe2(ff_rgb24toyv12_c_B2_branch_out_c0_exe2),
        .out_c0_exe3(ff_rgb24toyv12_c_B2_branch_out_c0_exe3),
        .out_c0_exe4(ff_rgb24toyv12_c_B2_branch_out_c0_exe4),
        .out_c0_exe5(ff_rgb24toyv12_c_B2_branch_out_c0_exe5),
        .out_c0_exe6(ff_rgb24toyv12_c_B2_branch_out_c0_exe6),
        .out_c0_exe7(ff_rgb24toyv12_c_B2_branch_out_c0_exe7),
        .out_c0_exe8(ff_rgb24toyv12_c_B2_branch_out_c0_exe8),
        .out_c0_exe9(ff_rgb24toyv12_c_B2_branch_out_c0_exe9),
        .out_memdep_phi126_pop27(ff_rgb24toyv12_c_B2_branch_out_memdep_phi126_pop27),
        .out_memdep_phi18_pop15(ff_rgb24toyv12_c_B2_branch_out_memdep_phi18_pop15),
        .out_stall_out(ff_rgb24toyv12_c_B2_branch_out_stall_out),
        .out_valid_out_0(ff_rgb24toyv12_c_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_rgb24toyv12_c_B2_merge(BLACKBOX,10)
    ff_rgb24toyv12_c_B2_merge theff_rgb24toyv12_c_B2_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_ff_rgb24toyv12_c_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(ff_rgb24toyv12_c_B2_merge_out_forked),
        .out_stall_out_0(ff_rgb24toyv12_c_B2_merge_out_stall_out_0),
        .out_stall_out_1(ff_rgb24toyv12_c_B2_merge_out_stall_out_1),
        .out_valid_out(ff_rgb24toyv12_c_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_rgb24toyv12_c_B2_stall_region(BLACKBOX,2)
    ff_rgb24toyv12_c_bb_B2_stall_region thebb_ff_rgb24toyv12_c_B2_stall_region (
        .in_feedback_in_26(in_feedback_in_26),
        .in_feedback_in_36(in_feedback_in_36),
        .in_feedback_valid_in_26(in_feedback_valid_in_26),
        .in_feedback_valid_in_36(in_feedback_valid_in_36),
        .in_forked(ff_rgb24toyv12_c_B2_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(ff_rgb24toyv12_c_B2_branch_out_stall_out),
        .in_valid_in(ff_rgb24toyv12_c_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out(bb_ff_rgb24toyv12_c_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out(bb_ff_rgb24toyv12_c_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out),
        .out_c0_exe1423(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe1423),
        .out_c0_exe2(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_ff_rgb24toyv12_c_B2_stall_region_out_c0_exe9),
        .out_feedback_stall_out_26(bb_ff_rgb24toyv12_c_B2_stall_region_out_feedback_stall_out_26),
        .out_feedback_stall_out_36(bb_ff_rgb24toyv12_c_B2_stall_region_out_feedback_stall_out_36),
        .out_memdep_phi126_pop27(bb_ff_rgb24toyv12_c_B2_stall_region_out_memdep_phi126_pop27),
        .out_memdep_phi18_pop15(bb_ff_rgb24toyv12_c_B2_stall_region_out_memdep_phi18_pop15),
        .out_pipeline_valid_out(bb_ff_rgb24toyv12_c_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_ff_rgb24toyv12_c_B2_stall_region_out_stall_out),
        .out_valid_out(bb_ff_rgb24toyv12_c_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_26_sync(GPOUT,5)
    assign out_feedback_stall_out_26 = bb_ff_rgb24toyv12_c_B2_stall_region_out_feedback_stall_out_26;

    // feedback_stall_out_36_sync(GPOUT,6)
    assign out_feedback_stall_out_36 = bb_ff_rgb24toyv12_c_B2_stall_region_out_feedback_stall_out_36;

    // out_c0_exe1423(GPOUT,26)
    assign out_c0_exe1423 = ff_rgb24toyv12_c_B2_branch_out_c0_exe1423;

    // out_c0_exe2(GPOUT,27)
    assign out_c0_exe2 = ff_rgb24toyv12_c_B2_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,28)
    assign out_c0_exe3 = ff_rgb24toyv12_c_B2_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,29)
    assign out_c0_exe4 = ff_rgb24toyv12_c_B2_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,30)
    assign out_c0_exe5 = ff_rgb24toyv12_c_B2_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,31)
    assign out_c0_exe6 = ff_rgb24toyv12_c_B2_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,32)
    assign out_c0_exe7 = ff_rgb24toyv12_c_B2_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,33)
    assign out_c0_exe8 = ff_rgb24toyv12_c_B2_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,34)
    assign out_c0_exe9 = ff_rgb24toyv12_c_B2_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,35)
    assign out_exiting_stall_out = bb_ff_rgb24toyv12_c_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,36)
    assign out_exiting_valid_out = bb_ff_rgb24toyv12_c_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out;

    // out_memdep_phi126_pop27(GPOUT,37)
    assign out_memdep_phi126_pop27 = ff_rgb24toyv12_c_B2_branch_out_memdep_phi126_pop27;

    // out_memdep_phi18_pop15(GPOUT,38)
    assign out_memdep_phi18_pop15 = ff_rgb24toyv12_c_B2_branch_out_memdep_phi18_pop15;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = ff_rgb24toyv12_c_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = ff_rgb24toyv12_c_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = ff_rgb24toyv12_c_B2_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = bb_ff_rgb24toyv12_c_B2_stall_region_out_pipeline_valid_out;

endmodule
