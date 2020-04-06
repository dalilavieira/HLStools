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

// SystemVerilog created from euler_bb_B2_stall_region
// SystemVerilog created on Mon Apr  6 12:54:32 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_bb_B2_stall_region (
    input wire [0:0] in_iowr_bl_return_euler_i_fifoready,
    output wire [63:0] out_iowr_bl_return_euler_o_fifodata,
    output wire [0:0] out_iowr_bl_return_euler_o_fifovalid,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [63:0] c_double_0_000000e_005_q;
    wire [63:0] i_iowr_bl_return_euler_unnamed_euler5_euler3_out_iowr_bl_return_euler_o_fifodata;
    wire [0:0] i_iowr_bl_return_euler_unnamed_euler5_euler3_out_iowr_bl_return_euler_o_fifovalid;
    wire [0:0] i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_ack;
    wire [0:0] i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_stall;
    wire [0:0] i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_valid;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_euler4_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_euler4_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_euler4_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_euler4_out_valid_out;
    wire [0:0] i_select1_euler2_s;
    reg [63:0] i_select1_euler2_q;
    wire [0:0] bubble_join_i_iowr_bl_return_euler_unnamed_euler5_euler3_q;
    wire [0:0] bubble_select_i_iowr_bl_return_euler_unnamed_euler5_euler3_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_f64_add23_euler1_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_f64_add23_euler1_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_b;
    wire [0:0] SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_euler4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_euler4_backStall;
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


    // SE_stall_entry(STALLENABLE,53)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // i_llvm_fpga_ffwd_dest_f64_add23_euler1(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    euler_i_llvm_fpga_ffwd_dest_f64_add23_0 thei_llvm_fpga_ffwd_dest_f64_add23_euler1 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    euler_i_llvm_fpga_ffwd_dest_i1_cmp1119_0 thei_llvm_fpga_ffwd_dest_i1_cmp1119_euler0 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0(STALLENABLE,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed0 = (~ (i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_stall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed1 = (~ (in_stall_in) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_and0 = i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_wireValid = i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_and0;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_euler4(STALLENABLE,51)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_euler4_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_euler4_wireValid = i_llvm_fpga_push_token_i1_throttle_push_euler4_out_valid_out;

    // bubble_join_i_iowr_bl_return_euler_unnamed_euler5_euler3(BITJOIN,32)
    assign bubble_join_i_iowr_bl_return_euler_unnamed_euler5_euler3_q = i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_ack;

    // bubble_select_i_iowr_bl_return_euler_unnamed_euler5_euler3(BITSELECT,33)
    assign bubble_select_i_iowr_bl_return_euler_unnamed_euler5_euler3_b = $unsigned(bubble_join_i_iowr_bl_return_euler_unnamed_euler5_euler3_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_euler4(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    euler_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_euler4 (
        .in_data_in(bubble_select_i_iowr_bl_return_euler_unnamed_euler5_euler3_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_euler4_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_euler4_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_euler4_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_euler4_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_euler4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_V0 = SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_backStall = i_llvm_fpga_push_token_i1_throttle_push_euler4_out_stall_out | ~ (SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_wireValid = i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_f64_add23_euler1(BITJOIN,35)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f64_add23_euler1_q = i_llvm_fpga_ffwd_dest_f64_add23_euler1_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f64_add23_euler1(BITSELECT,36)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f64_add23_euler1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f64_add23_euler1_q[63:0]);

    // c_double_0_000000e_005(FLOATCONSTANT,2)
    assign c_double_0_000000e_005_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_q = i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_select1_euler2(MUX,14)@0
    assign i_select1_euler2_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_b;
    always @(i_select1_euler2_s or c_double_0_000000e_005_q or bubble_select_i_llvm_fpga_ffwd_dest_f64_add23_euler1_b)
    begin
        unique case (i_select1_euler2_s)
            1'b0 : i_select1_euler2_q = c_double_0_000000e_005_q;
            1'b1 : i_select1_euler2_q = bubble_select_i_llvm_fpga_ffwd_dest_f64_add23_euler1_b;
            default : i_select1_euler2_q = 64'b0;
        endcase
    end

    // i_iowr_bl_return_euler_unnamed_euler5_euler3(BLACKBOX,10)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_euler_o_fifodata@20000000
    // out out_iowr_bl_return_euler_o_fifovalid@20000000
    // out out_o_stall@20000000
    euler_i_iowr_bl_return_unnamed_euler5_euler0 thei_iowr_bl_return_euler_unnamed_euler5_euler3 (
        .in_i_data(i_select1_euler2_q),
        .in_i_stall(SE_out_i_iowr_bl_return_euler_unnamed_euler5_euler3_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_V0),
        .in_iowr_bl_return_euler_i_fifoready(in_iowr_bl_return_euler_i_fifoready),
        .out_iowr_bl_return_euler_o_fifodata(i_iowr_bl_return_euler_unnamed_euler5_euler3_out_iowr_bl_return_euler_o_fifodata),
        .out_iowr_bl_return_euler_o_fifovalid(i_iowr_bl_return_euler_unnamed_euler5_euler3_out_iowr_bl_return_euler_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_ack),
        .out_o_stall(i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_stall),
        .out_o_valid(i_iowr_bl_return_euler_unnamed_euler5_euler3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_euler_o_fifodata = i_iowr_bl_return_euler_unnamed_euler5_euler3_out_iowr_bl_return_euler_o_fifodata;
    assign out_iowr_bl_return_euler_o_fifovalid = i_iowr_bl_return_euler_unnamed_euler5_euler3_out_iowr_bl_return_euler_o_fifovalid;

    // feedback_out_1_sync(GPOUT,7)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_euler4_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,9)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_euler4_out_feedback_valid_out_1;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,30)@0
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp1119_euler0_V1;

endmodule
