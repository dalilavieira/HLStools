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

// SystemVerilog created from dijkstra_bb_B6
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B6 (
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_49_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_forked123_0,
    input wire [0:0] in_forked123_1,
    input wire [31:0] in_inc50177_0,
    input wire [31:0] in_inc50177_1,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_intel_reserved_ffwd_47_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_dijkstra_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out;
    wire [0:0] bb_dijkstra_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out;
    wire [0:0] bb_dijkstra_B6_stall_region_out_c0_exe2192;
    wire [31:0] bb_dijkstra_B6_stall_region_out_c0_exe3;
    wire [31:0] bb_dijkstra_B6_stall_region_out_intel_reserved_ffwd_49_0;
    wire [0:0] bb_dijkstra_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_dijkstra_B6_stall_region_out_stall_out;
    wire [0:0] bb_dijkstra_B6_stall_region_out_valid_out;
    wire [31:0] dijkstra_B6_branch_out_c0_exe3;
    wire [0:0] dijkstra_B6_branch_out_stall_out;
    wire [0:0] dijkstra_B6_branch_out_valid_out_0;
    wire [0:0] dijkstra_B6_branch_out_valid_out_1;
    wire [0:0] dijkstra_B6_merge_out_forked123;
    wire [31:0] dijkstra_B6_merge_out_inc50177;
    wire [0:0] dijkstra_B6_merge_out_stall_out_0;
    wire [0:0] dijkstra_B6_merge_out_stall_out_1;
    wire [0:0] dijkstra_B6_merge_out_valid_out;


    // dijkstra_B6_merge(BLACKBOX,4)
    dijkstra_B6_merge thedijkstra_B6_merge (
        .in_forked123_0(in_forked123_0),
        .in_forked123_1(in_forked123_1),
        .in_inc50177_0(in_inc50177_0),
        .in_inc50177_1(in_inc50177_1),
        .in_stall_in(bb_dijkstra_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked123(dijkstra_B6_merge_out_forked123),
        .out_inc50177(dijkstra_B6_merge_out_inc50177),
        .out_stall_out_0(dijkstra_B6_merge_out_stall_out_0),
        .out_stall_out_1(dijkstra_B6_merge_out_stall_out_1),
        .out_valid_out(dijkstra_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B6_stall_region(BLACKBOX,2)
    dijkstra_bb_B6_stall_region thebb_dijkstra_B6_stall_region (
        .in_forked123(dijkstra_B6_merge_out_forked123),
        .in_inc50177(dijkstra_B6_merge_out_inc50177),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dijkstra_B6_branch_out_stall_out),
        .in_valid_in(dijkstra_B6_merge_out_valid_out),
        .in_intel_reserved_ffwd_47_0_0_tpl(in_intel_reserved_ffwd_47_0_0_tpl),
        .in_intel_reserved_ffwd_47_0_1_tpl(in_intel_reserved_ffwd_47_0_1_tpl),
        .in_intel_reserved_ffwd_47_0_2_tpl(in_intel_reserved_ffwd_47_0_2_tpl),
        .in_intel_reserved_ffwd_47_0_3_tpl(in_intel_reserved_ffwd_47_0_3_tpl),
        .in_intel_reserved_ffwd_47_0_4_tpl(in_intel_reserved_ffwd_47_0_4_tpl),
        .in_intel_reserved_ffwd_47_0_5_tpl(in_intel_reserved_ffwd_47_0_5_tpl),
        .in_intel_reserved_ffwd_47_0_6_tpl(in_intel_reserved_ffwd_47_0_6_tpl),
        .in_intel_reserved_ffwd_47_0_7_tpl(in_intel_reserved_ffwd_47_0_7_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out(bb_dijkstra_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out(bb_dijkstra_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out),
        .out_c0_exe2192(bb_dijkstra_B6_stall_region_out_c0_exe2192),
        .out_c0_exe3(bb_dijkstra_B6_stall_region_out_c0_exe3),
        .out_intel_reserved_ffwd_49_0(bb_dijkstra_B6_stall_region_out_intel_reserved_ffwd_49_0),
        .out_pipeline_valid_out(bb_dijkstra_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_dijkstra_B6_stall_region_out_stall_out),
        .out_valid_out(bb_dijkstra_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dijkstra_B6_branch(BLACKBOX,3)
    dijkstra_B6_branch thedijkstra_B6_branch (
        .in_c0_exe2192(bb_dijkstra_B6_stall_region_out_c0_exe2192),
        .in_c0_exe3(bb_dijkstra_B6_stall_region_out_c0_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_dijkstra_B6_stall_region_out_valid_out),
        .out_c0_exe3(dijkstra_B6_branch_out_c0_exe3),
        .out_stall_out(dijkstra_B6_branch_out_stall_out),
        .out_valid_out_0(dijkstra_B6_branch_out_valid_out_0),
        .out_valid_out_1(dijkstra_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3(GPOUT,5)
    assign out_c0_exe3 = dijkstra_B6_branch_out_c0_exe3;

    // out_exiting_stall_out(GPOUT,6)
    assign out_exiting_stall_out = bb_dijkstra_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,7)
    assign out_exiting_valid_out = bb_dijkstra_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out;

    // out_intel_reserved_ffwd_49_0(GPOUT,8)
    assign out_intel_reserved_ffwd_49_0 = bb_dijkstra_B6_stall_region_out_intel_reserved_ffwd_49_0;

    // out_stall_out_0(GPOUT,9)
    assign out_stall_out_0 = dijkstra_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,10)
    assign out_stall_out_1 = dijkstra_B6_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = dijkstra_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,12)
    assign out_valid_out_1 = dijkstra_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,14)
    assign out_pipeline_valid_out = bb_dijkstra_B6_stall_region_out_pipeline_valid_out;

endmodule
