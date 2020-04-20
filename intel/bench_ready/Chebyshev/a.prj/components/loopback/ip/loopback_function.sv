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

// SystemVerilog created from loopback_function
// SystemVerilog created on Sun Apr 19 21:17:08 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [31:0] in_iord_bl_call_loopback_i_fifodata,
    input wire [0:0] in_iord_bl_call_loopback_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_loopback_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_loopback_o_fifoready,
    output wire [31:0] out_iowr_bl_return_loopback_o_fifodata,
    output wire [0:0] out_iowr_bl_return_loopback_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_loopback_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_loopback_B2_out_exiting_stall_out;
    wire [0:0] bb_loopback_B2_out_exiting_valid_out;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_10_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_11_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_12_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_13_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_14_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_15_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_16_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_17_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_18_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_19_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_1_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_20_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_21_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_22_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_23_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_24_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_25_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_26_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_27_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_28_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_29_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_2_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_30_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_31_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_32_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_33_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_34_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_35_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_36_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_37_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_38_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_39_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_3_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_40_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_41_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_42_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_43_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_44_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_45_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_46_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_47_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_48_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_49_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_4_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_50_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_51_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_52_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_53_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_54_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_55_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_56_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_57_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_58_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_59_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_5_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_60_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_61_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_62_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_63_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_64_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_6_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_7_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_8_0;
    wire [15:0] bb_loopback_B2_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_loopback_B2_out_pipeline_valid_out;
    wire [0:0] bb_loopback_B2_out_stall_out_0;
    wire [0:0] bb_loopback_B2_out_stall_out_1;
    wire [0:0] bb_loopback_B2_out_valid_out_0;
    wire [1:0] c_i2_012_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going793_loopback1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going793_loopback1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_loopback0_out_o_stall;
    wire [0:0] loop_limiter_loopback0_out_o_valid;
    wire [0:0] loop_limiter_loopback1_out_o_stall;
    wire [0:0] loop_limiter_loopback1_out_o_valid;
    wire [0:0] bb_loopback_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [0:0] bb_loopback_B1_start_aunroll_x_out_iord_bl_call_loopback_o_fifoready;
    wire [0:0] bb_loopback_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_loopback_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_loopback_B1_start_aunroll_x_out_valid_out_0;
    wire [31:0] bb_loopback_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [0:0] bb_loopback_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_loopback_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_loopback_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_loopback_B3_aunroll_x_out_stall_out_0;
    wire [0:0] bb_loopback_B3_aunroll_x_out_valid_out_0;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_3_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_4_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_5_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_6_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_3_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_4_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_5_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_6_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_7_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_3_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_4_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_5_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_6_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_7_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_3_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_4_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_5_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_6_tpl;
    wire [15:0] bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_7_tpl;
    wire [0:0] bb_loopback_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_loopback_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_loopback_B4_aunroll_x_out_feedback_out_1;
    wire [0:0] bb_loopback_B4_aunroll_x_out_feedback_valid_out_1;
    wire [31:0] bb_loopback_B4_aunroll_x_out_iowr_bl_return_loopback_o_fifodata;
    wire [0:0] bb_loopback_B4_aunroll_x_out_iowr_bl_return_loopback_o_fifovalid;
    wire [0:0] bb_loopback_B4_aunroll_x_out_stall_out_0;
    wire [0:0] bb_loopback_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_loopback_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_loopback_B5_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_loopback_B5_aunroll_x_out_exiting_valid_out;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_100_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_69_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_70_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_71_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_72_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_75_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_76_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_77_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_78_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_79_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_80_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_81_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_82_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_83_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_84_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_85_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_86_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_87_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_88_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_89_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_90_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_91_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_92_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_93_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_94_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_95_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_96_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_97_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_98_0;
    wire [15:0] bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_99_0;
    wire [0:0] bb_loopback_B5_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_loopback_B5_aunroll_x_out_stall_out_0;
    wire [0:0] bb_loopback_B5_aunroll_x_out_stall_out_1;
    wire [0:0] bb_loopback_B5_aunroll_x_out_valid_out_0;
    wire [0:0] bb_loopback_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_loopback_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_loopback_B5_sr_1_aunroll_x_out_o_data_0_tpl;


    // c_i2_012(CONSTANT,17)
    assign c_i2_012_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo(BLACKBOX,24)
    loopback_i_llvm_fpga_pipeline_keep_going793_1_valid_fifo thei_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo (
        .in_data_in(c_i2_012_q),
        .in_stall_in(bb_loopback_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going793_loopback1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo(BLACKBOX,22)
    loopback_i_llvm_fpga_pipeline_keep_going717_6_valid_fifo thei_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo (
        .in_data_in(c_i2_012_q),
        .in_stall_in(bb_loopback_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going717_loopback6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo(BLACKBOX,26)
    loopback_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo (
        .in_data_in(c_i2_012_q),
        .in_stall_in(bb_loopback_B5_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_loopback6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B4_sr_0_aunroll_x(BLACKBOX,46)
    loopback_bb_B4_sr_0 thebb_loopback_B4_sr_0_aunroll_x (
        .in_i_stall(bb_loopback_B4_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_loopback_B5_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_loopback_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_loopback_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_loopback6_sr(BLACKBOX,25)
    loopback_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_loopback6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo_out_stall_out),
        .in_i_valid(bb_loopback_B5_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_loopback6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_loopback6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B5_aunroll_x(BLACKBOX,47)
    loopback_bb_B5 thebb_loopback_B5_aunroll_x (
        .in_forked_0(GND_q),
        .in_forked_1(bb_loopback_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_1_0(bb_loopback_B2_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_33_0(bb_loopback_B2_out_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(bb_loopback_B2_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_loopback_B2_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(bb_loopback_B2_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_loopback_B2_out_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(bb_loopback_B2_out_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(bb_loopback_B2_out_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(bb_loopback_B2_out_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(bb_loopback_B2_out_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(bb_loopback_B2_out_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(bb_loopback_B2_out_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(bb_loopback_B2_out_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(bb_loopback_B2_out_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(bb_loopback_B2_out_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(bb_loopback_B2_out_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(bb_loopback_B2_out_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(bb_loopback_B2_out_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(bb_loopback_B2_out_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(bb_loopback_B2_out_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(bb_loopback_B2_out_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_53_0(bb_loopback_B2_out_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(bb_loopback_B2_out_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(bb_loopback_B2_out_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(bb_loopback_B2_out_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(bb_loopback_B2_out_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_58_0(bb_loopback_B2_out_intel_reserved_ffwd_58_0),
        .in_intel_reserved_ffwd_59_0(bb_loopback_B2_out_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_60_0(bb_loopback_B2_out_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(bb_loopback_B2_out_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(bb_loopback_B2_out_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(bb_loopback_B2_out_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(bb_loopback_B2_out_intel_reserved_ffwd_64_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_loopback6_sr_out_o_stall),
        .in_stall_in_0(bb_loopback_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_loopback6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_loopback_B5_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_65_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl),
        .in_intel_reserved_ffwd_65_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl),
        .in_intel_reserved_ffwd_65_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl),
        .in_intel_reserved_ffwd_65_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_3_tpl),
        .in_intel_reserved_ffwd_65_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_4_tpl),
        .in_intel_reserved_ffwd_65_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_5_tpl),
        .in_intel_reserved_ffwd_65_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_6_tpl),
        .in_intel_reserved_ffwd_66_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl),
        .in_intel_reserved_ffwd_66_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl),
        .in_intel_reserved_ffwd_66_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl),
        .in_intel_reserved_ffwd_66_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_3_tpl),
        .in_intel_reserved_ffwd_66_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_4_tpl),
        .in_intel_reserved_ffwd_66_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_5_tpl),
        .in_intel_reserved_ffwd_66_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_6_tpl),
        .in_intel_reserved_ffwd_66_0_7_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_7_tpl),
        .in_intel_reserved_ffwd_67_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl),
        .in_intel_reserved_ffwd_67_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl),
        .in_intel_reserved_ffwd_67_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl),
        .in_intel_reserved_ffwd_67_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_3_tpl),
        .in_intel_reserved_ffwd_67_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_4_tpl),
        .in_intel_reserved_ffwd_67_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_5_tpl),
        .in_intel_reserved_ffwd_67_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_6_tpl),
        .in_intel_reserved_ffwd_67_0_7_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_7_tpl),
        .in_intel_reserved_ffwd_68_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl),
        .in_intel_reserved_ffwd_68_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl),
        .in_intel_reserved_ffwd_68_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl),
        .in_intel_reserved_ffwd_68_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_3_tpl),
        .in_intel_reserved_ffwd_68_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_4_tpl),
        .in_intel_reserved_ffwd_68_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_5_tpl),
        .in_intel_reserved_ffwd_68_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_6_tpl),
        .in_intel_reserved_ffwd_68_0_7_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_7_tpl),
        .out_exiting_stall_out(bb_loopback_B5_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_loopback_B5_aunroll_x_out_exiting_valid_out),
        .out_intel_reserved_ffwd_100_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_100_0),
        .out_intel_reserved_ffwd_69_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_80_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_90_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_92_0),
        .out_intel_reserved_ffwd_93_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_93_0),
        .out_intel_reserved_ffwd_94_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_94_0),
        .out_intel_reserved_ffwd_95_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_95_0),
        .out_intel_reserved_ffwd_96_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_96_0),
        .out_intel_reserved_ffwd_97_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_97_0),
        .out_intel_reserved_ffwd_98_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_98_0),
        .out_intel_reserved_ffwd_99_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_99_0),
        .out_pipeline_valid_out(bb_loopback_B5_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_loopback_B5_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_loopback_B5_aunroll_x_out_stall_out_1),
        .out_valid_out_0(bb_loopback_B5_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_loopback_B5_sr_1_aunroll_x(BLACKBOX,48)
    loopback_bb_B5_sr_1 thebb_loopback_B5_sr_1_aunroll_x (
        .in_i_stall(bb_loopback_B5_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_loopback1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_loopback_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_loopback_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_loopback_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_loopback1(BLACKBOX,35)
    loopback_loop_limiter_1 theloop_limiter_loopback1 (
        .in_i_stall(bb_loopback_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_loopback_B5_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_loopback_B3_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_loopback_B5_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_loopback1_out_o_stall),
        .out_o_valid(loop_limiter_loopback1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B3_aunroll_x(BLACKBOX,43)
    loopback_bb_B3 thebb_loopback_B3_aunroll_x (
        .in_intel_reserved_ffwd_10_0(bb_loopback_B2_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(bb_loopback_B2_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_loopback_B2_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(bb_loopback_B2_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(bb_loopback_B2_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(bb_loopback_B2_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_loopback_B2_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_loopback_B2_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_loopback_B2_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_loopback_B2_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_20_0(bb_loopback_B2_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_loopback_B2_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(bb_loopback_B2_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_loopback_B2_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(bb_loopback_B2_out_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(bb_loopback_B2_out_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(bb_loopback_B2_out_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(bb_loopback_B2_out_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(bb_loopback_B2_out_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(bb_loopback_B2_out_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_2_0(bb_loopback_B2_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_30_0(bb_loopback_B2_out_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(bb_loopback_B2_out_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(bb_loopback_B2_out_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_3_0(bb_loopback_B2_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_loopback_B2_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_loopback_B2_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_loopback_B2_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_loopback_B2_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_loopback_B2_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_loopback_B2_out_intel_reserved_ffwd_9_0),
        .in_stall_in_0(loop_limiter_loopback1_out_o_stall),
        .in_valid_in_0(bb_loopback_B3_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_loopback_B3_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_loopback_B3_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_65_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl),
        .out_intel_reserved_ffwd_65_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl),
        .out_intel_reserved_ffwd_65_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl),
        .out_intel_reserved_ffwd_65_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_3_tpl),
        .out_intel_reserved_ffwd_65_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_4_tpl),
        .out_intel_reserved_ffwd_65_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_5_tpl),
        .out_intel_reserved_ffwd_65_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_65_0_6_tpl),
        .out_intel_reserved_ffwd_66_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl),
        .out_intel_reserved_ffwd_66_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl),
        .out_intel_reserved_ffwd_66_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl),
        .out_intel_reserved_ffwd_66_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_3_tpl),
        .out_intel_reserved_ffwd_66_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_4_tpl),
        .out_intel_reserved_ffwd_66_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_5_tpl),
        .out_intel_reserved_ffwd_66_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_6_tpl),
        .out_intel_reserved_ffwd_66_0_7_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_66_0_7_tpl),
        .out_intel_reserved_ffwd_67_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl),
        .out_intel_reserved_ffwd_67_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl),
        .out_intel_reserved_ffwd_67_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl),
        .out_intel_reserved_ffwd_67_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_3_tpl),
        .out_intel_reserved_ffwd_67_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_4_tpl),
        .out_intel_reserved_ffwd_67_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_5_tpl),
        .out_intel_reserved_ffwd_67_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_6_tpl),
        .out_intel_reserved_ffwd_67_0_7_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_67_0_7_tpl),
        .out_intel_reserved_ffwd_68_0_0_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl),
        .out_intel_reserved_ffwd_68_0_1_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl),
        .out_intel_reserved_ffwd_68_0_2_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl),
        .out_intel_reserved_ffwd_68_0_3_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_3_tpl),
        .out_intel_reserved_ffwd_68_0_4_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_4_tpl),
        .out_intel_reserved_ffwd_68_0_5_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_5_tpl),
        .out_intel_reserved_ffwd_68_0_6_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_6_tpl),
        .out_intel_reserved_ffwd_68_0_7_tpl(bb_loopback_B3_aunroll_x_out_intel_reserved_ffwd_68_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B3_sr_0_aunroll_x(BLACKBOX,44)
    loopback_bb_B3_sr_0 thebb_loopback_B3_sr_0_aunroll_x (
        .in_i_stall(bb_loopback_B3_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_loopback_B2_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_loopback_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_loopback_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going717_loopback6_sr(BLACKBOX,21)
    loopback_i_llvm_fpga_pipeline_keep_going717_6_sr thei_llvm_fpga_pipeline_keep_going717_loopback6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo_out_stall_out),
        .in_i_valid(bb_loopback_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going717_loopback6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going717_loopback6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_loopback_B2(BLACKBOX,3)
    loopback_bb_B2 thebb_loopback_B2 (
        .in_forked714_0(GND_q),
        .in_forked714_1(bb_loopback_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going717_loopback6_sr_out_o_stall),
        .in_stall_in_0(bb_loopback_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going717_loopback6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_loopback_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_loopback_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_loopback_B2_out_exiting_valid_out),
        .out_intel_reserved_ffwd_10_0(bb_loopback_B2_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_loopback_B2_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_loopback_B2_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_loopback_B2_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_loopback_B2_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_loopback_B2_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_loopback_B2_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_loopback_B2_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_loopback_B2_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_loopback_B2_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_loopback_B2_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(bb_loopback_B2_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_loopback_B2_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_loopback_B2_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_loopback_B2_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_loopback_B2_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_loopback_B2_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_loopback_B2_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_loopback_B2_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_loopback_B2_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_loopback_B2_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_2_0(bb_loopback_B2_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_30_0(bb_loopback_B2_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_loopback_B2_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_loopback_B2_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_loopback_B2_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_loopback_B2_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_loopback_B2_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_loopback_B2_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_loopback_B2_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_loopback_B2_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_loopback_B2_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_3_0(bb_loopback_B2_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_40_0(bb_loopback_B2_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_loopback_B2_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_loopback_B2_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_loopback_B2_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_loopback_B2_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_loopback_B2_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_loopback_B2_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_loopback_B2_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_loopback_B2_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_loopback_B2_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_4_0(bb_loopback_B2_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_50_0(bb_loopback_B2_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_loopback_B2_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_loopback_B2_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_loopback_B2_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_loopback_B2_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_loopback_B2_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_loopback_B2_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_loopback_B2_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_loopback_B2_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(bb_loopback_B2_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_5_0(bb_loopback_B2_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_60_0(bb_loopback_B2_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_loopback_B2_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_loopback_B2_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_loopback_B2_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_loopback_B2_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_6_0(bb_loopback_B2_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_loopback_B2_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_loopback_B2_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_loopback_B2_out_intel_reserved_ffwd_9_0),
        .out_pipeline_valid_out(bb_loopback_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_loopback_B2_out_stall_out_0),
        .out_stall_out_1(bb_loopback_B2_out_stall_out_1),
        .out_valid_out_0(bb_loopback_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B2_sr_1_aunroll_x(BLACKBOX,42)
    loopback_bb_B2_sr_1 thebb_loopback_B2_sr_1_aunroll_x (
        .in_i_stall(bb_loopback_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_loopback0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_loopback_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_loopback_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_loopback_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_loopback0(BLACKBOX,34)
    loopback_loop_limiter_0 theloop_limiter_loopback0 (
        .in_i_stall(bb_loopback_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_loopback_B2_out_exiting_stall_out),
        .in_i_valid(bb_loopback_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_loopback_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_loopback0_out_o_stall),
        .out_o_valid(loop_limiter_loopback0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going793_loopback1_sr(BLACKBOX,23)
    loopback_i_llvm_fpga_pipeline_keep_going793_1_sr thei_llvm_fpga_pipeline_keep_going793_loopback1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo_out_stall_out),
        .in_i_valid(bb_loopback_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going793_loopback1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going793_loopback1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B4_aunroll_x(BLACKBOX,45)
    loopback_bb_B4 thebb_loopback_B4_aunroll_x (
        .in_feedback_stall_in_1(bb_loopback_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_100_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_100_0),
        .in_intel_reserved_ffwd_69_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_69_0),
        .in_intel_reserved_ffwd_70_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_70_0),
        .in_intel_reserved_ffwd_71_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_71_0),
        .in_intel_reserved_ffwd_72_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_72_0),
        .in_intel_reserved_ffwd_73_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_74_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_74_0),
        .in_intel_reserved_ffwd_75_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_75_0),
        .in_intel_reserved_ffwd_76_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_76_0),
        .in_intel_reserved_ffwd_77_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_77_0),
        .in_intel_reserved_ffwd_78_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_78_0),
        .in_intel_reserved_ffwd_79_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_79_0),
        .in_intel_reserved_ffwd_80_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_80_0),
        .in_intel_reserved_ffwd_81_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_81_0),
        .in_intel_reserved_ffwd_82_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_82_0),
        .in_intel_reserved_ffwd_83_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_83_0),
        .in_intel_reserved_ffwd_84_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_84_0),
        .in_intel_reserved_ffwd_85_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_85_0),
        .in_intel_reserved_ffwd_86_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_86_0),
        .in_intel_reserved_ffwd_87_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_87_0),
        .in_intel_reserved_ffwd_88_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_88_0),
        .in_intel_reserved_ffwd_89_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_89_0),
        .in_intel_reserved_ffwd_90_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_90_0),
        .in_intel_reserved_ffwd_91_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_91_0),
        .in_intel_reserved_ffwd_92_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_92_0),
        .in_intel_reserved_ffwd_93_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_93_0),
        .in_intel_reserved_ffwd_94_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_94_0),
        .in_intel_reserved_ffwd_95_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_95_0),
        .in_intel_reserved_ffwd_96_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_96_0),
        .in_intel_reserved_ffwd_97_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_97_0),
        .in_intel_reserved_ffwd_98_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_98_0),
        .in_intel_reserved_ffwd_99_0(bb_loopback_B5_aunroll_x_out_intel_reserved_ffwd_99_0),
        .in_iowr_bl_return_loopback_i_fifoready(in_iowr_bl_return_loopback_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_loopback_B4_sr_0_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_loopback_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_feedback_out_1(bb_loopback_B4_aunroll_x_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_loopback_B4_aunroll_x_out_feedback_valid_out_1),
        .out_iowr_bl_return_loopback_o_fifodata(bb_loopback_B4_aunroll_x_out_iowr_bl_return_loopback_o_fifodata),
        .out_iowr_bl_return_loopback_o_fifovalid(bb_loopback_B4_aunroll_x_out_iowr_bl_return_loopback_o_fifovalid),
        .out_stall_out_0(bb_loopback_B4_aunroll_x_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B1_start_aunroll_x(BLACKBOX,41)
    loopback_bb_B1_start thebb_loopback_B1_start_aunroll_x (
        .in_feedback_in_1(bb_loopback_B4_aunroll_x_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_loopback_B4_aunroll_x_out_feedback_valid_out_1),
        .in_iord_bl_call_loopback_i_fifodata(in_iord_bl_call_loopback_i_fifodata),
        .in_iord_bl_call_loopback_i_fifovalid(in_iord_bl_call_loopback_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going793_loopback1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_loopback0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going793_loopback1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_loopback_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_iord_bl_call_loopback_o_fifoready(bb_loopback_B1_start_aunroll_x_out_iord_bl_call_loopback_o_fifoready),
        .out_pipeline_valid_out(bb_loopback_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_loopback_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_loopback_B1_start_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_loopback_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_loopback_o_fifoready(GPOUT,36)
    assign out_iord_bl_call_loopback_o_fifoready = bb_loopback_B1_start_aunroll_x_out_iord_bl_call_loopback_o_fifoready;

    // out_iowr_bl_return_loopback_o_fifodata(GPOUT,37)
    assign out_iowr_bl_return_loopback_o_fifodata = bb_loopback_B4_aunroll_x_out_iowr_bl_return_loopback_o_fifodata;

    // out_iowr_bl_return_loopback_o_fifovalid(GPOUT,38)
    assign out_iowr_bl_return_loopback_o_fifovalid = bb_loopback_B4_aunroll_x_out_iowr_bl_return_loopback_o_fifovalid;

    // bb_loopback_B0_runOnce(BLACKBOX,2)
    loopback_bb_B0_runOnce thebb_loopback_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_loopback_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,39)
    assign out_stall_out = bb_loopback_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,40)
    assign out_valid_out = GND_q;

endmodule
