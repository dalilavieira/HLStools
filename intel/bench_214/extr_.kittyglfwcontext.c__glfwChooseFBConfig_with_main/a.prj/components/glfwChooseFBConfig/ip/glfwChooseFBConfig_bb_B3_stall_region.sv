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

// SystemVerilog created from glfwChooseFBConfig_bb_B3_stall_region
// SystemVerilog created on Sun May 24 22:33:25 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_bb_B3_stall_region (
    input wire [0:0] in_iowr_bl_return_glfwChooseFBConfig_i_fifoready,
    output wire [63:0] out_iowr_bl_return_glfwChooseFBConfig_o_fifodata,
    output wire [0:0] out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [63:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [63:0] cpn_struct_TYPE_5gr_q;
    wire [63:0] i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata;
    wire [0:0] i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid;
    wire [0:0] i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_ack;
    wire [0:0] i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_stall;
    wire [0:0] i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_valid;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_valid_out;
    wire [0:0] i_select160_glfwchoosefbconfig2_s;
    reg [63:0] i_select160_glfwchoosefbconfig2_q;
    wire [0:0] bubble_join_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_q;
    wire [0:0] bubble_select_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_b;
    wire [0:0] SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_backStall;
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000049Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000050Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1(STALLENABLE,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed0 = (~ (i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_stall) & SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed1 = (~ (in_stall_in) & SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_and0 = i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_and0;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4(STALLENABLE,51)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_wireValid = i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_valid_out;

    // bubble_join_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3(BITJOIN,32)
    assign bubble_join_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_q = i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_ack;

    // bubble_select_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3(BITSELECT,33)
    assign bubble_select_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_b = $unsigned(bubble_join_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    glfwChooseFBConfig_i_llvm_fpga_push_tokeA000001Z_glfwchoosefbconfig0 thei_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4 (
        .in_data_in(bubble_select_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_V0 = SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_backStall = i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_stall_out | ~ (SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_wireValid = i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_valid;

    // cpn_struct_TYPE_5gr(CONSTANT,2)
    assign cpn_struct_TYPE_5gr_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_q = i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_q[63:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0(BITJOIN,35)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_q = i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0(BITSELECT,36)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_select160_glfwchoosefbconfig2(MUX,14)@0
    assign i_select160_glfwchoosefbconfig2_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp13558_glfwchoosefbconfig0_b;
    always @(i_select160_glfwchoosefbconfig2_s or bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_b or cpn_struct_TYPE_5gr_q)
    begin
        unique case (i_select160_glfwchoosefbconfig2_s)
            1'b0 : i_select160_glfwchoosefbconfig2_q = bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_b;
            1'b1 : i_select160_glfwchoosefbconfig2_q = cpn_struct_TYPE_5gr_q;
            default : i_select160_glfwchoosefbconfig2_q = 64'b0;
        endcase
    end

    // i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3(BLACKBOX,10)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_glfwChooseFBConfig_o_fifodata@20000000
    // out out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid@20000000
    // out out_o_stall@20000000
    glfwChooseFBConfig_i_iowr_bl_return_glfwA000000Z_glfwchoosefbconfig0 thei_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3 (
        .in_i_data(i_select160_glfwchoosefbconfig2_q),
        .in_i_stall(SE_out_i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_V0),
        .in_iowr_bl_return_glfwChooseFBConfig_i_fifoready(in_iowr_bl_return_glfwChooseFBConfig_i_fifoready),
        .out_iowr_bl_return_glfwChooseFBConfig_o_fifodata(i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata),
        .out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid(i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_ack),
        .out_o_stall(i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_stall),
        .out_o_valid(i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_glfwChooseFBConfig_o_fifodata = i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata;
    assign out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid = i_iowr_bl_return_glfwchoosefbconfig_unnamed_glfwchoosefbconfig34_glfwchoosefbconfig3_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid;

    // feedback_out_1_sync(GPOUT,7)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,9)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_glfwchoosefbconfig4_out_feedback_valid_out_1;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,30)@0
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_p1024s_struct_type_5_s_reduction_glfwchoosefbconfig_387_glfwchoosefbconfig1_V1;

endmodule
