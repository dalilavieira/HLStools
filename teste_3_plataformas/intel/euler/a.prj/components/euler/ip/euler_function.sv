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

// SystemVerilog created from euler_function
// SystemVerilog created on Mon Apr  6 10:17:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [31:0] in_iord_bl_call_euler_i_fifodata,
    input wire [0:0] in_iord_bl_call_euler_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_euler_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_euler_o_fifoready,
    output wire [63:0] out_iowr_bl_return_euler_o_fifodata,
    output wire [0:0] out_iowr_bl_return_euler_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_euler_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_euler_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_euler_B1_start_out_intel_reserved_ffwd_0_0;
    wire [32:0] bb_euler_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_euler_B1_start_out_iord_bl_call_euler_o_fifoready;
    wire [0:0] bb_euler_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_euler_B1_start_out_stall_out_0;
    wire [0:0] bb_euler_B1_start_out_valid_out_0;
    wire [0:0] bb_euler_B2_out_feedback_out_1;
    wire [0:0] bb_euler_B2_out_feedback_valid_out_1;
    wire [63:0] bb_euler_B2_out_iowr_bl_return_euler_o_fifodata;
    wire [0:0] bb_euler_B2_out_iowr_bl_return_euler_o_fifovalid;
    wire [0:0] bb_euler_B2_out_stall_out_0;
    wire [32:0] bb_euler_B3_out_c0_exe145;
    wire [0:0] bb_euler_B3_out_c0_exe2;
    wire [0:0] bb_euler_B3_out_c0_exe3;
    wire [0:0] bb_euler_B3_out_c0_exe4;
    wire [0:0] bb_euler_B3_out_c0_exe5;
    wire [0:0] bb_euler_B3_out_exiting_stall_out;
    wire [0:0] bb_euler_B3_out_exiting_valid_out;
    wire [0:0] bb_euler_B3_out_pipeline_valid_out;
    wire [0:0] bb_euler_B3_out_stall_out_0;
    wire [0:0] bb_euler_B3_out_stall_out_1;
    wire [0:0] bb_euler_B3_out_valid_out_0;
    wire [63:0] bb_euler_B4_out_c0_exe256;
    wire [0:0] bb_euler_B4_out_c0_exe458;
    wire [0:0] bb_euler_B4_out_c0_exe559;
    wire [0:0] bb_euler_B4_out_c0_exe6;
    wire [0:0] bb_euler_B4_out_c0_exe7;
    wire [0:0] bb_euler_B4_out_exiting_stall_out;
    wire [0:0] bb_euler_B4_out_exiting_valid_out;
    wire [0:0] bb_euler_B4_out_pipeline_valid_out;
    wire [0:0] bb_euler_B4_out_stall_out_0;
    wire [0:0] bb_euler_B4_out_stall_out_1;
    wire [0:0] bb_euler_B4_out_valid_out_0;
    wire [63:0] bb_euler_B5_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_euler_B5_out_stall_out_0;
    wire [0:0] bb_euler_B5_out_valid_out_0;
    wire [1:0] c_i2_027_q;
    wire [32:0] c_i33_undef12_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_euler1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_euler1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_euler0_out_o_stall;
    wire [0:0] loop_limiter_euler0_out_o_valid;
    wire [0:0] loop_limiter_euler1_out_o_stall;
    wire [0:0] loop_limiter_euler1_out_o_valid;
    wire [0:0] bb_euler_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_euler_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_euler_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_euler_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_euler_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_euler_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_euler_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_euler_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_euler_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [32:0] bb_euler_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_euler_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_euler_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_euler_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_euler_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_euler_B5_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_euler_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_euler_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_euler_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_euler_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_euler_B5_sr_0_aunroll_x_out_o_data_4_tpl;


    // c_i2_027(CONSTANT,24)
    assign c_i2_027_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo(BLACKBOX,32)
    euler_i_llvm_fpga_pipeline_keep_going30_1_valid_fifo thei_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo (
        .in_data_in(c_i2_027_q),
        .in_stall_in(bb_euler_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going30_euler1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo(BLACKBOX,30)
    euler_i_llvm_fpga_pipeline_keep_going26_2_valid_fifo thei_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo (
        .in_data_in(c_i2_027_q),
        .in_stall_in(bb_euler_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_euler2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_euler6_valid_fifo(BLACKBOX,34)
    euler_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_euler6_valid_fifo (
        .in_data_in(c_i2_027_q),
        .in_stall_in(bb_euler_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_euler6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_euler6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_euler6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef12(CONSTANT,27)
    assign c_i33_undef12_q = $unsigned(33'b000000000000000000000000000000000);

    // bb_euler_B2_sr_0_aunroll_x(BLACKBOX,49)
    euler_bb_B2_sr_0 thebb_euler_B2_sr_0_aunroll_x (
        .in_i_stall(bb_euler_B2_out_stall_out_0),
        .in_i_valid(bb_euler_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_euler_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_euler_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B5(BLACKBOX,7)
    euler_bb_B5 thebb_euler_B5 (
        .in_c0_exe2561_0(bb_euler_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe4582_0(bb_euler_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe5593_0(bb_euler_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe64_0(bb_euler_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe75_0(bb_euler_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_stall_in_0(bb_euler_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_euler_B5_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_2_0(bb_euler_B5_out_intel_reserved_ffwd_2_0),
        .out_stall_out_0(bb_euler_B5_out_stall_out_0),
        .out_valid_out_0(bb_euler_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B5_sr_0_aunroll_x(BLACKBOX,52)
    euler_bb_B5_sr_0 thebb_euler_B5_sr_0_aunroll_x (
        .in_i_stall(bb_euler_B5_out_stall_out_0),
        .in_i_valid(bb_euler_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_euler_B4_out_c0_exe256),
        .in_i_data_1_tpl(bb_euler_B4_out_c0_exe458),
        .in_i_data_2_tpl(bb_euler_B4_out_c0_exe559),
        .in_i_data_3_tpl(bb_euler_B4_out_c0_exe6),
        .in_i_data_4_tpl(bb_euler_B4_out_c0_exe7),
        .out_o_stall(bb_euler_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_euler_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_euler_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_euler_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_euler_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_euler_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_euler_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_euler6_sr(BLACKBOX,33)
    euler_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_euler6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_euler6_valid_fifo_out_stall_out),
        .in_i_valid(bb_euler_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_euler6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_euler6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B4(BLACKBOX,6)
    euler_bb_B4 thebb_euler_B4 (
        .in_forked24_0(GND_q),
        .in_forked24_1(bb_euler_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked35_0(GND_q),
        .in_forked35_1(bb_euler_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_0_0(bb_euler_B1_start_out_intel_reserved_ffwd_0_0),
        .in_notcmp2536_0(GND_q),
        .in_notcmp2536_1(bb_euler_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_euler6_sr_out_o_stall),
        .in_stall_in_0(bb_euler_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_euler7_0(c_i33_undef12_q),
        .in_unnamed_euler7_1(bb_euler_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_euler8_0(GND_q),
        .in_unnamed_euler8_1(bb_euler_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_euler9_0(GND_q),
        .in_unnamed_euler9_1(bb_euler_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_euler6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_euler_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe256(bb_euler_B4_out_c0_exe256),
        .out_c0_exe458(bb_euler_B4_out_c0_exe458),
        .out_c0_exe559(bb_euler_B4_out_c0_exe559),
        .out_c0_exe6(bb_euler_B4_out_c0_exe6),
        .out_c0_exe7(bb_euler_B4_out_c0_exe7),
        .out_exiting_stall_out(bb_euler_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_euler_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_euler_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_euler_B4_out_stall_out_0),
        .out_stall_out_1(bb_euler_B4_out_stall_out_1),
        .out_valid_out_0(bb_euler_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_euler_B4_sr_1_aunroll_x(BLACKBOX,51)
    euler_bb_B4_sr_1 thebb_euler_B4_sr_1_aunroll_x (
        .in_i_stall(bb_euler_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_euler1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_euler_B3_out_c0_exe5),
        .in_i_data_2_tpl(bb_euler_B3_out_c0_exe145),
        .in_i_data_3_tpl(bb_euler_B3_out_c0_exe2),
        .in_i_data_4_tpl(bb_euler_B3_out_c0_exe3),
        .in_i_data_5_tpl(bb_euler_B3_out_c0_exe4),
        .out_o_stall(bb_euler_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_euler_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_euler_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_euler_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_euler_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_euler_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_euler_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_euler_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_euler1(BLACKBOX,43)
    euler_loop_limiter_1 theloop_limiter_euler1 (
        .in_i_stall(bb_euler_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_euler_B4_out_exiting_stall_out),
        .in_i_valid(bb_euler_B3_out_valid_out_0),
        .in_i_valid_exit(bb_euler_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_euler1_out_o_stall),
        .out_o_valid(loop_limiter_euler1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_euler2_sr(BLACKBOX,29)
    euler_i_llvm_fpga_pipeline_keep_going26_2_sr thei_llvm_fpga_pipeline_keep_going26_euler2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo_out_stall_out),
        .in_i_valid(bb_euler_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_euler2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_euler2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_euler_B3(BLACKBOX,5)
    euler_bb_B3 thebb_euler_B3 (
        .in_forked_0(GND_q),
        .in_forked_1(bb_euler_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_euler_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_euler_B1_start_out_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_euler2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_euler1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_euler2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_euler_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe145(bb_euler_B3_out_c0_exe145),
        .out_c0_exe2(bb_euler_B3_out_c0_exe2),
        .out_c0_exe3(bb_euler_B3_out_c0_exe3),
        .out_c0_exe4(bb_euler_B3_out_c0_exe4),
        .out_c0_exe5(bb_euler_B3_out_c0_exe5),
        .out_exiting_stall_out(bb_euler_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_euler_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_euler_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_euler_B3_out_stall_out_0),
        .out_stall_out_1(bb_euler_B3_out_stall_out_1),
        .out_valid_out_0(bb_euler_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B3_sr_1_aunroll_x(BLACKBOX,50)
    euler_bb_B3_sr_1 thebb_euler_B3_sr_1_aunroll_x (
        .in_i_stall(bb_euler_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_euler0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_euler_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_euler_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_euler_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_euler0(BLACKBOX,42)
    euler_loop_limiter_0 theloop_limiter_euler0 (
        .in_i_stall(bb_euler_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_euler_B3_out_exiting_stall_out),
        .in_i_valid(bb_euler_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_euler_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_euler0_out_o_stall),
        .out_o_valid(loop_limiter_euler0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going30_euler1_sr(BLACKBOX,31)
    euler_i_llvm_fpga_pipeline_keep_going30_1_sr thei_llvm_fpga_pipeline_keep_going30_euler1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo_out_stall_out),
        .in_i_valid(bb_euler_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going30_euler1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going30_euler1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B2(BLACKBOX,4)
    euler_bb_B2 thebb_euler_B2 (
        .in_feedback_stall_in_1(bb_euler_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_0_0(bb_euler_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(bb_euler_B5_out_intel_reserved_ffwd_2_0),
        .in_iowr_bl_return_euler_i_fifoready(in_iowr_bl_return_euler_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_euler_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_euler_B2_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_euler_B2_out_feedback_valid_out_1),
        .out_iowr_bl_return_euler_o_fifodata(bb_euler_B2_out_iowr_bl_return_euler_o_fifodata),
        .out_iowr_bl_return_euler_o_fifovalid(bb_euler_B2_out_iowr_bl_return_euler_o_fifovalid),
        .out_stall_out_0(bb_euler_B2_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B1_start(BLACKBOX,3)
    euler_bb_B1_start thebb_euler_B1_start (
        .in_feedback_in_1(bb_euler_B2_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_euler_B2_out_feedback_valid_out_1),
        .in_iord_bl_call_euler_i_fifodata(in_iord_bl_call_euler_i_fifodata),
        .in_iord_bl_call_euler_i_fifovalid(in_iord_bl_call_euler_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going30_euler1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_euler0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going30_euler1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_euler_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_euler_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_euler_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_euler_o_fifoready(bb_euler_B1_start_out_iord_bl_call_euler_o_fifoready),
        .out_pipeline_valid_out(bb_euler_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_euler_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_euler_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_euler_o_fifoready(GPOUT,44)
    assign out_iord_bl_call_euler_o_fifoready = bb_euler_B1_start_out_iord_bl_call_euler_o_fifoready;

    // out_iowr_bl_return_euler_o_fifodata(GPOUT,45)
    assign out_iowr_bl_return_euler_o_fifodata = bb_euler_B2_out_iowr_bl_return_euler_o_fifodata;

    // out_iowr_bl_return_euler_o_fifovalid(GPOUT,46)
    assign out_iowr_bl_return_euler_o_fifovalid = bb_euler_B2_out_iowr_bl_return_euler_o_fifovalid;

    // bb_euler_B0_runOnce(BLACKBOX,2)
    euler_bb_B0_runOnce thebb_euler_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_euler_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,47)
    assign out_stall_out = bb_euler_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,48)
    assign out_valid_out = GND_q;

endmodule
