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

// SystemVerilog created from zlaswp_bb_B4
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B4 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked163_0,
    input wire [0:0] in_forked163_1,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_lm248_zlaswp_avm_readdata,
    input wire [0:0] in_lm248_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm248_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm248_zlaswp_avm_writeack,
    input wire [63:0] in_lm269_zlaswp_avm_readdata,
    input wire [0:0] in_lm269_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm269_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm269_zlaswp_avm_writeack,
    input wire [63:0] in_lm2810_zlaswp_avm_readdata,
    input wire [0:0] in_lm2810_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm2810_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm2810_zlaswp_avm_writeack,
    input wire [63:0] in_lm7_zlaswp_avm_readdata,
    input wire [0:0] in_lm7_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm7_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm7_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_31_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_31_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_31_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_31_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_38_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_38_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_38_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_38_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_46_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_46_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_46_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_46_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_zlaswp_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_lm248_zlaswp_avm_address,
    output wire [0:0] out_lm248_zlaswp_avm_burstcount,
    output wire [7:0] out_lm248_zlaswp_avm_byteenable,
    output wire [0:0] out_lm248_zlaswp_avm_enable,
    output wire [0:0] out_lm248_zlaswp_avm_read,
    output wire [0:0] out_lm248_zlaswp_avm_write,
    output wire [63:0] out_lm248_zlaswp_avm_writedata,
    output wire [63:0] out_lm269_zlaswp_avm_address,
    output wire [0:0] out_lm269_zlaswp_avm_burstcount,
    output wire [7:0] out_lm269_zlaswp_avm_byteenable,
    output wire [0:0] out_lm269_zlaswp_avm_enable,
    output wire [0:0] out_lm269_zlaswp_avm_read,
    output wire [0:0] out_lm269_zlaswp_avm_write,
    output wire [63:0] out_lm269_zlaswp_avm_writedata,
    output wire [63:0] out_lm2810_zlaswp_avm_address,
    output wire [0:0] out_lm2810_zlaswp_avm_burstcount,
    output wire [7:0] out_lm2810_zlaswp_avm_byteenable,
    output wire [0:0] out_lm2810_zlaswp_avm_enable,
    output wire [0:0] out_lm2810_zlaswp_avm_read,
    output wire [0:0] out_lm2810_zlaswp_avm_write,
    output wire [63:0] out_lm2810_zlaswp_avm_writedata,
    output wire [63:0] out_lm7_zlaswp_avm_address,
    output wire [0:0] out_lm7_zlaswp_avm_burstcount,
    output wire [7:0] out_lm7_zlaswp_avm_byteenable,
    output wire [0:0] out_lm7_zlaswp_avm_enable,
    output wire [0:0] out_lm7_zlaswp_avm_read,
    output wire [0:0] out_lm7_zlaswp_avm_write,
    output wire [63:0] out_lm7_zlaswp_avm_writedata,
    output wire [0:0] out_lsu_memdep_31_o_active,
    output wire [0:0] out_lsu_memdep_38_o_active,
    output wire [0:0] out_lsu_memdep_46_o_active,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_31_zlaswp_avm_address,
    output wire [0:0] out_memdep_31_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_31_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_31_zlaswp_avm_enable,
    output wire [0:0] out_memdep_31_zlaswp_avm_read,
    output wire [0:0] out_memdep_31_zlaswp_avm_write,
    output wire [63:0] out_memdep_31_zlaswp_avm_writedata,
    output wire [63:0] out_memdep_38_zlaswp_avm_address,
    output wire [0:0] out_memdep_38_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_38_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_38_zlaswp_avm_enable,
    output wire [0:0] out_memdep_38_zlaswp_avm_read,
    output wire [0:0] out_memdep_38_zlaswp_avm_write,
    output wire [63:0] out_memdep_38_zlaswp_avm_writedata,
    output wire [63:0] out_memdep_46_zlaswp_avm_address,
    output wire [0:0] out_memdep_46_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_46_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_46_zlaswp_avm_enable,
    output wire [0:0] out_memdep_46_zlaswp_avm_read,
    output wire [0:0] out_memdep_46_zlaswp_avm_write,
    output wire [63:0] out_memdep_46_zlaswp_avm_writedata,
    output wire [63:0] out_memdep_zlaswp_avm_address,
    output wire [0:0] out_memdep_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_zlaswp_avm_enable,
    output wire [0:0] out_memdep_zlaswp_avm_read,
    output wire [0:0] out_memdep_zlaswp_avm_write,
    output wire [63:0] out_memdep_zlaswp_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zlaswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_stall_out;
    wire [0:0] bb_zlaswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_valid_out;
    wire [63:0] bb_zlaswp_B4_stall_region_out_intel_reserved_ffwd_21_0;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lsu_memdep_31_o_active;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lsu_memdep_38_o_active;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lsu_memdep_46_o_active;
    wire [0:0] bb_zlaswp_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_zlaswp_B4_stall_region_out_masked209;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_zlaswp_B4_stall_region_out_stall_out;
    wire [0:0] bb_zlaswp_B4_stall_region_out_valid_out;
    wire [0:0] zlaswp_B4_branch_out_stall_out;
    wire [0:0] zlaswp_B4_branch_out_valid_out_0;
    wire [0:0] zlaswp_B4_branch_out_valid_out_1;
    wire [0:0] zlaswp_B4_merge_out_forked163;
    wire [0:0] zlaswp_B4_merge_out_stall_out_0;
    wire [0:0] zlaswp_B4_merge_out_stall_out_1;
    wire [0:0] zlaswp_B4_merge_out_valid_out;


    // zlaswp_B4_branch(BLACKBOX,117)
    zlaswp_B4_branch thezlaswp_B4_branch (
        .in_masked209(bb_zlaswp_B4_stall_region_out_masked209),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zlaswp_B4_stall_region_out_valid_out),
        .out_stall_out(zlaswp_B4_branch_out_stall_out),
        .out_valid_out_0(zlaswp_B4_branch_out_valid_out_0),
        .out_valid_out_1(zlaswp_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // zlaswp_B4_merge(BLACKBOX,118)
    zlaswp_B4_merge thezlaswp_B4_merge (
        .in_forked163_0(in_forked163_0),
        .in_forked163_1(in_forked163_1),
        .in_stall_in(bb_zlaswp_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked163(zlaswp_B4_merge_out_forked163),
        .out_stall_out_0(zlaswp_B4_merge_out_stall_out_0),
        .out_stall_out_1(zlaswp_B4_merge_out_stall_out_1),
        .out_valid_out(zlaswp_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zlaswp_B4_stall_region(BLACKBOX,2)
    zlaswp_bb_B4_stall_region thebb_zlaswp_B4_stall_region (
        .in_flush(in_flush),
        .in_forked163(zlaswp_B4_merge_out_forked163),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm248_zlaswp_avm_readdata(in_lm248_zlaswp_avm_readdata),
        .in_lm248_zlaswp_avm_readdatavalid(in_lm248_zlaswp_avm_readdatavalid),
        .in_lm248_zlaswp_avm_waitrequest(in_lm248_zlaswp_avm_waitrequest),
        .in_lm248_zlaswp_avm_writeack(in_lm248_zlaswp_avm_writeack),
        .in_lm269_zlaswp_avm_readdata(in_lm269_zlaswp_avm_readdata),
        .in_lm269_zlaswp_avm_readdatavalid(in_lm269_zlaswp_avm_readdatavalid),
        .in_lm269_zlaswp_avm_waitrequest(in_lm269_zlaswp_avm_waitrequest),
        .in_lm269_zlaswp_avm_writeack(in_lm269_zlaswp_avm_writeack),
        .in_lm2810_zlaswp_avm_readdata(in_lm2810_zlaswp_avm_readdata),
        .in_lm2810_zlaswp_avm_readdatavalid(in_lm2810_zlaswp_avm_readdatavalid),
        .in_lm2810_zlaswp_avm_waitrequest(in_lm2810_zlaswp_avm_waitrequest),
        .in_lm2810_zlaswp_avm_writeack(in_lm2810_zlaswp_avm_writeack),
        .in_lm7_zlaswp_avm_readdata(in_lm7_zlaswp_avm_readdata),
        .in_lm7_zlaswp_avm_readdatavalid(in_lm7_zlaswp_avm_readdatavalid),
        .in_lm7_zlaswp_avm_waitrequest(in_lm7_zlaswp_avm_waitrequest),
        .in_lm7_zlaswp_avm_writeack(in_lm7_zlaswp_avm_writeack),
        .in_memdep_31_zlaswp_avm_readdata(in_memdep_31_zlaswp_avm_readdata),
        .in_memdep_31_zlaswp_avm_readdatavalid(in_memdep_31_zlaswp_avm_readdatavalid),
        .in_memdep_31_zlaswp_avm_waitrequest(in_memdep_31_zlaswp_avm_waitrequest),
        .in_memdep_31_zlaswp_avm_writeack(in_memdep_31_zlaswp_avm_writeack),
        .in_memdep_38_zlaswp_avm_readdata(in_memdep_38_zlaswp_avm_readdata),
        .in_memdep_38_zlaswp_avm_readdatavalid(in_memdep_38_zlaswp_avm_readdatavalid),
        .in_memdep_38_zlaswp_avm_waitrequest(in_memdep_38_zlaswp_avm_waitrequest),
        .in_memdep_38_zlaswp_avm_writeack(in_memdep_38_zlaswp_avm_writeack),
        .in_memdep_46_zlaswp_avm_readdata(in_memdep_46_zlaswp_avm_readdata),
        .in_memdep_46_zlaswp_avm_readdatavalid(in_memdep_46_zlaswp_avm_readdatavalid),
        .in_memdep_46_zlaswp_avm_waitrequest(in_memdep_46_zlaswp_avm_waitrequest),
        .in_memdep_46_zlaswp_avm_writeack(in_memdep_46_zlaswp_avm_writeack),
        .in_memdep_zlaswp_avm_readdata(in_memdep_zlaswp_avm_readdata),
        .in_memdep_zlaswp_avm_readdatavalid(in_memdep_zlaswp_avm_readdatavalid),
        .in_memdep_zlaswp_avm_waitrequest(in_memdep_zlaswp_avm_waitrequest),
        .in_memdep_zlaswp_avm_writeack(in_memdep_zlaswp_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(zlaswp_B4_branch_out_stall_out),
        .in_valid_in(zlaswp_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_stall_out(bb_zlaswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_valid_out(bb_zlaswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_valid_out),
        .out_intel_reserved_ffwd_21_0(bb_zlaswp_B4_stall_region_out_intel_reserved_ffwd_21_0),
        .out_lm248_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_address),
        .out_lm248_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_burstcount),
        .out_lm248_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_byteenable),
        .out_lm248_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_enable),
        .out_lm248_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_read),
        .out_lm248_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_write),
        .out_lm248_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_writedata),
        .out_lm269_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_address),
        .out_lm269_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_burstcount),
        .out_lm269_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_byteenable),
        .out_lm269_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_enable),
        .out_lm269_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_read),
        .out_lm269_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_write),
        .out_lm269_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_writedata),
        .out_lm2810_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_address),
        .out_lm2810_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_burstcount),
        .out_lm2810_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_byteenable),
        .out_lm2810_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_enable),
        .out_lm2810_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_read),
        .out_lm2810_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_write),
        .out_lm2810_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_writedata),
        .out_lm7_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_address),
        .out_lm7_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_burstcount),
        .out_lm7_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_byteenable),
        .out_lm7_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_enable),
        .out_lm7_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_read),
        .out_lm7_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_write),
        .out_lm7_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_writedata),
        .out_lsu_memdep_31_o_active(bb_zlaswp_B4_stall_region_out_lsu_memdep_31_o_active),
        .out_lsu_memdep_38_o_active(bb_zlaswp_B4_stall_region_out_lsu_memdep_38_o_active),
        .out_lsu_memdep_46_o_active(bb_zlaswp_B4_stall_region_out_lsu_memdep_46_o_active),
        .out_lsu_memdep_o_active(bb_zlaswp_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked209(bb_zlaswp_B4_stall_region_out_masked209),
        .out_memdep_31_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_address),
        .out_memdep_31_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_burstcount),
        .out_memdep_31_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_byteenable),
        .out_memdep_31_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_enable),
        .out_memdep_31_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_read),
        .out_memdep_31_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_write),
        .out_memdep_31_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_writedata),
        .out_memdep_38_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_address),
        .out_memdep_38_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_burstcount),
        .out_memdep_38_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_byteenable),
        .out_memdep_38_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_enable),
        .out_memdep_38_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_read),
        .out_memdep_38_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_write),
        .out_memdep_38_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_writedata),
        .out_memdep_46_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_address),
        .out_memdep_46_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_burstcount),
        .out_memdep_46_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_byteenable),
        .out_memdep_46_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_enable),
        .out_memdep_46_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_read),
        .out_memdep_46_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_write),
        .out_memdep_46_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_writedata),
        .out_memdep_zlaswp_avm_address(bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_address),
        .out_memdep_zlaswp_avm_burstcount(bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_burstcount),
        .out_memdep_zlaswp_avm_byteenable(bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_byteenable),
        .out_memdep_zlaswp_avm_enable(bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_enable),
        .out_memdep_zlaswp_avm_read(bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_read),
        .out_memdep_zlaswp_avm_write(bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_write),
        .out_memdep_zlaswp_avm_writedata(bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_writedata),
        .out_pipeline_valid_out(bb_zlaswp_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_zlaswp_B4_stall_region_out_stall_out),
        .out_valid_out(bb_zlaswp_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,48)
    assign out_exiting_stall_out = bb_zlaswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,49)
    assign out_exiting_valid_out = bb_zlaswp_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_valid_out;

    // out_intel_reserved_ffwd_21_0(GPOUT,50)
    assign out_intel_reserved_ffwd_21_0 = bb_zlaswp_B4_stall_region_out_intel_reserved_ffwd_21_0;

    // out_lm248_zlaswp_avm_address(GPOUT,51)
    assign out_lm248_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_address;

    // out_lm248_zlaswp_avm_burstcount(GPOUT,52)
    assign out_lm248_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_burstcount;

    // out_lm248_zlaswp_avm_byteenable(GPOUT,53)
    assign out_lm248_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_byteenable;

    // out_lm248_zlaswp_avm_enable(GPOUT,54)
    assign out_lm248_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_enable;

    // out_lm248_zlaswp_avm_read(GPOUT,55)
    assign out_lm248_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_read;

    // out_lm248_zlaswp_avm_write(GPOUT,56)
    assign out_lm248_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_write;

    // out_lm248_zlaswp_avm_writedata(GPOUT,57)
    assign out_lm248_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_lm248_zlaswp_avm_writedata;

    // out_lm269_zlaswp_avm_address(GPOUT,58)
    assign out_lm269_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_address;

    // out_lm269_zlaswp_avm_burstcount(GPOUT,59)
    assign out_lm269_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_burstcount;

    // out_lm269_zlaswp_avm_byteenable(GPOUT,60)
    assign out_lm269_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_byteenable;

    // out_lm269_zlaswp_avm_enable(GPOUT,61)
    assign out_lm269_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_enable;

    // out_lm269_zlaswp_avm_read(GPOUT,62)
    assign out_lm269_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_read;

    // out_lm269_zlaswp_avm_write(GPOUT,63)
    assign out_lm269_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_write;

    // out_lm269_zlaswp_avm_writedata(GPOUT,64)
    assign out_lm269_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_lm269_zlaswp_avm_writedata;

    // out_lm2810_zlaswp_avm_address(GPOUT,65)
    assign out_lm2810_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_address;

    // out_lm2810_zlaswp_avm_burstcount(GPOUT,66)
    assign out_lm2810_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_burstcount;

    // out_lm2810_zlaswp_avm_byteenable(GPOUT,67)
    assign out_lm2810_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_byteenable;

    // out_lm2810_zlaswp_avm_enable(GPOUT,68)
    assign out_lm2810_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_enable;

    // out_lm2810_zlaswp_avm_read(GPOUT,69)
    assign out_lm2810_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_read;

    // out_lm2810_zlaswp_avm_write(GPOUT,70)
    assign out_lm2810_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_write;

    // out_lm2810_zlaswp_avm_writedata(GPOUT,71)
    assign out_lm2810_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_lm2810_zlaswp_avm_writedata;

    // out_lm7_zlaswp_avm_address(GPOUT,72)
    assign out_lm7_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_address;

    // out_lm7_zlaswp_avm_burstcount(GPOUT,73)
    assign out_lm7_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_burstcount;

    // out_lm7_zlaswp_avm_byteenable(GPOUT,74)
    assign out_lm7_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_byteenable;

    // out_lm7_zlaswp_avm_enable(GPOUT,75)
    assign out_lm7_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_enable;

    // out_lm7_zlaswp_avm_read(GPOUT,76)
    assign out_lm7_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_read;

    // out_lm7_zlaswp_avm_write(GPOUT,77)
    assign out_lm7_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_write;

    // out_lm7_zlaswp_avm_writedata(GPOUT,78)
    assign out_lm7_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_lm7_zlaswp_avm_writedata;

    // out_lsu_memdep_31_o_active(GPOUT,79)
    assign out_lsu_memdep_31_o_active = bb_zlaswp_B4_stall_region_out_lsu_memdep_31_o_active;

    // out_lsu_memdep_38_o_active(GPOUT,80)
    assign out_lsu_memdep_38_o_active = bb_zlaswp_B4_stall_region_out_lsu_memdep_38_o_active;

    // out_lsu_memdep_46_o_active(GPOUT,81)
    assign out_lsu_memdep_46_o_active = bb_zlaswp_B4_stall_region_out_lsu_memdep_46_o_active;

    // out_lsu_memdep_o_active(GPOUT,82)
    assign out_lsu_memdep_o_active = bb_zlaswp_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep_31_zlaswp_avm_address(GPOUT,83)
    assign out_memdep_31_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_address;

    // out_memdep_31_zlaswp_avm_burstcount(GPOUT,84)
    assign out_memdep_31_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_burstcount;

    // out_memdep_31_zlaswp_avm_byteenable(GPOUT,85)
    assign out_memdep_31_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_byteenable;

    // out_memdep_31_zlaswp_avm_enable(GPOUT,86)
    assign out_memdep_31_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_enable;

    // out_memdep_31_zlaswp_avm_read(GPOUT,87)
    assign out_memdep_31_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_read;

    // out_memdep_31_zlaswp_avm_write(GPOUT,88)
    assign out_memdep_31_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_write;

    // out_memdep_31_zlaswp_avm_writedata(GPOUT,89)
    assign out_memdep_31_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_memdep_31_zlaswp_avm_writedata;

    // out_memdep_38_zlaswp_avm_address(GPOUT,90)
    assign out_memdep_38_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_address;

    // out_memdep_38_zlaswp_avm_burstcount(GPOUT,91)
    assign out_memdep_38_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_burstcount;

    // out_memdep_38_zlaswp_avm_byteenable(GPOUT,92)
    assign out_memdep_38_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_byteenable;

    // out_memdep_38_zlaswp_avm_enable(GPOUT,93)
    assign out_memdep_38_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_enable;

    // out_memdep_38_zlaswp_avm_read(GPOUT,94)
    assign out_memdep_38_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_read;

    // out_memdep_38_zlaswp_avm_write(GPOUT,95)
    assign out_memdep_38_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_write;

    // out_memdep_38_zlaswp_avm_writedata(GPOUT,96)
    assign out_memdep_38_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_memdep_38_zlaswp_avm_writedata;

    // out_memdep_46_zlaswp_avm_address(GPOUT,97)
    assign out_memdep_46_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_address;

    // out_memdep_46_zlaswp_avm_burstcount(GPOUT,98)
    assign out_memdep_46_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_burstcount;

    // out_memdep_46_zlaswp_avm_byteenable(GPOUT,99)
    assign out_memdep_46_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_byteenable;

    // out_memdep_46_zlaswp_avm_enable(GPOUT,100)
    assign out_memdep_46_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_enable;

    // out_memdep_46_zlaswp_avm_read(GPOUT,101)
    assign out_memdep_46_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_read;

    // out_memdep_46_zlaswp_avm_write(GPOUT,102)
    assign out_memdep_46_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_write;

    // out_memdep_46_zlaswp_avm_writedata(GPOUT,103)
    assign out_memdep_46_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_memdep_46_zlaswp_avm_writedata;

    // out_memdep_zlaswp_avm_address(GPOUT,104)
    assign out_memdep_zlaswp_avm_address = bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_address;

    // out_memdep_zlaswp_avm_burstcount(GPOUT,105)
    assign out_memdep_zlaswp_avm_burstcount = bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_burstcount;

    // out_memdep_zlaswp_avm_byteenable(GPOUT,106)
    assign out_memdep_zlaswp_avm_byteenable = bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_byteenable;

    // out_memdep_zlaswp_avm_enable(GPOUT,107)
    assign out_memdep_zlaswp_avm_enable = bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_enable;

    // out_memdep_zlaswp_avm_read(GPOUT,108)
    assign out_memdep_zlaswp_avm_read = bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_read;

    // out_memdep_zlaswp_avm_write(GPOUT,109)
    assign out_memdep_zlaswp_avm_write = bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_write;

    // out_memdep_zlaswp_avm_writedata(GPOUT,110)
    assign out_memdep_zlaswp_avm_writedata = bb_zlaswp_B4_stall_region_out_memdep_zlaswp_avm_writedata;

    // out_stall_out_0(GPOUT,111)
    assign out_stall_out_0 = zlaswp_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,112)
    assign out_stall_out_1 = zlaswp_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,113)
    assign out_valid_out_0 = zlaswp_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,114)
    assign out_valid_out_1 = zlaswp_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,116)
    assign out_pipeline_valid_out = bb_zlaswp_B4_stall_region_out_pipeline_valid_out;

endmodule
