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
// SystemVerilog created on Sun May 24 20:09:11 2020


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
    wire [0:0] bb_main_B0_out_iord_bl_call_main_o_fifoready;
    wire [0:0] bb_main_B0_out_stall_out_0;
    wire [0:0] bb_main_B0_out_valid_out_0;
    wire [0:0] bb_main_B1_out_pipeline_valid_out;
    wire [0:0] bb_main_B1_out_stall_out_0;
    wire [0:0] bb_main_B1_out_stall_out_1;
    wire [1:0] c_i2_03_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_out_valid_out;
    wire [0:0] bb_main_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_main_B1_sr_1_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i2_03(CONSTANT,7)
    assign c_i2_03_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_main1_valid_fifo(BLACKBOX,10)
    main_i_llvm_fpga_pipeline_keep_going_1_valid_fifo thei_llvm_fpga_pipeline_keep_going_main1_valid_fifo (
        .in_data_in(c_i2_03_q),
        .in_stall_in(bb_main_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_main1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_main1_sr(BLACKBOX,9)
    main_i_llvm_fpga_pipeline_keep_going_1_sr thei_llvm_fpga_pipeline_keep_going_main1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_out_stall_out),
        .in_i_valid(bb_main_B1_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_main1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_main1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B1(BLACKBOX,3)
    main_bb_B1 thebb_main_B1 (
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_main1_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_main_B1_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_pipeline_valid_out(bb_main_B1_out_pipeline_valid_out),
        .out_stall_out_0(bb_main_B1_out_stall_out_0),
        .out_stall_out_1(bb_main_B1_out_stall_out_1),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B1_sr_1_aunroll_x(BLACKBOX,19)
    main_bb_B1_sr_1 thebb_main_B1_sr_1_aunroll_x (
        .in_i_stall(bb_main_B1_out_stall_out_1),
        .in_i_valid(bb_main_B0_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_main_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B0(BLACKBOX,2)
    main_bb_B0 thebb_main_B0 (
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .in_stall_in_0(bb_main_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_iord_bl_call_main_o_fifoready(bb_main_B0_out_iord_bl_call_main_o_fifoready),
        .out_stall_out_0(bb_main_B0_out_stall_out_0),
        .out_valid_out_0(bb_main_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_main_o_fifoready(GPOUT,16)
    assign out_iord_bl_call_main_o_fifoready = bb_main_B0_out_iord_bl_call_main_o_fifoready;

    // out_stall_out(GPOUT,17)
    assign out_stall_out = bb_main_B0_out_stall_out_0;

    // out_valid_out(GPOUT,18)
    assign out_valid_out = GND_q;

endmodule
