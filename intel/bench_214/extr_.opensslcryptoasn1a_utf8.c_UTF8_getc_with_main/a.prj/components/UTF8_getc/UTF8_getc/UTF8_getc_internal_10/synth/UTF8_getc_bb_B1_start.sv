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

// SystemVerilog created from UTF8_getc_bb_B1_start
// SystemVerilog created on Sun May 24 22:39:14 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module UTF8_getc_bb_B1_start (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [191:0] in_iord_bl_call_UTF8_getc_i_fifodata,
    input wire [0:0] in_iord_bl_call_UTF8_getc_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_UTF8_getc_i_fifoready,
    input wire [63:0] in_lm2_UTF8_getc_avm_readdata,
    input wire [0:0] in_lm2_UTF8_getc_avm_readdatavalid,
    input wire [0:0] in_lm2_UTF8_getc_avm_waitrequest,
    input wire [0:0] in_lm2_UTF8_getc_avm_writeack,
    input wire [63:0] in_lm3303_UTF8_getc_avm_readdata,
    input wire [0:0] in_lm3303_UTF8_getc_avm_readdatavalid,
    input wire [0:0] in_lm3303_UTF8_getc_avm_waitrequest,
    input wire [0:0] in_lm3303_UTF8_getc_avm_writeack,
    input wire [63:0] in_memdep_1_UTF8_getc_avm_readdata,
    input wire [0:0] in_memdep_1_UTF8_getc_avm_readdatavalid,
    input wire [0:0] in_memdep_1_UTF8_getc_avm_waitrequest,
    input wire [0:0] in_memdep_1_UTF8_getc_avm_writeack,
    input wire [63:0] in_ml4347_UTF8_getc_avm_readdata,
    input wire [0:0] in_ml4347_UTF8_getc_avm_readdatavalid,
    input wire [0:0] in_ml4347_UTF8_getc_avm_waitrequest,
    input wire [0:0] in_ml4347_UTF8_getc_avm_writeack,
    input wire [63:0] in_ml4475_UTF8_getc_avm_readdata,
    input wire [0:0] in_ml4475_UTF8_getc_avm_readdatavalid,
    input wire [0:0] in_ml4475_UTF8_getc_avm_waitrequest,
    input wire [0:0] in_ml4475_UTF8_getc_avm_writeack,
    input wire [63:0] in_ml4504_UTF8_getc_avm_readdata,
    input wire [0:0] in_ml4504_UTF8_getc_avm_readdatavalid,
    input wire [0:0] in_ml4504_UTF8_getc_avm_waitrequest,
    input wire [0:0] in_ml4504_UTF8_getc_avm_writeack,
    input wire [63:0] in_ml6_UTF8_getc_avm_readdata,
    input wire [0:0] in_ml6_UTF8_getc_avm_readdatavalid,
    input wire [0:0] in_ml6_UTF8_getc_avm_waitrequest,
    input wire [0:0] in_ml6_UTF8_getc_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_call_UTF8_getc_o_fifoready,
    output wire [31:0] out_iowr_bl_return_UTF8_getc_o_fifodata,
    output wire [0:0] out_iowr_bl_return_UTF8_getc_o_fifovalid,
    output wire [63:0] out_lm2_UTF8_getc_avm_address,
    output wire [0:0] out_lm2_UTF8_getc_avm_burstcount,
    output wire [7:0] out_lm2_UTF8_getc_avm_byteenable,
    output wire [0:0] out_lm2_UTF8_getc_avm_enable,
    output wire [0:0] out_lm2_UTF8_getc_avm_read,
    output wire [0:0] out_lm2_UTF8_getc_avm_write,
    output wire [63:0] out_lm2_UTF8_getc_avm_writedata,
    output wire [63:0] out_lm3303_UTF8_getc_avm_address,
    output wire [0:0] out_lm3303_UTF8_getc_avm_burstcount,
    output wire [7:0] out_lm3303_UTF8_getc_avm_byteenable,
    output wire [0:0] out_lm3303_UTF8_getc_avm_enable,
    output wire [0:0] out_lm3303_UTF8_getc_avm_read,
    output wire [0:0] out_lm3303_UTF8_getc_avm_write,
    output wire [63:0] out_lm3303_UTF8_getc_avm_writedata,
    output wire [0:0] out_lsu_memdep_1_o_active,
    output wire [63:0] out_memdep_1_UTF8_getc_avm_address,
    output wire [0:0] out_memdep_1_UTF8_getc_avm_burstcount,
    output wire [7:0] out_memdep_1_UTF8_getc_avm_byteenable,
    output wire [0:0] out_memdep_1_UTF8_getc_avm_enable,
    output wire [0:0] out_memdep_1_UTF8_getc_avm_read,
    output wire [0:0] out_memdep_1_UTF8_getc_avm_write,
    output wire [63:0] out_memdep_1_UTF8_getc_avm_writedata,
    output wire [63:0] out_ml4347_UTF8_getc_avm_address,
    output wire [0:0] out_ml4347_UTF8_getc_avm_burstcount,
    output wire [7:0] out_ml4347_UTF8_getc_avm_byteenable,
    output wire [0:0] out_ml4347_UTF8_getc_avm_enable,
    output wire [0:0] out_ml4347_UTF8_getc_avm_read,
    output wire [0:0] out_ml4347_UTF8_getc_avm_write,
    output wire [63:0] out_ml4347_UTF8_getc_avm_writedata,
    output wire [63:0] out_ml4475_UTF8_getc_avm_address,
    output wire [0:0] out_ml4475_UTF8_getc_avm_burstcount,
    output wire [7:0] out_ml4475_UTF8_getc_avm_byteenable,
    output wire [0:0] out_ml4475_UTF8_getc_avm_enable,
    output wire [0:0] out_ml4475_UTF8_getc_avm_read,
    output wire [0:0] out_ml4475_UTF8_getc_avm_write,
    output wire [63:0] out_ml4475_UTF8_getc_avm_writedata,
    output wire [63:0] out_ml4504_UTF8_getc_avm_address,
    output wire [0:0] out_ml4504_UTF8_getc_avm_burstcount,
    output wire [7:0] out_ml4504_UTF8_getc_avm_byteenable,
    output wire [0:0] out_ml4504_UTF8_getc_avm_enable,
    output wire [0:0] out_ml4504_UTF8_getc_avm_read,
    output wire [0:0] out_ml4504_UTF8_getc_avm_write,
    output wire [63:0] out_ml4504_UTF8_getc_avm_writedata,
    output wire [63:0] out_ml6_UTF8_getc_avm_address,
    output wire [0:0] out_ml6_UTF8_getc_avm_burstcount,
    output wire [7:0] out_ml6_UTF8_getc_avm_byteenable,
    output wire [0:0] out_ml6_UTF8_getc_avm_enable,
    output wire [0:0] out_ml6_UTF8_getc_avm_read,
    output wire [0:0] out_ml6_UTF8_getc_avm_write,
    output wire [63:0] out_ml6_UTF8_getc_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] UTF8_getc_B1_start_branch_out_stall_out;
    wire [0:0] UTF8_getc_B1_start_branch_out_valid_out_0;
    wire [0:0] UTF8_getc_B1_start_merge_out_forked;
    wire [0:0] UTF8_getc_B1_start_merge_out_stall_out_0;
    wire [0:0] UTF8_getc_B1_start_merge_out_stall_out_1;
    wire [0:0] UTF8_getc_B1_start_merge_out_valid_out;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_stall_out;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_valid_out;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_iord_bl_call_UTF8_getc_o_fifoready;
    wire [31:0] bb_UTF8_getc_B1_start_stall_region_out_iowr_bl_return_UTF8_getc_o_fifodata;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_iowr_bl_return_UTF8_getc_o_fifovalid;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_address;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_burstcount;
    wire [7:0] bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_byteenable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_enable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_read;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_write;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_writedata;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_address;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_burstcount;
    wire [7:0] bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_byteenable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_enable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_read;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_write;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_writedata;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_lsu_memdep_1_o_active;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_address;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_burstcount;
    wire [7:0] bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_byteenable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_enable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_read;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_write;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_writedata;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_address;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_burstcount;
    wire [7:0] bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_byteenable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_enable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_read;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_write;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_writedata;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_address;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_burstcount;
    wire [7:0] bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_byteenable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_enable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_read;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_write;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_writedata;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_address;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_burstcount;
    wire [7:0] bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_byteenable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_enable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_read;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_write;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_writedata;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_address;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_burstcount;
    wire [7:0] bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_byteenable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_enable;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_read;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_write;
    wire [63:0] bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_writedata;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_UTF8_getc_B1_start_stall_region_out_valid_out;


    // UTF8_getc_B1_start_branch(BLACKBOX,2)
    UTF8_getc_B1_start_branch theUTF8_getc_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_UTF8_getc_B1_start_stall_region_out_valid_out),
        .out_stall_out(UTF8_getc_B1_start_branch_out_stall_out),
        .out_valid_out_0(UTF8_getc_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // UTF8_getc_B1_start_merge(BLACKBOX,3)
    UTF8_getc_B1_start_merge theUTF8_getc_B1_start_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_UTF8_getc_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(UTF8_getc_B1_start_merge_out_forked),
        .out_stall_out_0(UTF8_getc_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(UTF8_getc_B1_start_merge_out_stall_out_1),
        .out_valid_out(UTF8_getc_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_UTF8_getc_B1_start_stall_region(BLACKBOX,4)
    UTF8_getc_bb_B1_start_stall_region thebb_UTF8_getc_B1_start_stall_region (
        .in_flush(in_flush),
        .in_forked(UTF8_getc_B1_start_merge_out_forked),
        .in_iord_bl_call_UTF8_getc_i_fifodata(in_iord_bl_call_UTF8_getc_i_fifodata),
        .in_iord_bl_call_UTF8_getc_i_fifovalid(in_iord_bl_call_UTF8_getc_i_fifovalid),
        .in_iowr_bl_return_UTF8_getc_i_fifoready(in_iowr_bl_return_UTF8_getc_i_fifoready),
        .in_lm2_UTF8_getc_avm_readdata(in_lm2_UTF8_getc_avm_readdata),
        .in_lm2_UTF8_getc_avm_readdatavalid(in_lm2_UTF8_getc_avm_readdatavalid),
        .in_lm2_UTF8_getc_avm_waitrequest(in_lm2_UTF8_getc_avm_waitrequest),
        .in_lm2_UTF8_getc_avm_writeack(in_lm2_UTF8_getc_avm_writeack),
        .in_lm3303_UTF8_getc_avm_readdata(in_lm3303_UTF8_getc_avm_readdata),
        .in_lm3303_UTF8_getc_avm_readdatavalid(in_lm3303_UTF8_getc_avm_readdatavalid),
        .in_lm3303_UTF8_getc_avm_waitrequest(in_lm3303_UTF8_getc_avm_waitrequest),
        .in_lm3303_UTF8_getc_avm_writeack(in_lm3303_UTF8_getc_avm_writeack),
        .in_memdep_1_UTF8_getc_avm_readdata(in_memdep_1_UTF8_getc_avm_readdata),
        .in_memdep_1_UTF8_getc_avm_readdatavalid(in_memdep_1_UTF8_getc_avm_readdatavalid),
        .in_memdep_1_UTF8_getc_avm_waitrequest(in_memdep_1_UTF8_getc_avm_waitrequest),
        .in_memdep_1_UTF8_getc_avm_writeack(in_memdep_1_UTF8_getc_avm_writeack),
        .in_ml4347_UTF8_getc_avm_readdata(in_ml4347_UTF8_getc_avm_readdata),
        .in_ml4347_UTF8_getc_avm_readdatavalid(in_ml4347_UTF8_getc_avm_readdatavalid),
        .in_ml4347_UTF8_getc_avm_waitrequest(in_ml4347_UTF8_getc_avm_waitrequest),
        .in_ml4347_UTF8_getc_avm_writeack(in_ml4347_UTF8_getc_avm_writeack),
        .in_ml4475_UTF8_getc_avm_readdata(in_ml4475_UTF8_getc_avm_readdata),
        .in_ml4475_UTF8_getc_avm_readdatavalid(in_ml4475_UTF8_getc_avm_readdatavalid),
        .in_ml4475_UTF8_getc_avm_waitrequest(in_ml4475_UTF8_getc_avm_waitrequest),
        .in_ml4475_UTF8_getc_avm_writeack(in_ml4475_UTF8_getc_avm_writeack),
        .in_ml4504_UTF8_getc_avm_readdata(in_ml4504_UTF8_getc_avm_readdata),
        .in_ml4504_UTF8_getc_avm_readdatavalid(in_ml4504_UTF8_getc_avm_readdatavalid),
        .in_ml4504_UTF8_getc_avm_waitrequest(in_ml4504_UTF8_getc_avm_waitrequest),
        .in_ml4504_UTF8_getc_avm_writeack(in_ml4504_UTF8_getc_avm_writeack),
        .in_ml6_UTF8_getc_avm_readdata(in_ml6_UTF8_getc_avm_readdata),
        .in_ml6_UTF8_getc_avm_readdatavalid(in_ml6_UTF8_getc_avm_readdatavalid),
        .in_ml6_UTF8_getc_avm_waitrequest(in_ml6_UTF8_getc_avm_waitrequest),
        .in_ml6_UTF8_getc_avm_writeack(in_ml6_UTF8_getc_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(UTF8_getc_B1_start_branch_out_stall_out),
        .in_valid_in(UTF8_getc_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_stall_out(bb_UTF8_getc_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_valid_out(bb_UTF8_getc_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_valid_out),
        .out_iord_bl_call_UTF8_getc_o_fifoready(bb_UTF8_getc_B1_start_stall_region_out_iord_bl_call_UTF8_getc_o_fifoready),
        .out_iowr_bl_return_UTF8_getc_o_fifodata(bb_UTF8_getc_B1_start_stall_region_out_iowr_bl_return_UTF8_getc_o_fifodata),
        .out_iowr_bl_return_UTF8_getc_o_fifovalid(bb_UTF8_getc_B1_start_stall_region_out_iowr_bl_return_UTF8_getc_o_fifovalid),
        .out_lm2_UTF8_getc_avm_address(bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_address),
        .out_lm2_UTF8_getc_avm_burstcount(bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_burstcount),
        .out_lm2_UTF8_getc_avm_byteenable(bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_byteenable),
        .out_lm2_UTF8_getc_avm_enable(bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_enable),
        .out_lm2_UTF8_getc_avm_read(bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_read),
        .out_lm2_UTF8_getc_avm_write(bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_write),
        .out_lm2_UTF8_getc_avm_writedata(bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_writedata),
        .out_lm3303_UTF8_getc_avm_address(bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_address),
        .out_lm3303_UTF8_getc_avm_burstcount(bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_burstcount),
        .out_lm3303_UTF8_getc_avm_byteenable(bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_byteenable),
        .out_lm3303_UTF8_getc_avm_enable(bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_enable),
        .out_lm3303_UTF8_getc_avm_read(bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_read),
        .out_lm3303_UTF8_getc_avm_write(bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_write),
        .out_lm3303_UTF8_getc_avm_writedata(bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_writedata),
        .out_lsu_memdep_1_o_active(bb_UTF8_getc_B1_start_stall_region_out_lsu_memdep_1_o_active),
        .out_memdep_1_UTF8_getc_avm_address(bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_address),
        .out_memdep_1_UTF8_getc_avm_burstcount(bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_burstcount),
        .out_memdep_1_UTF8_getc_avm_byteenable(bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_byteenable),
        .out_memdep_1_UTF8_getc_avm_enable(bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_enable),
        .out_memdep_1_UTF8_getc_avm_read(bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_read),
        .out_memdep_1_UTF8_getc_avm_write(bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_write),
        .out_memdep_1_UTF8_getc_avm_writedata(bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_writedata),
        .out_ml4347_UTF8_getc_avm_address(bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_address),
        .out_ml4347_UTF8_getc_avm_burstcount(bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_burstcount),
        .out_ml4347_UTF8_getc_avm_byteenable(bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_byteenable),
        .out_ml4347_UTF8_getc_avm_enable(bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_enable),
        .out_ml4347_UTF8_getc_avm_read(bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_read),
        .out_ml4347_UTF8_getc_avm_write(bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_write),
        .out_ml4347_UTF8_getc_avm_writedata(bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_writedata),
        .out_ml4475_UTF8_getc_avm_address(bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_address),
        .out_ml4475_UTF8_getc_avm_burstcount(bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_burstcount),
        .out_ml4475_UTF8_getc_avm_byteenable(bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_byteenable),
        .out_ml4475_UTF8_getc_avm_enable(bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_enable),
        .out_ml4475_UTF8_getc_avm_read(bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_read),
        .out_ml4475_UTF8_getc_avm_write(bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_write),
        .out_ml4475_UTF8_getc_avm_writedata(bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_writedata),
        .out_ml4504_UTF8_getc_avm_address(bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_address),
        .out_ml4504_UTF8_getc_avm_burstcount(bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_burstcount),
        .out_ml4504_UTF8_getc_avm_byteenable(bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_byteenable),
        .out_ml4504_UTF8_getc_avm_enable(bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_enable),
        .out_ml4504_UTF8_getc_avm_read(bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_read),
        .out_ml4504_UTF8_getc_avm_write(bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_write),
        .out_ml4504_UTF8_getc_avm_writedata(bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_writedata),
        .out_ml6_UTF8_getc_avm_address(bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_address),
        .out_ml6_UTF8_getc_avm_burstcount(bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_burstcount),
        .out_ml6_UTF8_getc_avm_byteenable(bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_byteenable),
        .out_ml6_UTF8_getc_avm_enable(bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_enable),
        .out_ml6_UTF8_getc_avm_read(bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_read),
        .out_ml6_UTF8_getc_avm_write(bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_write),
        .out_ml6_UTF8_getc_avm_writedata(bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_writedata),
        .out_pipeline_valid_out(bb_UTF8_getc_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_UTF8_getc_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_UTF8_getc_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,42)
    assign out_exiting_stall_out = bb_UTF8_getc_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,43)
    assign out_exiting_valid_out = bb_UTF8_getc_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_utf8_getc0_exiting_valid_out;

    // out_iord_bl_call_UTF8_getc_o_fifoready(GPOUT,44)
    assign out_iord_bl_call_UTF8_getc_o_fifoready = bb_UTF8_getc_B1_start_stall_region_out_iord_bl_call_UTF8_getc_o_fifoready;

    // out_iowr_bl_return_UTF8_getc_o_fifodata(GPOUT,45)
    assign out_iowr_bl_return_UTF8_getc_o_fifodata = bb_UTF8_getc_B1_start_stall_region_out_iowr_bl_return_UTF8_getc_o_fifodata;

    // out_iowr_bl_return_UTF8_getc_o_fifovalid(GPOUT,46)
    assign out_iowr_bl_return_UTF8_getc_o_fifovalid = bb_UTF8_getc_B1_start_stall_region_out_iowr_bl_return_UTF8_getc_o_fifovalid;

    // out_lm2_UTF8_getc_avm_address(GPOUT,47)
    assign out_lm2_UTF8_getc_avm_address = bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_address;

    // out_lm2_UTF8_getc_avm_burstcount(GPOUT,48)
    assign out_lm2_UTF8_getc_avm_burstcount = bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_burstcount;

    // out_lm2_UTF8_getc_avm_byteenable(GPOUT,49)
    assign out_lm2_UTF8_getc_avm_byteenable = bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_byteenable;

    // out_lm2_UTF8_getc_avm_enable(GPOUT,50)
    assign out_lm2_UTF8_getc_avm_enable = bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_enable;

    // out_lm2_UTF8_getc_avm_read(GPOUT,51)
    assign out_lm2_UTF8_getc_avm_read = bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_read;

    // out_lm2_UTF8_getc_avm_write(GPOUT,52)
    assign out_lm2_UTF8_getc_avm_write = bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_write;

    // out_lm2_UTF8_getc_avm_writedata(GPOUT,53)
    assign out_lm2_UTF8_getc_avm_writedata = bb_UTF8_getc_B1_start_stall_region_out_lm2_UTF8_getc_avm_writedata;

    // out_lm3303_UTF8_getc_avm_address(GPOUT,54)
    assign out_lm3303_UTF8_getc_avm_address = bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_address;

    // out_lm3303_UTF8_getc_avm_burstcount(GPOUT,55)
    assign out_lm3303_UTF8_getc_avm_burstcount = bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_burstcount;

    // out_lm3303_UTF8_getc_avm_byteenable(GPOUT,56)
    assign out_lm3303_UTF8_getc_avm_byteenable = bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_byteenable;

    // out_lm3303_UTF8_getc_avm_enable(GPOUT,57)
    assign out_lm3303_UTF8_getc_avm_enable = bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_enable;

    // out_lm3303_UTF8_getc_avm_read(GPOUT,58)
    assign out_lm3303_UTF8_getc_avm_read = bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_read;

    // out_lm3303_UTF8_getc_avm_write(GPOUT,59)
    assign out_lm3303_UTF8_getc_avm_write = bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_write;

    // out_lm3303_UTF8_getc_avm_writedata(GPOUT,60)
    assign out_lm3303_UTF8_getc_avm_writedata = bb_UTF8_getc_B1_start_stall_region_out_lm3303_UTF8_getc_avm_writedata;

    // out_lsu_memdep_1_o_active(GPOUT,61)
    assign out_lsu_memdep_1_o_active = bb_UTF8_getc_B1_start_stall_region_out_lsu_memdep_1_o_active;

    // out_memdep_1_UTF8_getc_avm_address(GPOUT,62)
    assign out_memdep_1_UTF8_getc_avm_address = bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_address;

    // out_memdep_1_UTF8_getc_avm_burstcount(GPOUT,63)
    assign out_memdep_1_UTF8_getc_avm_burstcount = bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_burstcount;

    // out_memdep_1_UTF8_getc_avm_byteenable(GPOUT,64)
    assign out_memdep_1_UTF8_getc_avm_byteenable = bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_byteenable;

    // out_memdep_1_UTF8_getc_avm_enable(GPOUT,65)
    assign out_memdep_1_UTF8_getc_avm_enable = bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_enable;

    // out_memdep_1_UTF8_getc_avm_read(GPOUT,66)
    assign out_memdep_1_UTF8_getc_avm_read = bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_read;

    // out_memdep_1_UTF8_getc_avm_write(GPOUT,67)
    assign out_memdep_1_UTF8_getc_avm_write = bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_write;

    // out_memdep_1_UTF8_getc_avm_writedata(GPOUT,68)
    assign out_memdep_1_UTF8_getc_avm_writedata = bb_UTF8_getc_B1_start_stall_region_out_memdep_1_UTF8_getc_avm_writedata;

    // out_ml4347_UTF8_getc_avm_address(GPOUT,69)
    assign out_ml4347_UTF8_getc_avm_address = bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_address;

    // out_ml4347_UTF8_getc_avm_burstcount(GPOUT,70)
    assign out_ml4347_UTF8_getc_avm_burstcount = bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_burstcount;

    // out_ml4347_UTF8_getc_avm_byteenable(GPOUT,71)
    assign out_ml4347_UTF8_getc_avm_byteenable = bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_byteenable;

    // out_ml4347_UTF8_getc_avm_enable(GPOUT,72)
    assign out_ml4347_UTF8_getc_avm_enable = bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_enable;

    // out_ml4347_UTF8_getc_avm_read(GPOUT,73)
    assign out_ml4347_UTF8_getc_avm_read = bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_read;

    // out_ml4347_UTF8_getc_avm_write(GPOUT,74)
    assign out_ml4347_UTF8_getc_avm_write = bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_write;

    // out_ml4347_UTF8_getc_avm_writedata(GPOUT,75)
    assign out_ml4347_UTF8_getc_avm_writedata = bb_UTF8_getc_B1_start_stall_region_out_ml4347_UTF8_getc_avm_writedata;

    // out_ml4475_UTF8_getc_avm_address(GPOUT,76)
    assign out_ml4475_UTF8_getc_avm_address = bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_address;

    // out_ml4475_UTF8_getc_avm_burstcount(GPOUT,77)
    assign out_ml4475_UTF8_getc_avm_burstcount = bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_burstcount;

    // out_ml4475_UTF8_getc_avm_byteenable(GPOUT,78)
    assign out_ml4475_UTF8_getc_avm_byteenable = bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_byteenable;

    // out_ml4475_UTF8_getc_avm_enable(GPOUT,79)
    assign out_ml4475_UTF8_getc_avm_enable = bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_enable;

    // out_ml4475_UTF8_getc_avm_read(GPOUT,80)
    assign out_ml4475_UTF8_getc_avm_read = bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_read;

    // out_ml4475_UTF8_getc_avm_write(GPOUT,81)
    assign out_ml4475_UTF8_getc_avm_write = bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_write;

    // out_ml4475_UTF8_getc_avm_writedata(GPOUT,82)
    assign out_ml4475_UTF8_getc_avm_writedata = bb_UTF8_getc_B1_start_stall_region_out_ml4475_UTF8_getc_avm_writedata;

    // out_ml4504_UTF8_getc_avm_address(GPOUT,83)
    assign out_ml4504_UTF8_getc_avm_address = bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_address;

    // out_ml4504_UTF8_getc_avm_burstcount(GPOUT,84)
    assign out_ml4504_UTF8_getc_avm_burstcount = bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_burstcount;

    // out_ml4504_UTF8_getc_avm_byteenable(GPOUT,85)
    assign out_ml4504_UTF8_getc_avm_byteenable = bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_byteenable;

    // out_ml4504_UTF8_getc_avm_enable(GPOUT,86)
    assign out_ml4504_UTF8_getc_avm_enable = bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_enable;

    // out_ml4504_UTF8_getc_avm_read(GPOUT,87)
    assign out_ml4504_UTF8_getc_avm_read = bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_read;

    // out_ml4504_UTF8_getc_avm_write(GPOUT,88)
    assign out_ml4504_UTF8_getc_avm_write = bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_write;

    // out_ml4504_UTF8_getc_avm_writedata(GPOUT,89)
    assign out_ml4504_UTF8_getc_avm_writedata = bb_UTF8_getc_B1_start_stall_region_out_ml4504_UTF8_getc_avm_writedata;

    // out_ml6_UTF8_getc_avm_address(GPOUT,90)
    assign out_ml6_UTF8_getc_avm_address = bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_address;

    // out_ml6_UTF8_getc_avm_burstcount(GPOUT,91)
    assign out_ml6_UTF8_getc_avm_burstcount = bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_burstcount;

    // out_ml6_UTF8_getc_avm_byteenable(GPOUT,92)
    assign out_ml6_UTF8_getc_avm_byteenable = bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_byteenable;

    // out_ml6_UTF8_getc_avm_enable(GPOUT,93)
    assign out_ml6_UTF8_getc_avm_enable = bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_enable;

    // out_ml6_UTF8_getc_avm_read(GPOUT,94)
    assign out_ml6_UTF8_getc_avm_read = bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_read;

    // out_ml6_UTF8_getc_avm_write(GPOUT,95)
    assign out_ml6_UTF8_getc_avm_write = bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_write;

    // out_ml6_UTF8_getc_avm_writedata(GPOUT,96)
    assign out_ml6_UTF8_getc_avm_writedata = bb_UTF8_getc_B1_start_stall_region_out_ml6_UTF8_getc_avm_writedata;

    // out_stall_out_0(GPOUT,97)
    assign out_stall_out_0 = UTF8_getc_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,98)
    assign out_stall_out_1 = UTF8_getc_B1_start_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,99)
    assign out_valid_out_0 = UTF8_getc_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,101)
    assign out_pipeline_valid_out = bb_UTF8_getc_B1_start_stall_region_out_pipeline_valid_out;

endmodule
