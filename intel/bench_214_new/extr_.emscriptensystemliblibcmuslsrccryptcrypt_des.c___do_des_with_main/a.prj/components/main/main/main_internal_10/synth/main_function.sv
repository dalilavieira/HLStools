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

// SystemVerilog created from main_function
// SystemVerilog created on Sun May 24 19:32:53 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_function (
    input wire [63:0] in_arg_call,
    input wire [0:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_main_B0_out_iord_bl_call_main_o_fifoready;
    wire [0:0] bb_main_B0_out_stall_out_0;
    wire [0:0] bb_main_B0_out_valid_out_0;
    wire [0:0] bb_main_B1_out_stall_out_0;
    wire [0:0] bb_main_B1_out_valid_out_0;
    wire [0:0] bb_main_B2_out_c0_exe1;
    wire [0:0] bb_main_B2_out_pipeline_valid_out;
    wire [0:0] bb_main_B2_out_stall_out_0;
    wire [0:0] bb_main_B2_out_stall_out_1;
    wire [0:0] bb_main_B2_out_valid_out_0;
    wire [0:0] bb_main_B3_out_c0_exe3;
    wire [0:0] bb_main_B3_out_exiting_stall_out;
    wire [0:0] bb_main_B3_out_exiting_valid_out;
    wire [0:0] bb_main_B3_out_pipeline_valid_out;
    wire [0:0] bb_main_B3_out_stall_out_0;
    wire [0:0] bb_main_B3_out_stall_out_1;
    wire [0:0] bb_main_B3_out_valid_out_0;
    wire [0:0] bb_main_B4_out_stall_out_0;
    wire [0:0] bb_main_B4_out_valid_out_0;
    wire [1:0] c_i2_013_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_main0_out_o_stall;
    wire [0:0] loop_limiter_main0_out_o_valid;
    wire [0:0] bb_main_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_main_B1_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_main_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_main_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_main_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_main_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_main_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_main_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_main_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_main_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_main_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_main_B4_sr_0_aunroll_x_out_o_valid;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i2_013(CONSTANT,17)
    assign c_i2_013_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going5_main2_valid_fifo(BLACKBOX,20)
    main_i_llvm_fpga_pipeline_keep_going5_2_valid_fifo thei_llvm_fpga_pipeline_keep_going5_main2_valid_fifo (
        .in_data_in(c_i2_013_q),
        .in_stall_in(bb_main_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going5_main2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going5_main2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going5_main2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_main6_valid_fifo(BLACKBOX,22)
    main_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_main6_valid_fifo (
        .in_data_in(c_i2_013_q),
        .in_stall_in(bb_main_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_main6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_main6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_main6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B4(BLACKBOX,6)
    main_bb_B4 thebb_main_B4 (
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_main_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_main_B4_out_stall_out_0),
        .out_valid_out_0(bb_main_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B4_sr_0_aunroll_x(BLACKBOX,35)
    main_bb_B4_sr_0 thebb_main_B4_sr_0_aunroll_x (
        .in_i_stall(bb_main_B4_out_stall_out_0),
        .in_i_valid(bb_main_B1_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_main_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B1(BLACKBOX,3)
    main_bb_B1 thebb_main_B1 (
        .in_c0_exe31_0(bb_main_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_main_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_main_B1_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_main_B1_out_stall_out_0),
        .out_valid_out_0(bb_main_B1_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B1_sr_0_aunroll_x(BLACKBOX,32)
    main_bb_B1_sr_0 thebb_main_B1_sr_0_aunroll_x (
        .in_i_stall(bb_main_B1_out_stall_out_0),
        .in_i_valid(bb_main_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_main_B3_out_c0_exe3),
        .out_o_stall(bb_main_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_main6_sr(BLACKBOX,21)
    main_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_main6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_main6_valid_fifo_out_stall_out),
        .in_i_valid(bb_main_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_main6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_main6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B3(BLACKBOX,5)
    main_bb_B3 thebb_main_B3 (
        .in_exitcond310_0(GND_q),
        .in_exitcond310_1(bb_main_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_main_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_main6_sr_out_o_stall),
        .in_stall_in_0(bb_main_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_main6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_main_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3(bb_main_B3_out_c0_exe3),
        .out_exiting_stall_out(bb_main_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_main_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_main_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_main_B3_out_stall_out_0),
        .out_stall_out_1(bb_main_B3_out_stall_out_1),
        .out_valid_out_0(bb_main_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B3_sr_1_aunroll_x(BLACKBOX,34)
    main_bb_B3_sr_1 thebb_main_B3_sr_1_aunroll_x (
        .in_i_stall(bb_main_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_main0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_main_B2_out_c0_exe1),
        .out_o_stall(bb_main_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_main_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_main0(BLACKBOX,28)
    main_loop_limiter_0 theloop_limiter_main0 (
        .in_i_stall(bb_main_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_main_B3_out_exiting_stall_out),
        .in_i_valid(bb_main_B2_out_valid_out_0),
        .in_i_valid_exit(bb_main_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_main0_out_o_stall),
        .out_o_valid(loop_limiter_main0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going5_main2_sr(BLACKBOX,19)
    main_i_llvm_fpga_pipeline_keep_going5_2_sr thei_llvm_fpga_pipeline_keep_going5_main2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going5_main2_valid_fifo_out_stall_out),
        .in_i_valid(bb_main_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going5_main2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going5_main2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_main_B2(BLACKBOX,4)
    main_bb_B2 thebb_main_B2 (
        .in_forked8_0(GND_q),
        .in_forked8_1(bb_main_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going5_main2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_main0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going5_main2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_main_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_main_B2_out_c0_exe1),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_pipeline_valid_out(bb_main_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_main_B2_out_stall_out_0),
        .out_stall_out_1(bb_main_B2_out_stall_out_1),
        .out_valid_out_0(bb_main_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B2_sr_1_aunroll_x(BLACKBOX,33)
    main_bb_B2_sr_1 thebb_main_B2_sr_1_aunroll_x (
        .in_i_stall(bb_main_B2_out_stall_out_1),
        .in_i_valid(bb_main_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_main_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B0(BLACKBOX,2)
    main_bb_B0 thebb_main_B0 (
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .in_stall_in_0(bb_main_B2_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_iord_bl_call_main_o_fifoready(bb_main_B0_out_iord_bl_call_main_o_fifoready),
        .out_stall_out_0(bb_main_B0_out_stall_out_0),
        .out_valid_out_0(bb_main_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_main_o_fifoready(GPOUT,29)
    assign out_iord_bl_call_main_o_fifoready = bb_main_B0_out_iord_bl_call_main_o_fifoready;

    // out_stall_out(GPOUT,30)
    assign out_stall_out = bb_main_B0_out_stall_out_0;

    // out_valid_out(GPOUT,31)
    assign out_valid_out = bb_main_B4_out_valid_out_0;

endmodule
