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

// SystemVerilog created from stb_from_utf8_bb_B2
// SystemVerilog created on Sun May 24 22:41:05 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stb_from_utf8_bb_B2 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [7:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_lm2002_stb_from_utf8_avm_readdata,
    input wire [0:0] in_lm2002_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm2002_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm2002_stb_from_utf8_avm_writeack,
    input wire [63:0] in_lm2545_stb_from_utf8_avm_readdata,
    input wire [0:0] in_lm2545_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm2545_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm2545_stb_from_utf8_avm_writeack,
    input wire [63:0] in_memdep_6_stb_from_utf8_avm_readdata,
    input wire [0:0] in_memdep_6_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_memdep_6_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_memdep_6_stb_from_utf8_avm_writeack,
    input wire [63:0] in_memdep_stb_from_utf8_avm_readdata,
    input wire [0:0] in_memdep_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_memdep_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_memdep_stb_from_utf8_avm_writeack,
    input wire [63:0] in_ml2664_stb_from_utf8_avm_readdata,
    input wire [0:0] in_ml2664_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_ml2664_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_ml2664_stb_from_utf8_avm_writeack,
    input wire [63:0] in_ml3_stb_from_utf8_avm_readdata,
    input wire [0:0] in_ml3_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_ml3_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_ml3_stb_from_utf8_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_lm2002_stb_from_utf8_avm_address,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_lm2002_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_enable,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_read,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_write,
    output wire [63:0] out_lm2002_stb_from_utf8_avm_writedata,
    output wire [63:0] out_lm2545_stb_from_utf8_avm_address,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_lm2545_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_enable,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_read,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_write,
    output wire [63:0] out_lm2545_stb_from_utf8_avm_writedata,
    output wire [0:0] out_lsu_memdep_6_o_active,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_6_stb_from_utf8_avm_address,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_memdep_6_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_enable,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_read,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_write,
    output wire [63:0] out_memdep_6_stb_from_utf8_avm_writedata,
    output wire [63:0] out_memdep_stb_from_utf8_avm_address,
    output wire [0:0] out_memdep_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_memdep_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_memdep_stb_from_utf8_avm_enable,
    output wire [0:0] out_memdep_stb_from_utf8_avm_read,
    output wire [0:0] out_memdep_stb_from_utf8_avm_write,
    output wire [63:0] out_memdep_stb_from_utf8_avm_writedata,
    output wire [63:0] out_ml2664_stb_from_utf8_avm_address,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_ml2664_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_enable,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_read,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_write,
    output wire [63:0] out_ml2664_stb_from_utf8_avm_writedata,
    output wire [63:0] out_ml3_stb_from_utf8_avm_address,
    output wire [0:0] out_ml3_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_ml3_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_ml3_stb_from_utf8_avm_enable,
    output wire [0:0] out_ml3_stb_from_utf8_avm_read,
    output wire [0:0] out_ml3_stb_from_utf8_avm_write,
    output wire [63:0] out_ml3_stb_from_utf8_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_stall_out;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_valid_out;
    wire [31:0] bb_stb_from_utf8_B2_stall_region_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_stb_from_utf8_B2_stall_region_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_writedata;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lsu_memdep_6_o_active;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_masked;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_writedata;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_stall_out;
    wire [0:0] bb_stb_from_utf8_B2_stall_region_out_valid_out;
    wire [0:0] stb_from_utf8_B2_branch_out_stall_out;
    wire [0:0] stb_from_utf8_B2_branch_out_valid_out_0;
    wire [0:0] stb_from_utf8_B2_branch_out_valid_out_1;
    wire [0:0] stb_from_utf8_B2_merge_out_forked;
    wire [0:0] stb_from_utf8_B2_merge_out_stall_out_0;
    wire [0:0] stb_from_utf8_B2_merge_out_stall_out_1;
    wire [0:0] stb_from_utf8_B2_merge_out_valid_out;


    // stb_from_utf8_B2_branch(BLACKBOX,95)
    stb_from_utf8_B2_branch thestb_from_utf8_B2_branch (
        .in_masked(bb_stb_from_utf8_B2_stall_region_out_masked),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stb_from_utf8_B2_stall_region_out_valid_out),
        .out_stall_out(stb_from_utf8_B2_branch_out_stall_out),
        .out_valid_out_0(stb_from_utf8_B2_branch_out_valid_out_0),
        .out_valid_out_1(stb_from_utf8_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // stb_from_utf8_B2_merge(BLACKBOX,96)
    stb_from_utf8_B2_merge thestb_from_utf8_B2_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_stb_from_utf8_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(stb_from_utf8_B2_merge_out_forked),
        .out_stall_out_0(stb_from_utf8_B2_merge_out_stall_out_0),
        .out_stall_out_1(stb_from_utf8_B2_merge_out_stall_out_1),
        .out_valid_out(stb_from_utf8_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stb_from_utf8_B2_stall_region(BLACKBOX,2)
    stb_from_utf8_bb_B2_stall_region thebb_stb_from_utf8_B2_stall_region (
        .in_flush(in_flush),
        .in_forked(stb_from_utf8_B2_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_lm2002_stb_from_utf8_avm_readdata(in_lm2002_stb_from_utf8_avm_readdata),
        .in_lm2002_stb_from_utf8_avm_readdatavalid(in_lm2002_stb_from_utf8_avm_readdatavalid),
        .in_lm2002_stb_from_utf8_avm_waitrequest(in_lm2002_stb_from_utf8_avm_waitrequest),
        .in_lm2002_stb_from_utf8_avm_writeack(in_lm2002_stb_from_utf8_avm_writeack),
        .in_lm2545_stb_from_utf8_avm_readdata(in_lm2545_stb_from_utf8_avm_readdata),
        .in_lm2545_stb_from_utf8_avm_readdatavalid(in_lm2545_stb_from_utf8_avm_readdatavalid),
        .in_lm2545_stb_from_utf8_avm_waitrequest(in_lm2545_stb_from_utf8_avm_waitrequest),
        .in_lm2545_stb_from_utf8_avm_writeack(in_lm2545_stb_from_utf8_avm_writeack),
        .in_memdep_6_stb_from_utf8_avm_readdata(in_memdep_6_stb_from_utf8_avm_readdata),
        .in_memdep_6_stb_from_utf8_avm_readdatavalid(in_memdep_6_stb_from_utf8_avm_readdatavalid),
        .in_memdep_6_stb_from_utf8_avm_waitrequest(in_memdep_6_stb_from_utf8_avm_waitrequest),
        .in_memdep_6_stb_from_utf8_avm_writeack(in_memdep_6_stb_from_utf8_avm_writeack),
        .in_memdep_stb_from_utf8_avm_readdata(in_memdep_stb_from_utf8_avm_readdata),
        .in_memdep_stb_from_utf8_avm_readdatavalid(in_memdep_stb_from_utf8_avm_readdatavalid),
        .in_memdep_stb_from_utf8_avm_waitrequest(in_memdep_stb_from_utf8_avm_waitrequest),
        .in_memdep_stb_from_utf8_avm_writeack(in_memdep_stb_from_utf8_avm_writeack),
        .in_ml2664_stb_from_utf8_avm_readdata(in_ml2664_stb_from_utf8_avm_readdata),
        .in_ml2664_stb_from_utf8_avm_readdatavalid(in_ml2664_stb_from_utf8_avm_readdatavalid),
        .in_ml2664_stb_from_utf8_avm_waitrequest(in_ml2664_stb_from_utf8_avm_waitrequest),
        .in_ml2664_stb_from_utf8_avm_writeack(in_ml2664_stb_from_utf8_avm_writeack),
        .in_ml3_stb_from_utf8_avm_readdata(in_ml3_stb_from_utf8_avm_readdata),
        .in_ml3_stb_from_utf8_avm_readdatavalid(in_ml3_stb_from_utf8_avm_readdatavalid),
        .in_ml3_stb_from_utf8_avm_waitrequest(in_ml3_stb_from_utf8_avm_waitrequest),
        .in_ml3_stb_from_utf8_avm_writeack(in_ml3_stb_from_utf8_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(stb_from_utf8_B2_branch_out_stall_out),
        .in_valid_in(stb_from_utf8_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_stall_out(bb_stb_from_utf8_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_valid_out(bb_stb_from_utf8_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_valid_out),
        .out_intel_reserved_ffwd_7_0(bb_stb_from_utf8_B2_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_stb_from_utf8_B2_stall_region_out_intel_reserved_ffwd_8_0),
        .out_lm2002_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_address),
        .out_lm2002_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_burstcount),
        .out_lm2002_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_byteenable),
        .out_lm2002_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_enable),
        .out_lm2002_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_read),
        .out_lm2002_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_write),
        .out_lm2002_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_writedata),
        .out_lm2545_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_address),
        .out_lm2545_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_burstcount),
        .out_lm2545_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_byteenable),
        .out_lm2545_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_enable),
        .out_lm2545_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_read),
        .out_lm2545_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_write),
        .out_lm2545_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_writedata),
        .out_lsu_memdep_6_o_active(bb_stb_from_utf8_B2_stall_region_out_lsu_memdep_6_o_active),
        .out_lsu_memdep_o_active(bb_stb_from_utf8_B2_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_stb_from_utf8_B2_stall_region_out_masked),
        .out_memdep_6_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_address),
        .out_memdep_6_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_burstcount),
        .out_memdep_6_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_byteenable),
        .out_memdep_6_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_enable),
        .out_memdep_6_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_read),
        .out_memdep_6_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_write),
        .out_memdep_6_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_writedata),
        .out_memdep_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_address),
        .out_memdep_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_burstcount),
        .out_memdep_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_byteenable),
        .out_memdep_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_enable),
        .out_memdep_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_read),
        .out_memdep_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_write),
        .out_memdep_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_writedata),
        .out_ml2664_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_address),
        .out_ml2664_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_burstcount),
        .out_ml2664_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_byteenable),
        .out_ml2664_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_enable),
        .out_ml2664_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_read),
        .out_ml2664_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_write),
        .out_ml2664_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_writedata),
        .out_ml3_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_address),
        .out_ml3_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_burstcount),
        .out_ml3_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_byteenable),
        .out_ml3_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_enable),
        .out_ml3_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_read),
        .out_ml3_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_write),
        .out_ml3_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_writedata),
        .out_pipeline_valid_out(bb_stb_from_utf8_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stb_from_utf8_B2_stall_region_out_stall_out),
        .out_valid_out(bb_stb_from_utf8_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,41)
    assign out_exiting_stall_out = bb_stb_from_utf8_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,42)
    assign out_exiting_valid_out = bb_stb_from_utf8_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stb_from_utf84_exiting_valid_out;

    // out_intel_reserved_ffwd_7_0(GPOUT,43)
    assign out_intel_reserved_ffwd_7_0 = bb_stb_from_utf8_B2_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,44)
    assign out_intel_reserved_ffwd_8_0 = bb_stb_from_utf8_B2_stall_region_out_intel_reserved_ffwd_8_0;

    // out_lm2002_stb_from_utf8_avm_address(GPOUT,45)
    assign out_lm2002_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_address;

    // out_lm2002_stb_from_utf8_avm_burstcount(GPOUT,46)
    assign out_lm2002_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_burstcount;

    // out_lm2002_stb_from_utf8_avm_byteenable(GPOUT,47)
    assign out_lm2002_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_byteenable;

    // out_lm2002_stb_from_utf8_avm_enable(GPOUT,48)
    assign out_lm2002_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_enable;

    // out_lm2002_stb_from_utf8_avm_read(GPOUT,49)
    assign out_lm2002_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_read;

    // out_lm2002_stb_from_utf8_avm_write(GPOUT,50)
    assign out_lm2002_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_write;

    // out_lm2002_stb_from_utf8_avm_writedata(GPOUT,51)
    assign out_lm2002_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_stall_region_out_lm2002_stb_from_utf8_avm_writedata;

    // out_lm2545_stb_from_utf8_avm_address(GPOUT,52)
    assign out_lm2545_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_address;

    // out_lm2545_stb_from_utf8_avm_burstcount(GPOUT,53)
    assign out_lm2545_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_burstcount;

    // out_lm2545_stb_from_utf8_avm_byteenable(GPOUT,54)
    assign out_lm2545_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_byteenable;

    // out_lm2545_stb_from_utf8_avm_enable(GPOUT,55)
    assign out_lm2545_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_enable;

    // out_lm2545_stb_from_utf8_avm_read(GPOUT,56)
    assign out_lm2545_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_read;

    // out_lm2545_stb_from_utf8_avm_write(GPOUT,57)
    assign out_lm2545_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_write;

    // out_lm2545_stb_from_utf8_avm_writedata(GPOUT,58)
    assign out_lm2545_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_stall_region_out_lm2545_stb_from_utf8_avm_writedata;

    // out_lsu_memdep_6_o_active(GPOUT,59)
    assign out_lsu_memdep_6_o_active = bb_stb_from_utf8_B2_stall_region_out_lsu_memdep_6_o_active;

    // out_lsu_memdep_o_active(GPOUT,60)
    assign out_lsu_memdep_o_active = bb_stb_from_utf8_B2_stall_region_out_lsu_memdep_o_active;

    // out_memdep_6_stb_from_utf8_avm_address(GPOUT,61)
    assign out_memdep_6_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_address;

    // out_memdep_6_stb_from_utf8_avm_burstcount(GPOUT,62)
    assign out_memdep_6_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_burstcount;

    // out_memdep_6_stb_from_utf8_avm_byteenable(GPOUT,63)
    assign out_memdep_6_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_byteenable;

    // out_memdep_6_stb_from_utf8_avm_enable(GPOUT,64)
    assign out_memdep_6_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_enable;

    // out_memdep_6_stb_from_utf8_avm_read(GPOUT,65)
    assign out_memdep_6_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_read;

    // out_memdep_6_stb_from_utf8_avm_write(GPOUT,66)
    assign out_memdep_6_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_write;

    // out_memdep_6_stb_from_utf8_avm_writedata(GPOUT,67)
    assign out_memdep_6_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_stall_region_out_memdep_6_stb_from_utf8_avm_writedata;

    // out_memdep_stb_from_utf8_avm_address(GPOUT,68)
    assign out_memdep_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_address;

    // out_memdep_stb_from_utf8_avm_burstcount(GPOUT,69)
    assign out_memdep_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_burstcount;

    // out_memdep_stb_from_utf8_avm_byteenable(GPOUT,70)
    assign out_memdep_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_byteenable;

    // out_memdep_stb_from_utf8_avm_enable(GPOUT,71)
    assign out_memdep_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_enable;

    // out_memdep_stb_from_utf8_avm_read(GPOUT,72)
    assign out_memdep_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_read;

    // out_memdep_stb_from_utf8_avm_write(GPOUT,73)
    assign out_memdep_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_write;

    // out_memdep_stb_from_utf8_avm_writedata(GPOUT,74)
    assign out_memdep_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_stall_region_out_memdep_stb_from_utf8_avm_writedata;

    // out_ml2664_stb_from_utf8_avm_address(GPOUT,75)
    assign out_ml2664_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_address;

    // out_ml2664_stb_from_utf8_avm_burstcount(GPOUT,76)
    assign out_ml2664_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_burstcount;

    // out_ml2664_stb_from_utf8_avm_byteenable(GPOUT,77)
    assign out_ml2664_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_byteenable;

    // out_ml2664_stb_from_utf8_avm_enable(GPOUT,78)
    assign out_ml2664_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_enable;

    // out_ml2664_stb_from_utf8_avm_read(GPOUT,79)
    assign out_ml2664_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_read;

    // out_ml2664_stb_from_utf8_avm_write(GPOUT,80)
    assign out_ml2664_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_write;

    // out_ml2664_stb_from_utf8_avm_writedata(GPOUT,81)
    assign out_ml2664_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_stall_region_out_ml2664_stb_from_utf8_avm_writedata;

    // out_ml3_stb_from_utf8_avm_address(GPOUT,82)
    assign out_ml3_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_address;

    // out_ml3_stb_from_utf8_avm_burstcount(GPOUT,83)
    assign out_ml3_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_burstcount;

    // out_ml3_stb_from_utf8_avm_byteenable(GPOUT,84)
    assign out_ml3_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_byteenable;

    // out_ml3_stb_from_utf8_avm_enable(GPOUT,85)
    assign out_ml3_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_enable;

    // out_ml3_stb_from_utf8_avm_read(GPOUT,86)
    assign out_ml3_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_read;

    // out_ml3_stb_from_utf8_avm_write(GPOUT,87)
    assign out_ml3_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_write;

    // out_ml3_stb_from_utf8_avm_writedata(GPOUT,88)
    assign out_ml3_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_stall_region_out_ml3_stb_from_utf8_avm_writedata;

    // out_stall_out_0(GPOUT,89)
    assign out_stall_out_0 = stb_from_utf8_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,90)
    assign out_stall_out_1 = stb_from_utf8_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,91)
    assign out_valid_out_0 = stb_from_utf8_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,92)
    assign out_valid_out_1 = stb_from_utf8_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,94)
    assign out_pipeline_valid_out = bb_stb_from_utf8_B2_stall_region_out_pipeline_valid_out;

endmodule
