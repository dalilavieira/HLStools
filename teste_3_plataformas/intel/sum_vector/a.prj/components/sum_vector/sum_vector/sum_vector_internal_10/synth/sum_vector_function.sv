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

// SystemVerilog created from sum_vector_function
// SystemVerilog created on Mon Apr  6 12:53:31 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sum_vector_function (
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_b,
    input wire [63:0] in_arg_c,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [255:0] in_iord_bl_call_sum_vector_i_fifodata,
    input wire [0:0] in_iord_bl_call_sum_vector_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_sum_vector_i_fifoready,
    input wire [63:0] in_lm1_sum_vector_avm_readdata,
    input wire [0:0] in_lm1_sum_vector_avm_readdatavalid,
    input wire [0:0] in_lm1_sum_vector_avm_waitrequest,
    input wire [0:0] in_lm1_sum_vector_avm_writeack,
    input wire [63:0] in_lm32_sum_vector_avm_readdata,
    input wire [0:0] in_lm32_sum_vector_avm_readdatavalid,
    input wire [0:0] in_lm32_sum_vector_avm_waitrequest,
    input wire [0:0] in_lm32_sum_vector_avm_writeack,
    input wire [63:0] in_memdep_sum_vector_avm_readdata,
    input wire [0:0] in_memdep_sum_vector_avm_readdatavalid,
    input wire [0:0] in_memdep_sum_vector_avm_waitrequest,
    input wire [0:0] in_memdep_sum_vector_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_sum_vector_o_fifoready,
    output wire [0:0] out_iowr_bl_return_sum_vector_o_fifodata,
    output wire [0:0] out_iowr_bl_return_sum_vector_o_fifovalid,
    output wire [63:0] out_lm1_sum_vector_avm_address,
    output wire [0:0] out_lm1_sum_vector_avm_burstcount,
    output wire [7:0] out_lm1_sum_vector_avm_byteenable,
    output wire [0:0] out_lm1_sum_vector_avm_enable,
    output wire [0:0] out_lm1_sum_vector_avm_read,
    output wire [0:0] out_lm1_sum_vector_avm_write,
    output wire [63:0] out_lm1_sum_vector_avm_writedata,
    output wire [63:0] out_lm32_sum_vector_avm_address,
    output wire [0:0] out_lm32_sum_vector_avm_burstcount,
    output wire [7:0] out_lm32_sum_vector_avm_byteenable,
    output wire [0:0] out_lm32_sum_vector_avm_enable,
    output wire [0:0] out_lm32_sum_vector_avm_read,
    output wire [0:0] out_lm32_sum_vector_avm_write,
    output wire [63:0] out_lm32_sum_vector_avm_writedata,
    output wire [63:0] out_memdep_sum_vector_avm_address,
    output wire [0:0] out_memdep_sum_vector_avm_burstcount,
    output wire [7:0] out_memdep_sum_vector_avm_byteenable,
    output wire [0:0] out_memdep_sum_vector_avm_enable,
    output wire [0:0] out_memdep_sum_vector_avm_read,
    output wire [0:0] out_memdep_sum_vector_avm_write,
    output wire [63:0] out_memdep_sum_vector_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_sum_vector_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_sum_vector_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_sum_vector_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_sum_vector_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_sum_vector_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_sum_vector_B1_start_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_sum_vector_B1_start_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_sum_vector_B1_start_out_iord_bl_call_sum_vector_o_fifoready;
    wire [0:0] bb_sum_vector_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_sum_vector_B1_start_out_stall_out_0;
    wire [0:0] bb_sum_vector_B1_start_out_valid_out_0;
    wire [0:0] bb_sum_vector_B2_out_feedback_out_1;
    wire [0:0] bb_sum_vector_B2_out_feedback_valid_out_1;
    wire [0:0] bb_sum_vector_B2_out_iowr_bl_return_sum_vector_o_fifodata;
    wire [0:0] bb_sum_vector_B2_out_iowr_bl_return_sum_vector_o_fifovalid;
    wire [0:0] bb_sum_vector_B2_out_stall_out_0;
    wire [0:0] bb_sum_vector_B3_out_exiting_stall_out;
    wire [0:0] bb_sum_vector_B3_out_exiting_valid_out;
    wire [63:0] bb_sum_vector_B3_out_lm1_sum_vector_avm_address;
    wire [0:0] bb_sum_vector_B3_out_lm1_sum_vector_avm_burstcount;
    wire [7:0] bb_sum_vector_B3_out_lm1_sum_vector_avm_byteenable;
    wire [0:0] bb_sum_vector_B3_out_lm1_sum_vector_avm_enable;
    wire [0:0] bb_sum_vector_B3_out_lm1_sum_vector_avm_read;
    wire [0:0] bb_sum_vector_B3_out_lm1_sum_vector_avm_write;
    wire [63:0] bb_sum_vector_B3_out_lm1_sum_vector_avm_writedata;
    wire [63:0] bb_sum_vector_B3_out_lm32_sum_vector_avm_address;
    wire [0:0] bb_sum_vector_B3_out_lm32_sum_vector_avm_burstcount;
    wire [7:0] bb_sum_vector_B3_out_lm32_sum_vector_avm_byteenable;
    wire [0:0] bb_sum_vector_B3_out_lm32_sum_vector_avm_enable;
    wire [0:0] bb_sum_vector_B3_out_lm32_sum_vector_avm_read;
    wire [0:0] bb_sum_vector_B3_out_lm32_sum_vector_avm_write;
    wire [63:0] bb_sum_vector_B3_out_lm32_sum_vector_avm_writedata;
    wire [0:0] bb_sum_vector_B3_out_lsu_memdep_o_active;
    wire [63:0] bb_sum_vector_B3_out_memdep_sum_vector_avm_address;
    wire [0:0] bb_sum_vector_B3_out_memdep_sum_vector_avm_burstcount;
    wire [7:0] bb_sum_vector_B3_out_memdep_sum_vector_avm_byteenable;
    wire [0:0] bb_sum_vector_B3_out_memdep_sum_vector_avm_enable;
    wire [0:0] bb_sum_vector_B3_out_memdep_sum_vector_avm_read;
    wire [0:0] bb_sum_vector_B3_out_memdep_sum_vector_avm_write;
    wire [63:0] bb_sum_vector_B3_out_memdep_sum_vector_avm_writedata;
    wire [0:0] bb_sum_vector_B3_out_pipeline_valid_out;
    wire [0:0] bb_sum_vector_B3_out_stall_out_0;
    wire [0:0] bb_sum_vector_B3_out_stall_out_1;
    wire [0:0] bb_sum_vector_B3_out_valid_out_0;
    wire [1:0] c_i2_011_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going11_sum_vector1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going11_sum_vector1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_sr_out_o_valid;
    wire [0:0] loop_limiter_sum_vector0_out_o_stall;
    wire [0:0] loop_limiter_sum_vector0_out_o_valid;
    wire [0:0] bb_sum_vector_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sum_vector_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sum_vector_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sum_vector_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sum_vector_B3_sr_1_aunroll_x_out_o_data_0_tpl;


    // c_i2_011(CONSTANT,14)
    assign c_i2_011_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo(BLACKBOX,17)
    sum_vector_i_llvm_fpga_pipeline_keep_going11_1_valid_fifo thei_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo (
        .in_data_in(c_i2_011_q),
        .in_stall_in(bb_sum_vector_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going11_sum_vector1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sum_vector_B2_sr_0_aunroll_x(BLACKBOX,70)
    sum_vector_bb_B2_sr_0 thebb_sum_vector_B2_sr_0_aunroll_x (
        .in_i_stall(bb_sum_vector_B2_out_stall_out_0),
        .in_i_valid(bb_sum_vector_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_sum_vector_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sum_vector_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_sum_vector4_sr(BLACKBOX,18)
    sum_vector_i_llvm_fpga_pipeline_keep_going_4_sr thei_llvm_fpga_pipeline_keep_going_sum_vector4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_sum_vector_B3_out_stall_out_0),
        .in_i_valid(bb_sum_vector_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_sum_vector4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_sum_vector4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_sum_vector_B3(BLACKBOX,5)
    sum_vector_bb_B3 thebb_sum_vector_B3 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_sum_vector_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_4_0),
        .in_lm1_sum_vector_avm_readdata(in_lm1_sum_vector_avm_readdata),
        .in_lm1_sum_vector_avm_readdatavalid(in_lm1_sum_vector_avm_readdatavalid),
        .in_lm1_sum_vector_avm_waitrequest(in_lm1_sum_vector_avm_waitrequest),
        .in_lm1_sum_vector_avm_writeack(in_lm1_sum_vector_avm_writeack),
        .in_lm32_sum_vector_avm_readdata(in_lm32_sum_vector_avm_readdata),
        .in_lm32_sum_vector_avm_readdatavalid(in_lm32_sum_vector_avm_readdatavalid),
        .in_lm32_sum_vector_avm_waitrequest(in_lm32_sum_vector_avm_waitrequest),
        .in_lm32_sum_vector_avm_writeack(in_lm32_sum_vector_avm_writeack),
        .in_memdep_sum_vector_avm_readdata(in_memdep_sum_vector_avm_readdata),
        .in_memdep_sum_vector_avm_readdatavalid(in_memdep_sum_vector_avm_readdatavalid),
        .in_memdep_sum_vector_avm_waitrequest(in_memdep_sum_vector_avm_waitrequest),
        .in_memdep_sum_vector_avm_writeack(in_memdep_sum_vector_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_sum_vector4_sr_out_o_stall),
        .in_stall_in_0(bb_sum_vector_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_sum_vector4_sr_out_o_valid),
        .in_valid_in_1(bb_sum_vector_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_sum_vector_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sum_vector_B3_out_exiting_valid_out),
        .out_lm1_sum_vector_avm_address(bb_sum_vector_B3_out_lm1_sum_vector_avm_address),
        .out_lm1_sum_vector_avm_burstcount(bb_sum_vector_B3_out_lm1_sum_vector_avm_burstcount),
        .out_lm1_sum_vector_avm_byteenable(bb_sum_vector_B3_out_lm1_sum_vector_avm_byteenable),
        .out_lm1_sum_vector_avm_enable(bb_sum_vector_B3_out_lm1_sum_vector_avm_enable),
        .out_lm1_sum_vector_avm_read(bb_sum_vector_B3_out_lm1_sum_vector_avm_read),
        .out_lm1_sum_vector_avm_write(bb_sum_vector_B3_out_lm1_sum_vector_avm_write),
        .out_lm1_sum_vector_avm_writedata(bb_sum_vector_B3_out_lm1_sum_vector_avm_writedata),
        .out_lm32_sum_vector_avm_address(bb_sum_vector_B3_out_lm32_sum_vector_avm_address),
        .out_lm32_sum_vector_avm_burstcount(bb_sum_vector_B3_out_lm32_sum_vector_avm_burstcount),
        .out_lm32_sum_vector_avm_byteenable(bb_sum_vector_B3_out_lm32_sum_vector_avm_byteenable),
        .out_lm32_sum_vector_avm_enable(bb_sum_vector_B3_out_lm32_sum_vector_avm_enable),
        .out_lm32_sum_vector_avm_read(bb_sum_vector_B3_out_lm32_sum_vector_avm_read),
        .out_lm32_sum_vector_avm_write(bb_sum_vector_B3_out_lm32_sum_vector_avm_write),
        .out_lm32_sum_vector_avm_writedata(bb_sum_vector_B3_out_lm32_sum_vector_avm_writedata),
        .out_lsu_memdep_o_active(bb_sum_vector_B3_out_lsu_memdep_o_active),
        .out_memdep_sum_vector_avm_address(bb_sum_vector_B3_out_memdep_sum_vector_avm_address),
        .out_memdep_sum_vector_avm_burstcount(bb_sum_vector_B3_out_memdep_sum_vector_avm_burstcount),
        .out_memdep_sum_vector_avm_byteenable(bb_sum_vector_B3_out_memdep_sum_vector_avm_byteenable),
        .out_memdep_sum_vector_avm_enable(bb_sum_vector_B3_out_memdep_sum_vector_avm_enable),
        .out_memdep_sum_vector_avm_read(bb_sum_vector_B3_out_memdep_sum_vector_avm_read),
        .out_memdep_sum_vector_avm_write(bb_sum_vector_B3_out_memdep_sum_vector_avm_write),
        .out_memdep_sum_vector_avm_writedata(bb_sum_vector_B3_out_memdep_sum_vector_avm_writedata),
        .out_pipeline_valid_out(bb_sum_vector_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_sum_vector_B3_out_stall_out_0),
        .out_stall_out_1(bb_sum_vector_B3_out_stall_out_1),
        .out_valid_out_0(bb_sum_vector_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_sum_vector_B3_sr_1_aunroll_x(BLACKBOX,71)
    sum_vector_bb_B3_sr_1 thebb_sum_vector_B3_sr_1_aunroll_x (
        .in_i_stall(bb_sum_vector_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_sum_vector0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_sum_vector_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sum_vector_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sum_vector_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sum_vector0(BLACKBOX,42)
    sum_vector_loop_limiter_0 theloop_limiter_sum_vector0 (
        .in_i_stall(bb_sum_vector_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sum_vector_B3_out_exiting_stall_out),
        .in_i_valid(bb_sum_vector_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_sum_vector_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sum_vector0_out_o_stall),
        .out_o_valid(loop_limiter_sum_vector0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going11_sum_vector1_sr(BLACKBOX,16)
    sum_vector_i_llvm_fpga_pipeline_keep_going11_1_sr thei_llvm_fpga_pipeline_keep_going11_sum_vector1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo_out_stall_out),
        .in_i_valid(bb_sum_vector_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going11_sum_vector1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going11_sum_vector1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sum_vector_B2(BLACKBOX,4)
    sum_vector_bb_B2 thebb_sum_vector_B2 (
        .in_feedback_stall_in_1(bb_sum_vector_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_sum_vector_i_fifoready(in_iowr_bl_return_sum_vector_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_sum_vector_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_sum_vector_B2_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_sum_vector_B2_out_feedback_valid_out_1),
        .out_iowr_bl_return_sum_vector_o_fifodata(bb_sum_vector_B2_out_iowr_bl_return_sum_vector_o_fifodata),
        .out_iowr_bl_return_sum_vector_o_fifovalid(bb_sum_vector_B2_out_iowr_bl_return_sum_vector_o_fifovalid),
        .out_stall_out_0(bb_sum_vector_B2_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sum_vector_B1_start(BLACKBOX,3)
    sum_vector_bb_B1_start thebb_sum_vector_B1_start (
        .in_feedback_in_1(bb_sum_vector_B2_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_sum_vector_B2_out_feedback_valid_out_1),
        .in_iord_bl_call_sum_vector_i_fifodata(in_iord_bl_call_sum_vector_i_fifodata),
        .in_iord_bl_call_sum_vector_i_fifovalid(in_iord_bl_call_sum_vector_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going11_sum_vector1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_sum_vector0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going11_sum_vector1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_sum_vector_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_sum_vector_B1_start_out_intel_reserved_ffwd_4_0),
        .out_iord_bl_call_sum_vector_o_fifoready(bb_sum_vector_B1_start_out_iord_bl_call_sum_vector_o_fifoready),
        .out_pipeline_valid_out(bb_sum_vector_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_sum_vector_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_sum_vector_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_sum_vector_o_fifoready(GPOUT,43)
    assign out_iord_bl_call_sum_vector_o_fifoready = bb_sum_vector_B1_start_out_iord_bl_call_sum_vector_o_fifoready;

    // out_iowr_bl_return_sum_vector_o_fifodata(GPOUT,44)
    assign out_iowr_bl_return_sum_vector_o_fifodata = bb_sum_vector_B2_out_iowr_bl_return_sum_vector_o_fifodata;

    // out_iowr_bl_return_sum_vector_o_fifovalid(GPOUT,45)
    assign out_iowr_bl_return_sum_vector_o_fifovalid = bb_sum_vector_B2_out_iowr_bl_return_sum_vector_o_fifovalid;

    // out_lm1_sum_vector_avm_address(GPOUT,46)
    assign out_lm1_sum_vector_avm_address = bb_sum_vector_B3_out_lm1_sum_vector_avm_address;

    // out_lm1_sum_vector_avm_burstcount(GPOUT,47)
    assign out_lm1_sum_vector_avm_burstcount = bb_sum_vector_B3_out_lm1_sum_vector_avm_burstcount;

    // out_lm1_sum_vector_avm_byteenable(GPOUT,48)
    assign out_lm1_sum_vector_avm_byteenable = bb_sum_vector_B3_out_lm1_sum_vector_avm_byteenable;

    // out_lm1_sum_vector_avm_enable(GPOUT,49)
    assign out_lm1_sum_vector_avm_enable = bb_sum_vector_B3_out_lm1_sum_vector_avm_enable;

    // out_lm1_sum_vector_avm_read(GPOUT,50)
    assign out_lm1_sum_vector_avm_read = bb_sum_vector_B3_out_lm1_sum_vector_avm_read;

    // out_lm1_sum_vector_avm_write(GPOUT,51)
    assign out_lm1_sum_vector_avm_write = bb_sum_vector_B3_out_lm1_sum_vector_avm_write;

    // out_lm1_sum_vector_avm_writedata(GPOUT,52)
    assign out_lm1_sum_vector_avm_writedata = bb_sum_vector_B3_out_lm1_sum_vector_avm_writedata;

    // out_lm32_sum_vector_avm_address(GPOUT,53)
    assign out_lm32_sum_vector_avm_address = bb_sum_vector_B3_out_lm32_sum_vector_avm_address;

    // out_lm32_sum_vector_avm_burstcount(GPOUT,54)
    assign out_lm32_sum_vector_avm_burstcount = bb_sum_vector_B3_out_lm32_sum_vector_avm_burstcount;

    // out_lm32_sum_vector_avm_byteenable(GPOUT,55)
    assign out_lm32_sum_vector_avm_byteenable = bb_sum_vector_B3_out_lm32_sum_vector_avm_byteenable;

    // out_lm32_sum_vector_avm_enable(GPOUT,56)
    assign out_lm32_sum_vector_avm_enable = bb_sum_vector_B3_out_lm32_sum_vector_avm_enable;

    // out_lm32_sum_vector_avm_read(GPOUT,57)
    assign out_lm32_sum_vector_avm_read = bb_sum_vector_B3_out_lm32_sum_vector_avm_read;

    // out_lm32_sum_vector_avm_write(GPOUT,58)
    assign out_lm32_sum_vector_avm_write = bb_sum_vector_B3_out_lm32_sum_vector_avm_write;

    // out_lm32_sum_vector_avm_writedata(GPOUT,59)
    assign out_lm32_sum_vector_avm_writedata = bb_sum_vector_B3_out_lm32_sum_vector_avm_writedata;

    // out_memdep_sum_vector_avm_address(GPOUT,60)
    assign out_memdep_sum_vector_avm_address = bb_sum_vector_B3_out_memdep_sum_vector_avm_address;

    // out_memdep_sum_vector_avm_burstcount(GPOUT,61)
    assign out_memdep_sum_vector_avm_burstcount = bb_sum_vector_B3_out_memdep_sum_vector_avm_burstcount;

    // out_memdep_sum_vector_avm_byteenable(GPOUT,62)
    assign out_memdep_sum_vector_avm_byteenable = bb_sum_vector_B3_out_memdep_sum_vector_avm_byteenable;

    // out_memdep_sum_vector_avm_enable(GPOUT,63)
    assign out_memdep_sum_vector_avm_enable = bb_sum_vector_B3_out_memdep_sum_vector_avm_enable;

    // out_memdep_sum_vector_avm_read(GPOUT,64)
    assign out_memdep_sum_vector_avm_read = bb_sum_vector_B3_out_memdep_sum_vector_avm_read;

    // out_memdep_sum_vector_avm_write(GPOUT,65)
    assign out_memdep_sum_vector_avm_write = bb_sum_vector_B3_out_memdep_sum_vector_avm_write;

    // out_memdep_sum_vector_avm_writedata(GPOUT,66)
    assign out_memdep_sum_vector_avm_writedata = bb_sum_vector_B3_out_memdep_sum_vector_avm_writedata;

    // out_o_active_memdep(GPOUT,67)
    assign out_o_active_memdep = bb_sum_vector_B3_out_lsu_memdep_o_active;

    // bb_sum_vector_B0_runOnce(BLACKBOX,2)
    sum_vector_bb_B0_runOnce thebb_sum_vector_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_sum_vector_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,68)
    assign out_stall_out = bb_sum_vector_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,69)
    assign out_valid_out = GND_q;

endmodule
