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

// SystemVerilog created from eia608_from_utf8_bb_B1_start
// SystemVerilog created on Sun May 24 22:38:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module eia608_from_utf8_bb_B1_start (
    input wire [0:0] in_flush,
    input wire [63:0] in_iord_bl_call_eia608_from_utf8_i_fifodata,
    input wire [0:0] in_iord_bl_call_eia608_from_utf8_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_eia608_from_utf8_i_fifoready,
    input wire [63:0] in_lm12843_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_writeack,
    input wire [63:0] in_lm12964_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_writeack,
    input wire [63:0] in_lm2_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_writeack,
    input wire [63:0] in_ml5_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_call_eia608_from_utf8_o_fifoready,
    output wire [31:0] out_iowr_bl_return_eia608_from_utf8_o_fifodata,
    output wire [0:0] out_iowr_bl_return_eia608_from_utf8_o_fifovalid,
    output wire [63:0] out_lm12843_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_lm12843_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm12843_eia608_from_utf8_avm_writedata,
    output wire [63:0] out_lm12964_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_lm12964_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm12964_eia608_from_utf8_avm_writedata,
    output wire [63:0] out_lm2_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_lm2_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm2_eia608_from_utf8_avm_writedata,
    output wire [63:0] out_ml5_eia608_from_utf8_avm_address,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_ml5_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_enable,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_read,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_write,
    output wire [63:0] out_ml5_eia608_from_utf8_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_iord_bl_call_eia608_from_utf8_o_fifoready;
    wire [31:0] bb_eia608_from_utf8_B1_start_stall_region_out_iowr_bl_return_eia608_from_utf8_o_fifodata;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_writedata;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_writedata;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_writedata;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_writedata;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_eia608_from_utf8_B1_start_stall_region_out_valid_out;
    wire [0:0] eia608_from_utf8_B1_start_branch_out_stall_out;
    wire [0:0] eia608_from_utf8_B1_start_branch_out_valid_out_0;
    wire [0:0] eia608_from_utf8_B1_start_merge_out_stall_out_0;
    wire [0:0] eia608_from_utf8_B1_start_merge_out_stall_out_1;
    wire [0:0] eia608_from_utf8_B1_start_merge_out_valid_out;


    // eia608_from_utf8_B1_start_merge(BLACKBOX,4)
    eia608_from_utf8_B1_start_merge theeia608_from_utf8_B1_start_merge (
        .in_stall_in(bb_eia608_from_utf8_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(eia608_from_utf8_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(eia608_from_utf8_B1_start_merge_out_stall_out_1),
        .out_valid_out(eia608_from_utf8_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // eia608_from_utf8_B1_start_branch(BLACKBOX,3)
    eia608_from_utf8_B1_start_branch theeia608_from_utf8_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_eia608_from_utf8_B1_start_stall_region_out_valid_out),
        .out_stall_out(eia608_from_utf8_B1_start_branch_out_stall_out),
        .out_valid_out_0(eia608_from_utf8_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_eia608_from_utf8_B1_start_stall_region(BLACKBOX,2)
    eia608_from_utf8_bb_B1_start_stall_region thebb_eia608_from_utf8_B1_start_stall_region (
        .in_flush(in_flush),
        .in_iord_bl_call_eia608_from_utf8_i_fifodata(in_iord_bl_call_eia608_from_utf8_i_fifodata),
        .in_iord_bl_call_eia608_from_utf8_i_fifovalid(in_iord_bl_call_eia608_from_utf8_i_fifovalid),
        .in_iowr_bl_return_eia608_from_utf8_i_fifoready(in_iowr_bl_return_eia608_from_utf8_i_fifoready),
        .in_lm12843_eia608_from_utf8_avm_readdata(in_lm12843_eia608_from_utf8_avm_readdata),
        .in_lm12843_eia608_from_utf8_avm_readdatavalid(in_lm12843_eia608_from_utf8_avm_readdatavalid),
        .in_lm12843_eia608_from_utf8_avm_waitrequest(in_lm12843_eia608_from_utf8_avm_waitrequest),
        .in_lm12843_eia608_from_utf8_avm_writeack(in_lm12843_eia608_from_utf8_avm_writeack),
        .in_lm12964_eia608_from_utf8_avm_readdata(in_lm12964_eia608_from_utf8_avm_readdata),
        .in_lm12964_eia608_from_utf8_avm_readdatavalid(in_lm12964_eia608_from_utf8_avm_readdatavalid),
        .in_lm12964_eia608_from_utf8_avm_waitrequest(in_lm12964_eia608_from_utf8_avm_waitrequest),
        .in_lm12964_eia608_from_utf8_avm_writeack(in_lm12964_eia608_from_utf8_avm_writeack),
        .in_lm2_eia608_from_utf8_avm_readdata(in_lm2_eia608_from_utf8_avm_readdata),
        .in_lm2_eia608_from_utf8_avm_readdatavalid(in_lm2_eia608_from_utf8_avm_readdatavalid),
        .in_lm2_eia608_from_utf8_avm_waitrequest(in_lm2_eia608_from_utf8_avm_waitrequest),
        .in_lm2_eia608_from_utf8_avm_writeack(in_lm2_eia608_from_utf8_avm_writeack),
        .in_ml5_eia608_from_utf8_avm_readdata(in_ml5_eia608_from_utf8_avm_readdata),
        .in_ml5_eia608_from_utf8_avm_readdatavalid(in_ml5_eia608_from_utf8_avm_readdatavalid),
        .in_ml5_eia608_from_utf8_avm_waitrequest(in_ml5_eia608_from_utf8_avm_waitrequest),
        .in_ml5_eia608_from_utf8_avm_writeack(in_ml5_eia608_from_utf8_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(eia608_from_utf8_B1_start_branch_out_stall_out),
        .in_valid_in(eia608_from_utf8_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out(bb_eia608_from_utf8_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out(bb_eia608_from_utf8_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out),
        .out_iord_bl_call_eia608_from_utf8_o_fifoready(bb_eia608_from_utf8_B1_start_stall_region_out_iord_bl_call_eia608_from_utf8_o_fifoready),
        .out_iowr_bl_return_eia608_from_utf8_o_fifodata(bb_eia608_from_utf8_B1_start_stall_region_out_iowr_bl_return_eia608_from_utf8_o_fifodata),
        .out_iowr_bl_return_eia608_from_utf8_o_fifovalid(bb_eia608_from_utf8_B1_start_stall_region_out_iowr_bl_return_eia608_from_utf8_o_fifovalid),
        .out_lm12843_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_address),
        .out_lm12843_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_burstcount),
        .out_lm12843_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_byteenable),
        .out_lm12843_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_enable),
        .out_lm12843_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_read),
        .out_lm12843_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_write),
        .out_lm12843_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_writedata),
        .out_lm12964_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_address),
        .out_lm12964_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_burstcount),
        .out_lm12964_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_byteenable),
        .out_lm12964_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_enable),
        .out_lm12964_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_read),
        .out_lm12964_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_write),
        .out_lm12964_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_writedata),
        .out_lm2_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_address),
        .out_lm2_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_burstcount),
        .out_lm2_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_byteenable),
        .out_lm2_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_enable),
        .out_lm2_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_read),
        .out_lm2_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_write),
        .out_lm2_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_writedata),
        .out_ml5_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_address),
        .out_ml5_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_burstcount),
        .out_ml5_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_byteenable),
        .out_ml5_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_enable),
        .out_ml5_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_read),
        .out_ml5_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_write),
        .out_ml5_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_writedata),
        .out_pipeline_valid_out(bb_eia608_from_utf8_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_eia608_from_utf8_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_eia608_from_utf8_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_eia608_from_utf8_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_eia608_from_utf8_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out;

    // out_iord_bl_call_eia608_from_utf8_o_fifoready(GPOUT,30)
    assign out_iord_bl_call_eia608_from_utf8_o_fifoready = bb_eia608_from_utf8_B1_start_stall_region_out_iord_bl_call_eia608_from_utf8_o_fifoready;

    // out_iowr_bl_return_eia608_from_utf8_o_fifodata(GPOUT,31)
    assign out_iowr_bl_return_eia608_from_utf8_o_fifodata = bb_eia608_from_utf8_B1_start_stall_region_out_iowr_bl_return_eia608_from_utf8_o_fifodata;

    // out_iowr_bl_return_eia608_from_utf8_o_fifovalid(GPOUT,32)
    assign out_iowr_bl_return_eia608_from_utf8_o_fifovalid = bb_eia608_from_utf8_B1_start_stall_region_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;

    // out_lm12843_eia608_from_utf8_avm_address(GPOUT,33)
    assign out_lm12843_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_address;

    // out_lm12843_eia608_from_utf8_avm_burstcount(GPOUT,34)
    assign out_lm12843_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_burstcount;

    // out_lm12843_eia608_from_utf8_avm_byteenable(GPOUT,35)
    assign out_lm12843_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_byteenable;

    // out_lm12843_eia608_from_utf8_avm_enable(GPOUT,36)
    assign out_lm12843_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_enable;

    // out_lm12843_eia608_from_utf8_avm_read(GPOUT,37)
    assign out_lm12843_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_read;

    // out_lm12843_eia608_from_utf8_avm_write(GPOUT,38)
    assign out_lm12843_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_write;

    // out_lm12843_eia608_from_utf8_avm_writedata(GPOUT,39)
    assign out_lm12843_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_stall_region_out_lm12843_eia608_from_utf8_avm_writedata;

    // out_lm12964_eia608_from_utf8_avm_address(GPOUT,40)
    assign out_lm12964_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_address;

    // out_lm12964_eia608_from_utf8_avm_burstcount(GPOUT,41)
    assign out_lm12964_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_burstcount;

    // out_lm12964_eia608_from_utf8_avm_byteenable(GPOUT,42)
    assign out_lm12964_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_byteenable;

    // out_lm12964_eia608_from_utf8_avm_enable(GPOUT,43)
    assign out_lm12964_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_enable;

    // out_lm12964_eia608_from_utf8_avm_read(GPOUT,44)
    assign out_lm12964_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_read;

    // out_lm12964_eia608_from_utf8_avm_write(GPOUT,45)
    assign out_lm12964_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_write;

    // out_lm12964_eia608_from_utf8_avm_writedata(GPOUT,46)
    assign out_lm12964_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_stall_region_out_lm12964_eia608_from_utf8_avm_writedata;

    // out_lm2_eia608_from_utf8_avm_address(GPOUT,47)
    assign out_lm2_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_address;

    // out_lm2_eia608_from_utf8_avm_burstcount(GPOUT,48)
    assign out_lm2_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_burstcount;

    // out_lm2_eia608_from_utf8_avm_byteenable(GPOUT,49)
    assign out_lm2_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_byteenable;

    // out_lm2_eia608_from_utf8_avm_enable(GPOUT,50)
    assign out_lm2_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_enable;

    // out_lm2_eia608_from_utf8_avm_read(GPOUT,51)
    assign out_lm2_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_read;

    // out_lm2_eia608_from_utf8_avm_write(GPOUT,52)
    assign out_lm2_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_write;

    // out_lm2_eia608_from_utf8_avm_writedata(GPOUT,53)
    assign out_lm2_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_stall_region_out_lm2_eia608_from_utf8_avm_writedata;

    // out_ml5_eia608_from_utf8_avm_address(GPOUT,54)
    assign out_ml5_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_address;

    // out_ml5_eia608_from_utf8_avm_burstcount(GPOUT,55)
    assign out_ml5_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_burstcount;

    // out_ml5_eia608_from_utf8_avm_byteenable(GPOUT,56)
    assign out_ml5_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_byteenable;

    // out_ml5_eia608_from_utf8_avm_enable(GPOUT,57)
    assign out_ml5_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_enable;

    // out_ml5_eia608_from_utf8_avm_read(GPOUT,58)
    assign out_ml5_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_read;

    // out_ml5_eia608_from_utf8_avm_write(GPOUT,59)
    assign out_ml5_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_write;

    // out_ml5_eia608_from_utf8_avm_writedata(GPOUT,60)
    assign out_ml5_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_stall_region_out_ml5_eia608_from_utf8_avm_writedata;

    // out_stall_out_0(GPOUT,61)
    assign out_stall_out_0 = eia608_from_utf8_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,62)
    assign out_stall_out_1 = eia608_from_utf8_B1_start_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = eia608_from_utf8_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,65)
    assign out_pipeline_valid_out = bb_eia608_from_utf8_B1_start_stall_region_out_pipeline_valid_out;

endmodule
