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

// SystemVerilog created from floydWarshall_i_llvm_fpga_push_i32_inc55178_push55_floydwarshall0
// SystemVerilog created on Mon Apr  6 10:18:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_i_llvm_fpga_push_i32_inc55178_push55_floydwarshall0 (
    input wire [0:0] in_feedback_stall_in_55,
    output wire [31:0] out_feedback_out_55,
    output wire [0:0] out_feedback_valid_out_55,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in,
    input wire [0:0] in_exitcond9,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_data_in;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_dir;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_dir_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_stall_in;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_predicate;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_in;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_in;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_data_out;
    wire [31:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_out;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_valid_out;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_out;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_out;
    wire i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1(EXTIFACE,5)@2
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_data_in = in_data_in;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_dir = in_exitcond9;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_stall_in = in_feedback_stall_in_55;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_predicate = GND_q;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_in = in_stall_in;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_in = in_valid_in;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_dir_bitsignaltemp = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_dir[0];
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_stall_in[0];
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_predicate_bitsignaltemp = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_predicate[0];
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_in_bitsignaltemp = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_in[0];
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_in_bitsignaltemp = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_in[0];
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_valid_out[0] = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_valid_out_bitsignaltemp;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_out[0] = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_out[0] = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_out_bitsignaltemp;
    acl_push #(
        .FIFO_DEPTH(1),
        .INF_LOOP(0),
        .INF_LOOP_INITIALIZATION(32'b00000000000000000000000000000000),
        .MIN_FIFO_LATENCY(1),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .DATA_WIDTH(32),
        .ENABLED(0),
        .RAM_FIFO_DEPTH_INC(0),
        .STALLFREE(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_i32_inc55178_push55_floydwarshall1 (
        .data_in(in_data_in),
        .dir(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_dir_bitsignaltemp),
        .feedback_stall_in(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_stall_in_bitsignaltemp),
        .predicate(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_data_out),
        .feedback_out(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_out),
        .feedback_valid_out(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_valid_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,4)
    assign out_feedback_out_55 = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_out;
    assign out_feedback_valid_out_55 = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_feedback_valid_out;

    // sync_out(GPOUT,8)@2
    assign out_stall_out = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_stall_out;

    // dupName_0_sync_out_x(GPOUT,10)@2
    assign out_data_out = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_data_out;
    assign out_valid_out = i_llvm_fpga_push_i32_inc55178_push55_floydwarshall1_valid_out;

endmodule
