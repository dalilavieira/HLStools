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

// SystemVerilog created from kmeans_bb_B15
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B15 (
    input wire [15:0] in_c_044_pop35138_0,
    input wire [15:0] in_c_044_pop35138_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked111136_0,
    input wire [0:0] in_forked111136_1,
    input wire [0:0] in_forked39_0,
    input wire [0:0] in_forked39_1,
    input wire [31:0] in_i27_047_pop32114_pop40142_0,
    input wire [31:0] in_i27_047_pop32114_pop40142_1,
    input wire [31:0] in_i27_047_pop32132_0,
    input wire [31:0] in_i27_047_pop32132_1,
    input wire [32:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    input wire [15:0] in_lm1_kmeans_avm_readdata,
    input wire [0:0] in_lm1_kmeans_avm_readdatavalid,
    input wire [0:0] in_lm1_kmeans_avm_waitrequest,
    input wire [0:0] in_lm1_kmeans_avm_writeack,
    input wire [15:0] in_lm252_kmeans_avm_readdata,
    input wire [0:0] in_lm252_kmeans_avm_readdatavalid,
    input wire [0:0] in_lm252_kmeans_avm_waitrequest,
    input wire [0:0] in_lm252_kmeans_avm_writeack,
    input wire [31:0] in_mul46137_0,
    input wire [31:0] in_mul46137_1,
    input wire [0:0] in_notcmp41139_0,
    input wire [0:0] in_notcmp41139_1,
    input wire [0:0] in_notcmp46112_pop39141_0,
    input wire [0:0] in_notcmp46112_pop39141_1,
    input wire [0:0] in_notcmp46129_0,
    input wire [0:0] in_notcmp46129_1,
    input wire [0:0] in_notcmp51108_pop33135_0,
    input wire [0:0] in_notcmp51108_pop33135_1,
    input wire [0:0] in_notcmp51109_pop38140_0,
    input wire [0:0] in_notcmp51109_pop38140_1,
    input wire [0:0] in_notcmp51125_0,
    input wire [0:0] in_notcmp51125_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_kmeans22_0,
    input wire [0:0] in_unnamed_kmeans22_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10259,
    output wire [31:0] out_c0_exe2251,
    output wire [15:0] out_c0_exe4253,
    output wire [0:0] out_c0_exe5254,
    output wire [0:0] out_c0_exe6255,
    output wire [0:0] out_c0_exe7256,
    output wire [15:0] out_c0_exe8257,
    output wire [0:0] out_c0_exe9258,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm1_kmeans_avm_address,
    output wire [0:0] out_lm1_kmeans_avm_burstcount,
    output wire [1:0] out_lm1_kmeans_avm_byteenable,
    output wire [0:0] out_lm1_kmeans_avm_enable,
    output wire [0:0] out_lm1_kmeans_avm_read,
    output wire [0:0] out_lm1_kmeans_avm_write,
    output wire [15:0] out_lm1_kmeans_avm_writedata,
    output wire [31:0] out_lm252_kmeans_avm_address,
    output wire [0:0] out_lm252_kmeans_avm_burstcount,
    output wire [1:0] out_lm252_kmeans_avm_byteenable,
    output wire [0:0] out_lm252_kmeans_avm_enable,
    output wire [0:0] out_lm252_kmeans_avm_read,
    output wire [0:0] out_lm252_kmeans_avm_write,
    output wire [15:0] out_lm252_kmeans_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kmeans_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out;
    wire [0:0] bb_kmeans_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out;
    wire [0:0] bb_kmeans_B15_stall_region_out_c0_exe10259;
    wire [31:0] bb_kmeans_B15_stall_region_out_c0_exe2251;
    wire [0:0] bb_kmeans_B15_stall_region_out_c0_exe3252;
    wire [15:0] bb_kmeans_B15_stall_region_out_c0_exe4253;
    wire [0:0] bb_kmeans_B15_stall_region_out_c0_exe5254;
    wire [0:0] bb_kmeans_B15_stall_region_out_c0_exe6255;
    wire [0:0] bb_kmeans_B15_stall_region_out_c0_exe7256;
    wire [15:0] bb_kmeans_B15_stall_region_out_c0_exe8257;
    wire [0:0] bb_kmeans_B15_stall_region_out_c0_exe9258;
    wire [31:0] bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_address;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_read;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_write;
    wire [15:0] bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_writedata;
    wire [31:0] bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_address;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_read;
    wire [0:0] bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_write;
    wire [15:0] bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_writedata;
    wire [0:0] bb_kmeans_B15_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B15_stall_region_out_stall_out;
    wire [0:0] bb_kmeans_B15_stall_region_out_valid_out;
    wire [0:0] kmeans_B15_branch_out_c0_exe10259;
    wire [31:0] kmeans_B15_branch_out_c0_exe2251;
    wire [15:0] kmeans_B15_branch_out_c0_exe4253;
    wire [0:0] kmeans_B15_branch_out_c0_exe5254;
    wire [0:0] kmeans_B15_branch_out_c0_exe6255;
    wire [0:0] kmeans_B15_branch_out_c0_exe7256;
    wire [15:0] kmeans_B15_branch_out_c0_exe8257;
    wire [0:0] kmeans_B15_branch_out_c0_exe9258;
    wire [0:0] kmeans_B15_branch_out_stall_out;
    wire [0:0] kmeans_B15_branch_out_valid_out_0;
    wire [0:0] kmeans_B15_branch_out_valid_out_1;
    wire [15:0] kmeans_B15_merge_out_c_044_pop35138;
    wire [0:0] kmeans_B15_merge_out_forked111136;
    wire [0:0] kmeans_B15_merge_out_forked39;
    wire [31:0] kmeans_B15_merge_out_i27_047_pop32114_pop40142;
    wire [31:0] kmeans_B15_merge_out_i27_047_pop32132;
    wire [31:0] kmeans_B15_merge_out_mul46137;
    wire [0:0] kmeans_B15_merge_out_notcmp41139;
    wire [0:0] kmeans_B15_merge_out_notcmp46112_pop39141;
    wire [0:0] kmeans_B15_merge_out_notcmp46129;
    wire [0:0] kmeans_B15_merge_out_notcmp51108_pop33135;
    wire [0:0] kmeans_B15_merge_out_notcmp51109_pop38140;
    wire [0:0] kmeans_B15_merge_out_notcmp51125;
    wire [0:0] kmeans_B15_merge_out_stall_out_0;
    wire [0:0] kmeans_B15_merge_out_stall_out_1;
    wire [0:0] kmeans_B15_merge_out_unnamed_kmeans22;
    wire [0:0] kmeans_B15_merge_out_valid_out;


    // kmeans_B15_merge(BLACKBOX,46)
    kmeans_B15_merge thekmeans_B15_merge (
        .in_c_044_pop35138_0(in_c_044_pop35138_0),
        .in_c_044_pop35138_1(in_c_044_pop35138_1),
        .in_forked111136_0(in_forked111136_0),
        .in_forked111136_1(in_forked111136_1),
        .in_forked39_0(in_forked39_0),
        .in_forked39_1(in_forked39_1),
        .in_i27_047_pop32114_pop40142_0(in_i27_047_pop32114_pop40142_0),
        .in_i27_047_pop32114_pop40142_1(in_i27_047_pop32114_pop40142_1),
        .in_i27_047_pop32132_0(in_i27_047_pop32132_0),
        .in_i27_047_pop32132_1(in_i27_047_pop32132_1),
        .in_mul46137_0(in_mul46137_0),
        .in_mul46137_1(in_mul46137_1),
        .in_notcmp41139_0(in_notcmp41139_0),
        .in_notcmp41139_1(in_notcmp41139_1),
        .in_notcmp46112_pop39141_0(in_notcmp46112_pop39141_0),
        .in_notcmp46112_pop39141_1(in_notcmp46112_pop39141_1),
        .in_notcmp46129_0(in_notcmp46129_0),
        .in_notcmp46129_1(in_notcmp46129_1),
        .in_notcmp51108_pop33135_0(in_notcmp51108_pop33135_0),
        .in_notcmp51108_pop33135_1(in_notcmp51108_pop33135_1),
        .in_notcmp51109_pop38140_0(in_notcmp51109_pop38140_0),
        .in_notcmp51109_pop38140_1(in_notcmp51109_pop38140_1),
        .in_notcmp51125_0(in_notcmp51125_0),
        .in_notcmp51125_1(in_notcmp51125_1),
        .in_stall_in(bb_kmeans_B15_stall_region_out_stall_out),
        .in_unnamed_kmeans22_0(in_unnamed_kmeans22_0),
        .in_unnamed_kmeans22_1(in_unnamed_kmeans22_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_044_pop35138(kmeans_B15_merge_out_c_044_pop35138),
        .out_forked111136(kmeans_B15_merge_out_forked111136),
        .out_forked39(kmeans_B15_merge_out_forked39),
        .out_i27_047_pop32114_pop40142(kmeans_B15_merge_out_i27_047_pop32114_pop40142),
        .out_i27_047_pop32132(kmeans_B15_merge_out_i27_047_pop32132),
        .out_mul46137(kmeans_B15_merge_out_mul46137),
        .out_notcmp41139(kmeans_B15_merge_out_notcmp41139),
        .out_notcmp46112_pop39141(kmeans_B15_merge_out_notcmp46112_pop39141),
        .out_notcmp46129(kmeans_B15_merge_out_notcmp46129),
        .out_notcmp51108_pop33135(kmeans_B15_merge_out_notcmp51108_pop33135),
        .out_notcmp51109_pop38140(kmeans_B15_merge_out_notcmp51109_pop38140),
        .out_notcmp51125(kmeans_B15_merge_out_notcmp51125),
        .out_stall_out_0(kmeans_B15_merge_out_stall_out_0),
        .out_stall_out_1(kmeans_B15_merge_out_stall_out_1),
        .out_unnamed_kmeans22(kmeans_B15_merge_out_unnamed_kmeans22),
        .out_valid_out(kmeans_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B15_stall_region(BLACKBOX,2)
    kmeans_bb_B15_stall_region thebb_kmeans_B15_stall_region (
        .in_c_044_pop35138(kmeans_B15_merge_out_c_044_pop35138),
        .in_flush(in_flush),
        .in_forked111136(kmeans_B15_merge_out_forked111136),
        .in_forked39(kmeans_B15_merge_out_forked39),
        .in_i27_047_pop32114_pop40142(kmeans_B15_merge_out_i27_047_pop32114_pop40142),
        .in_i27_047_pop32132(kmeans_B15_merge_out_i27_047_pop32132),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm1_kmeans_avm_readdata(in_lm1_kmeans_avm_readdata),
        .in_lm1_kmeans_avm_readdatavalid(in_lm1_kmeans_avm_readdatavalid),
        .in_lm1_kmeans_avm_waitrequest(in_lm1_kmeans_avm_waitrequest),
        .in_lm1_kmeans_avm_writeack(in_lm1_kmeans_avm_writeack),
        .in_lm252_kmeans_avm_readdata(in_lm252_kmeans_avm_readdata),
        .in_lm252_kmeans_avm_readdatavalid(in_lm252_kmeans_avm_readdatavalid),
        .in_lm252_kmeans_avm_waitrequest(in_lm252_kmeans_avm_waitrequest),
        .in_lm252_kmeans_avm_writeack(in_lm252_kmeans_avm_writeack),
        .in_mul46137(kmeans_B15_merge_out_mul46137),
        .in_notcmp41139(kmeans_B15_merge_out_notcmp41139),
        .in_notcmp46112_pop39141(kmeans_B15_merge_out_notcmp46112_pop39141),
        .in_notcmp46129(kmeans_B15_merge_out_notcmp46129),
        .in_notcmp51108_pop33135(kmeans_B15_merge_out_notcmp51108_pop33135),
        .in_notcmp51109_pop38140(kmeans_B15_merge_out_notcmp51109_pop38140),
        .in_notcmp51125(kmeans_B15_merge_out_notcmp51125),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kmeans_B15_branch_out_stall_out),
        .in_unnamed_kmeans22(kmeans_B15_merge_out_unnamed_kmeans22),
        .in_valid_in(kmeans_B15_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out(bb_kmeans_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out(bb_kmeans_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out),
        .out_c0_exe10259(bb_kmeans_B15_stall_region_out_c0_exe10259),
        .out_c0_exe2251(bb_kmeans_B15_stall_region_out_c0_exe2251),
        .out_c0_exe3252(bb_kmeans_B15_stall_region_out_c0_exe3252),
        .out_c0_exe4253(bb_kmeans_B15_stall_region_out_c0_exe4253),
        .out_c0_exe5254(bb_kmeans_B15_stall_region_out_c0_exe5254),
        .out_c0_exe6255(bb_kmeans_B15_stall_region_out_c0_exe6255),
        .out_c0_exe7256(bb_kmeans_B15_stall_region_out_c0_exe7256),
        .out_c0_exe8257(bb_kmeans_B15_stall_region_out_c0_exe8257),
        .out_c0_exe9258(bb_kmeans_B15_stall_region_out_c0_exe9258),
        .out_lm1_kmeans_avm_address(bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_address),
        .out_lm1_kmeans_avm_burstcount(bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_burstcount),
        .out_lm1_kmeans_avm_byteenable(bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_byteenable),
        .out_lm1_kmeans_avm_enable(bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_enable),
        .out_lm1_kmeans_avm_read(bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_read),
        .out_lm1_kmeans_avm_write(bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_write),
        .out_lm1_kmeans_avm_writedata(bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_writedata),
        .out_lm252_kmeans_avm_address(bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_address),
        .out_lm252_kmeans_avm_burstcount(bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_burstcount),
        .out_lm252_kmeans_avm_byteenable(bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_byteenable),
        .out_lm252_kmeans_avm_enable(bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_enable),
        .out_lm252_kmeans_avm_read(bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_read),
        .out_lm252_kmeans_avm_write(bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_write),
        .out_lm252_kmeans_avm_writedata(bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_writedata),
        .out_pipeline_valid_out(bb_kmeans_B15_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kmeans_B15_stall_region_out_stall_out),
        .out_valid_out(bb_kmeans_B15_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kmeans_B15_branch(BLACKBOX,45)
    kmeans_B15_branch thekmeans_B15_branch (
        .in_c0_exe10259(bb_kmeans_B15_stall_region_out_c0_exe10259),
        .in_c0_exe2251(bb_kmeans_B15_stall_region_out_c0_exe2251),
        .in_c0_exe3252(bb_kmeans_B15_stall_region_out_c0_exe3252),
        .in_c0_exe4253(bb_kmeans_B15_stall_region_out_c0_exe4253),
        .in_c0_exe5254(bb_kmeans_B15_stall_region_out_c0_exe5254),
        .in_c0_exe6255(bb_kmeans_B15_stall_region_out_c0_exe6255),
        .in_c0_exe7256(bb_kmeans_B15_stall_region_out_c0_exe7256),
        .in_c0_exe8257(bb_kmeans_B15_stall_region_out_c0_exe8257),
        .in_c0_exe9258(bb_kmeans_B15_stall_region_out_c0_exe9258),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kmeans_B15_stall_region_out_valid_out),
        .out_c0_exe10259(kmeans_B15_branch_out_c0_exe10259),
        .out_c0_exe2251(kmeans_B15_branch_out_c0_exe2251),
        .out_c0_exe4253(kmeans_B15_branch_out_c0_exe4253),
        .out_c0_exe5254(kmeans_B15_branch_out_c0_exe5254),
        .out_c0_exe6255(kmeans_B15_branch_out_c0_exe6255),
        .out_c0_exe7256(kmeans_B15_branch_out_c0_exe7256),
        .out_c0_exe8257(kmeans_B15_branch_out_c0_exe8257),
        .out_c0_exe9258(kmeans_B15_branch_out_c0_exe9258),
        .out_stall_out(kmeans_B15_branch_out_stall_out),
        .out_valid_out_0(kmeans_B15_branch_out_valid_out_0),
        .out_valid_out_1(kmeans_B15_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10259(GPOUT,47)
    assign out_c0_exe10259 = kmeans_B15_branch_out_c0_exe10259;

    // out_c0_exe2251(GPOUT,48)
    assign out_c0_exe2251 = kmeans_B15_branch_out_c0_exe2251;

    // out_c0_exe4253(GPOUT,49)
    assign out_c0_exe4253 = kmeans_B15_branch_out_c0_exe4253;

    // out_c0_exe5254(GPOUT,50)
    assign out_c0_exe5254 = kmeans_B15_branch_out_c0_exe5254;

    // out_c0_exe6255(GPOUT,51)
    assign out_c0_exe6255 = kmeans_B15_branch_out_c0_exe6255;

    // out_c0_exe7256(GPOUT,52)
    assign out_c0_exe7256 = kmeans_B15_branch_out_c0_exe7256;

    // out_c0_exe8257(GPOUT,53)
    assign out_c0_exe8257 = kmeans_B15_branch_out_c0_exe8257;

    // out_c0_exe9258(GPOUT,54)
    assign out_c0_exe9258 = kmeans_B15_branch_out_c0_exe9258;

    // out_exiting_stall_out(GPOUT,55)
    assign out_exiting_stall_out = bb_kmeans_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,56)
    assign out_exiting_valid_out = bb_kmeans_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out;

    // out_lm1_kmeans_avm_address(GPOUT,57)
    assign out_lm1_kmeans_avm_address = bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_address;

    // out_lm1_kmeans_avm_burstcount(GPOUT,58)
    assign out_lm1_kmeans_avm_burstcount = bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_burstcount;

    // out_lm1_kmeans_avm_byteenable(GPOUT,59)
    assign out_lm1_kmeans_avm_byteenable = bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_byteenable;

    // out_lm1_kmeans_avm_enable(GPOUT,60)
    assign out_lm1_kmeans_avm_enable = bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_enable;

    // out_lm1_kmeans_avm_read(GPOUT,61)
    assign out_lm1_kmeans_avm_read = bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_read;

    // out_lm1_kmeans_avm_write(GPOUT,62)
    assign out_lm1_kmeans_avm_write = bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_write;

    // out_lm1_kmeans_avm_writedata(GPOUT,63)
    assign out_lm1_kmeans_avm_writedata = bb_kmeans_B15_stall_region_out_lm1_kmeans_avm_writedata;

    // out_lm252_kmeans_avm_address(GPOUT,64)
    assign out_lm252_kmeans_avm_address = bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_address;

    // out_lm252_kmeans_avm_burstcount(GPOUT,65)
    assign out_lm252_kmeans_avm_burstcount = bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_burstcount;

    // out_lm252_kmeans_avm_byteenable(GPOUT,66)
    assign out_lm252_kmeans_avm_byteenable = bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_byteenable;

    // out_lm252_kmeans_avm_enable(GPOUT,67)
    assign out_lm252_kmeans_avm_enable = bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_enable;

    // out_lm252_kmeans_avm_read(GPOUT,68)
    assign out_lm252_kmeans_avm_read = bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_read;

    // out_lm252_kmeans_avm_write(GPOUT,69)
    assign out_lm252_kmeans_avm_write = bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_write;

    // out_lm252_kmeans_avm_writedata(GPOUT,70)
    assign out_lm252_kmeans_avm_writedata = bb_kmeans_B15_stall_region_out_lm252_kmeans_avm_writedata;

    // out_stall_out_0(GPOUT,71)
    assign out_stall_out_0 = kmeans_B15_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,72)
    assign out_stall_out_1 = kmeans_B15_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,73)
    assign out_valid_out_0 = kmeans_B15_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,74)
    assign out_valid_out_1 = kmeans_B15_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,76)
    assign out_pipeline_valid_out = bb_kmeans_B15_stall_region_out_pipeline_valid_out;

endmodule
