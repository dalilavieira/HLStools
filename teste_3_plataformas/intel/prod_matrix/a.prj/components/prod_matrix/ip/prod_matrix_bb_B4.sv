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

// SystemVerilog created from prod_matrix_bb_B4
// SystemVerilog created on Mon Apr  6 10:28:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_bb_B4 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked18_0,
    input wire [0:0] in_forked18_1,
    input wire [31:0] in_i_021_pop1136_pop1857_0,
    input wire [31:0] in_i_021_pop1136_pop1857_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_j_018_pop1453_0,
    input wire [31:0] in_j_018_pop1453_1,
    input wire [63:0] in_lm1_prod_matrix_avm_readdata,
    input wire [0:0] in_lm1_prod_matrix_avm_readdatavalid,
    input wire [0:0] in_lm1_prod_matrix_avm_waitrequest,
    input wire [0:0] in_lm1_prod_matrix_avm_writeack,
    input wire [63:0] in_lm82_prod_matrix_avm_readdata,
    input wire [0:0] in_lm82_prod_matrix_avm_readdatavalid,
    input wire [0:0] in_lm82_prod_matrix_avm_waitrequest,
    input wire [0:0] in_lm82_prod_matrix_avm_writeack,
    input wire [0:0] in_memdep_phi3_pop1554_0,
    input wire [0:0] in_memdep_phi3_pop1554_1,
    input wire [0:0] in_memdep_phi4_pop1238_pop1958_0,
    input wire [0:0] in_memdep_phi4_pop1238_pop1958_1,
    input wire [63:0] in_memdep_prod_matrix_avm_readdata,
    input wire [0:0] in_memdep_prod_matrix_avm_readdatavalid,
    input wire [0:0] in_memdep_prod_matrix_avm_waitrequest,
    input wire [0:0] in_memdep_prod_matrix_avm_writeack,
    input wire [0:0] in_notcmp2252_0,
    input wire [0:0] in_notcmp2252_1,
    input wire [0:0] in_notcmp2634_pop1756_0,
    input wire [0:0] in_notcmp2634_pop1756_1,
    input wire [0:0] in_pop1655_0,
    input wire [0:0] in_pop1655_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_prod_matrix13_0,
    input wire [0:0] in_unnamed_prod_matrix13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_lm1_prod_matrix_avm_address,
    output wire [0:0] out_lm1_prod_matrix_avm_burstcount,
    output wire [7:0] out_lm1_prod_matrix_avm_byteenable,
    output wire [0:0] out_lm1_prod_matrix_avm_enable,
    output wire [0:0] out_lm1_prod_matrix_avm_read,
    output wire [0:0] out_lm1_prod_matrix_avm_write,
    output wire [63:0] out_lm1_prod_matrix_avm_writedata,
    output wire [63:0] out_lm82_prod_matrix_avm_address,
    output wire [0:0] out_lm82_prod_matrix_avm_burstcount,
    output wire [7:0] out_lm82_prod_matrix_avm_byteenable,
    output wire [0:0] out_lm82_prod_matrix_avm_enable,
    output wire [0:0] out_lm82_prod_matrix_avm_read,
    output wire [0:0] out_lm82_prod_matrix_avm_write,
    output wire [63:0] out_lm82_prod_matrix_avm_writedata,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_prod_matrix_avm_address,
    output wire [0:0] out_memdep_prod_matrix_avm_burstcount,
    output wire [7:0] out_memdep_prod_matrix_avm_byteenable,
    output wire [0:0] out_memdep_prod_matrix_avm_enable,
    output wire [0:0] out_memdep_prod_matrix_avm_read,
    output wire [0:0] out_memdep_prod_matrix_avm_write,
    output wire [63:0] out_memdep_prod_matrix_avm_writedata,
    output wire [0:0] out_notcmp2240_pop29,
    output wire [0:0] out_notcmp2635_pop25,
    output wire [0:0] out_pop24,
    output wire [0:0] out_pop28,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_prod_matrix_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_stall_out;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_valid_out;
    wire [63:0] bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_address;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_burstcount;
    wire [7:0] bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_byteenable;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_enable;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_read;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_write;
    wire [63:0] bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_writedata;
    wire [63:0] bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_address;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_burstcount;
    wire [7:0] bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_byteenable;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_enable;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_read;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_write;
    wire [63:0] bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_writedata;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_masked;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_memdep;
    wire [63:0] bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_address;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_burstcount;
    wire [7:0] bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_byteenable;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_enable;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_read;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_write;
    wire [63:0] bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_writedata;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_notcmp2240_pop29;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_notcmp2635_pop25;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_pop24;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_pop28;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_stall_out;
    wire [0:0] bb_prod_matrix_B4_stall_region_out_valid_out;
    wire [0:0] prod_matrix_B4_branch_out_memdep;
    wire [0:0] prod_matrix_B4_branch_out_notcmp2240_pop29;
    wire [0:0] prod_matrix_B4_branch_out_notcmp2635_pop25;
    wire [0:0] prod_matrix_B4_branch_out_pop24;
    wire [0:0] prod_matrix_B4_branch_out_pop28;
    wire [0:0] prod_matrix_B4_branch_out_stall_out;
    wire [0:0] prod_matrix_B4_branch_out_valid_out_0;
    wire [0:0] prod_matrix_B4_branch_out_valid_out_1;
    wire [0:0] prod_matrix_B4_merge_out_forked18;
    wire [31:0] prod_matrix_B4_merge_out_i_021_pop1136_pop1857;
    wire [31:0] prod_matrix_B4_merge_out_j_018_pop1453;
    wire [0:0] prod_matrix_B4_merge_out_memdep_phi3_pop1554;
    wire [0:0] prod_matrix_B4_merge_out_memdep_phi4_pop1238_pop1958;
    wire [0:0] prod_matrix_B4_merge_out_notcmp2252;
    wire [0:0] prod_matrix_B4_merge_out_notcmp2634_pop1756;
    wire [0:0] prod_matrix_B4_merge_out_pop1655;
    wire [0:0] prod_matrix_B4_merge_out_stall_out_0;
    wire [0:0] prod_matrix_B4_merge_out_stall_out_1;
    wire [0:0] prod_matrix_B4_merge_out_unnamed_prod_matrix13;
    wire [0:0] prod_matrix_B4_merge_out_valid_out;


    // prod_matrix_B4_branch(BLACKBOX,77)
    prod_matrix_B4_branch theprod_matrix_B4_branch (
        .in_masked(bb_prod_matrix_B4_stall_region_out_masked),
        .in_memdep(bb_prod_matrix_B4_stall_region_out_memdep),
        .in_notcmp2240_pop29(bb_prod_matrix_B4_stall_region_out_notcmp2240_pop29),
        .in_notcmp2635_pop25(bb_prod_matrix_B4_stall_region_out_notcmp2635_pop25),
        .in_pop24(bb_prod_matrix_B4_stall_region_out_pop24),
        .in_pop28(bb_prod_matrix_B4_stall_region_out_pop28),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_prod_matrix_B4_stall_region_out_valid_out),
        .out_memdep(prod_matrix_B4_branch_out_memdep),
        .out_notcmp2240_pop29(prod_matrix_B4_branch_out_notcmp2240_pop29),
        .out_notcmp2635_pop25(prod_matrix_B4_branch_out_notcmp2635_pop25),
        .out_pop24(prod_matrix_B4_branch_out_pop24),
        .out_pop28(prod_matrix_B4_branch_out_pop28),
        .out_stall_out(prod_matrix_B4_branch_out_stall_out),
        .out_valid_out_0(prod_matrix_B4_branch_out_valid_out_0),
        .out_valid_out_1(prod_matrix_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // prod_matrix_B4_merge(BLACKBOX,78)
    prod_matrix_B4_merge theprod_matrix_B4_merge (
        .in_forked18_0(in_forked18_0),
        .in_forked18_1(in_forked18_1),
        .in_i_021_pop1136_pop1857_0(in_i_021_pop1136_pop1857_0),
        .in_i_021_pop1136_pop1857_1(in_i_021_pop1136_pop1857_1),
        .in_j_018_pop1453_0(in_j_018_pop1453_0),
        .in_j_018_pop1453_1(in_j_018_pop1453_1),
        .in_memdep_phi3_pop1554_0(in_memdep_phi3_pop1554_0),
        .in_memdep_phi3_pop1554_1(in_memdep_phi3_pop1554_1),
        .in_memdep_phi4_pop1238_pop1958_0(in_memdep_phi4_pop1238_pop1958_0),
        .in_memdep_phi4_pop1238_pop1958_1(in_memdep_phi4_pop1238_pop1958_1),
        .in_notcmp2252_0(in_notcmp2252_0),
        .in_notcmp2252_1(in_notcmp2252_1),
        .in_notcmp2634_pop1756_0(in_notcmp2634_pop1756_0),
        .in_notcmp2634_pop1756_1(in_notcmp2634_pop1756_1),
        .in_pop1655_0(in_pop1655_0),
        .in_pop1655_1(in_pop1655_1),
        .in_stall_in(bb_prod_matrix_B4_stall_region_out_stall_out),
        .in_unnamed_prod_matrix13_0(in_unnamed_prod_matrix13_0),
        .in_unnamed_prod_matrix13_1(in_unnamed_prod_matrix13_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked18(prod_matrix_B4_merge_out_forked18),
        .out_i_021_pop1136_pop1857(prod_matrix_B4_merge_out_i_021_pop1136_pop1857),
        .out_j_018_pop1453(prod_matrix_B4_merge_out_j_018_pop1453),
        .out_memdep_phi3_pop1554(prod_matrix_B4_merge_out_memdep_phi3_pop1554),
        .out_memdep_phi4_pop1238_pop1958(prod_matrix_B4_merge_out_memdep_phi4_pop1238_pop1958),
        .out_notcmp2252(prod_matrix_B4_merge_out_notcmp2252),
        .out_notcmp2634_pop1756(prod_matrix_B4_merge_out_notcmp2634_pop1756),
        .out_pop1655(prod_matrix_B4_merge_out_pop1655),
        .out_stall_out_0(prod_matrix_B4_merge_out_stall_out_0),
        .out_stall_out_1(prod_matrix_B4_merge_out_stall_out_1),
        .out_unnamed_prod_matrix13(prod_matrix_B4_merge_out_unnamed_prod_matrix13),
        .out_valid_out(prod_matrix_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B4_stall_region(BLACKBOX,2)
    prod_matrix_bb_B4_stall_region thebb_prod_matrix_B4_stall_region (
        .in_flush(in_flush),
        .in_forked18(prod_matrix_B4_merge_out_forked18),
        .in_i_021_pop1136_pop1857(prod_matrix_B4_merge_out_i_021_pop1136_pop1857),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_j_018_pop1453(prod_matrix_B4_merge_out_j_018_pop1453),
        .in_lm1_prod_matrix_avm_readdata(in_lm1_prod_matrix_avm_readdata),
        .in_lm1_prod_matrix_avm_readdatavalid(in_lm1_prod_matrix_avm_readdatavalid),
        .in_lm1_prod_matrix_avm_waitrequest(in_lm1_prod_matrix_avm_waitrequest),
        .in_lm1_prod_matrix_avm_writeack(in_lm1_prod_matrix_avm_writeack),
        .in_lm82_prod_matrix_avm_readdata(in_lm82_prod_matrix_avm_readdata),
        .in_lm82_prod_matrix_avm_readdatavalid(in_lm82_prod_matrix_avm_readdatavalid),
        .in_lm82_prod_matrix_avm_waitrequest(in_lm82_prod_matrix_avm_waitrequest),
        .in_lm82_prod_matrix_avm_writeack(in_lm82_prod_matrix_avm_writeack),
        .in_memdep_phi3_pop1554(prod_matrix_B4_merge_out_memdep_phi3_pop1554),
        .in_memdep_phi4_pop1238_pop1958(prod_matrix_B4_merge_out_memdep_phi4_pop1238_pop1958),
        .in_memdep_prod_matrix_avm_readdata(in_memdep_prod_matrix_avm_readdata),
        .in_memdep_prod_matrix_avm_readdatavalid(in_memdep_prod_matrix_avm_readdatavalid),
        .in_memdep_prod_matrix_avm_waitrequest(in_memdep_prod_matrix_avm_waitrequest),
        .in_memdep_prod_matrix_avm_writeack(in_memdep_prod_matrix_avm_writeack),
        .in_notcmp2252(prod_matrix_B4_merge_out_notcmp2252),
        .in_notcmp2634_pop1756(prod_matrix_B4_merge_out_notcmp2634_pop1756),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop1655(prod_matrix_B4_merge_out_pop1655),
        .in_stall_in(prod_matrix_B4_branch_out_stall_out),
        .in_unnamed_prod_matrix13(prod_matrix_B4_merge_out_unnamed_prod_matrix13),
        .in_valid_in(prod_matrix_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_stall_out(bb_prod_matrix_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_valid_out(bb_prod_matrix_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_valid_out),
        .out_lm1_prod_matrix_avm_address(bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_address),
        .out_lm1_prod_matrix_avm_burstcount(bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_burstcount),
        .out_lm1_prod_matrix_avm_byteenable(bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_byteenable),
        .out_lm1_prod_matrix_avm_enable(bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_enable),
        .out_lm1_prod_matrix_avm_read(bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_read),
        .out_lm1_prod_matrix_avm_write(bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_write),
        .out_lm1_prod_matrix_avm_writedata(bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_writedata),
        .out_lm82_prod_matrix_avm_address(bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_address),
        .out_lm82_prod_matrix_avm_burstcount(bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_burstcount),
        .out_lm82_prod_matrix_avm_byteenable(bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_byteenable),
        .out_lm82_prod_matrix_avm_enable(bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_enable),
        .out_lm82_prod_matrix_avm_read(bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_read),
        .out_lm82_prod_matrix_avm_write(bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_write),
        .out_lm82_prod_matrix_avm_writedata(bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_writedata),
        .out_lsu_memdep_o_active(bb_prod_matrix_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_prod_matrix_B4_stall_region_out_masked),
        .out_memdep(bb_prod_matrix_B4_stall_region_out_memdep),
        .out_memdep_prod_matrix_avm_address(bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_address),
        .out_memdep_prod_matrix_avm_burstcount(bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_burstcount),
        .out_memdep_prod_matrix_avm_byteenable(bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_byteenable),
        .out_memdep_prod_matrix_avm_enable(bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_enable),
        .out_memdep_prod_matrix_avm_read(bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_read),
        .out_memdep_prod_matrix_avm_write(bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_write),
        .out_memdep_prod_matrix_avm_writedata(bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_writedata),
        .out_notcmp2240_pop29(bb_prod_matrix_B4_stall_region_out_notcmp2240_pop29),
        .out_notcmp2635_pop25(bb_prod_matrix_B4_stall_region_out_notcmp2635_pop25),
        .out_pipeline_valid_out(bb_prod_matrix_B4_stall_region_out_pipeline_valid_out),
        .out_pop24(bb_prod_matrix_B4_stall_region_out_pop24),
        .out_pop28(bb_prod_matrix_B4_stall_region_out_pop28),
        .out_stall_out(bb_prod_matrix_B4_stall_region_out_stall_out),
        .out_valid_out(bb_prod_matrix_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,42)
    assign out_exiting_stall_out = bb_prod_matrix_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,43)
    assign out_exiting_valid_out = bb_prod_matrix_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_valid_out;

    // out_lm1_prod_matrix_avm_address(GPOUT,44)
    assign out_lm1_prod_matrix_avm_address = bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_address;

    // out_lm1_prod_matrix_avm_burstcount(GPOUT,45)
    assign out_lm1_prod_matrix_avm_burstcount = bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_burstcount;

    // out_lm1_prod_matrix_avm_byteenable(GPOUT,46)
    assign out_lm1_prod_matrix_avm_byteenable = bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_byteenable;

    // out_lm1_prod_matrix_avm_enable(GPOUT,47)
    assign out_lm1_prod_matrix_avm_enable = bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_enable;

    // out_lm1_prod_matrix_avm_read(GPOUT,48)
    assign out_lm1_prod_matrix_avm_read = bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_read;

    // out_lm1_prod_matrix_avm_write(GPOUT,49)
    assign out_lm1_prod_matrix_avm_write = bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_write;

    // out_lm1_prod_matrix_avm_writedata(GPOUT,50)
    assign out_lm1_prod_matrix_avm_writedata = bb_prod_matrix_B4_stall_region_out_lm1_prod_matrix_avm_writedata;

    // out_lm82_prod_matrix_avm_address(GPOUT,51)
    assign out_lm82_prod_matrix_avm_address = bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_address;

    // out_lm82_prod_matrix_avm_burstcount(GPOUT,52)
    assign out_lm82_prod_matrix_avm_burstcount = bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_burstcount;

    // out_lm82_prod_matrix_avm_byteenable(GPOUT,53)
    assign out_lm82_prod_matrix_avm_byteenable = bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_byteenable;

    // out_lm82_prod_matrix_avm_enable(GPOUT,54)
    assign out_lm82_prod_matrix_avm_enable = bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_enable;

    // out_lm82_prod_matrix_avm_read(GPOUT,55)
    assign out_lm82_prod_matrix_avm_read = bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_read;

    // out_lm82_prod_matrix_avm_write(GPOUT,56)
    assign out_lm82_prod_matrix_avm_write = bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_write;

    // out_lm82_prod_matrix_avm_writedata(GPOUT,57)
    assign out_lm82_prod_matrix_avm_writedata = bb_prod_matrix_B4_stall_region_out_lm82_prod_matrix_avm_writedata;

    // out_lsu_memdep_o_active(GPOUT,58)
    assign out_lsu_memdep_o_active = bb_prod_matrix_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,59)
    assign out_memdep = prod_matrix_B4_branch_out_memdep;

    // out_memdep_prod_matrix_avm_address(GPOUT,60)
    assign out_memdep_prod_matrix_avm_address = bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_address;

    // out_memdep_prod_matrix_avm_burstcount(GPOUT,61)
    assign out_memdep_prod_matrix_avm_burstcount = bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_burstcount;

    // out_memdep_prod_matrix_avm_byteenable(GPOUT,62)
    assign out_memdep_prod_matrix_avm_byteenable = bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_byteenable;

    // out_memdep_prod_matrix_avm_enable(GPOUT,63)
    assign out_memdep_prod_matrix_avm_enable = bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_enable;

    // out_memdep_prod_matrix_avm_read(GPOUT,64)
    assign out_memdep_prod_matrix_avm_read = bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_read;

    // out_memdep_prod_matrix_avm_write(GPOUT,65)
    assign out_memdep_prod_matrix_avm_write = bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_write;

    // out_memdep_prod_matrix_avm_writedata(GPOUT,66)
    assign out_memdep_prod_matrix_avm_writedata = bb_prod_matrix_B4_stall_region_out_memdep_prod_matrix_avm_writedata;

    // out_notcmp2240_pop29(GPOUT,67)
    assign out_notcmp2240_pop29 = prod_matrix_B4_branch_out_notcmp2240_pop29;

    // out_notcmp2635_pop25(GPOUT,68)
    assign out_notcmp2635_pop25 = prod_matrix_B4_branch_out_notcmp2635_pop25;

    // out_pop24(GPOUT,69)
    assign out_pop24 = prod_matrix_B4_branch_out_pop24;

    // out_pop28(GPOUT,70)
    assign out_pop28 = prod_matrix_B4_branch_out_pop28;

    // out_stall_out_0(GPOUT,71)
    assign out_stall_out_0 = prod_matrix_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,72)
    assign out_stall_out_1 = prod_matrix_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,73)
    assign out_valid_out_0 = prod_matrix_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,74)
    assign out_valid_out_1 = prod_matrix_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,76)
    assign out_pipeline_valid_out = bb_prod_matrix_B4_stall_region_out_pipeline_valid_out;

endmodule
