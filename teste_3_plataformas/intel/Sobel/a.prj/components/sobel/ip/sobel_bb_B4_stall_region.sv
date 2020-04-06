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

// SystemVerilog created from sobel_bb_B4_stall_region
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_bb_B4_stall_region (
    output wire [0:0] out_feedback_out_10,
    input wire [0:0] in_feedback_stall_in_10,
    output wire [0:0] out_feedback_valid_out_10,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1132_pop171,
    input wire [0:0] in_memdep_3,
    input wire [0:0] in_notcmp2033_pop182,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_notcmp2033_pop182,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_valid_out;
    wire [2:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;


    // SE_stall_entry(STALLENABLE,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0(STALLENABLE,21)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_wireValid = i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,17)
    assign bubble_join_stall_entry_q = {in_notcmp2033_pop182, in_memdep_3, in_exitcond1132_pop171};

    // bubble_select_stall_entry(BITSELECT,18)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);

    // i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    sobel_i_llvm_fpga_push_i1_memdep_phi1_push10_0 thei_llvm_fpga_push_i1_memdep_phi1_push10_sobel0 (
        .in_data_in(bubble_select_stall_entry_c),
        .in_exitcond1132_pop171(bubble_select_stall_entry_b),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_10_sync(GPOUT,4)
    assign out_feedback_out_10 = i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_feedback_out_10;

    // feedback_valid_out_10_sync(GPOUT,6)
    assign out_feedback_valid_out_10 = i_llvm_fpga_push_i1_memdep_phi1_push10_sobel0_out_feedback_valid_out_10;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,15)@0
    assign out_notcmp2033_pop182 = bubble_select_stall_entry_d;
    assign out_valid_out = SE_stall_entry_V0;

endmodule
