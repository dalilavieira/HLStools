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

// SystemVerilog created from stb_from_utf8_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:40:48 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stb_from_utf8_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_stb_from_utf8_i_fifodata,
    input wire [0:0] in_iord_bl_call_stb_from_utf8_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_stb_from_utf8_o_fifoready,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_address,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_read,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_write,
    output wire [63:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata,
    output wire [7:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [7:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_valid_out;
    wire [0:0] stb_from_utf8_B1_start_merge_reg_out_stall_out;
    wire [0:0] stb_from_utf8_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_iord_bl_call_stb_from_utf8_o_fifoready;
    wire [0:0] i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [7:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;
    wire [7:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;
    wire [0:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;
    wire [63:0] i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_b;
    wire [159:0] bubble_join_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_d;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_or0;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_V0;
    wire [0:0] SE_out_stb_from_utf8_B1_start_merge_reg_V1;
    wire [0:0] SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x(BITJOIN,53)
    assign bubble_join_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_q = {i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x(BITSELECT,54)
    assign bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_q[159:128]);

    // bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg(STALLFIFO,87)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(12),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_wireValid = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_o_valid & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_and0;

    // i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x(BLACKBOX,45)@2
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_address@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_read@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_write@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata@20000000
    // out out_c1_exit_0_tpl@12
    stb_from_utf8_i_sfc_s_c1_in_wt_entry_s_c1_enter_stb_from_utf84 thei_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_V0),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata(in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid(in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest(in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack(in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_b),
        .in_c1_eni1_2_tpl(bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_c),
        .in_c1_eni1_3_tpl(bubble_select_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_d),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_o_valid),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_address(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_read(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_write(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata(i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_V0 = SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_backStall = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_wireValid = i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81(BITJOIN,47)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81(BITSELECT,48)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_q[0:0]);

    // i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x(BLACKBOX,43)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_stb_from_utf8_o_fifoready@20000000
    // out out_o_stall@20000000
    stb_from_utf8_i_iord_bl_call_unnamed_stb_from_utf82_stb_from_utf80 thei_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_b),
        .in_i_stall(SE_out_i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_V0),
        .in_iord_bl_call_stb_from_utf8_i_fifodata(in_iord_bl_call_stb_from_utf8_i_fifodata),
        .in_iord_bl_call_stb_from_utf8_i_fifovalid(in_iord_bl_call_stb_from_utf8_i_fifovalid),
        .out_iord_bl_call_stb_from_utf8_o_fifoready(i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_iord_bl_call_stb_from_utf8_o_fifoready),
        .out_o_stall(i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81(STALLENABLE,58)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_backStall = i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    stb_from_utf8_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_backStall),
        .in_valid_in(SE_out_stb_from_utf8_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,59)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = stb_from_utf8_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // stb_from_utf8_B1_start_merge_reg(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    stb_from_utf8_B1_start_merge_reg thestb_from_utf8_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_stb_from_utf8_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(stb_from_utf8_B1_start_merge_reg_out_stall_out),
        .out_valid_out(stb_from_utf8_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_stb_from_utf8_B1_start_merge_reg(STALLENABLE,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_stb_from_utf8_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_stb_from_utf8_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_stb_from_utf8_B1_start_merge_reg_fromReg0 <= SE_out_stb_from_utf8_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_stb_from_utf8_B1_start_merge_reg_fromReg1 <= SE_out_stb_from_utf8_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_stb_from_utf8_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_stall_out) & SE_out_stb_from_utf8_B1_start_merge_reg_wireValid) | SE_out_stb_from_utf8_B1_start_merge_reg_fromReg0;
    assign SE_out_stb_from_utf8_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_o_stall) & SE_out_stb_from_utf8_B1_start_merge_reg_wireValid) | SE_out_stb_from_utf8_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_stb_from_utf8_B1_start_merge_reg_StallValid = SE_out_stb_from_utf8_B1_start_merge_reg_backStall & SE_out_stb_from_utf8_B1_start_merge_reg_wireValid;
    assign SE_out_stb_from_utf8_B1_start_merge_reg_toReg0 = SE_out_stb_from_utf8_B1_start_merge_reg_StallValid & SE_out_stb_from_utf8_B1_start_merge_reg_consumed0;
    assign SE_out_stb_from_utf8_B1_start_merge_reg_toReg1 = SE_out_stb_from_utf8_B1_start_merge_reg_StallValid & SE_out_stb_from_utf8_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_stb_from_utf8_B1_start_merge_reg_or0 = SE_out_stb_from_utf8_B1_start_merge_reg_consumed0;
    assign SE_out_stb_from_utf8_B1_start_merge_reg_wireStall = ~ (SE_out_stb_from_utf8_B1_start_merge_reg_consumed1 & SE_out_stb_from_utf8_B1_start_merge_reg_or0);
    assign SE_out_stb_from_utf8_B1_start_merge_reg_backStall = SE_out_stb_from_utf8_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_stb_from_utf8_B1_start_merge_reg_V0 = SE_out_stb_from_utf8_B1_start_merge_reg_wireValid & ~ (SE_out_stb_from_utf8_B1_start_merge_reg_fromReg0);
    assign SE_out_stb_from_utf8_B1_start_merge_reg_V1 = SE_out_stb_from_utf8_B1_start_merge_reg_wireValid & ~ (SE_out_stb_from_utf8_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_stb_from_utf8_B1_start_merge_reg_wireValid = stb_from_utf8_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x(STALLENABLE,66)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x(BLACKBOX,44)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    stb_from_utf8_i_sfc_s_c0_in_wt_entry_s_c0_enter1_stb_from_utf80 thei_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_backStall),
        .in_i_valid(SE_out_stb_from_utf8_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_stb_from_utf80_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_stall_out(i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_valid_out(i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_valid_out = i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_stall_out = i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,10)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_stb_from_utf81_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,26)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,34)
    assign out_iord_bl_call_stb_from_utf8_o_fifoready = i_iord_bl_call_stb_from_utf8_unnamed_stb_from_utf82_stb_from_utf82_aunroll_x_out_iord_bl_call_stb_from_utf8_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,36)@12
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_stb_from_utf8s_c0_enter1_stb_from_utf80_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,37)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_address = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_read = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_write = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_4_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_5_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c1_in_wt_entry_stb_from_utf8s_c1_enter_stb_from_utf84_aunroll_x_out_intel_reserved_ffwd_6_0;

endmodule
