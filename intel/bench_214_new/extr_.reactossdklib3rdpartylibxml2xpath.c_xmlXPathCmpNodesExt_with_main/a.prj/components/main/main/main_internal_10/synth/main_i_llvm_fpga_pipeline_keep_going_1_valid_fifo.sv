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

// SystemVerilog created from main_i_llvm_fpga_pipeline_keep_going_1_valid_fifo
// SystemVerilog created on Sun May 24 20:09:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_i_llvm_fpga_pipeline_keep_going_1_valid_fifo (
    input wire [1:0] in_data_in,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [1:0] out_data_out,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [1:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_data_in;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_in;
    wire i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_in;
    wire i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_almost_full;
    wire i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_almost_full_bitsignaltemp;
    wire [1:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_out;
    wire i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_out;
    wire i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_out_bitsignaltemp;


    // i_llvm_fpga_pipeline_keep_going_main1_valid_fifo(EXTIFACE,2)
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_data_in = in_data_in;
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_in = in_stall_in;
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_in = in_valid_in;
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_in[0];
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_in[0];
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_almost_full[0] = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_almost_full_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_out[0] = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_out[0] = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .ASYNC_RESET(1),
        .DATA_WIDTH(2),
        .DEPTH(1),
        .IMPL("passthrough"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pipeline_keep_going_main1_valid_fifo (
        .data_in(in_data_in),
        .stall_in(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_data_out),
        .stall_out(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_full(GPOUT,6)
    assign out_almost_full = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_almost_full;

    // out_data_out(GPOUT,7)
    assign out_data_out = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_data_out;

    // out_stall_out(GPOUT,8)
    assign out_stall_out = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_stall_out;

    // out_valid_out(GPOUT,9)
    assign out_valid_out = i_llvm_fpga_pipeline_keep_going_main1_valid_fifo_valid_out;

endmodule
