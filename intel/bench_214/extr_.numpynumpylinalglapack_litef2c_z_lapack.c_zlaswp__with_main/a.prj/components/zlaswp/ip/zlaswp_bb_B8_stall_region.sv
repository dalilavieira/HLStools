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

// SystemVerilog created from zlaswp_bb_B8_stall_region
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B8_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_unnamed_zlaswp46,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_324_q;
    wire [32:0] i_add56_zlaswp1_a;
    wire [32:0] i_add56_zlaswp1_b;
    logic [32:0] i_add56_zlaswp1_o;
    wire [32:0] i_add56_zlaswp1_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_intel_reserved_ffwd_25_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_valid_out;
    wire [31:0] bgTrunc_i_add56_zlaswp1_sel_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_V0;
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


    // i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i1_unnamed_46_zlaswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,45)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge69162_0 thei_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_wireValid = i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_and0;

    // c_i32_324(CONSTANT,4)
    assign c_i32_324_q = $unsigned(32'b00000000000000000000000000100000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0(BITJOIN,33)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_q = i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0(BITSELECT,34)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_q[31:0]);

    // i_add56_zlaswp1(ADD,7)@0
    assign i_add56_zlaswp1_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_b};
    assign i_add56_zlaswp1_b = {1'b0, c_i32_324_q};
    assign i_add56_zlaswp1_o = $unsigned(i_add56_zlaswp1_a) + $unsigned(i_add56_zlaswp1_b);
    assign i_add56_zlaswp1_q = i_add56_zlaswp1_o[32:0];

    // bgTrunc_i_add56_zlaswp1_sel_x(BITSELECT,25)@0
    assign bgTrunc_i_add56_zlaswp1_sel_x_b = i_add56_zlaswp1_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_47_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_25_0(bgTrunc_i_add56_zlaswp1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69162_zlaswp0_V0),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_intel_reserved_ffwd_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,19)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp47_zlaswp3_out_intel_reserved_ffwd_25_0;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2(BITJOIN,29)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_q = i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2(BITSELECT,30)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,26)@0
    assign out_unnamed_zlaswp46 = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp46_zlaswp2_V0;

endmodule
