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

// SystemVerilog created from bubbleSort_bb_B4
// SystemVerilog created on Mon Apr  6 10:17:13 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_bb_B4 (
    input wire [31:0] in_add44_0,
    input wire [31:0] in_add44_1,
    input wire [0:0] in_demorgan46_0,
    input wire [0:0] in_demorgan46_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_i_023_pop1143_0,
    input wire [31:0] in_i_023_pop1143_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_lm1_bubbleSort_avm_readdata,
    input wire [0:0] in_lm1_bubbleSort_avm_readdatavalid,
    input wire [0:0] in_lm1_bubbleSort_avm_waitrequest,
    input wire [0:0] in_lm1_bubbleSort_avm_writeack,
    input wire [63:0] in_lm92_bubbleSort_avm_readdata,
    input wire [0:0] in_lm92_bubbleSort_avm_readdatavalid,
    input wire [0:0] in_lm92_bubbleSort_avm_waitrequest,
    input wire [0:0] in_lm92_bubbleSort_avm_writeack,
    input wire [63:0] in_memdep_5_bubbleSort_avm_readdata,
    input wire [0:0] in_memdep_5_bubbleSort_avm_readdatavalid,
    input wire [0:0] in_memdep_5_bubbleSort_avm_waitrequest,
    input wire [0:0] in_memdep_5_bubbleSort_avm_writeack,
    input wire [63:0] in_memdep_bubbleSort_avm_readdata,
    input wire [0:0] in_memdep_bubbleSort_avm_readdatavalid,
    input wire [0:0] in_memdep_bubbleSort_avm_waitrequest,
    input wire [0:0] in_memdep_bubbleSort_avm_writeack,
    input wire [0:0] in_memdep_phi3_pop1247_0,
    input wire [0:0] in_memdep_phi3_pop1247_1,
    input wire [0:0] in_memdep_phi7_pop1348_0,
    input wire [0:0] in_memdep_phi7_pop1348_1,
    input wire [0:0] in_notcmp3045_0,
    input wire [0:0] in_notcmp3045_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [32:0] in_unnamed_bubbleSort8_0,
    input wire [32:0] in_unnamed_bubbleSort8_1,
    input wire [0:0] in_unnamed_bubbleSort9_0,
    input wire [0:0] in_unnamed_bubbleSort9_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_lm1_bubbleSort_avm_address,
    output wire [0:0] out_lm1_bubbleSort_avm_burstcount,
    output wire [7:0] out_lm1_bubbleSort_avm_byteenable,
    output wire [0:0] out_lm1_bubbleSort_avm_enable,
    output wire [0:0] out_lm1_bubbleSort_avm_read,
    output wire [0:0] out_lm1_bubbleSort_avm_write,
    output wire [63:0] out_lm1_bubbleSort_avm_writedata,
    output wire [63:0] out_lm92_bubbleSort_avm_address,
    output wire [0:0] out_lm92_bubbleSort_avm_burstcount,
    output wire [7:0] out_lm92_bubbleSort_avm_byteenable,
    output wire [0:0] out_lm92_bubbleSort_avm_enable,
    output wire [0:0] out_lm92_bubbleSort_avm_read,
    output wire [0:0] out_lm92_bubbleSort_avm_write,
    output wire [63:0] out_lm92_bubbleSort_avm_writedata,
    output wire [0:0] out_lsu_memdep_5_o_active,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_5_bubbleSort_avm_address,
    output wire [0:0] out_memdep_5_bubbleSort_avm_burstcount,
    output wire [7:0] out_memdep_5_bubbleSort_avm_byteenable,
    output wire [0:0] out_memdep_5_bubbleSort_avm_enable,
    output wire [0:0] out_memdep_5_bubbleSort_avm_read,
    output wire [0:0] out_memdep_5_bubbleSort_avm_write,
    output wire [63:0] out_memdep_5_bubbleSort_avm_writedata,
    output wire [63:0] out_memdep_bubbleSort_avm_address,
    output wire [0:0] out_memdep_bubbleSort_avm_burstcount,
    output wire [7:0] out_memdep_bubbleSort_avm_byteenable,
    output wire [0:0] out_memdep_bubbleSort_avm_enable,
    output wire [0:0] out_memdep_bubbleSort_avm_read,
    output wire [0:0] out_memdep_bubbleSort_avm_write,
    output wire [63:0] out_memdep_bubbleSort_avm_writedata,
    output wire [0:0] out_notcmp3039_pop21,
    output wire [0:0] out_pop20,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bubbleSort_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_stall_out;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_valid_out;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_address;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_burstcount;
    wire [7:0] bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_byteenable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_enable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_read;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_write;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_writedata;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_address;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_burstcount;
    wire [7:0] bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_byteenable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_enable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_read;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_write;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_writedata;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lsu_memdep_5_o_active;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_masked;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_address;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_burstcount;
    wire [7:0] bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_byteenable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_enable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_read;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_write;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_writedata;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_address;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_burstcount;
    wire [7:0] bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_byteenable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_enable;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_read;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_write;
    wire [63:0] bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_writedata;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_notcmp3039_pop21;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_pop20;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_stall_out;
    wire [0:0] bb_bubbleSort_B4_stall_region_out_valid_out;
    wire [0:0] bubbleSort_B4_branch_out_memdep;
    wire [0:0] bubbleSort_B4_branch_out_notcmp3039_pop21;
    wire [0:0] bubbleSort_B4_branch_out_pop20;
    wire [0:0] bubbleSort_B4_branch_out_stall_out;
    wire [0:0] bubbleSort_B4_branch_out_valid_out_0;
    wire [0:0] bubbleSort_B4_branch_out_valid_out_1;
    wire [31:0] bubbleSort_B4_merge_out_add44;
    wire [0:0] bubbleSort_B4_merge_out_demorgan46;
    wire [0:0] bubbleSort_B4_merge_out_forked26;
    wire [31:0] bubbleSort_B4_merge_out_i_023_pop1143;
    wire [0:0] bubbleSort_B4_merge_out_memdep_phi3_pop1247;
    wire [0:0] bubbleSort_B4_merge_out_memdep_phi7_pop1348;
    wire [0:0] bubbleSort_B4_merge_out_notcmp3045;
    wire [0:0] bubbleSort_B4_merge_out_stall_out_0;
    wire [0:0] bubbleSort_B4_merge_out_stall_out_1;
    wire [32:0] bubbleSort_B4_merge_out_unnamed_bubbleSort8;
    wire [0:0] bubbleSort_B4_merge_out_unnamed_bubbleSort9;
    wire [0:0] bubbleSort_B4_merge_out_valid_out;


    // bubbleSort_B4_branch(BLACKBOX,3)
    bubbleSort_B4_branch thebubbleSort_B4_branch (
        .in_masked(bb_bubbleSort_B4_stall_region_out_masked),
        .in_memdep(bb_bubbleSort_B4_stall_region_out_memdep),
        .in_notcmp3039_pop21(bb_bubbleSort_B4_stall_region_out_notcmp3039_pop21),
        .in_pop20(bb_bubbleSort_B4_stall_region_out_pop20),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_bubbleSort_B4_stall_region_out_valid_out),
        .out_memdep(bubbleSort_B4_branch_out_memdep),
        .out_notcmp3039_pop21(bubbleSort_B4_branch_out_notcmp3039_pop21),
        .out_pop20(bubbleSort_B4_branch_out_pop20),
        .out_stall_out(bubbleSort_B4_branch_out_stall_out),
        .out_valid_out_0(bubbleSort_B4_branch_out_valid_out_0),
        .out_valid_out_1(bubbleSort_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bubbleSort_B4_merge(BLACKBOX,4)
    bubbleSort_B4_merge thebubbleSort_B4_merge (
        .in_add44_0(in_add44_0),
        .in_add44_1(in_add44_1),
        .in_demorgan46_0(in_demorgan46_0),
        .in_demorgan46_1(in_demorgan46_1),
        .in_forked26_0(in_forked26_0),
        .in_forked26_1(in_forked26_1),
        .in_i_023_pop1143_0(in_i_023_pop1143_0),
        .in_i_023_pop1143_1(in_i_023_pop1143_1),
        .in_memdep_phi3_pop1247_0(in_memdep_phi3_pop1247_0),
        .in_memdep_phi3_pop1247_1(in_memdep_phi3_pop1247_1),
        .in_memdep_phi7_pop1348_0(in_memdep_phi7_pop1348_0),
        .in_memdep_phi7_pop1348_1(in_memdep_phi7_pop1348_1),
        .in_notcmp3045_0(in_notcmp3045_0),
        .in_notcmp3045_1(in_notcmp3045_1),
        .in_stall_in(bb_bubbleSort_B4_stall_region_out_stall_out),
        .in_unnamed_bubbleSort8_0(in_unnamed_bubbleSort8_0),
        .in_unnamed_bubbleSort8_1(in_unnamed_bubbleSort8_1),
        .in_unnamed_bubbleSort9_0(in_unnamed_bubbleSort9_0),
        .in_unnamed_bubbleSort9_1(in_unnamed_bubbleSort9_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add44(bubbleSort_B4_merge_out_add44),
        .out_demorgan46(bubbleSort_B4_merge_out_demorgan46),
        .out_forked26(bubbleSort_B4_merge_out_forked26),
        .out_i_023_pop1143(bubbleSort_B4_merge_out_i_023_pop1143),
        .out_memdep_phi3_pop1247(bubbleSort_B4_merge_out_memdep_phi3_pop1247),
        .out_memdep_phi7_pop1348(bubbleSort_B4_merge_out_memdep_phi7_pop1348),
        .out_notcmp3045(bubbleSort_B4_merge_out_notcmp3045),
        .out_stall_out_0(bubbleSort_B4_merge_out_stall_out_0),
        .out_stall_out_1(bubbleSort_B4_merge_out_stall_out_1),
        .out_unnamed_bubbleSort8(bubbleSort_B4_merge_out_unnamed_bubbleSort8),
        .out_unnamed_bubbleSort9(bubbleSort_B4_merge_out_unnamed_bubbleSort9),
        .out_valid_out(bubbleSort_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bubbleSort_B4_stall_region(BLACKBOX,2)
    bubbleSort_bb_B4_stall_region thebb_bubbleSort_B4_stall_region (
        .in_add44(bubbleSort_B4_merge_out_add44),
        .in_demorgan46(bubbleSort_B4_merge_out_demorgan46),
        .in_flush(in_flush),
        .in_forked26(bubbleSort_B4_merge_out_forked26),
        .in_i_023_pop1143(bubbleSort_B4_merge_out_i_023_pop1143),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lm1_bubbleSort_avm_readdata(in_lm1_bubbleSort_avm_readdata),
        .in_lm1_bubbleSort_avm_readdatavalid(in_lm1_bubbleSort_avm_readdatavalid),
        .in_lm1_bubbleSort_avm_waitrequest(in_lm1_bubbleSort_avm_waitrequest),
        .in_lm1_bubbleSort_avm_writeack(in_lm1_bubbleSort_avm_writeack),
        .in_lm92_bubbleSort_avm_readdata(in_lm92_bubbleSort_avm_readdata),
        .in_lm92_bubbleSort_avm_readdatavalid(in_lm92_bubbleSort_avm_readdatavalid),
        .in_lm92_bubbleSort_avm_waitrequest(in_lm92_bubbleSort_avm_waitrequest),
        .in_lm92_bubbleSort_avm_writeack(in_lm92_bubbleSort_avm_writeack),
        .in_memdep_5_bubbleSort_avm_readdata(in_memdep_5_bubbleSort_avm_readdata),
        .in_memdep_5_bubbleSort_avm_readdatavalid(in_memdep_5_bubbleSort_avm_readdatavalid),
        .in_memdep_5_bubbleSort_avm_waitrequest(in_memdep_5_bubbleSort_avm_waitrequest),
        .in_memdep_5_bubbleSort_avm_writeack(in_memdep_5_bubbleSort_avm_writeack),
        .in_memdep_bubbleSort_avm_readdata(in_memdep_bubbleSort_avm_readdata),
        .in_memdep_bubbleSort_avm_readdatavalid(in_memdep_bubbleSort_avm_readdatavalid),
        .in_memdep_bubbleSort_avm_waitrequest(in_memdep_bubbleSort_avm_waitrequest),
        .in_memdep_bubbleSort_avm_writeack(in_memdep_bubbleSort_avm_writeack),
        .in_memdep_phi3_pop1247(bubbleSort_B4_merge_out_memdep_phi3_pop1247),
        .in_memdep_phi7_pop1348(bubbleSort_B4_merge_out_memdep_phi7_pop1348),
        .in_notcmp3045(bubbleSort_B4_merge_out_notcmp3045),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(bubbleSort_B4_branch_out_stall_out),
        .in_unnamed_bubbleSort8(bubbleSort_B4_merge_out_unnamed_bubbleSort8),
        .in_unnamed_bubbleSort9(bubbleSort_B4_merge_out_unnamed_bubbleSort9),
        .in_valid_in(bubbleSort_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_stall_out(bb_bubbleSort_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_valid_out(bb_bubbleSort_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_valid_out),
        .out_lm1_bubbleSort_avm_address(bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_address),
        .out_lm1_bubbleSort_avm_burstcount(bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_burstcount),
        .out_lm1_bubbleSort_avm_byteenable(bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_byteenable),
        .out_lm1_bubbleSort_avm_enable(bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_enable),
        .out_lm1_bubbleSort_avm_read(bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_read),
        .out_lm1_bubbleSort_avm_write(bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_write),
        .out_lm1_bubbleSort_avm_writedata(bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_writedata),
        .out_lm92_bubbleSort_avm_address(bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_address),
        .out_lm92_bubbleSort_avm_burstcount(bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_burstcount),
        .out_lm92_bubbleSort_avm_byteenable(bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_byteenable),
        .out_lm92_bubbleSort_avm_enable(bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_enable),
        .out_lm92_bubbleSort_avm_read(bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_read),
        .out_lm92_bubbleSort_avm_write(bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_write),
        .out_lm92_bubbleSort_avm_writedata(bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_writedata),
        .out_lsu_memdep_5_o_active(bb_bubbleSort_B4_stall_region_out_lsu_memdep_5_o_active),
        .out_lsu_memdep_o_active(bb_bubbleSort_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_bubbleSort_B4_stall_region_out_masked),
        .out_memdep(bb_bubbleSort_B4_stall_region_out_memdep),
        .out_memdep_5_bubbleSort_avm_address(bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_address),
        .out_memdep_5_bubbleSort_avm_burstcount(bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_burstcount),
        .out_memdep_5_bubbleSort_avm_byteenable(bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_byteenable),
        .out_memdep_5_bubbleSort_avm_enable(bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_enable),
        .out_memdep_5_bubbleSort_avm_read(bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_read),
        .out_memdep_5_bubbleSort_avm_write(bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_write),
        .out_memdep_5_bubbleSort_avm_writedata(bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_writedata),
        .out_memdep_bubbleSort_avm_address(bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_address),
        .out_memdep_bubbleSort_avm_burstcount(bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_burstcount),
        .out_memdep_bubbleSort_avm_byteenable(bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_byteenable),
        .out_memdep_bubbleSort_avm_enable(bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_enable),
        .out_memdep_bubbleSort_avm_read(bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_read),
        .out_memdep_bubbleSort_avm_write(bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_write),
        .out_memdep_bubbleSort_avm_writedata(bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_writedata),
        .out_notcmp3039_pop21(bb_bubbleSort_B4_stall_region_out_notcmp3039_pop21),
        .out_pipeline_valid_out(bb_bubbleSort_B4_stall_region_out_pipeline_valid_out),
        .out_pop20(bb_bubbleSort_B4_stall_region_out_pop20),
        .out_stall_out(bb_bubbleSort_B4_stall_region_out_stall_out),
        .out_valid_out(bb_bubbleSort_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,45)
    assign out_exiting_stall_out = bb_bubbleSort_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,46)
    assign out_exiting_valid_out = bb_bubbleSort_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_valid_out;

    // out_lm1_bubbleSort_avm_address(GPOUT,47)
    assign out_lm1_bubbleSort_avm_address = bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_address;

    // out_lm1_bubbleSort_avm_burstcount(GPOUT,48)
    assign out_lm1_bubbleSort_avm_burstcount = bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_burstcount;

    // out_lm1_bubbleSort_avm_byteenable(GPOUT,49)
    assign out_lm1_bubbleSort_avm_byteenable = bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_byteenable;

    // out_lm1_bubbleSort_avm_enable(GPOUT,50)
    assign out_lm1_bubbleSort_avm_enable = bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_enable;

    // out_lm1_bubbleSort_avm_read(GPOUT,51)
    assign out_lm1_bubbleSort_avm_read = bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_read;

    // out_lm1_bubbleSort_avm_write(GPOUT,52)
    assign out_lm1_bubbleSort_avm_write = bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_write;

    // out_lm1_bubbleSort_avm_writedata(GPOUT,53)
    assign out_lm1_bubbleSort_avm_writedata = bb_bubbleSort_B4_stall_region_out_lm1_bubbleSort_avm_writedata;

    // out_lm92_bubbleSort_avm_address(GPOUT,54)
    assign out_lm92_bubbleSort_avm_address = bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_address;

    // out_lm92_bubbleSort_avm_burstcount(GPOUT,55)
    assign out_lm92_bubbleSort_avm_burstcount = bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_burstcount;

    // out_lm92_bubbleSort_avm_byteenable(GPOUT,56)
    assign out_lm92_bubbleSort_avm_byteenable = bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_byteenable;

    // out_lm92_bubbleSort_avm_enable(GPOUT,57)
    assign out_lm92_bubbleSort_avm_enable = bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_enable;

    // out_lm92_bubbleSort_avm_read(GPOUT,58)
    assign out_lm92_bubbleSort_avm_read = bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_read;

    // out_lm92_bubbleSort_avm_write(GPOUT,59)
    assign out_lm92_bubbleSort_avm_write = bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_write;

    // out_lm92_bubbleSort_avm_writedata(GPOUT,60)
    assign out_lm92_bubbleSort_avm_writedata = bb_bubbleSort_B4_stall_region_out_lm92_bubbleSort_avm_writedata;

    // out_lsu_memdep_5_o_active(GPOUT,61)
    assign out_lsu_memdep_5_o_active = bb_bubbleSort_B4_stall_region_out_lsu_memdep_5_o_active;

    // out_lsu_memdep_o_active(GPOUT,62)
    assign out_lsu_memdep_o_active = bb_bubbleSort_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,63)
    assign out_memdep = bubbleSort_B4_branch_out_memdep;

    // out_memdep_5_bubbleSort_avm_address(GPOUT,64)
    assign out_memdep_5_bubbleSort_avm_address = bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_address;

    // out_memdep_5_bubbleSort_avm_burstcount(GPOUT,65)
    assign out_memdep_5_bubbleSort_avm_burstcount = bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_burstcount;

    // out_memdep_5_bubbleSort_avm_byteenable(GPOUT,66)
    assign out_memdep_5_bubbleSort_avm_byteenable = bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_byteenable;

    // out_memdep_5_bubbleSort_avm_enable(GPOUT,67)
    assign out_memdep_5_bubbleSort_avm_enable = bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_enable;

    // out_memdep_5_bubbleSort_avm_read(GPOUT,68)
    assign out_memdep_5_bubbleSort_avm_read = bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_read;

    // out_memdep_5_bubbleSort_avm_write(GPOUT,69)
    assign out_memdep_5_bubbleSort_avm_write = bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_write;

    // out_memdep_5_bubbleSort_avm_writedata(GPOUT,70)
    assign out_memdep_5_bubbleSort_avm_writedata = bb_bubbleSort_B4_stall_region_out_memdep_5_bubbleSort_avm_writedata;

    // out_memdep_bubbleSort_avm_address(GPOUT,71)
    assign out_memdep_bubbleSort_avm_address = bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_address;

    // out_memdep_bubbleSort_avm_burstcount(GPOUT,72)
    assign out_memdep_bubbleSort_avm_burstcount = bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_burstcount;

    // out_memdep_bubbleSort_avm_byteenable(GPOUT,73)
    assign out_memdep_bubbleSort_avm_byteenable = bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_byteenable;

    // out_memdep_bubbleSort_avm_enable(GPOUT,74)
    assign out_memdep_bubbleSort_avm_enable = bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_enable;

    // out_memdep_bubbleSort_avm_read(GPOUT,75)
    assign out_memdep_bubbleSort_avm_read = bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_read;

    // out_memdep_bubbleSort_avm_write(GPOUT,76)
    assign out_memdep_bubbleSort_avm_write = bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_write;

    // out_memdep_bubbleSort_avm_writedata(GPOUT,77)
    assign out_memdep_bubbleSort_avm_writedata = bb_bubbleSort_B4_stall_region_out_memdep_bubbleSort_avm_writedata;

    // out_notcmp3039_pop21(GPOUT,78)
    assign out_notcmp3039_pop21 = bubbleSort_B4_branch_out_notcmp3039_pop21;

    // out_pop20(GPOUT,79)
    assign out_pop20 = bubbleSort_B4_branch_out_pop20;

    // out_stall_out_0(GPOUT,80)
    assign out_stall_out_0 = bubbleSort_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,81)
    assign out_stall_out_1 = bubbleSort_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,82)
    assign out_valid_out_0 = bubbleSort_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,83)
    assign out_valid_out_1 = bubbleSort_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = bb_bubbleSort_B4_stall_region_out_pipeline_valid_out;

endmodule
