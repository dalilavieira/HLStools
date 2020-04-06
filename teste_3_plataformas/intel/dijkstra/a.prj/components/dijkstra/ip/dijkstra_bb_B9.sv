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

// SystemVerilog created from dijkstra_bb_B9
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B9 (
    output wire [31:0] out_c0_exe3204,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_60_0,
    output wire [31:0] out_intel_reserved_ffwd_61_0,
    output wire [31:0] out_intel_reserved_ffwd_62_0,
    output wire [31:0] out_intel_reserved_ffwd_63_0,
    output wire [31:0] out_intel_reserved_ffwd_64_0,
    output wire [31:0] out_intel_reserved_ffwd_65_0,
    output wire [31:0] out_intel_reserved_ffwd_66_0,
    output wire [31:0] out_intel_reserved_ffwd_67_0,
    output wire [31:0] out_intel_reserved_ffwd_68_0,
    output wire [63:0] out_lm1_dijkstra_avm_address,
    output wire [0:0] out_lm1_dijkstra_avm_burstcount,
    output wire [7:0] out_lm1_dijkstra_avm_byteenable,
    output wire [0:0] out_lm1_dijkstra_avm_enable,
    output wire [0:0] out_lm1_dijkstra_avm_read,
    output wire [0:0] out_lm1_dijkstra_avm_write,
    output wire [63:0] out_lm1_dijkstra_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked52_0,
    input wire [0:0] in_forked52_1,
    input wire [31:0] in_inc50175_pop37178_0,
    input wire [31:0] in_inc50175_pop37178_1,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_38_0,
    input wire [31:0] in_intel_reserved_ffwd_39_0,
    input wire [31:0] in_intel_reserved_ffwd_40_0,
    input wire [31:0] in_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    input wire [31:0] in_intel_reserved_ffwd_50_0,
    input wire [63:0] in_lm1_dijkstra_avm_readdata,
    input wire [0:0] in_lm1_dijkstra_avm_readdatavalid,
    input wire [0:0] in_lm1_dijkstra_avm_waitrequest,
    input wire [0:0] in_lm1_dijkstra_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_intel_reserved_ffwd_59_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_dijkstra_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_stall_out;
    wire [0:0] bb_dijkstra_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_valid_out;
    wire [0:0] bb_dijkstra_B9_stall_region_out_c0_exe2203;
    wire [31:0] bb_dijkstra_B9_stall_region_out_c0_exe3204;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_60_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_61_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_62_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_63_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_64_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_65_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_66_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_67_0;
    wire [31:0] bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_68_0;
    wire [63:0] bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_address;
    wire [0:0] bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_burstcount;
    wire [7:0] bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_byteenable;
    wire [0:0] bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_enable;
    wire [0:0] bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_read;
    wire [0:0] bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_write;
    wire [63:0] bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_writedata;
    wire [0:0] bb_dijkstra_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_dijkstra_B9_stall_region_out_stall_out;
    wire [0:0] bb_dijkstra_B9_stall_region_out_valid_out;
    wire [31:0] dijkstra_B9_branch_out_c0_exe3204;
    wire [0:0] dijkstra_B9_branch_out_stall_out;
    wire [0:0] dijkstra_B9_branch_out_valid_out_0;
    wire [0:0] dijkstra_B9_branch_out_valid_out_1;
    wire [0:0] dijkstra_B9_merge_out_forked52;
    wire [31:0] dijkstra_B9_merge_out_inc50175_pop37178;
    wire [0:0] dijkstra_B9_merge_out_stall_out_0;
    wire [0:0] dijkstra_B9_merge_out_stall_out_1;
    wire [0:0] dijkstra_B9_merge_out_valid_out;


    // dijkstra_B9_merge(BLACKBOX,4)
    dijkstra_B9_merge thedijkstra_B9_merge (
        .in_forked52_0(in_forked52_0),
        .in_forked52_1(in_forked52_1),
        .in_inc50175_pop37178_0(in_inc50175_pop37178_0),
        .in_inc50175_pop37178_1(in_inc50175_pop37178_1),
        .in_stall_in(bb_dijkstra_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked52(dijkstra_B9_merge_out_forked52),
        .out_inc50175_pop37178(dijkstra_B9_merge_out_inc50175_pop37178),
        .out_stall_out_0(dijkstra_B9_merge_out_stall_out_0),
        .out_stall_out_1(dijkstra_B9_merge_out_stall_out_1),
        .out_valid_out(dijkstra_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B9_stall_region(BLACKBOX,2)
    dijkstra_bb_B9_stall_region thebb_dijkstra_B9_stall_region (
        .in_flush(in_flush),
        .in_forked52(dijkstra_B9_merge_out_forked52),
        .in_inc50175_pop37178(dijkstra_B9_merge_out_inc50175_pop37178),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_lm1_dijkstra_avm_readdata(in_lm1_dijkstra_avm_readdata),
        .in_lm1_dijkstra_avm_readdatavalid(in_lm1_dijkstra_avm_readdatavalid),
        .in_lm1_dijkstra_avm_waitrequest(in_lm1_dijkstra_avm_waitrequest),
        .in_lm1_dijkstra_avm_writeack(in_lm1_dijkstra_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dijkstra_B9_branch_out_stall_out),
        .in_valid_in(dijkstra_B9_merge_out_valid_out),
        .in_intel_reserved_ffwd_59_0_0_tpl(in_intel_reserved_ffwd_59_0_0_tpl),
        .in_intel_reserved_ffwd_59_0_1_tpl(in_intel_reserved_ffwd_59_0_1_tpl),
        .in_intel_reserved_ffwd_59_0_2_tpl(in_intel_reserved_ffwd_59_0_2_tpl),
        .in_intel_reserved_ffwd_59_0_3_tpl(in_intel_reserved_ffwd_59_0_3_tpl),
        .in_intel_reserved_ffwd_59_0_4_tpl(in_intel_reserved_ffwd_59_0_4_tpl),
        .in_intel_reserved_ffwd_59_0_5_tpl(in_intel_reserved_ffwd_59_0_5_tpl),
        .in_intel_reserved_ffwd_59_0_6_tpl(in_intel_reserved_ffwd_59_0_6_tpl),
        .in_intel_reserved_ffwd_59_0_7_tpl(in_intel_reserved_ffwd_59_0_7_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_stall_out(bb_dijkstra_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_valid_out(bb_dijkstra_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_valid_out),
        .out_c0_exe2203(bb_dijkstra_B9_stall_region_out_c0_exe2203),
        .out_c0_exe3204(bb_dijkstra_B9_stall_region_out_c0_exe3204),
        .out_intel_reserved_ffwd_60_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_68_0),
        .out_lm1_dijkstra_avm_address(bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_address),
        .out_lm1_dijkstra_avm_burstcount(bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_burstcount),
        .out_lm1_dijkstra_avm_byteenable(bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_byteenable),
        .out_lm1_dijkstra_avm_enable(bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_enable),
        .out_lm1_dijkstra_avm_read(bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_read),
        .out_lm1_dijkstra_avm_write(bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_write),
        .out_lm1_dijkstra_avm_writedata(bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_writedata),
        .out_pipeline_valid_out(bb_dijkstra_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_dijkstra_B9_stall_region_out_stall_out),
        .out_valid_out(bb_dijkstra_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dijkstra_B9_branch(BLACKBOX,3)
    dijkstra_B9_branch thedijkstra_B9_branch (
        .in_c0_exe2203(bb_dijkstra_B9_stall_region_out_c0_exe2203),
        .in_c0_exe3204(bb_dijkstra_B9_stall_region_out_c0_exe3204),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_dijkstra_B9_stall_region_out_valid_out),
        .out_c0_exe3204(dijkstra_B9_branch_out_c0_exe3204),
        .out_stall_out(dijkstra_B9_branch_out_stall_out),
        .out_valid_out_0(dijkstra_B9_branch_out_valid_out_0),
        .out_valid_out_1(dijkstra_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3204(GPOUT,5)
    assign out_c0_exe3204 = dijkstra_B9_branch_out_c0_exe3204;

    // out_exiting_stall_out(GPOUT,6)
    assign out_exiting_stall_out = bb_dijkstra_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,7)
    assign out_exiting_valid_out = bb_dijkstra_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_valid_out;

    // out_intel_reserved_ffwd_60_0(GPOUT,8)
    assign out_intel_reserved_ffwd_60_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_60_0;

    // out_intel_reserved_ffwd_61_0(GPOUT,9)
    assign out_intel_reserved_ffwd_61_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_61_0;

    // out_intel_reserved_ffwd_62_0(GPOUT,10)
    assign out_intel_reserved_ffwd_62_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_62_0;

    // out_intel_reserved_ffwd_63_0(GPOUT,11)
    assign out_intel_reserved_ffwd_63_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_63_0;

    // out_intel_reserved_ffwd_64_0(GPOUT,12)
    assign out_intel_reserved_ffwd_64_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_64_0;

    // out_intel_reserved_ffwd_65_0(GPOUT,13)
    assign out_intel_reserved_ffwd_65_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_65_0;

    // out_intel_reserved_ffwd_66_0(GPOUT,14)
    assign out_intel_reserved_ffwd_66_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_66_0;

    // out_intel_reserved_ffwd_67_0(GPOUT,15)
    assign out_intel_reserved_ffwd_67_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_67_0;

    // out_intel_reserved_ffwd_68_0(GPOUT,16)
    assign out_intel_reserved_ffwd_68_0 = bb_dijkstra_B9_stall_region_out_intel_reserved_ffwd_68_0;

    // out_lm1_dijkstra_avm_address(GPOUT,17)
    assign out_lm1_dijkstra_avm_address = bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_address;

    // out_lm1_dijkstra_avm_burstcount(GPOUT,18)
    assign out_lm1_dijkstra_avm_burstcount = bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_burstcount;

    // out_lm1_dijkstra_avm_byteenable(GPOUT,19)
    assign out_lm1_dijkstra_avm_byteenable = bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_byteenable;

    // out_lm1_dijkstra_avm_enable(GPOUT,20)
    assign out_lm1_dijkstra_avm_enable = bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_enable;

    // out_lm1_dijkstra_avm_read(GPOUT,21)
    assign out_lm1_dijkstra_avm_read = bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_read;

    // out_lm1_dijkstra_avm_write(GPOUT,22)
    assign out_lm1_dijkstra_avm_write = bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_write;

    // out_lm1_dijkstra_avm_writedata(GPOUT,23)
    assign out_lm1_dijkstra_avm_writedata = bb_dijkstra_B9_stall_region_out_lm1_dijkstra_avm_writedata;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = dijkstra_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,25)
    assign out_stall_out_1 = dijkstra_B9_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,26)
    assign out_valid_out_0 = dijkstra_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,27)
    assign out_valid_out_1 = dijkstra_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = bb_dijkstra_B9_stall_region_out_pipeline_valid_out;

endmodule
