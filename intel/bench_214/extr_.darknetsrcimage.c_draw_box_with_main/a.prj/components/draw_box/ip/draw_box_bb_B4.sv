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

// SystemVerilog created from draw_box_bb_B4
// SystemVerilog created on Sun May 24 22:30:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module draw_box_bb_B4 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked90_0,
    input wire [0:0] in_forked90_1,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_15_0,
    input wire [32:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_memdep_26_draw_box_avm_readdata,
    input wire [0:0] in_memdep_26_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_26_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_26_draw_box_avm_writeack,
    input wire [63:0] in_memdep_28_draw_box_avm_readdata,
    input wire [0:0] in_memdep_28_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_28_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_28_draw_box_avm_writeack,
    input wire [63:0] in_memdep_32_draw_box_avm_readdata,
    input wire [0:0] in_memdep_32_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_32_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_32_draw_box_avm_writeack,
    input wire [63:0] in_memdep_37_draw_box_avm_readdata,
    input wire [0:0] in_memdep_37_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_37_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_37_draw_box_avm_writeack,
    input wire [63:0] in_memdep_42_draw_box_avm_readdata,
    input wire [0:0] in_memdep_42_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_42_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_42_draw_box_avm_writeack,
    input wire [63:0] in_memdep_47_draw_box_avm_readdata,
    input wire [0:0] in_memdep_47_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_47_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_47_draw_box_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_26_o_active,
    output wire [0:0] out_lsu_memdep_28_o_active,
    output wire [0:0] out_lsu_memdep_32_o_active,
    output wire [0:0] out_lsu_memdep_37_o_active,
    output wire [0:0] out_lsu_memdep_42_o_active,
    output wire [0:0] out_lsu_memdep_47_o_active,
    output wire [63:0] out_memdep_26_draw_box_avm_address,
    output wire [0:0] out_memdep_26_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_26_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_26_draw_box_avm_enable,
    output wire [0:0] out_memdep_26_draw_box_avm_read,
    output wire [0:0] out_memdep_26_draw_box_avm_write,
    output wire [63:0] out_memdep_26_draw_box_avm_writedata,
    output wire [63:0] out_memdep_28_draw_box_avm_address,
    output wire [0:0] out_memdep_28_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_28_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_28_draw_box_avm_enable,
    output wire [0:0] out_memdep_28_draw_box_avm_read,
    output wire [0:0] out_memdep_28_draw_box_avm_write,
    output wire [63:0] out_memdep_28_draw_box_avm_writedata,
    output wire [63:0] out_memdep_32_draw_box_avm_address,
    output wire [0:0] out_memdep_32_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_32_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_32_draw_box_avm_enable,
    output wire [0:0] out_memdep_32_draw_box_avm_read,
    output wire [0:0] out_memdep_32_draw_box_avm_write,
    output wire [63:0] out_memdep_32_draw_box_avm_writedata,
    output wire [63:0] out_memdep_37_draw_box_avm_address,
    output wire [0:0] out_memdep_37_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_37_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_37_draw_box_avm_enable,
    output wire [0:0] out_memdep_37_draw_box_avm_read,
    output wire [0:0] out_memdep_37_draw_box_avm_write,
    output wire [63:0] out_memdep_37_draw_box_avm_writedata,
    output wire [63:0] out_memdep_42_draw_box_avm_address,
    output wire [0:0] out_memdep_42_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_42_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_42_draw_box_avm_enable,
    output wire [0:0] out_memdep_42_draw_box_avm_read,
    output wire [0:0] out_memdep_42_draw_box_avm_write,
    output wire [63:0] out_memdep_42_draw_box_avm_writedata,
    output wire [63:0] out_memdep_47_draw_box_avm_address,
    output wire [0:0] out_memdep_47_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_47_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_47_draw_box_avm_enable,
    output wire [0:0] out_memdep_47_draw_box_avm_read,
    output wire [0:0] out_memdep_47_draw_box_avm_write,
    output wire [63:0] out_memdep_47_draw_box_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_draw_box_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_stall_out;
    wire [0:0] bb_draw_box_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_valid_out;
    wire [0:0] bb_draw_box_B4_stall_region_out_lsu_memdep_26_o_active;
    wire [0:0] bb_draw_box_B4_stall_region_out_lsu_memdep_28_o_active;
    wire [0:0] bb_draw_box_B4_stall_region_out_lsu_memdep_32_o_active;
    wire [0:0] bb_draw_box_B4_stall_region_out_lsu_memdep_37_o_active;
    wire [0:0] bb_draw_box_B4_stall_region_out_lsu_memdep_42_o_active;
    wire [0:0] bb_draw_box_B4_stall_region_out_lsu_memdep_47_o_active;
    wire [0:0] bb_draw_box_B4_stall_region_out_masked;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_writedata;
    wire [0:0] bb_draw_box_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_draw_box_B4_stall_region_out_stall_out;
    wire [0:0] bb_draw_box_B4_stall_region_out_valid_out;
    wire [0:0] draw_box_B4_branch_out_stall_out;
    wire [0:0] draw_box_B4_branch_out_valid_out_0;
    wire [0:0] draw_box_B4_branch_out_valid_out_1;
    wire [0:0] draw_box_B4_merge_out_forked90;
    wire [0:0] draw_box_B4_merge_out_stall_out_0;
    wire [0:0] draw_box_B4_merge_out_stall_out_1;
    wire [0:0] draw_box_B4_merge_out_valid_out;


    // draw_box_B4_branch(BLACKBOX,3)
    draw_box_B4_branch thedraw_box_B4_branch (
        .in_masked(bb_draw_box_B4_stall_region_out_masked),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_draw_box_B4_stall_region_out_valid_out),
        .out_stall_out(draw_box_B4_branch_out_stall_out),
        .out_valid_out_0(draw_box_B4_branch_out_valid_out_0),
        .out_valid_out_1(draw_box_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // draw_box_B4_merge(BLACKBOX,4)
    draw_box_B4_merge thedraw_box_B4_merge (
        .in_forked90_0(in_forked90_0),
        .in_forked90_1(in_forked90_1),
        .in_stall_in(bb_draw_box_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked90(draw_box_B4_merge_out_forked90),
        .out_stall_out_0(draw_box_B4_merge_out_stall_out_0),
        .out_stall_out_1(draw_box_B4_merge_out_stall_out_1),
        .out_valid_out(draw_box_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B4_stall_region(BLACKBOX,2)
    draw_box_bb_B4_stall_region thebb_draw_box_B4_stall_region (
        .in_flush(in_flush),
        .in_forked90(draw_box_B4_merge_out_forked90),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_memdep_26_draw_box_avm_readdata(in_memdep_26_draw_box_avm_readdata),
        .in_memdep_26_draw_box_avm_readdatavalid(in_memdep_26_draw_box_avm_readdatavalid),
        .in_memdep_26_draw_box_avm_waitrequest(in_memdep_26_draw_box_avm_waitrequest),
        .in_memdep_26_draw_box_avm_writeack(in_memdep_26_draw_box_avm_writeack),
        .in_memdep_28_draw_box_avm_readdata(in_memdep_28_draw_box_avm_readdata),
        .in_memdep_28_draw_box_avm_readdatavalid(in_memdep_28_draw_box_avm_readdatavalid),
        .in_memdep_28_draw_box_avm_waitrequest(in_memdep_28_draw_box_avm_waitrequest),
        .in_memdep_28_draw_box_avm_writeack(in_memdep_28_draw_box_avm_writeack),
        .in_memdep_32_draw_box_avm_readdata(in_memdep_32_draw_box_avm_readdata),
        .in_memdep_32_draw_box_avm_readdatavalid(in_memdep_32_draw_box_avm_readdatavalid),
        .in_memdep_32_draw_box_avm_waitrequest(in_memdep_32_draw_box_avm_waitrequest),
        .in_memdep_32_draw_box_avm_writeack(in_memdep_32_draw_box_avm_writeack),
        .in_memdep_37_draw_box_avm_readdata(in_memdep_37_draw_box_avm_readdata),
        .in_memdep_37_draw_box_avm_readdatavalid(in_memdep_37_draw_box_avm_readdatavalid),
        .in_memdep_37_draw_box_avm_waitrequest(in_memdep_37_draw_box_avm_waitrequest),
        .in_memdep_37_draw_box_avm_writeack(in_memdep_37_draw_box_avm_writeack),
        .in_memdep_42_draw_box_avm_readdata(in_memdep_42_draw_box_avm_readdata),
        .in_memdep_42_draw_box_avm_readdatavalid(in_memdep_42_draw_box_avm_readdatavalid),
        .in_memdep_42_draw_box_avm_waitrequest(in_memdep_42_draw_box_avm_waitrequest),
        .in_memdep_42_draw_box_avm_writeack(in_memdep_42_draw_box_avm_writeack),
        .in_memdep_47_draw_box_avm_readdata(in_memdep_47_draw_box_avm_readdata),
        .in_memdep_47_draw_box_avm_readdatavalid(in_memdep_47_draw_box_avm_readdatavalid),
        .in_memdep_47_draw_box_avm_waitrequest(in_memdep_47_draw_box_avm_waitrequest),
        .in_memdep_47_draw_box_avm_writeack(in_memdep_47_draw_box_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(draw_box_B4_branch_out_stall_out),
        .in_valid_in(draw_box_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_stall_out(bb_draw_box_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_valid_out(bb_draw_box_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_valid_out),
        .out_lsu_memdep_26_o_active(bb_draw_box_B4_stall_region_out_lsu_memdep_26_o_active),
        .out_lsu_memdep_28_o_active(bb_draw_box_B4_stall_region_out_lsu_memdep_28_o_active),
        .out_lsu_memdep_32_o_active(bb_draw_box_B4_stall_region_out_lsu_memdep_32_o_active),
        .out_lsu_memdep_37_o_active(bb_draw_box_B4_stall_region_out_lsu_memdep_37_o_active),
        .out_lsu_memdep_42_o_active(bb_draw_box_B4_stall_region_out_lsu_memdep_42_o_active),
        .out_lsu_memdep_47_o_active(bb_draw_box_B4_stall_region_out_lsu_memdep_47_o_active),
        .out_masked(bb_draw_box_B4_stall_region_out_masked),
        .out_memdep_26_draw_box_avm_address(bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_address),
        .out_memdep_26_draw_box_avm_burstcount(bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_burstcount),
        .out_memdep_26_draw_box_avm_byteenable(bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_byteenable),
        .out_memdep_26_draw_box_avm_enable(bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_enable),
        .out_memdep_26_draw_box_avm_read(bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_read),
        .out_memdep_26_draw_box_avm_write(bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_write),
        .out_memdep_26_draw_box_avm_writedata(bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_writedata),
        .out_memdep_28_draw_box_avm_address(bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_address),
        .out_memdep_28_draw_box_avm_burstcount(bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_burstcount),
        .out_memdep_28_draw_box_avm_byteenable(bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_byteenable),
        .out_memdep_28_draw_box_avm_enable(bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_enable),
        .out_memdep_28_draw_box_avm_read(bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_read),
        .out_memdep_28_draw_box_avm_write(bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_write),
        .out_memdep_28_draw_box_avm_writedata(bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_writedata),
        .out_memdep_32_draw_box_avm_address(bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_address),
        .out_memdep_32_draw_box_avm_burstcount(bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_burstcount),
        .out_memdep_32_draw_box_avm_byteenable(bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_byteenable),
        .out_memdep_32_draw_box_avm_enable(bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_enable),
        .out_memdep_32_draw_box_avm_read(bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_read),
        .out_memdep_32_draw_box_avm_write(bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_write),
        .out_memdep_32_draw_box_avm_writedata(bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_writedata),
        .out_memdep_37_draw_box_avm_address(bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_address),
        .out_memdep_37_draw_box_avm_burstcount(bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_burstcount),
        .out_memdep_37_draw_box_avm_byteenable(bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_byteenable),
        .out_memdep_37_draw_box_avm_enable(bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_enable),
        .out_memdep_37_draw_box_avm_read(bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_read),
        .out_memdep_37_draw_box_avm_write(bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_write),
        .out_memdep_37_draw_box_avm_writedata(bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_writedata),
        .out_memdep_42_draw_box_avm_address(bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_address),
        .out_memdep_42_draw_box_avm_burstcount(bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_burstcount),
        .out_memdep_42_draw_box_avm_byteenable(bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_byteenable),
        .out_memdep_42_draw_box_avm_enable(bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_enable),
        .out_memdep_42_draw_box_avm_read(bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_read),
        .out_memdep_42_draw_box_avm_write(bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_write),
        .out_memdep_42_draw_box_avm_writedata(bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_writedata),
        .out_memdep_47_draw_box_avm_address(bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_address),
        .out_memdep_47_draw_box_avm_burstcount(bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_burstcount),
        .out_memdep_47_draw_box_avm_byteenable(bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_byteenable),
        .out_memdep_47_draw_box_avm_enable(bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_enable),
        .out_memdep_47_draw_box_avm_read(bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_read),
        .out_memdep_47_draw_box_avm_write(bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_write),
        .out_memdep_47_draw_box_avm_writedata(bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_writedata),
        .out_pipeline_valid_out(bb_draw_box_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_draw_box_B4_stall_region_out_stall_out),
        .out_valid_out(bb_draw_box_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,49)
    assign out_exiting_stall_out = bb_draw_box_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,50)
    assign out_exiting_valid_out = bb_draw_box_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_valid_out;

    // out_lsu_memdep_26_o_active(GPOUT,51)
    assign out_lsu_memdep_26_o_active = bb_draw_box_B4_stall_region_out_lsu_memdep_26_o_active;

    // out_lsu_memdep_28_o_active(GPOUT,52)
    assign out_lsu_memdep_28_o_active = bb_draw_box_B4_stall_region_out_lsu_memdep_28_o_active;

    // out_lsu_memdep_32_o_active(GPOUT,53)
    assign out_lsu_memdep_32_o_active = bb_draw_box_B4_stall_region_out_lsu_memdep_32_o_active;

    // out_lsu_memdep_37_o_active(GPOUT,54)
    assign out_lsu_memdep_37_o_active = bb_draw_box_B4_stall_region_out_lsu_memdep_37_o_active;

    // out_lsu_memdep_42_o_active(GPOUT,55)
    assign out_lsu_memdep_42_o_active = bb_draw_box_B4_stall_region_out_lsu_memdep_42_o_active;

    // out_lsu_memdep_47_o_active(GPOUT,56)
    assign out_lsu_memdep_47_o_active = bb_draw_box_B4_stall_region_out_lsu_memdep_47_o_active;

    // out_memdep_26_draw_box_avm_address(GPOUT,57)
    assign out_memdep_26_draw_box_avm_address = bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_address;

    // out_memdep_26_draw_box_avm_burstcount(GPOUT,58)
    assign out_memdep_26_draw_box_avm_burstcount = bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_burstcount;

    // out_memdep_26_draw_box_avm_byteenable(GPOUT,59)
    assign out_memdep_26_draw_box_avm_byteenable = bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_byteenable;

    // out_memdep_26_draw_box_avm_enable(GPOUT,60)
    assign out_memdep_26_draw_box_avm_enable = bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_enable;

    // out_memdep_26_draw_box_avm_read(GPOUT,61)
    assign out_memdep_26_draw_box_avm_read = bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_read;

    // out_memdep_26_draw_box_avm_write(GPOUT,62)
    assign out_memdep_26_draw_box_avm_write = bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_write;

    // out_memdep_26_draw_box_avm_writedata(GPOUT,63)
    assign out_memdep_26_draw_box_avm_writedata = bb_draw_box_B4_stall_region_out_memdep_26_draw_box_avm_writedata;

    // out_memdep_28_draw_box_avm_address(GPOUT,64)
    assign out_memdep_28_draw_box_avm_address = bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_address;

    // out_memdep_28_draw_box_avm_burstcount(GPOUT,65)
    assign out_memdep_28_draw_box_avm_burstcount = bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_burstcount;

    // out_memdep_28_draw_box_avm_byteenable(GPOUT,66)
    assign out_memdep_28_draw_box_avm_byteenable = bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_byteenable;

    // out_memdep_28_draw_box_avm_enable(GPOUT,67)
    assign out_memdep_28_draw_box_avm_enable = bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_enable;

    // out_memdep_28_draw_box_avm_read(GPOUT,68)
    assign out_memdep_28_draw_box_avm_read = bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_read;

    // out_memdep_28_draw_box_avm_write(GPOUT,69)
    assign out_memdep_28_draw_box_avm_write = bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_write;

    // out_memdep_28_draw_box_avm_writedata(GPOUT,70)
    assign out_memdep_28_draw_box_avm_writedata = bb_draw_box_B4_stall_region_out_memdep_28_draw_box_avm_writedata;

    // out_memdep_32_draw_box_avm_address(GPOUT,71)
    assign out_memdep_32_draw_box_avm_address = bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_address;

    // out_memdep_32_draw_box_avm_burstcount(GPOUT,72)
    assign out_memdep_32_draw_box_avm_burstcount = bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_burstcount;

    // out_memdep_32_draw_box_avm_byteenable(GPOUT,73)
    assign out_memdep_32_draw_box_avm_byteenable = bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_byteenable;

    // out_memdep_32_draw_box_avm_enable(GPOUT,74)
    assign out_memdep_32_draw_box_avm_enable = bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_enable;

    // out_memdep_32_draw_box_avm_read(GPOUT,75)
    assign out_memdep_32_draw_box_avm_read = bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_read;

    // out_memdep_32_draw_box_avm_write(GPOUT,76)
    assign out_memdep_32_draw_box_avm_write = bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_write;

    // out_memdep_32_draw_box_avm_writedata(GPOUT,77)
    assign out_memdep_32_draw_box_avm_writedata = bb_draw_box_B4_stall_region_out_memdep_32_draw_box_avm_writedata;

    // out_memdep_37_draw_box_avm_address(GPOUT,78)
    assign out_memdep_37_draw_box_avm_address = bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_address;

    // out_memdep_37_draw_box_avm_burstcount(GPOUT,79)
    assign out_memdep_37_draw_box_avm_burstcount = bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_burstcount;

    // out_memdep_37_draw_box_avm_byteenable(GPOUT,80)
    assign out_memdep_37_draw_box_avm_byteenable = bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_byteenable;

    // out_memdep_37_draw_box_avm_enable(GPOUT,81)
    assign out_memdep_37_draw_box_avm_enable = bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_enable;

    // out_memdep_37_draw_box_avm_read(GPOUT,82)
    assign out_memdep_37_draw_box_avm_read = bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_read;

    // out_memdep_37_draw_box_avm_write(GPOUT,83)
    assign out_memdep_37_draw_box_avm_write = bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_write;

    // out_memdep_37_draw_box_avm_writedata(GPOUT,84)
    assign out_memdep_37_draw_box_avm_writedata = bb_draw_box_B4_stall_region_out_memdep_37_draw_box_avm_writedata;

    // out_memdep_42_draw_box_avm_address(GPOUT,85)
    assign out_memdep_42_draw_box_avm_address = bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_address;

    // out_memdep_42_draw_box_avm_burstcount(GPOUT,86)
    assign out_memdep_42_draw_box_avm_burstcount = bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_burstcount;

    // out_memdep_42_draw_box_avm_byteenable(GPOUT,87)
    assign out_memdep_42_draw_box_avm_byteenable = bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_byteenable;

    // out_memdep_42_draw_box_avm_enable(GPOUT,88)
    assign out_memdep_42_draw_box_avm_enable = bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_enable;

    // out_memdep_42_draw_box_avm_read(GPOUT,89)
    assign out_memdep_42_draw_box_avm_read = bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_read;

    // out_memdep_42_draw_box_avm_write(GPOUT,90)
    assign out_memdep_42_draw_box_avm_write = bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_write;

    // out_memdep_42_draw_box_avm_writedata(GPOUT,91)
    assign out_memdep_42_draw_box_avm_writedata = bb_draw_box_B4_stall_region_out_memdep_42_draw_box_avm_writedata;

    // out_memdep_47_draw_box_avm_address(GPOUT,92)
    assign out_memdep_47_draw_box_avm_address = bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_address;

    // out_memdep_47_draw_box_avm_burstcount(GPOUT,93)
    assign out_memdep_47_draw_box_avm_burstcount = bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_burstcount;

    // out_memdep_47_draw_box_avm_byteenable(GPOUT,94)
    assign out_memdep_47_draw_box_avm_byteenable = bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_byteenable;

    // out_memdep_47_draw_box_avm_enable(GPOUT,95)
    assign out_memdep_47_draw_box_avm_enable = bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_enable;

    // out_memdep_47_draw_box_avm_read(GPOUT,96)
    assign out_memdep_47_draw_box_avm_read = bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_read;

    // out_memdep_47_draw_box_avm_write(GPOUT,97)
    assign out_memdep_47_draw_box_avm_write = bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_write;

    // out_memdep_47_draw_box_avm_writedata(GPOUT,98)
    assign out_memdep_47_draw_box_avm_writedata = bb_draw_box_B4_stall_region_out_memdep_47_draw_box_avm_writedata;

    // out_stall_out_0(GPOUT,99)
    assign out_stall_out_0 = draw_box_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,100)
    assign out_stall_out_1 = draw_box_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,101)
    assign out_valid_out_0 = draw_box_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,102)
    assign out_valid_out_1 = draw_box_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,104)
    assign out_pipeline_valid_out = bb_draw_box_B4_stall_region_out_pipeline_valid_out;

endmodule
