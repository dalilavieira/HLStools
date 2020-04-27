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

// SystemVerilog created from loopback_bb_B4
// SystemVerilog created on Mon Apr 27 09:48:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_bb_B4 (
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    output wire [31:0] out_iowr_bl_return_loopback_o_fifodata,
    output wire [0:0] out_iowr_bl_return_loopback_o_fifovalid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire [15:0] in_intel_reserved_ffwd_100_0,
    input wire [15:0] in_intel_reserved_ffwd_69_0,
    input wire [15:0] in_intel_reserved_ffwd_70_0,
    input wire [15:0] in_intel_reserved_ffwd_71_0,
    input wire [15:0] in_intel_reserved_ffwd_72_0,
    input wire [15:0] in_intel_reserved_ffwd_73_0,
    input wire [15:0] in_intel_reserved_ffwd_74_0,
    input wire [15:0] in_intel_reserved_ffwd_75_0,
    input wire [15:0] in_intel_reserved_ffwd_76_0,
    input wire [15:0] in_intel_reserved_ffwd_77_0,
    input wire [15:0] in_intel_reserved_ffwd_78_0,
    input wire [15:0] in_intel_reserved_ffwd_79_0,
    input wire [15:0] in_intel_reserved_ffwd_80_0,
    input wire [15:0] in_intel_reserved_ffwd_81_0,
    input wire [15:0] in_intel_reserved_ffwd_82_0,
    input wire [15:0] in_intel_reserved_ffwd_83_0,
    input wire [15:0] in_intel_reserved_ffwd_84_0,
    input wire [15:0] in_intel_reserved_ffwd_85_0,
    input wire [15:0] in_intel_reserved_ffwd_86_0,
    input wire [15:0] in_intel_reserved_ffwd_87_0,
    input wire [15:0] in_intel_reserved_ffwd_88_0,
    input wire [15:0] in_intel_reserved_ffwd_89_0,
    input wire [15:0] in_intel_reserved_ffwd_90_0,
    input wire [15:0] in_intel_reserved_ffwd_91_0,
    input wire [15:0] in_intel_reserved_ffwd_92_0,
    input wire [15:0] in_intel_reserved_ffwd_93_0,
    input wire [15:0] in_intel_reserved_ffwd_94_0,
    input wire [15:0] in_intel_reserved_ffwd_95_0,
    input wire [15:0] in_intel_reserved_ffwd_96_0,
    input wire [15:0] in_intel_reserved_ffwd_97_0,
    input wire [15:0] in_intel_reserved_ffwd_98_0,
    input wire [15:0] in_intel_reserved_ffwd_99_0,
    input wire [0:0] in_iowr_bl_return_loopback_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_loopback_B4_stall_region_out_feedback_out_1;
    wire [0:0] bb_loopback_B4_stall_region_out_feedback_valid_out_1;
    wire [31:0] bb_loopback_B4_stall_region_out_iowr_bl_return_loopback_o_fifodata;
    wire [0:0] bb_loopback_B4_stall_region_out_iowr_bl_return_loopback_o_fifovalid;
    wire [0:0] bb_loopback_B4_stall_region_out_stall_out;
    wire [0:0] bb_loopback_B4_stall_region_out_valid_out;
    wire [0:0] loopback_B4_branch_out_stall_out;
    wire [0:0] loopback_B4_branch_out_valid_out_0;
    wire [0:0] loopback_B4_merge_out_stall_out_0;
    wire [0:0] loopback_B4_merge_out_valid_out;


    // loopback_B4_merge(BLACKBOX,7)
    loopback_B4_merge theloopback_B4_merge (
        .in_stall_in(bb_loopback_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(loopback_B4_merge_out_stall_out_0),
        .out_valid_out(loopback_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // loopback_B4_branch(BLACKBOX,6)
    loopback_B4_branch theloopback_B4_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_loopback_B4_stall_region_out_valid_out),
        .out_stall_out(loopback_B4_branch_out_stall_out),
        .out_valid_out_0(loopback_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B4_stall_region(BLACKBOX,2)
    loopback_bb_B4_stall_region thebb_loopback_B4_stall_region (
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_intel_reserved_ffwd_100_0(in_intel_reserved_ffwd_100_0),
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_intel_reserved_ffwd_70_0(in_intel_reserved_ffwd_70_0),
        .in_intel_reserved_ffwd_71_0(in_intel_reserved_ffwd_71_0),
        .in_intel_reserved_ffwd_72_0(in_intel_reserved_ffwd_72_0),
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_intel_reserved_ffwd_76_0(in_intel_reserved_ffwd_76_0),
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_intel_reserved_ffwd_79_0(in_intel_reserved_ffwd_79_0),
        .in_intel_reserved_ffwd_80_0(in_intel_reserved_ffwd_80_0),
        .in_intel_reserved_ffwd_81_0(in_intel_reserved_ffwd_81_0),
        .in_intel_reserved_ffwd_82_0(in_intel_reserved_ffwd_82_0),
        .in_intel_reserved_ffwd_83_0(in_intel_reserved_ffwd_83_0),
        .in_intel_reserved_ffwd_84_0(in_intel_reserved_ffwd_84_0),
        .in_intel_reserved_ffwd_85_0(in_intel_reserved_ffwd_85_0),
        .in_intel_reserved_ffwd_86_0(in_intel_reserved_ffwd_86_0),
        .in_intel_reserved_ffwd_87_0(in_intel_reserved_ffwd_87_0),
        .in_intel_reserved_ffwd_88_0(in_intel_reserved_ffwd_88_0),
        .in_intel_reserved_ffwd_89_0(in_intel_reserved_ffwd_89_0),
        .in_intel_reserved_ffwd_90_0(in_intel_reserved_ffwd_90_0),
        .in_intel_reserved_ffwd_91_0(in_intel_reserved_ffwd_91_0),
        .in_intel_reserved_ffwd_92_0(in_intel_reserved_ffwd_92_0),
        .in_intel_reserved_ffwd_93_0(in_intel_reserved_ffwd_93_0),
        .in_intel_reserved_ffwd_94_0(in_intel_reserved_ffwd_94_0),
        .in_intel_reserved_ffwd_95_0(in_intel_reserved_ffwd_95_0),
        .in_intel_reserved_ffwd_96_0(in_intel_reserved_ffwd_96_0),
        .in_intel_reserved_ffwd_97_0(in_intel_reserved_ffwd_97_0),
        .in_intel_reserved_ffwd_98_0(in_intel_reserved_ffwd_98_0),
        .in_intel_reserved_ffwd_99_0(in_intel_reserved_ffwd_99_0),
        .in_iowr_bl_return_loopback_i_fifoready(in_iowr_bl_return_loopback_i_fifoready),
        .in_stall_in(loopback_B4_branch_out_stall_out),
        .in_valid_in(loopback_B4_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .out_feedback_out_1(bb_loopback_B4_stall_region_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_loopback_B4_stall_region_out_feedback_valid_out_1),
        .out_iowr_bl_return_loopback_o_fifodata(bb_loopback_B4_stall_region_out_iowr_bl_return_loopback_o_fifodata),
        .out_iowr_bl_return_loopback_o_fifovalid(bb_loopback_B4_stall_region_out_iowr_bl_return_loopback_o_fifovalid),
        .out_stall_out(bb_loopback_B4_stall_region_out_stall_out),
        .out_valid_out(bb_loopback_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_1_sync(GPOUT,3)
    assign out_feedback_out_1 = bb_loopback_B4_stall_region_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,5)
    assign out_feedback_valid_out_1 = bb_loopback_B4_stall_region_out_feedback_valid_out_1;

    // out_iowr_bl_return_loopback_o_fifodata(GPOUT,8)
    assign out_iowr_bl_return_loopback_o_fifodata = bb_loopback_B4_stall_region_out_iowr_bl_return_loopback_o_fifodata;

    // out_iowr_bl_return_loopback_o_fifovalid(GPOUT,9)
    assign out_iowr_bl_return_loopback_o_fifovalid = bb_loopback_B4_stall_region_out_iowr_bl_return_loopback_o_fifovalid;

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = loopback_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = loopback_B4_branch_out_valid_out_0;

endmodule
