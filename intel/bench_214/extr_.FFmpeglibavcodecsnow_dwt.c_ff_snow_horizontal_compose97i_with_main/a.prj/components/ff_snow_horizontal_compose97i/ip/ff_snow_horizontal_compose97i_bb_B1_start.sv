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

// SystemVerilog created from ff_snow_horizontal_compose97i_bb_B1_start
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [191:0] in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifodata,
    input wire [0:0] in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifovalid,
    input wire [63:0] in_memdep_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_memdep_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_intel_reserved_ffwd_4_0,
    output wire [32:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_memdep_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [32:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_lsu_memdep_o_active;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_stall_out;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_valid_out;
    wire [0:0] ff_snow_horizontal_compose97i_B1_start_branch_out_stall_out;
    wire [0:0] ff_snow_horizontal_compose97i_B1_start_branch_out_valid_out_0;
    wire [0:0] ff_snow_horizontal_compose97i_B1_start_merge_out_stall_out_0;
    wire [0:0] ff_snow_horizontal_compose97i_B1_start_merge_out_stall_out_1;
    wire [0:0] ff_snow_horizontal_compose97i_B1_start_merge_out_valid_out;


    // ff_snow_horizontal_compose97i_B1_start_merge(BLACKBOX,7)
    ff_snow_horizontal_compose97i_B1_start_merge theff_snow_horizontal_compose97i_B1_start_merge (
        .in_stall_in(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(ff_snow_horizontal_compose97i_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(ff_snow_horizontal_compose97i_B1_start_merge_out_stall_out_1),
        .out_valid_out(ff_snow_horizontal_compose97i_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_snow_horizontal_compose97i_B1_start_branch(BLACKBOX,6)
    ff_snow_horizontal_compose97i_B1_start_branch theff_snow_horizontal_compose97i_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_valid_out),
        .out_stall_out(ff_snow_horizontal_compose97i_B1_start_branch_out_stall_out),
        .out_valid_out_0(ff_snow_horizontal_compose97i_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_snow_horizontal_compose97i_B1_start_stall_region(BLACKBOX,2)
    ff_snow_horizontal_compose97i_bb_B1_start_stall_region thebb_ff_snow_horizontal_compose97i_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifodata(in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifodata),
        .in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifovalid(in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifovalid),
        .in_memdep_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_ff_snow_horizontal_compose97i_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(ff_snow_horizontal_compose97i_B1_start_branch_out_stall_out),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdata(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_waitrequest(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writeack(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writeack),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdata(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_waitrequest(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writeack(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writeack),
        .in_valid_in(ff_snow_horizontal_compose97i_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready),
        .out_lsu_memdep_o_active(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_lsu_memdep_o_active),
        .out_memdep_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_writedata),
        .out_pipeline_valid_out(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_stall_out),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata),
        .out_valid_out(bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_feedback_stall_out_1;

    // out_exiting_stall_out(GPOUT,26)
    assign out_exiting_stall_out = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,27)
    assign out_exiting_valid_out = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,28)
    assign out_intel_reserved_ffwd_0_0 = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,29)
    assign out_intel_reserved_ffwd_1_0 = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,30)
    assign out_intel_reserved_ffwd_2_0 = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,31)
    assign out_intel_reserved_ffwd_3_0 = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,32)
    assign out_intel_reserved_ffwd_4_0 = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,33)
    assign out_intel_reserved_ffwd_5_0 = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready(GPOUT,34)
    assign out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready;

    // out_lsu_memdep_o_active(GPOUT,35)
    assign out_lsu_memdep_o_active = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_lsu_memdep_o_active;

    // out_memdep_ff_snow_horizontal_compose97i_avm_address(GPOUT,36)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_address;

    // out_memdep_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,37)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_memdep_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,38)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_memdep_ff_snow_horizontal_compose97i_avm_enable(GPOUT,39)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_enable;

    // out_memdep_ff_snow_horizontal_compose97i_avm_read(GPOUT,40)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_read;

    // out_memdep_ff_snow_horizontal_compose97i_avm_write(GPOUT,41)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_write;

    // out_memdep_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,42)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_memdep_ff_snow_horizontal_compose97i_avm_writedata;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = ff_snow_horizontal_compose97i_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = ff_snow_horizontal_compose97i_B1_start_merge_out_stall_out_1;

    // out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address(GPOUT,45)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address;

    // out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,46)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,47)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable(GPOUT,48)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable;

    // out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read(GPOUT,49)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read;

    // out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write(GPOUT,50)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write;

    // out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,51)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata;

    // out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address(GPOUT,52)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address;

    // out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,53)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,54)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable(GPOUT,55)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable;

    // out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read(GPOUT,56)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read;

    // out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write(GPOUT,57)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write;

    // out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,58)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata;

    // out_valid_out_0(GPOUT,59)
    assign out_valid_out_0 = ff_snow_horizontal_compose97i_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,61)
    assign out_pipeline_valid_out = bb_ff_snow_horizontal_compose97i_B1_start_stall_region_out_pipeline_valid_out;

endmodule
