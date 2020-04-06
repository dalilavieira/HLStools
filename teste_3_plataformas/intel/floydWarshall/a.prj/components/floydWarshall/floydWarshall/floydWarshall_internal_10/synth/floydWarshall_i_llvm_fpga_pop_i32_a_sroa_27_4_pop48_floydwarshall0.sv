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

// SystemVerilog created from floydWarshall_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall0
// SystemVerilog created on Mon Apr  6 10:18:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall0 (
    input wire [31:0] in_feedback_in_48,
    input wire [0:0] in_feedback_valid_in_48,
    output wire [0:0] out_feedback_stall_out_48,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_data_in;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_dir;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_dir_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_in;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_valid_in;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_predicate;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_in;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_in;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_stall_out;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_out;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_out;
    wire i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_out_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_valid_out;


    // i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg(BLACKBOX,5)@20000000
    // out out_data_out@20000001
    // out out_valid_out@20000001
    floydWarshall_i_llvm_fpga_pop_i32_a_sroaA000000Z_floydwarshall26_reg thei_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg (
        .in_data_in(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_data_out),
        .in_stall_in(in_stall_in),
        .in_valid_in(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_out),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_data_out),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1(EXTIFACE,4)
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_data_in = in_data_in;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_dir = in_dir;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_in = in_feedback_in_48;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_valid_in = in_feedback_valid_in_48;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_predicate = in_predicate;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_in = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_stall_out;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_dir_bitsignaltemp = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_dir[0];
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_valid_in[0];
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_predicate_bitsignaltemp = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_predicate[0];
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_in_bitsignaltemp = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_in[0];
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_in_bitsignaltemp = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_in[0];
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_stall_out[0] = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_out[0] = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_out[0] = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(0),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(32),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1 (
        .data_in(in_data_in),
        .dir(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_dir_bitsignaltemp),
        .feedback_in(in_feedback_in_48),
        .feedback_valid_in(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_data_out),
        .feedback_stall_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,3)
    assign out_feedback_stall_out_48 = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_feedback_stall_out;

    // sync_out(GPOUT,8)@20000000
    assign out_stall_out = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall1_stall_out;

    // dupName_0_sync_out_x(GPOUT,10)@6
    assign out_data_out = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_data_out;
    assign out_valid_out = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_reg_out_valid_out;

endmodule