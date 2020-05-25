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

// SystemVerilog created from claswp_bb_B4
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_bb_B4 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked163_0,
    input wire [0:0] in_forked163_1,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_lm248_claswp_avm_readdata,
    input wire [0:0] in_lm248_claswp_avm_readdatavalid,
    input wire [0:0] in_lm248_claswp_avm_waitrequest,
    input wire [0:0] in_lm248_claswp_avm_writeack,
    input wire [63:0] in_lm269_claswp_avm_readdata,
    input wire [0:0] in_lm269_claswp_avm_readdatavalid,
    input wire [0:0] in_lm269_claswp_avm_waitrequest,
    input wire [0:0] in_lm269_claswp_avm_writeack,
    input wire [63:0] in_lm2810_claswp_avm_readdata,
    input wire [0:0] in_lm2810_claswp_avm_readdatavalid,
    input wire [0:0] in_lm2810_claswp_avm_waitrequest,
    input wire [0:0] in_lm2810_claswp_avm_writeack,
    input wire [63:0] in_lm7_claswp_avm_readdata,
    input wire [0:0] in_lm7_claswp_avm_readdatavalid,
    input wire [0:0] in_lm7_claswp_avm_waitrequest,
    input wire [0:0] in_lm7_claswp_avm_writeack,
    input wire [63:0] in_memdep_31_claswp_avm_readdata,
    input wire [0:0] in_memdep_31_claswp_avm_readdatavalid,
    input wire [0:0] in_memdep_31_claswp_avm_waitrequest,
    input wire [0:0] in_memdep_31_claswp_avm_writeack,
    input wire [63:0] in_memdep_38_claswp_avm_readdata,
    input wire [0:0] in_memdep_38_claswp_avm_readdatavalid,
    input wire [0:0] in_memdep_38_claswp_avm_waitrequest,
    input wire [0:0] in_memdep_38_claswp_avm_writeack,
    input wire [63:0] in_memdep_46_claswp_avm_readdata,
    input wire [0:0] in_memdep_46_claswp_avm_readdatavalid,
    input wire [0:0] in_memdep_46_claswp_avm_waitrequest,
    input wire [0:0] in_memdep_46_claswp_avm_writeack,
    input wire [63:0] in_memdep_claswp_avm_readdata,
    input wire [0:0] in_memdep_claswp_avm_readdatavalid,
    input wire [0:0] in_memdep_claswp_avm_waitrequest,
    input wire [0:0] in_memdep_claswp_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_lm248_claswp_avm_address,
    output wire [0:0] out_lm248_claswp_avm_burstcount,
    output wire [7:0] out_lm248_claswp_avm_byteenable,
    output wire [0:0] out_lm248_claswp_avm_enable,
    output wire [0:0] out_lm248_claswp_avm_read,
    output wire [0:0] out_lm248_claswp_avm_write,
    output wire [63:0] out_lm248_claswp_avm_writedata,
    output wire [63:0] out_lm269_claswp_avm_address,
    output wire [0:0] out_lm269_claswp_avm_burstcount,
    output wire [7:0] out_lm269_claswp_avm_byteenable,
    output wire [0:0] out_lm269_claswp_avm_enable,
    output wire [0:0] out_lm269_claswp_avm_read,
    output wire [0:0] out_lm269_claswp_avm_write,
    output wire [63:0] out_lm269_claswp_avm_writedata,
    output wire [63:0] out_lm2810_claswp_avm_address,
    output wire [0:0] out_lm2810_claswp_avm_burstcount,
    output wire [7:0] out_lm2810_claswp_avm_byteenable,
    output wire [0:0] out_lm2810_claswp_avm_enable,
    output wire [0:0] out_lm2810_claswp_avm_read,
    output wire [0:0] out_lm2810_claswp_avm_write,
    output wire [63:0] out_lm2810_claswp_avm_writedata,
    output wire [63:0] out_lm7_claswp_avm_address,
    output wire [0:0] out_lm7_claswp_avm_burstcount,
    output wire [7:0] out_lm7_claswp_avm_byteenable,
    output wire [0:0] out_lm7_claswp_avm_enable,
    output wire [0:0] out_lm7_claswp_avm_read,
    output wire [0:0] out_lm7_claswp_avm_write,
    output wire [63:0] out_lm7_claswp_avm_writedata,
    output wire [0:0] out_lsu_memdep_31_o_active,
    output wire [0:0] out_lsu_memdep_38_o_active,
    output wire [0:0] out_lsu_memdep_46_o_active,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_31_claswp_avm_address,
    output wire [0:0] out_memdep_31_claswp_avm_burstcount,
    output wire [7:0] out_memdep_31_claswp_avm_byteenable,
    output wire [0:0] out_memdep_31_claswp_avm_enable,
    output wire [0:0] out_memdep_31_claswp_avm_read,
    output wire [0:0] out_memdep_31_claswp_avm_write,
    output wire [63:0] out_memdep_31_claswp_avm_writedata,
    output wire [63:0] out_memdep_38_claswp_avm_address,
    output wire [0:0] out_memdep_38_claswp_avm_burstcount,
    output wire [7:0] out_memdep_38_claswp_avm_byteenable,
    output wire [0:0] out_memdep_38_claswp_avm_enable,
    output wire [0:0] out_memdep_38_claswp_avm_read,
    output wire [0:0] out_memdep_38_claswp_avm_write,
    output wire [63:0] out_memdep_38_claswp_avm_writedata,
    output wire [63:0] out_memdep_46_claswp_avm_address,
    output wire [0:0] out_memdep_46_claswp_avm_burstcount,
    output wire [7:0] out_memdep_46_claswp_avm_byteenable,
    output wire [0:0] out_memdep_46_claswp_avm_enable,
    output wire [0:0] out_memdep_46_claswp_avm_read,
    output wire [0:0] out_memdep_46_claswp_avm_write,
    output wire [63:0] out_memdep_46_claswp_avm_writedata,
    output wire [63:0] out_memdep_claswp_avm_address,
    output wire [0:0] out_memdep_claswp_avm_burstcount,
    output wire [7:0] out_memdep_claswp_avm_byteenable,
    output wire [0:0] out_memdep_claswp_avm_enable,
    output wire [0:0] out_memdep_claswp_avm_read,
    output wire [0:0] out_memdep_claswp_avm_write,
    output wire [63:0] out_memdep_claswp_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_claswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_stall_out;
    wire [0:0] bb_claswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_valid_out;
    wire [63:0] bb_claswp_B4_stall_region_out_intel_reserved_ffwd_21_0;
    wire [63:0] bb_claswp_B4_stall_region_out_lm248_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_lm248_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_lm248_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm248_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm248_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_lm248_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_lm248_claswp_avm_writedata;
    wire [63:0] bb_claswp_B4_stall_region_out_lm269_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_lm269_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_lm269_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm269_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm269_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_lm269_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_lm269_claswp_avm_writedata;
    wire [63:0] bb_claswp_B4_stall_region_out_lm2810_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_lm2810_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_lm2810_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm2810_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm2810_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_lm2810_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_lm2810_claswp_avm_writedata;
    wire [63:0] bb_claswp_B4_stall_region_out_lm7_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_lm7_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_lm7_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm7_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_lm7_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_lm7_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_lm7_claswp_avm_writedata;
    wire [0:0] bb_claswp_B4_stall_region_out_lsu_memdep_31_o_active;
    wire [0:0] bb_claswp_B4_stall_region_out_lsu_memdep_38_o_active;
    wire [0:0] bb_claswp_B4_stall_region_out_lsu_memdep_46_o_active;
    wire [0:0] bb_claswp_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_claswp_B4_stall_region_out_masked209;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_writedata;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_writedata;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_writedata;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_claswp_avm_address;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B4_stall_region_out_memdep_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_claswp_avm_enable;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_claswp_avm_read;
    wire [0:0] bb_claswp_B4_stall_region_out_memdep_claswp_avm_write;
    wire [63:0] bb_claswp_B4_stall_region_out_memdep_claswp_avm_writedata;
    wire [0:0] bb_claswp_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_claswp_B4_stall_region_out_stall_out;
    wire [0:0] bb_claswp_B4_stall_region_out_valid_out;
    wire [0:0] claswp_B4_branch_out_stall_out;
    wire [0:0] claswp_B4_branch_out_valid_out_0;
    wire [0:0] claswp_B4_branch_out_valid_out_1;
    wire [0:0] claswp_B4_merge_out_forked163;
    wire [0:0] claswp_B4_merge_out_stall_out_0;
    wire [0:0] claswp_B4_merge_out_stall_out_1;
    wire [0:0] claswp_B4_merge_out_valid_out;


    // claswp_B4_branch(BLACKBOX,3)
    claswp_B4_branch theclaswp_B4_branch (
        .in_masked209(bb_claswp_B4_stall_region_out_masked209),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_claswp_B4_stall_region_out_valid_out),
        .out_stall_out(claswp_B4_branch_out_stall_out),
        .out_valid_out_0(claswp_B4_branch_out_valid_out_0),
        .out_valid_out_1(claswp_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // claswp_B4_merge(BLACKBOX,4)
    claswp_B4_merge theclaswp_B4_merge (
        .in_forked163_0(in_forked163_0),
        .in_forked163_1(in_forked163_1),
        .in_stall_in(bb_claswp_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked163(claswp_B4_merge_out_forked163),
        .out_stall_out_0(claswp_B4_merge_out_stall_out_0),
        .out_stall_out_1(claswp_B4_merge_out_stall_out_1),
        .out_valid_out(claswp_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_claswp_B4_stall_region(BLACKBOX,2)
    claswp_bb_B4_stall_region thebb_claswp_B4_stall_region (
        .in_flush(in_flush),
        .in_forked163(claswp_B4_merge_out_forked163),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm248_claswp_avm_readdata(in_lm248_claswp_avm_readdata),
        .in_lm248_claswp_avm_readdatavalid(in_lm248_claswp_avm_readdatavalid),
        .in_lm248_claswp_avm_waitrequest(in_lm248_claswp_avm_waitrequest),
        .in_lm248_claswp_avm_writeack(in_lm248_claswp_avm_writeack),
        .in_lm269_claswp_avm_readdata(in_lm269_claswp_avm_readdata),
        .in_lm269_claswp_avm_readdatavalid(in_lm269_claswp_avm_readdatavalid),
        .in_lm269_claswp_avm_waitrequest(in_lm269_claswp_avm_waitrequest),
        .in_lm269_claswp_avm_writeack(in_lm269_claswp_avm_writeack),
        .in_lm2810_claswp_avm_readdata(in_lm2810_claswp_avm_readdata),
        .in_lm2810_claswp_avm_readdatavalid(in_lm2810_claswp_avm_readdatavalid),
        .in_lm2810_claswp_avm_waitrequest(in_lm2810_claswp_avm_waitrequest),
        .in_lm2810_claswp_avm_writeack(in_lm2810_claswp_avm_writeack),
        .in_lm7_claswp_avm_readdata(in_lm7_claswp_avm_readdata),
        .in_lm7_claswp_avm_readdatavalid(in_lm7_claswp_avm_readdatavalid),
        .in_lm7_claswp_avm_waitrequest(in_lm7_claswp_avm_waitrequest),
        .in_lm7_claswp_avm_writeack(in_lm7_claswp_avm_writeack),
        .in_memdep_31_claswp_avm_readdata(in_memdep_31_claswp_avm_readdata),
        .in_memdep_31_claswp_avm_readdatavalid(in_memdep_31_claswp_avm_readdatavalid),
        .in_memdep_31_claswp_avm_waitrequest(in_memdep_31_claswp_avm_waitrequest),
        .in_memdep_31_claswp_avm_writeack(in_memdep_31_claswp_avm_writeack),
        .in_memdep_38_claswp_avm_readdata(in_memdep_38_claswp_avm_readdata),
        .in_memdep_38_claswp_avm_readdatavalid(in_memdep_38_claswp_avm_readdatavalid),
        .in_memdep_38_claswp_avm_waitrequest(in_memdep_38_claswp_avm_waitrequest),
        .in_memdep_38_claswp_avm_writeack(in_memdep_38_claswp_avm_writeack),
        .in_memdep_46_claswp_avm_readdata(in_memdep_46_claswp_avm_readdata),
        .in_memdep_46_claswp_avm_readdatavalid(in_memdep_46_claswp_avm_readdatavalid),
        .in_memdep_46_claswp_avm_waitrequest(in_memdep_46_claswp_avm_waitrequest),
        .in_memdep_46_claswp_avm_writeack(in_memdep_46_claswp_avm_writeack),
        .in_memdep_claswp_avm_readdata(in_memdep_claswp_avm_readdata),
        .in_memdep_claswp_avm_readdatavalid(in_memdep_claswp_avm_readdatavalid),
        .in_memdep_claswp_avm_waitrequest(in_memdep_claswp_avm_waitrequest),
        .in_memdep_claswp_avm_writeack(in_memdep_claswp_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(claswp_B4_branch_out_stall_out),
        .in_valid_in(claswp_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_stall_out(bb_claswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_valid_out(bb_claswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_valid_out),
        .out_intel_reserved_ffwd_21_0(bb_claswp_B4_stall_region_out_intel_reserved_ffwd_21_0),
        .out_lm248_claswp_avm_address(bb_claswp_B4_stall_region_out_lm248_claswp_avm_address),
        .out_lm248_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_lm248_claswp_avm_burstcount),
        .out_lm248_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_lm248_claswp_avm_byteenable),
        .out_lm248_claswp_avm_enable(bb_claswp_B4_stall_region_out_lm248_claswp_avm_enable),
        .out_lm248_claswp_avm_read(bb_claswp_B4_stall_region_out_lm248_claswp_avm_read),
        .out_lm248_claswp_avm_write(bb_claswp_B4_stall_region_out_lm248_claswp_avm_write),
        .out_lm248_claswp_avm_writedata(bb_claswp_B4_stall_region_out_lm248_claswp_avm_writedata),
        .out_lm269_claswp_avm_address(bb_claswp_B4_stall_region_out_lm269_claswp_avm_address),
        .out_lm269_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_lm269_claswp_avm_burstcount),
        .out_lm269_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_lm269_claswp_avm_byteenable),
        .out_lm269_claswp_avm_enable(bb_claswp_B4_stall_region_out_lm269_claswp_avm_enable),
        .out_lm269_claswp_avm_read(bb_claswp_B4_stall_region_out_lm269_claswp_avm_read),
        .out_lm269_claswp_avm_write(bb_claswp_B4_stall_region_out_lm269_claswp_avm_write),
        .out_lm269_claswp_avm_writedata(bb_claswp_B4_stall_region_out_lm269_claswp_avm_writedata),
        .out_lm2810_claswp_avm_address(bb_claswp_B4_stall_region_out_lm2810_claswp_avm_address),
        .out_lm2810_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_lm2810_claswp_avm_burstcount),
        .out_lm2810_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_lm2810_claswp_avm_byteenable),
        .out_lm2810_claswp_avm_enable(bb_claswp_B4_stall_region_out_lm2810_claswp_avm_enable),
        .out_lm2810_claswp_avm_read(bb_claswp_B4_stall_region_out_lm2810_claswp_avm_read),
        .out_lm2810_claswp_avm_write(bb_claswp_B4_stall_region_out_lm2810_claswp_avm_write),
        .out_lm2810_claswp_avm_writedata(bb_claswp_B4_stall_region_out_lm2810_claswp_avm_writedata),
        .out_lm7_claswp_avm_address(bb_claswp_B4_stall_region_out_lm7_claswp_avm_address),
        .out_lm7_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_lm7_claswp_avm_burstcount),
        .out_lm7_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_lm7_claswp_avm_byteenable),
        .out_lm7_claswp_avm_enable(bb_claswp_B4_stall_region_out_lm7_claswp_avm_enable),
        .out_lm7_claswp_avm_read(bb_claswp_B4_stall_region_out_lm7_claswp_avm_read),
        .out_lm7_claswp_avm_write(bb_claswp_B4_stall_region_out_lm7_claswp_avm_write),
        .out_lm7_claswp_avm_writedata(bb_claswp_B4_stall_region_out_lm7_claswp_avm_writedata),
        .out_lsu_memdep_31_o_active(bb_claswp_B4_stall_region_out_lsu_memdep_31_o_active),
        .out_lsu_memdep_38_o_active(bb_claswp_B4_stall_region_out_lsu_memdep_38_o_active),
        .out_lsu_memdep_46_o_active(bb_claswp_B4_stall_region_out_lsu_memdep_46_o_active),
        .out_lsu_memdep_o_active(bb_claswp_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked209(bb_claswp_B4_stall_region_out_masked209),
        .out_memdep_31_claswp_avm_address(bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_address),
        .out_memdep_31_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_burstcount),
        .out_memdep_31_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_byteenable),
        .out_memdep_31_claswp_avm_enable(bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_enable),
        .out_memdep_31_claswp_avm_read(bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_read),
        .out_memdep_31_claswp_avm_write(bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_write),
        .out_memdep_31_claswp_avm_writedata(bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_writedata),
        .out_memdep_38_claswp_avm_address(bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_address),
        .out_memdep_38_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_burstcount),
        .out_memdep_38_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_byteenable),
        .out_memdep_38_claswp_avm_enable(bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_enable),
        .out_memdep_38_claswp_avm_read(bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_read),
        .out_memdep_38_claswp_avm_write(bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_write),
        .out_memdep_38_claswp_avm_writedata(bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_writedata),
        .out_memdep_46_claswp_avm_address(bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_address),
        .out_memdep_46_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_burstcount),
        .out_memdep_46_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_byteenable),
        .out_memdep_46_claswp_avm_enable(bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_enable),
        .out_memdep_46_claswp_avm_read(bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_read),
        .out_memdep_46_claswp_avm_write(bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_write),
        .out_memdep_46_claswp_avm_writedata(bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_writedata),
        .out_memdep_claswp_avm_address(bb_claswp_B4_stall_region_out_memdep_claswp_avm_address),
        .out_memdep_claswp_avm_burstcount(bb_claswp_B4_stall_region_out_memdep_claswp_avm_burstcount),
        .out_memdep_claswp_avm_byteenable(bb_claswp_B4_stall_region_out_memdep_claswp_avm_byteenable),
        .out_memdep_claswp_avm_enable(bb_claswp_B4_stall_region_out_memdep_claswp_avm_enable),
        .out_memdep_claswp_avm_read(bb_claswp_B4_stall_region_out_memdep_claswp_avm_read),
        .out_memdep_claswp_avm_write(bb_claswp_B4_stall_region_out_memdep_claswp_avm_write),
        .out_memdep_claswp_avm_writedata(bb_claswp_B4_stall_region_out_memdep_claswp_avm_writedata),
        .out_pipeline_valid_out(bb_claswp_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_claswp_B4_stall_region_out_stall_out),
        .out_valid_out(bb_claswp_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,50)
    assign out_exiting_stall_out = bb_claswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,51)
    assign out_exiting_valid_out = bb_claswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_claswp4_exiting_valid_out;

    // out_intel_reserved_ffwd_21_0(GPOUT,52)
    assign out_intel_reserved_ffwd_21_0 = bb_claswp_B4_stall_region_out_intel_reserved_ffwd_21_0;

    // out_lm248_claswp_avm_address(GPOUT,53)
    assign out_lm248_claswp_avm_address = bb_claswp_B4_stall_region_out_lm248_claswp_avm_address;

    // out_lm248_claswp_avm_burstcount(GPOUT,54)
    assign out_lm248_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_lm248_claswp_avm_burstcount;

    // out_lm248_claswp_avm_byteenable(GPOUT,55)
    assign out_lm248_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_lm248_claswp_avm_byteenable;

    // out_lm248_claswp_avm_enable(GPOUT,56)
    assign out_lm248_claswp_avm_enable = bb_claswp_B4_stall_region_out_lm248_claswp_avm_enable;

    // out_lm248_claswp_avm_read(GPOUT,57)
    assign out_lm248_claswp_avm_read = bb_claswp_B4_stall_region_out_lm248_claswp_avm_read;

    // out_lm248_claswp_avm_write(GPOUT,58)
    assign out_lm248_claswp_avm_write = bb_claswp_B4_stall_region_out_lm248_claswp_avm_write;

    // out_lm248_claswp_avm_writedata(GPOUT,59)
    assign out_lm248_claswp_avm_writedata = bb_claswp_B4_stall_region_out_lm248_claswp_avm_writedata;

    // out_lm269_claswp_avm_address(GPOUT,60)
    assign out_lm269_claswp_avm_address = bb_claswp_B4_stall_region_out_lm269_claswp_avm_address;

    // out_lm269_claswp_avm_burstcount(GPOUT,61)
    assign out_lm269_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_lm269_claswp_avm_burstcount;

    // out_lm269_claswp_avm_byteenable(GPOUT,62)
    assign out_lm269_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_lm269_claswp_avm_byteenable;

    // out_lm269_claswp_avm_enable(GPOUT,63)
    assign out_lm269_claswp_avm_enable = bb_claswp_B4_stall_region_out_lm269_claswp_avm_enable;

    // out_lm269_claswp_avm_read(GPOUT,64)
    assign out_lm269_claswp_avm_read = bb_claswp_B4_stall_region_out_lm269_claswp_avm_read;

    // out_lm269_claswp_avm_write(GPOUT,65)
    assign out_lm269_claswp_avm_write = bb_claswp_B4_stall_region_out_lm269_claswp_avm_write;

    // out_lm269_claswp_avm_writedata(GPOUT,66)
    assign out_lm269_claswp_avm_writedata = bb_claswp_B4_stall_region_out_lm269_claswp_avm_writedata;

    // out_lm2810_claswp_avm_address(GPOUT,67)
    assign out_lm2810_claswp_avm_address = bb_claswp_B4_stall_region_out_lm2810_claswp_avm_address;

    // out_lm2810_claswp_avm_burstcount(GPOUT,68)
    assign out_lm2810_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_lm2810_claswp_avm_burstcount;

    // out_lm2810_claswp_avm_byteenable(GPOUT,69)
    assign out_lm2810_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_lm2810_claswp_avm_byteenable;

    // out_lm2810_claswp_avm_enable(GPOUT,70)
    assign out_lm2810_claswp_avm_enable = bb_claswp_B4_stall_region_out_lm2810_claswp_avm_enable;

    // out_lm2810_claswp_avm_read(GPOUT,71)
    assign out_lm2810_claswp_avm_read = bb_claswp_B4_stall_region_out_lm2810_claswp_avm_read;

    // out_lm2810_claswp_avm_write(GPOUT,72)
    assign out_lm2810_claswp_avm_write = bb_claswp_B4_stall_region_out_lm2810_claswp_avm_write;

    // out_lm2810_claswp_avm_writedata(GPOUT,73)
    assign out_lm2810_claswp_avm_writedata = bb_claswp_B4_stall_region_out_lm2810_claswp_avm_writedata;

    // out_lm7_claswp_avm_address(GPOUT,74)
    assign out_lm7_claswp_avm_address = bb_claswp_B4_stall_region_out_lm7_claswp_avm_address;

    // out_lm7_claswp_avm_burstcount(GPOUT,75)
    assign out_lm7_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_lm7_claswp_avm_burstcount;

    // out_lm7_claswp_avm_byteenable(GPOUT,76)
    assign out_lm7_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_lm7_claswp_avm_byteenable;

    // out_lm7_claswp_avm_enable(GPOUT,77)
    assign out_lm7_claswp_avm_enable = bb_claswp_B4_stall_region_out_lm7_claswp_avm_enable;

    // out_lm7_claswp_avm_read(GPOUT,78)
    assign out_lm7_claswp_avm_read = bb_claswp_B4_stall_region_out_lm7_claswp_avm_read;

    // out_lm7_claswp_avm_write(GPOUT,79)
    assign out_lm7_claswp_avm_write = bb_claswp_B4_stall_region_out_lm7_claswp_avm_write;

    // out_lm7_claswp_avm_writedata(GPOUT,80)
    assign out_lm7_claswp_avm_writedata = bb_claswp_B4_stall_region_out_lm7_claswp_avm_writedata;

    // out_lsu_memdep_31_o_active(GPOUT,81)
    assign out_lsu_memdep_31_o_active = bb_claswp_B4_stall_region_out_lsu_memdep_31_o_active;

    // out_lsu_memdep_38_o_active(GPOUT,82)
    assign out_lsu_memdep_38_o_active = bb_claswp_B4_stall_region_out_lsu_memdep_38_o_active;

    // out_lsu_memdep_46_o_active(GPOUT,83)
    assign out_lsu_memdep_46_o_active = bb_claswp_B4_stall_region_out_lsu_memdep_46_o_active;

    // out_lsu_memdep_o_active(GPOUT,84)
    assign out_lsu_memdep_o_active = bb_claswp_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep_31_claswp_avm_address(GPOUT,85)
    assign out_memdep_31_claswp_avm_address = bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_address;

    // out_memdep_31_claswp_avm_burstcount(GPOUT,86)
    assign out_memdep_31_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_burstcount;

    // out_memdep_31_claswp_avm_byteenable(GPOUT,87)
    assign out_memdep_31_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_byteenable;

    // out_memdep_31_claswp_avm_enable(GPOUT,88)
    assign out_memdep_31_claswp_avm_enable = bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_enable;

    // out_memdep_31_claswp_avm_read(GPOUT,89)
    assign out_memdep_31_claswp_avm_read = bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_read;

    // out_memdep_31_claswp_avm_write(GPOUT,90)
    assign out_memdep_31_claswp_avm_write = bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_write;

    // out_memdep_31_claswp_avm_writedata(GPOUT,91)
    assign out_memdep_31_claswp_avm_writedata = bb_claswp_B4_stall_region_out_memdep_31_claswp_avm_writedata;

    // out_memdep_38_claswp_avm_address(GPOUT,92)
    assign out_memdep_38_claswp_avm_address = bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_address;

    // out_memdep_38_claswp_avm_burstcount(GPOUT,93)
    assign out_memdep_38_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_burstcount;

    // out_memdep_38_claswp_avm_byteenable(GPOUT,94)
    assign out_memdep_38_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_byteenable;

    // out_memdep_38_claswp_avm_enable(GPOUT,95)
    assign out_memdep_38_claswp_avm_enable = bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_enable;

    // out_memdep_38_claswp_avm_read(GPOUT,96)
    assign out_memdep_38_claswp_avm_read = bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_read;

    // out_memdep_38_claswp_avm_write(GPOUT,97)
    assign out_memdep_38_claswp_avm_write = bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_write;

    // out_memdep_38_claswp_avm_writedata(GPOUT,98)
    assign out_memdep_38_claswp_avm_writedata = bb_claswp_B4_stall_region_out_memdep_38_claswp_avm_writedata;

    // out_memdep_46_claswp_avm_address(GPOUT,99)
    assign out_memdep_46_claswp_avm_address = bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_address;

    // out_memdep_46_claswp_avm_burstcount(GPOUT,100)
    assign out_memdep_46_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_burstcount;

    // out_memdep_46_claswp_avm_byteenable(GPOUT,101)
    assign out_memdep_46_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_byteenable;

    // out_memdep_46_claswp_avm_enable(GPOUT,102)
    assign out_memdep_46_claswp_avm_enable = bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_enable;

    // out_memdep_46_claswp_avm_read(GPOUT,103)
    assign out_memdep_46_claswp_avm_read = bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_read;

    // out_memdep_46_claswp_avm_write(GPOUT,104)
    assign out_memdep_46_claswp_avm_write = bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_write;

    // out_memdep_46_claswp_avm_writedata(GPOUT,105)
    assign out_memdep_46_claswp_avm_writedata = bb_claswp_B4_stall_region_out_memdep_46_claswp_avm_writedata;

    // out_memdep_claswp_avm_address(GPOUT,106)
    assign out_memdep_claswp_avm_address = bb_claswp_B4_stall_region_out_memdep_claswp_avm_address;

    // out_memdep_claswp_avm_burstcount(GPOUT,107)
    assign out_memdep_claswp_avm_burstcount = bb_claswp_B4_stall_region_out_memdep_claswp_avm_burstcount;

    // out_memdep_claswp_avm_byteenable(GPOUT,108)
    assign out_memdep_claswp_avm_byteenable = bb_claswp_B4_stall_region_out_memdep_claswp_avm_byteenable;

    // out_memdep_claswp_avm_enable(GPOUT,109)
    assign out_memdep_claswp_avm_enable = bb_claswp_B4_stall_region_out_memdep_claswp_avm_enable;

    // out_memdep_claswp_avm_read(GPOUT,110)
    assign out_memdep_claswp_avm_read = bb_claswp_B4_stall_region_out_memdep_claswp_avm_read;

    // out_memdep_claswp_avm_write(GPOUT,111)
    assign out_memdep_claswp_avm_write = bb_claswp_B4_stall_region_out_memdep_claswp_avm_write;

    // out_memdep_claswp_avm_writedata(GPOUT,112)
    assign out_memdep_claswp_avm_writedata = bb_claswp_B4_stall_region_out_memdep_claswp_avm_writedata;

    // out_stall_out_0(GPOUT,113)
    assign out_stall_out_0 = claswp_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,114)
    assign out_stall_out_1 = claswp_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,115)
    assign out_valid_out_0 = claswp_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,116)
    assign out_valid_out_1 = claswp_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,118)
    assign out_pipeline_valid_out = bb_claswp_B4_stall_region_out_pipeline_valid_out;

endmodule
