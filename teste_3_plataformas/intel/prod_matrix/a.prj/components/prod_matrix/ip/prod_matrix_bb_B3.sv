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

// SystemVerilog created from prod_matrix_bb_B3
// SystemVerilog created on Mon Apr  6 12:55:33 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_bb_B3 (
    input wire [0:0] in_feedback_in_15,
    output wire [0:0] out_feedback_stall_out_15,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_forked19_0,
    input wire [0:0] in_forked19_1,
    input wire [31:0] in_i_021_pop1146_0,
    input wire [31:0] in_i_021_pop1146_1,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_memdep_phi4_pop1249_0,
    input wire [0:0] in_memdep_phi4_pop1249_1,
    input wire [0:0] in_notcmp2643_0,
    input wire [0:0] in_notcmp2643_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_prod_matrix10_0,
    input wire [0:0] in_unnamed_prod_matrix10_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe179,
    output wire [0:0] out_c0_exe280,
    output wire [31:0] out_c0_exe381,
    output wire [0:0] out_c0_exe482,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi3_pop15,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_prod_matrix_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_stall_out;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_valid_out;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_c0_exe179;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_c0_exe280;
    wire [31:0] bb_prod_matrix_B3_stall_region_out_c0_exe381;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_c0_exe482;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_c0_exe5;
    wire [31:0] bb_prod_matrix_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_c0_exe7;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_feedback_stall_out_15;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_memdep_phi3_pop15;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_stall_out;
    wire [0:0] bb_prod_matrix_B3_stall_region_out_valid_out;
    wire [0:0] prod_matrix_B3_branch_out_c0_exe179;
    wire [0:0] prod_matrix_B3_branch_out_c0_exe280;
    wire [31:0] prod_matrix_B3_branch_out_c0_exe381;
    wire [0:0] prod_matrix_B3_branch_out_c0_exe482;
    wire [0:0] prod_matrix_B3_branch_out_c0_exe5;
    wire [31:0] prod_matrix_B3_branch_out_c0_exe6;
    wire [0:0] prod_matrix_B3_branch_out_c0_exe7;
    wire [0:0] prod_matrix_B3_branch_out_memdep_phi3_pop15;
    wire [0:0] prod_matrix_B3_branch_out_stall_out;
    wire [0:0] prod_matrix_B3_branch_out_valid_out_0;
    wire [0:0] prod_matrix_B3_merge_out_forked19;
    wire [31:0] prod_matrix_B3_merge_out_i_021_pop1146;
    wire [0:0] prod_matrix_B3_merge_out_memdep_phi4_pop1249;
    wire [0:0] prod_matrix_B3_merge_out_notcmp2643;
    wire [0:0] prod_matrix_B3_merge_out_stall_out_0;
    wire [0:0] prod_matrix_B3_merge_out_stall_out_1;
    wire [0:0] prod_matrix_B3_merge_out_unnamed_prod_matrix10;
    wire [0:0] prod_matrix_B3_merge_out_valid_out;


    // prod_matrix_B3_branch(BLACKBOX,36)
    prod_matrix_B3_branch theprod_matrix_B3_branch (
        .in_c0_exe179(bb_prod_matrix_B3_stall_region_out_c0_exe179),
        .in_c0_exe280(bb_prod_matrix_B3_stall_region_out_c0_exe280),
        .in_c0_exe381(bb_prod_matrix_B3_stall_region_out_c0_exe381),
        .in_c0_exe482(bb_prod_matrix_B3_stall_region_out_c0_exe482),
        .in_c0_exe5(bb_prod_matrix_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_prod_matrix_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_prod_matrix_B3_stall_region_out_c0_exe7),
        .in_memdep_phi3_pop15(bb_prod_matrix_B3_stall_region_out_memdep_phi3_pop15),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_prod_matrix_B3_stall_region_out_valid_out),
        .out_c0_exe179(prod_matrix_B3_branch_out_c0_exe179),
        .out_c0_exe280(prod_matrix_B3_branch_out_c0_exe280),
        .out_c0_exe381(prod_matrix_B3_branch_out_c0_exe381),
        .out_c0_exe482(prod_matrix_B3_branch_out_c0_exe482),
        .out_c0_exe5(prod_matrix_B3_branch_out_c0_exe5),
        .out_c0_exe6(prod_matrix_B3_branch_out_c0_exe6),
        .out_c0_exe7(prod_matrix_B3_branch_out_c0_exe7),
        .out_memdep_phi3_pop15(prod_matrix_B3_branch_out_memdep_phi3_pop15),
        .out_stall_out(prod_matrix_B3_branch_out_stall_out),
        .out_valid_out_0(prod_matrix_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // prod_matrix_B3_merge(BLACKBOX,37)
    prod_matrix_B3_merge theprod_matrix_B3_merge (
        .in_forked19_0(in_forked19_0),
        .in_forked19_1(in_forked19_1),
        .in_i_021_pop1146_0(in_i_021_pop1146_0),
        .in_i_021_pop1146_1(in_i_021_pop1146_1),
        .in_memdep_phi4_pop1249_0(in_memdep_phi4_pop1249_0),
        .in_memdep_phi4_pop1249_1(in_memdep_phi4_pop1249_1),
        .in_notcmp2643_0(in_notcmp2643_0),
        .in_notcmp2643_1(in_notcmp2643_1),
        .in_stall_in(bb_prod_matrix_B3_stall_region_out_stall_out),
        .in_unnamed_prod_matrix10_0(in_unnamed_prod_matrix10_0),
        .in_unnamed_prod_matrix10_1(in_unnamed_prod_matrix10_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked19(prod_matrix_B3_merge_out_forked19),
        .out_i_021_pop1146(prod_matrix_B3_merge_out_i_021_pop1146),
        .out_memdep_phi4_pop1249(prod_matrix_B3_merge_out_memdep_phi4_pop1249),
        .out_notcmp2643(prod_matrix_B3_merge_out_notcmp2643),
        .out_stall_out_0(prod_matrix_B3_merge_out_stall_out_0),
        .out_stall_out_1(prod_matrix_B3_merge_out_stall_out_1),
        .out_unnamed_prod_matrix10(prod_matrix_B3_merge_out_unnamed_prod_matrix10),
        .out_valid_out(prod_matrix_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B3_stall_region(BLACKBOX,2)
    prod_matrix_bb_B3_stall_region thebb_prod_matrix_B3_stall_region (
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_forked19(prod_matrix_B3_merge_out_forked19),
        .in_i_021_pop1146(prod_matrix_B3_merge_out_i_021_pop1146),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_memdep_phi4_pop1249(prod_matrix_B3_merge_out_memdep_phi4_pop1249),
        .in_notcmp2643(prod_matrix_B3_merge_out_notcmp2643),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(prod_matrix_B3_branch_out_stall_out),
        .in_unnamed_prod_matrix10(prod_matrix_B3_merge_out_unnamed_prod_matrix10),
        .in_valid_in(prod_matrix_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_stall_out(bb_prod_matrix_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_valid_out(bb_prod_matrix_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_valid_out),
        .out_c0_exe179(bb_prod_matrix_B3_stall_region_out_c0_exe179),
        .out_c0_exe280(bb_prod_matrix_B3_stall_region_out_c0_exe280),
        .out_c0_exe381(bb_prod_matrix_B3_stall_region_out_c0_exe381),
        .out_c0_exe482(bb_prod_matrix_B3_stall_region_out_c0_exe482),
        .out_c0_exe5(bb_prod_matrix_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_prod_matrix_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_prod_matrix_B3_stall_region_out_c0_exe7),
        .out_feedback_stall_out_15(bb_prod_matrix_B3_stall_region_out_feedback_stall_out_15),
        .out_memdep_phi3_pop15(bb_prod_matrix_B3_stall_region_out_memdep_phi3_pop15),
        .out_pipeline_valid_out(bb_prod_matrix_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_prod_matrix_B3_stall_region_out_stall_out),
        .out_valid_out(bb_prod_matrix_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_15_sync(GPOUT,4)
    assign out_feedback_stall_out_15 = bb_prod_matrix_B3_stall_region_out_feedback_stall_out_15;

    // out_c0_exe179(GPOUT,21)
    assign out_c0_exe179 = prod_matrix_B3_branch_out_c0_exe179;

    // out_c0_exe280(GPOUT,22)
    assign out_c0_exe280 = prod_matrix_B3_branch_out_c0_exe280;

    // out_c0_exe381(GPOUT,23)
    assign out_c0_exe381 = prod_matrix_B3_branch_out_c0_exe381;

    // out_c0_exe482(GPOUT,24)
    assign out_c0_exe482 = prod_matrix_B3_branch_out_c0_exe482;

    // out_c0_exe5(GPOUT,25)
    assign out_c0_exe5 = prod_matrix_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,26)
    assign out_c0_exe6 = prod_matrix_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,27)
    assign out_c0_exe7 = prod_matrix_B3_branch_out_c0_exe7;

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_prod_matrix_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_prod_matrix_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_valid_out;

    // out_memdep_phi3_pop15(GPOUT,30)
    assign out_memdep_phi3_pop15 = prod_matrix_B3_branch_out_memdep_phi3_pop15;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = prod_matrix_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = prod_matrix_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = prod_matrix_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,35)
    assign out_pipeline_valid_out = bb_prod_matrix_B3_stall_region_out_pipeline_valid_out;

endmodule
