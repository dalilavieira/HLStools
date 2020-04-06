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

// SystemVerilog created from sobel_bb_B3
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_bb_B3 (
    output wire [0:0] out_exitcond1132_pop17,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_sobel_avm_address,
    output wire [0:0] out_memdep_sobel_avm_burstcount,
    output wire [7:0] out_memdep_sobel_avm_byteenable,
    output wire [0:0] out_memdep_sobel_avm_enable,
    output wire [0:0] out_memdep_sobel_avm_read,
    output wire [0:0] out_memdep_sobel_avm_write,
    output wire [63:0] out_memdep_sobel_avm_writedata,
    output wire [0:0] out_notcmp2033_pop18,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_sobel10_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel10_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel10_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel11_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel11_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel11_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel12_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel12_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel12_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel13_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel13_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel13_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel6_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel6_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel6_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel7_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel7_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel7_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel8_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel8_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel8_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel9_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel9_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel9_sobel_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_add1236_0,
    input wire [31:0] in_add1236_1,
    input wire [0:0] in_exitcond1137_0,
    input wire [0:0] in_exitcond1137_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_j_083_pop935_0,
    input wire [31:0] in_j_083_pop935_1,
    input wire [0:0] in_memdep_phi1_pop1039_0,
    input wire [0:0] in_memdep_phi1_pop1039_1,
    input wire [63:0] in_memdep_sobel_avm_readdata,
    input wire [0:0] in_memdep_sobel_avm_readdatavalid,
    input wire [0:0] in_memdep_sobel_avm_waitrequest,
    input wire [0:0] in_memdep_sobel_avm_writeack,
    input wire [0:0] in_notcmp2038_0,
    input wire [0:0] in_notcmp2038_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_sobel10_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel11_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel12_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel13_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel6_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel7_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel8_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel9_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_stall_out;
    wire [0:0] bb_sobel_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_valid_out;
    wire [0:0] bb_sobel_B3_stall_region_out_exitcond1132_pop17;
    wire [0:0] bb_sobel_B3_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_sobel_B3_stall_region_out_masked;
    wire [0:0] bb_sobel_B3_stall_region_out_memdep;
    wire [63:0] bb_sobel_B3_stall_region_out_memdep_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_memdep_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_memdep_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_memdep_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_memdep_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_memdep_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_memdep_sobel_avm_writedata;
    wire [0:0] bb_sobel_B3_stall_region_out_notcmp2033_pop18;
    wire [0:0] bb_sobel_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_B3_stall_region_out_stall_out;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_address;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_read;
    wire [0:0] bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_write;
    wire [63:0] bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_writedata;
    wire [0:0] bb_sobel_B3_stall_region_out_valid_out;
    wire [0:0] sobel_B3_branch_out_exitcond1132_pop17;
    wire [0:0] sobel_B3_branch_out_memdep;
    wire [0:0] sobel_B3_branch_out_notcmp2033_pop18;
    wire [0:0] sobel_B3_branch_out_stall_out;
    wire [0:0] sobel_B3_branch_out_valid_out_0;
    wire [0:0] sobel_B3_branch_out_valid_out_1;
    wire [31:0] sobel_B3_merge_out_add1236;
    wire [0:0] sobel_B3_merge_out_exitcond1137;
    wire [0:0] sobel_B3_merge_out_forked;
    wire [31:0] sobel_B3_merge_out_j_083_pop935;
    wire [0:0] sobel_B3_merge_out_memdep_phi1_pop1039;
    wire [0:0] sobel_B3_merge_out_notcmp2038;
    wire [0:0] sobel_B3_merge_out_stall_out_0;
    wire [0:0] sobel_B3_merge_out_stall_out_1;
    wire [0:0] sobel_B3_merge_out_valid_out;


    // sobel_B3_merge(BLACKBOX,79)
    sobel_B3_merge thesobel_B3_merge (
        .in_add1236_0(in_add1236_0),
        .in_add1236_1(in_add1236_1),
        .in_exitcond1137_0(in_exitcond1137_0),
        .in_exitcond1137_1(in_exitcond1137_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_j_083_pop935_0(in_j_083_pop935_0),
        .in_j_083_pop935_1(in_j_083_pop935_1),
        .in_memdep_phi1_pop1039_0(in_memdep_phi1_pop1039_0),
        .in_memdep_phi1_pop1039_1(in_memdep_phi1_pop1039_1),
        .in_notcmp2038_0(in_notcmp2038_0),
        .in_notcmp2038_1(in_notcmp2038_1),
        .in_stall_in(bb_sobel_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add1236(sobel_B3_merge_out_add1236),
        .out_exitcond1137(sobel_B3_merge_out_exitcond1137),
        .out_forked(sobel_B3_merge_out_forked),
        .out_j_083_pop935(sobel_B3_merge_out_j_083_pop935),
        .out_memdep_phi1_pop1039(sobel_B3_merge_out_memdep_phi1_pop1039),
        .out_notcmp2038(sobel_B3_merge_out_notcmp2038),
        .out_stall_out_0(sobel_B3_merge_out_stall_out_0),
        .out_stall_out_1(sobel_B3_merge_out_stall_out_1),
        .out_valid_out(sobel_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B3_stall_region(BLACKBOX,2)
    sobel_bb_B3_stall_region thebb_sobel_B3_stall_region (
        .in_add1236(sobel_B3_merge_out_add1236),
        .in_exitcond1137(sobel_B3_merge_out_exitcond1137),
        .in_flush(in_flush),
        .in_forked(sobel_B3_merge_out_forked),
        .in_j_083_pop935(sobel_B3_merge_out_j_083_pop935),
        .in_memdep_phi1_pop1039(sobel_B3_merge_out_memdep_phi1_pop1039),
        .in_memdep_sobel_avm_readdata(in_memdep_sobel_avm_readdata),
        .in_memdep_sobel_avm_readdatavalid(in_memdep_sobel_avm_readdatavalid),
        .in_memdep_sobel_avm_waitrequest(in_memdep_sobel_avm_waitrequest),
        .in_memdep_sobel_avm_writeack(in_memdep_sobel_avm_writeack),
        .in_notcmp2038(sobel_B3_merge_out_notcmp2038),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_B3_branch_out_stall_out),
        .in_unnamed_sobel10_sobel_avm_readdata(in_unnamed_sobel10_sobel_avm_readdata),
        .in_unnamed_sobel10_sobel_avm_readdatavalid(in_unnamed_sobel10_sobel_avm_readdatavalid),
        .in_unnamed_sobel10_sobel_avm_waitrequest(in_unnamed_sobel10_sobel_avm_waitrequest),
        .in_unnamed_sobel10_sobel_avm_writeack(in_unnamed_sobel10_sobel_avm_writeack),
        .in_unnamed_sobel11_sobel_avm_readdata(in_unnamed_sobel11_sobel_avm_readdata),
        .in_unnamed_sobel11_sobel_avm_readdatavalid(in_unnamed_sobel11_sobel_avm_readdatavalid),
        .in_unnamed_sobel11_sobel_avm_waitrequest(in_unnamed_sobel11_sobel_avm_waitrequest),
        .in_unnamed_sobel11_sobel_avm_writeack(in_unnamed_sobel11_sobel_avm_writeack),
        .in_unnamed_sobel12_sobel_avm_readdata(in_unnamed_sobel12_sobel_avm_readdata),
        .in_unnamed_sobel12_sobel_avm_readdatavalid(in_unnamed_sobel12_sobel_avm_readdatavalid),
        .in_unnamed_sobel12_sobel_avm_waitrequest(in_unnamed_sobel12_sobel_avm_waitrequest),
        .in_unnamed_sobel12_sobel_avm_writeack(in_unnamed_sobel12_sobel_avm_writeack),
        .in_unnamed_sobel13_sobel_avm_readdata(in_unnamed_sobel13_sobel_avm_readdata),
        .in_unnamed_sobel13_sobel_avm_readdatavalid(in_unnamed_sobel13_sobel_avm_readdatavalid),
        .in_unnamed_sobel13_sobel_avm_waitrequest(in_unnamed_sobel13_sobel_avm_waitrequest),
        .in_unnamed_sobel13_sobel_avm_writeack(in_unnamed_sobel13_sobel_avm_writeack),
        .in_unnamed_sobel6_sobel_avm_readdata(in_unnamed_sobel6_sobel_avm_readdata),
        .in_unnamed_sobel6_sobel_avm_readdatavalid(in_unnamed_sobel6_sobel_avm_readdatavalid),
        .in_unnamed_sobel6_sobel_avm_waitrequest(in_unnamed_sobel6_sobel_avm_waitrequest),
        .in_unnamed_sobel6_sobel_avm_writeack(in_unnamed_sobel6_sobel_avm_writeack),
        .in_unnamed_sobel7_sobel_avm_readdata(in_unnamed_sobel7_sobel_avm_readdata),
        .in_unnamed_sobel7_sobel_avm_readdatavalid(in_unnamed_sobel7_sobel_avm_readdatavalid),
        .in_unnamed_sobel7_sobel_avm_waitrequest(in_unnamed_sobel7_sobel_avm_waitrequest),
        .in_unnamed_sobel7_sobel_avm_writeack(in_unnamed_sobel7_sobel_avm_writeack),
        .in_unnamed_sobel8_sobel_avm_readdata(in_unnamed_sobel8_sobel_avm_readdata),
        .in_unnamed_sobel8_sobel_avm_readdatavalid(in_unnamed_sobel8_sobel_avm_readdatavalid),
        .in_unnamed_sobel8_sobel_avm_waitrequest(in_unnamed_sobel8_sobel_avm_waitrequest),
        .in_unnamed_sobel8_sobel_avm_writeack(in_unnamed_sobel8_sobel_avm_writeack),
        .in_unnamed_sobel9_sobel_avm_readdata(in_unnamed_sobel9_sobel_avm_readdata),
        .in_unnamed_sobel9_sobel_avm_readdatavalid(in_unnamed_sobel9_sobel_avm_readdatavalid),
        .in_unnamed_sobel9_sobel_avm_waitrequest(in_unnamed_sobel9_sobel_avm_waitrequest),
        .in_unnamed_sobel9_sobel_avm_writeack(in_unnamed_sobel9_sobel_avm_writeack),
        .in_valid_in(sobel_B3_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_stall_out(bb_sobel_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_valid_out(bb_sobel_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_valid_out),
        .out_exitcond1132_pop17(bb_sobel_B3_stall_region_out_exitcond1132_pop17),
        .out_lsu_memdep_o_active(bb_sobel_B3_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_sobel_B3_stall_region_out_masked),
        .out_memdep(bb_sobel_B3_stall_region_out_memdep),
        .out_memdep_sobel_avm_address(bb_sobel_B3_stall_region_out_memdep_sobel_avm_address),
        .out_memdep_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_memdep_sobel_avm_burstcount),
        .out_memdep_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_memdep_sobel_avm_byteenable),
        .out_memdep_sobel_avm_enable(bb_sobel_B3_stall_region_out_memdep_sobel_avm_enable),
        .out_memdep_sobel_avm_read(bb_sobel_B3_stall_region_out_memdep_sobel_avm_read),
        .out_memdep_sobel_avm_write(bb_sobel_B3_stall_region_out_memdep_sobel_avm_write),
        .out_memdep_sobel_avm_writedata(bb_sobel_B3_stall_region_out_memdep_sobel_avm_writedata),
        .out_notcmp2033_pop18(bb_sobel_B3_stall_region_out_notcmp2033_pop18),
        .out_pipeline_valid_out(bb_sobel_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_B3_stall_region_out_stall_out),
        .out_unnamed_sobel10_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_address),
        .out_unnamed_sobel10_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_burstcount),
        .out_unnamed_sobel10_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_byteenable),
        .out_unnamed_sobel10_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_enable),
        .out_unnamed_sobel10_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_read),
        .out_unnamed_sobel10_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_write),
        .out_unnamed_sobel10_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_writedata),
        .out_unnamed_sobel11_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_address),
        .out_unnamed_sobel11_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_burstcount),
        .out_unnamed_sobel11_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_byteenable),
        .out_unnamed_sobel11_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_enable),
        .out_unnamed_sobel11_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_read),
        .out_unnamed_sobel11_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_write),
        .out_unnamed_sobel11_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_writedata),
        .out_unnamed_sobel12_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_address),
        .out_unnamed_sobel12_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_burstcount),
        .out_unnamed_sobel12_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_byteenable),
        .out_unnamed_sobel12_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_enable),
        .out_unnamed_sobel12_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_read),
        .out_unnamed_sobel12_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_write),
        .out_unnamed_sobel12_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_writedata),
        .out_unnamed_sobel13_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_address),
        .out_unnamed_sobel13_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_burstcount),
        .out_unnamed_sobel13_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_byteenable),
        .out_unnamed_sobel13_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_enable),
        .out_unnamed_sobel13_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_read),
        .out_unnamed_sobel13_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_write),
        .out_unnamed_sobel13_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_writedata),
        .out_unnamed_sobel6_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_address),
        .out_unnamed_sobel6_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_burstcount),
        .out_unnamed_sobel6_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_byteenable),
        .out_unnamed_sobel6_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_enable),
        .out_unnamed_sobel6_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_read),
        .out_unnamed_sobel6_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_write),
        .out_unnamed_sobel6_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_writedata),
        .out_unnamed_sobel7_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_address),
        .out_unnamed_sobel7_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_burstcount),
        .out_unnamed_sobel7_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_byteenable),
        .out_unnamed_sobel7_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_enable),
        .out_unnamed_sobel7_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_read),
        .out_unnamed_sobel7_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_write),
        .out_unnamed_sobel7_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_writedata),
        .out_unnamed_sobel8_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_address),
        .out_unnamed_sobel8_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_burstcount),
        .out_unnamed_sobel8_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_byteenable),
        .out_unnamed_sobel8_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_enable),
        .out_unnamed_sobel8_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_read),
        .out_unnamed_sobel8_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_write),
        .out_unnamed_sobel8_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_writedata),
        .out_unnamed_sobel9_sobel_avm_address(bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_address),
        .out_unnamed_sobel9_sobel_avm_burstcount(bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_burstcount),
        .out_unnamed_sobel9_sobel_avm_byteenable(bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_byteenable),
        .out_unnamed_sobel9_sobel_avm_enable(bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_enable),
        .out_unnamed_sobel9_sobel_avm_read(bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_read),
        .out_unnamed_sobel9_sobel_avm_write(bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_write),
        .out_unnamed_sobel9_sobel_avm_writedata(bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_writedata),
        .out_valid_out(bb_sobel_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_B3_branch(BLACKBOX,78)
    sobel_B3_branch thesobel_B3_branch (
        .in_exitcond1132_pop17(bb_sobel_B3_stall_region_out_exitcond1132_pop17),
        .in_masked(bb_sobel_B3_stall_region_out_masked),
        .in_memdep(bb_sobel_B3_stall_region_out_memdep),
        .in_notcmp2033_pop18(bb_sobel_B3_stall_region_out_notcmp2033_pop18),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_B3_stall_region_out_valid_out),
        .out_exitcond1132_pop17(sobel_B3_branch_out_exitcond1132_pop17),
        .out_memdep(sobel_B3_branch_out_memdep),
        .out_notcmp2033_pop18(sobel_B3_branch_out_notcmp2033_pop18),
        .out_stall_out(sobel_B3_branch_out_stall_out),
        .out_valid_out_0(sobel_B3_branch_out_valid_out_0),
        .out_valid_out_1(sobel_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond1132_pop17(GPOUT,3)
    assign out_exitcond1132_pop17 = sobel_B3_branch_out_exitcond1132_pop17;

    // out_exiting_stall_out(GPOUT,4)
    assign out_exiting_stall_out = bb_sobel_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,5)
    assign out_exiting_valid_out = bb_sobel_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,6)
    assign out_lsu_memdep_o_active = bb_sobel_B3_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,7)
    assign out_memdep = sobel_B3_branch_out_memdep;

    // out_memdep_sobel_avm_address(GPOUT,8)
    assign out_memdep_sobel_avm_address = bb_sobel_B3_stall_region_out_memdep_sobel_avm_address;

    // out_memdep_sobel_avm_burstcount(GPOUT,9)
    assign out_memdep_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_memdep_sobel_avm_burstcount;

    // out_memdep_sobel_avm_byteenable(GPOUT,10)
    assign out_memdep_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_memdep_sobel_avm_byteenable;

    // out_memdep_sobel_avm_enable(GPOUT,11)
    assign out_memdep_sobel_avm_enable = bb_sobel_B3_stall_region_out_memdep_sobel_avm_enable;

    // out_memdep_sobel_avm_read(GPOUT,12)
    assign out_memdep_sobel_avm_read = bb_sobel_B3_stall_region_out_memdep_sobel_avm_read;

    // out_memdep_sobel_avm_write(GPOUT,13)
    assign out_memdep_sobel_avm_write = bb_sobel_B3_stall_region_out_memdep_sobel_avm_write;

    // out_memdep_sobel_avm_writedata(GPOUT,14)
    assign out_memdep_sobel_avm_writedata = bb_sobel_B3_stall_region_out_memdep_sobel_avm_writedata;

    // out_notcmp2033_pop18(GPOUT,15)
    assign out_notcmp2033_pop18 = sobel_B3_branch_out_notcmp2033_pop18;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = sobel_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,17)
    assign out_stall_out_1 = sobel_B3_merge_out_stall_out_1;

    // out_unnamed_sobel10_sobel_avm_address(GPOUT,18)
    assign out_unnamed_sobel10_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_address;

    // out_unnamed_sobel10_sobel_avm_burstcount(GPOUT,19)
    assign out_unnamed_sobel10_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_burstcount;

    // out_unnamed_sobel10_sobel_avm_byteenable(GPOUT,20)
    assign out_unnamed_sobel10_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_byteenable;

    // out_unnamed_sobel10_sobel_avm_enable(GPOUT,21)
    assign out_unnamed_sobel10_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_enable;

    // out_unnamed_sobel10_sobel_avm_read(GPOUT,22)
    assign out_unnamed_sobel10_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_read;

    // out_unnamed_sobel10_sobel_avm_write(GPOUT,23)
    assign out_unnamed_sobel10_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_write;

    // out_unnamed_sobel10_sobel_avm_writedata(GPOUT,24)
    assign out_unnamed_sobel10_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel10_sobel_avm_writedata;

    // out_unnamed_sobel11_sobel_avm_address(GPOUT,25)
    assign out_unnamed_sobel11_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_address;

    // out_unnamed_sobel11_sobel_avm_burstcount(GPOUT,26)
    assign out_unnamed_sobel11_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_burstcount;

    // out_unnamed_sobel11_sobel_avm_byteenable(GPOUT,27)
    assign out_unnamed_sobel11_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_byteenable;

    // out_unnamed_sobel11_sobel_avm_enable(GPOUT,28)
    assign out_unnamed_sobel11_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_enable;

    // out_unnamed_sobel11_sobel_avm_read(GPOUT,29)
    assign out_unnamed_sobel11_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_read;

    // out_unnamed_sobel11_sobel_avm_write(GPOUT,30)
    assign out_unnamed_sobel11_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_write;

    // out_unnamed_sobel11_sobel_avm_writedata(GPOUT,31)
    assign out_unnamed_sobel11_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel11_sobel_avm_writedata;

    // out_unnamed_sobel12_sobel_avm_address(GPOUT,32)
    assign out_unnamed_sobel12_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_address;

    // out_unnamed_sobel12_sobel_avm_burstcount(GPOUT,33)
    assign out_unnamed_sobel12_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_burstcount;

    // out_unnamed_sobel12_sobel_avm_byteenable(GPOUT,34)
    assign out_unnamed_sobel12_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_byteenable;

    // out_unnamed_sobel12_sobel_avm_enable(GPOUT,35)
    assign out_unnamed_sobel12_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_enable;

    // out_unnamed_sobel12_sobel_avm_read(GPOUT,36)
    assign out_unnamed_sobel12_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_read;

    // out_unnamed_sobel12_sobel_avm_write(GPOUT,37)
    assign out_unnamed_sobel12_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_write;

    // out_unnamed_sobel12_sobel_avm_writedata(GPOUT,38)
    assign out_unnamed_sobel12_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel12_sobel_avm_writedata;

    // out_unnamed_sobel13_sobel_avm_address(GPOUT,39)
    assign out_unnamed_sobel13_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_address;

    // out_unnamed_sobel13_sobel_avm_burstcount(GPOUT,40)
    assign out_unnamed_sobel13_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_burstcount;

    // out_unnamed_sobel13_sobel_avm_byteenable(GPOUT,41)
    assign out_unnamed_sobel13_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_byteenable;

    // out_unnamed_sobel13_sobel_avm_enable(GPOUT,42)
    assign out_unnamed_sobel13_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_enable;

    // out_unnamed_sobel13_sobel_avm_read(GPOUT,43)
    assign out_unnamed_sobel13_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_read;

    // out_unnamed_sobel13_sobel_avm_write(GPOUT,44)
    assign out_unnamed_sobel13_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_write;

    // out_unnamed_sobel13_sobel_avm_writedata(GPOUT,45)
    assign out_unnamed_sobel13_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel13_sobel_avm_writedata;

    // out_unnamed_sobel6_sobel_avm_address(GPOUT,46)
    assign out_unnamed_sobel6_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_address;

    // out_unnamed_sobel6_sobel_avm_burstcount(GPOUT,47)
    assign out_unnamed_sobel6_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_burstcount;

    // out_unnamed_sobel6_sobel_avm_byteenable(GPOUT,48)
    assign out_unnamed_sobel6_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_byteenable;

    // out_unnamed_sobel6_sobel_avm_enable(GPOUT,49)
    assign out_unnamed_sobel6_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_enable;

    // out_unnamed_sobel6_sobel_avm_read(GPOUT,50)
    assign out_unnamed_sobel6_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_read;

    // out_unnamed_sobel6_sobel_avm_write(GPOUT,51)
    assign out_unnamed_sobel6_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_write;

    // out_unnamed_sobel6_sobel_avm_writedata(GPOUT,52)
    assign out_unnamed_sobel6_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel6_sobel_avm_writedata;

    // out_unnamed_sobel7_sobel_avm_address(GPOUT,53)
    assign out_unnamed_sobel7_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_address;

    // out_unnamed_sobel7_sobel_avm_burstcount(GPOUT,54)
    assign out_unnamed_sobel7_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_burstcount;

    // out_unnamed_sobel7_sobel_avm_byteenable(GPOUT,55)
    assign out_unnamed_sobel7_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_byteenable;

    // out_unnamed_sobel7_sobel_avm_enable(GPOUT,56)
    assign out_unnamed_sobel7_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_enable;

    // out_unnamed_sobel7_sobel_avm_read(GPOUT,57)
    assign out_unnamed_sobel7_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_read;

    // out_unnamed_sobel7_sobel_avm_write(GPOUT,58)
    assign out_unnamed_sobel7_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_write;

    // out_unnamed_sobel7_sobel_avm_writedata(GPOUT,59)
    assign out_unnamed_sobel7_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel7_sobel_avm_writedata;

    // out_unnamed_sobel8_sobel_avm_address(GPOUT,60)
    assign out_unnamed_sobel8_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_address;

    // out_unnamed_sobel8_sobel_avm_burstcount(GPOUT,61)
    assign out_unnamed_sobel8_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_burstcount;

    // out_unnamed_sobel8_sobel_avm_byteenable(GPOUT,62)
    assign out_unnamed_sobel8_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_byteenable;

    // out_unnamed_sobel8_sobel_avm_enable(GPOUT,63)
    assign out_unnamed_sobel8_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_enable;

    // out_unnamed_sobel8_sobel_avm_read(GPOUT,64)
    assign out_unnamed_sobel8_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_read;

    // out_unnamed_sobel8_sobel_avm_write(GPOUT,65)
    assign out_unnamed_sobel8_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_write;

    // out_unnamed_sobel8_sobel_avm_writedata(GPOUT,66)
    assign out_unnamed_sobel8_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel8_sobel_avm_writedata;

    // out_unnamed_sobel9_sobel_avm_address(GPOUT,67)
    assign out_unnamed_sobel9_sobel_avm_address = bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_address;

    // out_unnamed_sobel9_sobel_avm_burstcount(GPOUT,68)
    assign out_unnamed_sobel9_sobel_avm_burstcount = bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_burstcount;

    // out_unnamed_sobel9_sobel_avm_byteenable(GPOUT,69)
    assign out_unnamed_sobel9_sobel_avm_byteenable = bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_byteenable;

    // out_unnamed_sobel9_sobel_avm_enable(GPOUT,70)
    assign out_unnamed_sobel9_sobel_avm_enable = bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_enable;

    // out_unnamed_sobel9_sobel_avm_read(GPOUT,71)
    assign out_unnamed_sobel9_sobel_avm_read = bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_read;

    // out_unnamed_sobel9_sobel_avm_write(GPOUT,72)
    assign out_unnamed_sobel9_sobel_avm_write = bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_write;

    // out_unnamed_sobel9_sobel_avm_writedata(GPOUT,73)
    assign out_unnamed_sobel9_sobel_avm_writedata = bb_sobel_B3_stall_region_out_unnamed_sobel9_sobel_avm_writedata;

    // out_valid_out_0(GPOUT,74)
    assign out_valid_out_0 = sobel_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,75)
    assign out_valid_out_1 = sobel_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,77)
    assign out_pipeline_valid_out = bb_sobel_B3_stall_region_out_pipeline_valid_out;

endmodule
