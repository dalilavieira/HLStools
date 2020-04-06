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

// SystemVerilog created from floydWarshall_bb_B10_stall_region
// SystemVerilog created on Mon Apr  6 10:28:01 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B10_stall_region (
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe1918,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1918,
    output wire [0:0] out_cmp1448,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_valid_out;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_V0;
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


    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0(STALLENABLE,23)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_and0 = i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_wireValid = SE_stall_entry_V1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_and0;

    // i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0(BLACKBOX,4)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0 thei_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,24)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0(BITJOIN,15)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_q = i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0(BITSELECT,16)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_q[0:0]);

    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = in_c0_exe1918;

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,13)@0
    assign out_c0_exe1918 = bubble_select_stall_entry_b;
    assign out_cmp1448 = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1448_floydwarshall0_V0;

endmodule
