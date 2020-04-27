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

// SystemVerilog created from sobel_filter_bb_B17_stall_region
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B17_stall_region (
    output wire [0:0] out_feedback_out_27,
    output wire [0:0] out_feedback_out_28,
    input wire [0:0] in_feedback_stall_in_27,
    input wire [0:0] in_feedback_stall_in_28,
    output wire [0:0] out_feedback_valid_out_27,
    output wire [0:0] out_feedback_valid_out_28,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe247225,
    input wire [0:0] in_c0_exe347326,
    input wire [0:0] in_c0_exe547527,
    input wire [0:0] in_c0_exe647628,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe647628,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_valid_out;
    wire [3:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;


    // SE_out_i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0(STALLENABLE,28)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_wireValid = i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    sobel_filter_i_llvm_fpga_push_i1_memdep_phi18_push28_0 thei_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0 (
        .in_c0_exe547527(bubble_select_stall_entry_d),
        .in_data_in(bubble_select_stall_entry_c),
        .in_feedback_stall_in_28(in_feedback_stall_in_28),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1(STALLENABLE,30)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_wireValid = i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,23)
    assign bubble_join_stall_entry_q = {in_c0_exe647628, in_c0_exe547527, in_c0_exe347326, in_c0_exe247225};

    // bubble_select_stall_entry(BITSELECT,24)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);

    // i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    sobel_filter_i_llvm_fpga_push_i1_memdep_phi_push27_0 thei_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1 (
        .in_c0_exe547527(bubble_select_stall_entry_d),
        .in_data_in(bubble_select_stall_entry_b),
        .in_feedback_stall_in_27(in_feedback_stall_in_27),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_27_sync(GPOUT,4)
    assign out_feedback_out_27 = i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_feedback_out_27;

    // feedback_out_28_sync(GPOUT,5)
    assign out_feedback_out_28 = i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_feedback_out_28;

    // feedback_valid_out_27_sync(GPOUT,8)
    assign out_feedback_valid_out_27 = i_llvm_fpga_push_i1_memdep_phi_push27_sobel_filter1_out_feedback_valid_out_27;

    // feedback_valid_out_28_sync(GPOUT,9)
    assign out_feedback_valid_out_28 = i_llvm_fpga_push_i1_memdep_phi18_push28_sobel_filter0_out_feedback_valid_out_28;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,21)@0
    assign out_c0_exe647628 = bubble_select_stall_entry_e;
    assign out_valid_out = SE_stall_entry_V0;

endmodule
