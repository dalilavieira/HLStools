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

// SystemVerilog created from claswp_bb_B5
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_bb_B5 (
    input wire [0:0] in_feedback_in_13,
    input wire [0:0] in_feedback_in_14,
    input wire [0:0] in_feedback_in_15,
    input wire [0:0] in_feedback_in_16,
    input wire [0:0] in_feedback_in_17,
    input wire [0:0] in_feedback_in_18,
    input wire [31:0] in_feedback_in_8,
    output wire [0:0] out_feedback_stall_out_13,
    output wire [0:0] out_feedback_stall_out_14,
    output wire [0:0] out_feedback_stall_out_15,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_17,
    output wire [0:0] out_feedback_stall_out_18,
    output wire [0:0] out_feedback_stall_out_8,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_feedback_valid_in_14,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_feedback_valid_in_18,
    input wire [0:0] in_feedback_valid_in_8,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_27_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_lm18611_claswp_avm_readdata,
    input wire [0:0] in_lm18611_claswp_avm_readdatavalid,
    input wire [0:0] in_lm18611_claswp_avm_waitrequest,
    input wire [0:0] in_lm18611_claswp_avm_writeack,
    input wire [63:0] in_lm19012_claswp_avm_readdata,
    input wire [0:0] in_lm19012_claswp_avm_readdatavalid,
    input wire [0:0] in_lm19012_claswp_avm_waitrequest,
    input wire [0:0] in_lm19012_claswp_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm18611,
    output wire [63:0] out_lm18611_claswp_avm_address,
    output wire [0:0] out_lm18611_claswp_avm_burstcount,
    output wire [7:0] out_lm18611_claswp_avm_byteenable,
    output wire [0:0] out_lm18611_claswp_avm_enable,
    output wire [0:0] out_lm18611_claswp_avm_read,
    output wire [0:0] out_lm18611_claswp_avm_write,
    output wire [63:0] out_lm18611_claswp_avm_writedata,
    output wire [31:0] out_lm19012,
    output wire [63:0] out_lm19012_claswp_avm_address,
    output wire [0:0] out_lm19012_claswp_avm_burstcount,
    output wire [7:0] out_lm19012_claswp_avm_byteenable,
    output wire [0:0] out_lm19012_claswp_avm_enable,
    output wire [0:0] out_lm19012_claswp_avm_read,
    output wire [0:0] out_lm19012_claswp_avm_write,
    output wire [63:0] out_lm19012_claswp_avm_writedata,
    output wire [0:0] out_memdep_phi103_pop16,
    output wire [0:0] out_memdep_phi120_pop17,
    output wire [0:0] out_memdep_phi136_pop18,
    output wire [0:0] out_memdep_phi57_pop10,
    output wire [0:0] out_memdep_phi72_pop13,
    output wire [0:0] out_memdep_phi88_pop15,
    output wire [0:0] out_reduction_claswp_33,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_claswp35,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_claswp_B5_stall_region_out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi;
    wire [0:0] bb_claswp_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out;
    wire [0:0] bb_claswp_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out;
    wire [31:0] bb_claswp_B5_stall_region_out_c0_exe1;
    wire [0:0] bb_claswp_B5_stall_region_out_c0_exe3;
    wire [0:0] bb_claswp_B5_stall_region_out_c0_exe4;
    wire [0:0] bb_claswp_B5_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_claswp_B5_stall_region_out_feedback_stall_out_14;
    wire [0:0] bb_claswp_B5_stall_region_out_feedback_stall_out_15;
    wire [0:0] bb_claswp_B5_stall_region_out_feedback_stall_out_16;
    wire [0:0] bb_claswp_B5_stall_region_out_feedback_stall_out_17;
    wire [0:0] bb_claswp_B5_stall_region_out_feedback_stall_out_18;
    wire [0:0] bb_claswp_B5_stall_region_out_feedback_stall_out_8;
    wire [31:0] bb_claswp_B5_stall_region_out_lm18611;
    wire [63:0] bb_claswp_B5_stall_region_out_lm18611_claswp_avm_address;
    wire [0:0] bb_claswp_B5_stall_region_out_lm18611_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B5_stall_region_out_lm18611_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B5_stall_region_out_lm18611_claswp_avm_enable;
    wire [0:0] bb_claswp_B5_stall_region_out_lm18611_claswp_avm_read;
    wire [0:0] bb_claswp_B5_stall_region_out_lm18611_claswp_avm_write;
    wire [63:0] bb_claswp_B5_stall_region_out_lm18611_claswp_avm_writedata;
    wire [31:0] bb_claswp_B5_stall_region_out_lm19012;
    wire [63:0] bb_claswp_B5_stall_region_out_lm19012_claswp_avm_address;
    wire [0:0] bb_claswp_B5_stall_region_out_lm19012_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B5_stall_region_out_lm19012_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B5_stall_region_out_lm19012_claswp_avm_enable;
    wire [0:0] bb_claswp_B5_stall_region_out_lm19012_claswp_avm_read;
    wire [0:0] bb_claswp_B5_stall_region_out_lm19012_claswp_avm_write;
    wire [63:0] bb_claswp_B5_stall_region_out_lm19012_claswp_avm_writedata;
    wire [0:0] bb_claswp_B5_stall_region_out_memdep_phi103_pop16;
    wire [0:0] bb_claswp_B5_stall_region_out_memdep_phi120_pop17;
    wire [0:0] bb_claswp_B5_stall_region_out_memdep_phi136_pop18;
    wire [0:0] bb_claswp_B5_stall_region_out_memdep_phi57_pop10;
    wire [0:0] bb_claswp_B5_stall_region_out_memdep_phi72_pop13;
    wire [0:0] bb_claswp_B5_stall_region_out_memdep_phi88_pop15;
    wire [0:0] bb_claswp_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_claswp_B5_stall_region_out_reduction_claswp_33;
    wire [0:0] bb_claswp_B5_stall_region_out_stall_out;
    wire [0:0] bb_claswp_B5_stall_region_out_unnamed_claswp35;
    wire [0:0] bb_claswp_B5_stall_region_out_valid_out;
    wire [31:0] claswp_B5_branch_out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi;
    wire [31:0] claswp_B5_branch_out_c0_exe1;
    wire [0:0] claswp_B5_branch_out_c0_exe3;
    wire [0:0] claswp_B5_branch_out_c0_exe4;
    wire [31:0] claswp_B5_branch_out_lm18611;
    wire [31:0] claswp_B5_branch_out_lm19012;
    wire [0:0] claswp_B5_branch_out_memdep_phi103_pop16;
    wire [0:0] claswp_B5_branch_out_memdep_phi120_pop17;
    wire [0:0] claswp_B5_branch_out_memdep_phi136_pop18;
    wire [0:0] claswp_B5_branch_out_memdep_phi57_pop10;
    wire [0:0] claswp_B5_branch_out_memdep_phi72_pop13;
    wire [0:0] claswp_B5_branch_out_memdep_phi88_pop15;
    wire [0:0] claswp_B5_branch_out_reduction_claswp_33;
    wire [0:0] claswp_B5_branch_out_stall_out;
    wire [0:0] claswp_B5_branch_out_unnamed_claswp35;
    wire [0:0] claswp_B5_branch_out_valid_out_0;
    wire [0:0] claswp_B5_merge_out_forked;
    wire [0:0] claswp_B5_merge_out_stall_out_0;
    wire [0:0] claswp_B5_merge_out_stall_out_1;
    wire [0:0] claswp_B5_merge_out_valid_out;


    // claswp_B5_branch(BLACKBOX,3)
    claswp_B5_branch theclaswp_B5_branch (
        .in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi(bb_claswp_B5_stall_region_out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi),
        .in_c0_exe1(bb_claswp_B5_stall_region_out_c0_exe1),
        .in_c0_exe3(bb_claswp_B5_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_claswp_B5_stall_region_out_c0_exe4),
        .in_lm18611(bb_claswp_B5_stall_region_out_lm18611),
        .in_lm19012(bb_claswp_B5_stall_region_out_lm19012),
        .in_memdep_phi103_pop16(bb_claswp_B5_stall_region_out_memdep_phi103_pop16),
        .in_memdep_phi120_pop17(bb_claswp_B5_stall_region_out_memdep_phi120_pop17),
        .in_memdep_phi136_pop18(bb_claswp_B5_stall_region_out_memdep_phi136_pop18),
        .in_memdep_phi57_pop10(bb_claswp_B5_stall_region_out_memdep_phi57_pop10),
        .in_memdep_phi72_pop13(bb_claswp_B5_stall_region_out_memdep_phi72_pop13),
        .in_memdep_phi88_pop15(bb_claswp_B5_stall_region_out_memdep_phi88_pop15),
        .in_reduction_claswp_33(bb_claswp_B5_stall_region_out_reduction_claswp_33),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_claswp35(bb_claswp_B5_stall_region_out_unnamed_claswp35),
        .in_valid_in(bb_claswp_B5_stall_region_out_valid_out),
        .out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi(claswp_B5_branch_out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi),
        .out_c0_exe1(claswp_B5_branch_out_c0_exe1),
        .out_c0_exe3(claswp_B5_branch_out_c0_exe3),
        .out_c0_exe4(claswp_B5_branch_out_c0_exe4),
        .out_lm18611(claswp_B5_branch_out_lm18611),
        .out_lm19012(claswp_B5_branch_out_lm19012),
        .out_memdep_phi103_pop16(claswp_B5_branch_out_memdep_phi103_pop16),
        .out_memdep_phi120_pop17(claswp_B5_branch_out_memdep_phi120_pop17),
        .out_memdep_phi136_pop18(claswp_B5_branch_out_memdep_phi136_pop18),
        .out_memdep_phi57_pop10(claswp_B5_branch_out_memdep_phi57_pop10),
        .out_memdep_phi72_pop13(claswp_B5_branch_out_memdep_phi72_pop13),
        .out_memdep_phi88_pop15(claswp_B5_branch_out_memdep_phi88_pop15),
        .out_reduction_claswp_33(claswp_B5_branch_out_reduction_claswp_33),
        .out_stall_out(claswp_B5_branch_out_stall_out),
        .out_unnamed_claswp35(claswp_B5_branch_out_unnamed_claswp35),
        .out_valid_out_0(claswp_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // claswp_B5_merge(BLACKBOX,4)
    claswp_B5_merge theclaswp_B5_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_claswp_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(claswp_B5_merge_out_forked),
        .out_stall_out_0(claswp_B5_merge_out_stall_out_0),
        .out_stall_out_1(claswp_B5_merge_out_stall_out_1),
        .out_valid_out(claswp_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_claswp_B5_stall_region(BLACKBOX,2)
    claswp_bb_B5_stall_region thebb_claswp_B5_stall_region (
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_in_14(in_feedback_in_14),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_in_8(in_feedback_in_8),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_feedback_valid_in_14(in_feedback_valid_in_14),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_feedback_valid_in_8(in_feedback_valid_in_8),
        .in_flush(in_flush),
        .in_forked(claswp_B5_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm18611_claswp_avm_readdata(in_lm18611_claswp_avm_readdata),
        .in_lm18611_claswp_avm_readdatavalid(in_lm18611_claswp_avm_readdatavalid),
        .in_lm18611_claswp_avm_waitrequest(in_lm18611_claswp_avm_waitrequest),
        .in_lm18611_claswp_avm_writeack(in_lm18611_claswp_avm_writeack),
        .in_lm19012_claswp_avm_readdata(in_lm19012_claswp_avm_readdata),
        .in_lm19012_claswp_avm_readdatavalid(in_lm19012_claswp_avm_readdatavalid),
        .in_lm19012_claswp_avm_waitrequest(in_lm19012_claswp_avm_waitrequest),
        .in_lm19012_claswp_avm_writeack(in_lm19012_claswp_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(claswp_B5_branch_out_stall_out),
        .in_valid_in(claswp_B5_merge_out_valid_out),
        .out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi(bb_claswp_B5_stall_region_out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out(bb_claswp_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out(bb_claswp_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out),
        .out_c0_exe1(bb_claswp_B5_stall_region_out_c0_exe1),
        .out_c0_exe3(bb_claswp_B5_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_claswp_B5_stall_region_out_c0_exe4),
        .out_feedback_stall_out_13(bb_claswp_B5_stall_region_out_feedback_stall_out_13),
        .out_feedback_stall_out_14(bb_claswp_B5_stall_region_out_feedback_stall_out_14),
        .out_feedback_stall_out_15(bb_claswp_B5_stall_region_out_feedback_stall_out_15),
        .out_feedback_stall_out_16(bb_claswp_B5_stall_region_out_feedback_stall_out_16),
        .out_feedback_stall_out_17(bb_claswp_B5_stall_region_out_feedback_stall_out_17),
        .out_feedback_stall_out_18(bb_claswp_B5_stall_region_out_feedback_stall_out_18),
        .out_feedback_stall_out_8(bb_claswp_B5_stall_region_out_feedback_stall_out_8),
        .out_lm18611(bb_claswp_B5_stall_region_out_lm18611),
        .out_lm18611_claswp_avm_address(bb_claswp_B5_stall_region_out_lm18611_claswp_avm_address),
        .out_lm18611_claswp_avm_burstcount(bb_claswp_B5_stall_region_out_lm18611_claswp_avm_burstcount),
        .out_lm18611_claswp_avm_byteenable(bb_claswp_B5_stall_region_out_lm18611_claswp_avm_byteenable),
        .out_lm18611_claswp_avm_enable(bb_claswp_B5_stall_region_out_lm18611_claswp_avm_enable),
        .out_lm18611_claswp_avm_read(bb_claswp_B5_stall_region_out_lm18611_claswp_avm_read),
        .out_lm18611_claswp_avm_write(bb_claswp_B5_stall_region_out_lm18611_claswp_avm_write),
        .out_lm18611_claswp_avm_writedata(bb_claswp_B5_stall_region_out_lm18611_claswp_avm_writedata),
        .out_lm19012(bb_claswp_B5_stall_region_out_lm19012),
        .out_lm19012_claswp_avm_address(bb_claswp_B5_stall_region_out_lm19012_claswp_avm_address),
        .out_lm19012_claswp_avm_burstcount(bb_claswp_B5_stall_region_out_lm19012_claswp_avm_burstcount),
        .out_lm19012_claswp_avm_byteenable(bb_claswp_B5_stall_region_out_lm19012_claswp_avm_byteenable),
        .out_lm19012_claswp_avm_enable(bb_claswp_B5_stall_region_out_lm19012_claswp_avm_enable),
        .out_lm19012_claswp_avm_read(bb_claswp_B5_stall_region_out_lm19012_claswp_avm_read),
        .out_lm19012_claswp_avm_write(bb_claswp_B5_stall_region_out_lm19012_claswp_avm_write),
        .out_lm19012_claswp_avm_writedata(bb_claswp_B5_stall_region_out_lm19012_claswp_avm_writedata),
        .out_memdep_phi103_pop16(bb_claswp_B5_stall_region_out_memdep_phi103_pop16),
        .out_memdep_phi120_pop17(bb_claswp_B5_stall_region_out_memdep_phi120_pop17),
        .out_memdep_phi136_pop18(bb_claswp_B5_stall_region_out_memdep_phi136_pop18),
        .out_memdep_phi57_pop10(bb_claswp_B5_stall_region_out_memdep_phi57_pop10),
        .out_memdep_phi72_pop13(bb_claswp_B5_stall_region_out_memdep_phi72_pop13),
        .out_memdep_phi88_pop15(bb_claswp_B5_stall_region_out_memdep_phi88_pop15),
        .out_pipeline_valid_out(bb_claswp_B5_stall_region_out_pipeline_valid_out),
        .out_reduction_claswp_33(bb_claswp_B5_stall_region_out_reduction_claswp_33),
        .out_stall_out(bb_claswp_B5_stall_region_out_stall_out),
        .out_unnamed_claswp35(bb_claswp_B5_stall_region_out_unnamed_claswp35),
        .out_valid_out(bb_claswp_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,12)
    assign out_feedback_stall_out_13 = bb_claswp_B5_stall_region_out_feedback_stall_out_13;

    // feedback_stall_out_14_sync(GPOUT,13)
    assign out_feedback_stall_out_14 = bb_claswp_B5_stall_region_out_feedback_stall_out_14;

    // feedback_stall_out_15_sync(GPOUT,14)
    assign out_feedback_stall_out_15 = bb_claswp_B5_stall_region_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,15)
    assign out_feedback_stall_out_16 = bb_claswp_B5_stall_region_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,16)
    assign out_feedback_stall_out_17 = bb_claswp_B5_stall_region_out_feedback_stall_out_17;

    // feedback_stall_out_18_sync(GPOUT,17)
    assign out_feedback_stall_out_18 = bb_claswp_B5_stall_region_out_feedback_stall_out_18;

    // feedback_stall_out_8_sync(GPOUT,18)
    assign out_feedback_stall_out_8 = bb_claswp_B5_stall_region_out_feedback_stall_out_8;

    // out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi(GPOUT,48)
    assign out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi = claswp_B5_branch_out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi;

    // out_c0_exe1(GPOUT,49)
    assign out_c0_exe1 = claswp_B5_branch_out_c0_exe1;

    // out_c0_exe3(GPOUT,50)
    assign out_c0_exe3 = claswp_B5_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,51)
    assign out_c0_exe4 = claswp_B5_branch_out_c0_exe4;

    // out_exiting_stall_out(GPOUT,52)
    assign out_exiting_stall_out = bb_claswp_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,53)
    assign out_exiting_valid_out = bb_claswp_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out;

    // out_lm18611(GPOUT,54)
    assign out_lm18611 = claswp_B5_branch_out_lm18611;

    // out_lm18611_claswp_avm_address(GPOUT,55)
    assign out_lm18611_claswp_avm_address = bb_claswp_B5_stall_region_out_lm18611_claswp_avm_address;

    // out_lm18611_claswp_avm_burstcount(GPOUT,56)
    assign out_lm18611_claswp_avm_burstcount = bb_claswp_B5_stall_region_out_lm18611_claswp_avm_burstcount;

    // out_lm18611_claswp_avm_byteenable(GPOUT,57)
    assign out_lm18611_claswp_avm_byteenable = bb_claswp_B5_stall_region_out_lm18611_claswp_avm_byteenable;

    // out_lm18611_claswp_avm_enable(GPOUT,58)
    assign out_lm18611_claswp_avm_enable = bb_claswp_B5_stall_region_out_lm18611_claswp_avm_enable;

    // out_lm18611_claswp_avm_read(GPOUT,59)
    assign out_lm18611_claswp_avm_read = bb_claswp_B5_stall_region_out_lm18611_claswp_avm_read;

    // out_lm18611_claswp_avm_write(GPOUT,60)
    assign out_lm18611_claswp_avm_write = bb_claswp_B5_stall_region_out_lm18611_claswp_avm_write;

    // out_lm18611_claswp_avm_writedata(GPOUT,61)
    assign out_lm18611_claswp_avm_writedata = bb_claswp_B5_stall_region_out_lm18611_claswp_avm_writedata;

    // out_lm19012(GPOUT,62)
    assign out_lm19012 = claswp_B5_branch_out_lm19012;

    // out_lm19012_claswp_avm_address(GPOUT,63)
    assign out_lm19012_claswp_avm_address = bb_claswp_B5_stall_region_out_lm19012_claswp_avm_address;

    // out_lm19012_claswp_avm_burstcount(GPOUT,64)
    assign out_lm19012_claswp_avm_burstcount = bb_claswp_B5_stall_region_out_lm19012_claswp_avm_burstcount;

    // out_lm19012_claswp_avm_byteenable(GPOUT,65)
    assign out_lm19012_claswp_avm_byteenable = bb_claswp_B5_stall_region_out_lm19012_claswp_avm_byteenable;

    // out_lm19012_claswp_avm_enable(GPOUT,66)
    assign out_lm19012_claswp_avm_enable = bb_claswp_B5_stall_region_out_lm19012_claswp_avm_enable;

    // out_lm19012_claswp_avm_read(GPOUT,67)
    assign out_lm19012_claswp_avm_read = bb_claswp_B5_stall_region_out_lm19012_claswp_avm_read;

    // out_lm19012_claswp_avm_write(GPOUT,68)
    assign out_lm19012_claswp_avm_write = bb_claswp_B5_stall_region_out_lm19012_claswp_avm_write;

    // out_lm19012_claswp_avm_writedata(GPOUT,69)
    assign out_lm19012_claswp_avm_writedata = bb_claswp_B5_stall_region_out_lm19012_claswp_avm_writedata;

    // out_memdep_phi103_pop16(GPOUT,70)
    assign out_memdep_phi103_pop16 = claswp_B5_branch_out_memdep_phi103_pop16;

    // out_memdep_phi120_pop17(GPOUT,71)
    assign out_memdep_phi120_pop17 = claswp_B5_branch_out_memdep_phi120_pop17;

    // out_memdep_phi136_pop18(GPOUT,72)
    assign out_memdep_phi136_pop18 = claswp_B5_branch_out_memdep_phi136_pop18;

    // out_memdep_phi57_pop10(GPOUT,73)
    assign out_memdep_phi57_pop10 = claswp_B5_branch_out_memdep_phi57_pop10;

    // out_memdep_phi72_pop13(GPOUT,74)
    assign out_memdep_phi72_pop13 = claswp_B5_branch_out_memdep_phi72_pop13;

    // out_memdep_phi88_pop15(GPOUT,75)
    assign out_memdep_phi88_pop15 = claswp_B5_branch_out_memdep_phi88_pop15;

    // out_reduction_claswp_33(GPOUT,76)
    assign out_reduction_claswp_33 = claswp_B5_branch_out_reduction_claswp_33;

    // out_stall_out_0(GPOUT,77)
    assign out_stall_out_0 = claswp_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,78)
    assign out_stall_out_1 = claswp_B5_merge_out_stall_out_1;

    // out_unnamed_claswp35(GPOUT,79)
    assign out_unnamed_claswp35 = claswp_B5_branch_out_unnamed_claswp35;

    // out_valid_out_0(GPOUT,80)
    assign out_valid_out_0 = claswp_B5_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = bb_claswp_B5_stall_region_out_pipeline_valid_out;

endmodule
