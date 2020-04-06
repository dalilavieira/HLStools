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

// SystemVerilog created from cesarcipher_bb_B1_start_stall_region
// SystemVerilog created on Mon Apr  6 10:27:12 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cesarcipher_bb_B1_start_stall_region (
    input wire [127:0] in_iord_bl_call_cesarcipher_i_fifodata,
    input wire [0:0] in_iord_bl_call_cesarcipher_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out,
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
    input wire [63:0] in_unnamed_cesarcipher3_cesarcipher_avm_readdata,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_writeack,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_cesarcipher_o_fifoready,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_unnamed_cesarcipher3_cesarcipher_avm_address,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_enable,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_read,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_write,
    output wire [63:0] out_unnamed_cesarcipher3_cesarcipher_avm_writedata,
    output wire [7:0] out_unnamed_cesarcipher3_cesarcipher_avm_byteenable,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] cesarcipher_B1_start_merge_reg_out_stall_out;
    wire [0:0] cesarcipher_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_valid_out;
    wire [0:0] i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_iord_bl_call_cesarcipher_o_fifoready;
    wire [0:0] i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_address;
    wire [0:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;
    wire [7:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_enable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_read;
    wire [0:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_write;
    wire [63:0] i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_b;
    wire [95:0] bubble_join_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_c;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_cesarcipher_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_cesarcipher_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_or0;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_V0;
    wire [0:0] SE_out_cesarcipher_B1_start_merge_reg_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x(BITJOIN,48)
    assign bubble_join_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_q = {i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x(BITSELECT,49)
    assign bubble_select_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_q[95:64]);

    // bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg(STALLFIFO,82)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(11),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_wireValid = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_o_valid & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_and0;

    // i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x(BLACKBOX,40)@2
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_unnamed_cesarcipher3_cesarcipher_avm_address@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_burstcount@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_byteenable@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_enable@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_read@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_write@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_writedata@20000000
    // out out_c1_exit_0_tpl@11
    cesarcipher_i_sfc_s_c1_in_wt_entry_s_c1_enter_cesarcipher4 thei_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_V0),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdata(in_unnamed_cesarcipher3_cesarcipher_avm_readdata),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid(in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid),
        .in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest(in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest),
        .in_unnamed_cesarcipher3_cesarcipher_avm_writeack(in_unnamed_cesarcipher3_cesarcipher_avm_writeack),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_b),
        .in_c1_eni1_2_tpl(bubble_select_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_c),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_o_valid),
        .out_unnamed_cesarcipher3_cesarcipher_avm_address(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_address),
        .out_unnamed_cesarcipher3_cesarcipher_avm_burstcount(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount),
        .out_unnamed_cesarcipher3_cesarcipher_avm_byteenable(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_enable(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_enable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_read(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_read),
        .out_unnamed_cesarcipher3_cesarcipher_avm_write(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_write),
        .out_unnamed_cesarcipher3_cesarcipher_avm_writedata(i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_writedata),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_V0 = SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_backStall = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_wireValid = i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_q[0:0]);

    // i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x(BLACKBOX,38)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_cesarcipher_o_fifoready@20000000
    // out out_o_stall@20000000
    cesarcipher_i_iord_bl_call_unnamed_cesarcipher2_cesarcipher0 thei_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_b),
        .in_i_stall(SE_out_i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_V0),
        .in_iord_bl_call_cesarcipher_i_fifodata(in_iord_bl_call_cesarcipher_i_fifodata),
        .in_iord_bl_call_cesarcipher_i_fifovalid(in_iord_bl_call_cesarcipher_i_fifovalid),
        .out_iord_bl_call_cesarcipher_o_fifoready(i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_iord_bl_call_cesarcipher_o_fifoready),
        .out_o_stall(i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_backStall = i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    cesarcipher_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_backStall),
        .in_valid_in(SE_out_cesarcipher_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,56)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cesarcipher_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // cesarcipher_B1_start_merge_reg(BLACKBOX,4)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cesarcipher_B1_start_merge_reg thecesarcipher_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_cesarcipher_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(cesarcipher_B1_start_merge_reg_out_stall_out),
        .out_valid_out(cesarcipher_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cesarcipher_B1_start_merge_reg(STALLENABLE,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_cesarcipher_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_cesarcipher_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_cesarcipher_B1_start_merge_reg_fromReg0 <= SE_out_cesarcipher_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_cesarcipher_B1_start_merge_reg_fromReg1 <= SE_out_cesarcipher_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_cesarcipher_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_stall_out) & SE_out_cesarcipher_B1_start_merge_reg_wireValid) | SE_out_cesarcipher_B1_start_merge_reg_fromReg0;
    assign SE_out_cesarcipher_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_o_stall) & SE_out_cesarcipher_B1_start_merge_reg_wireValid) | SE_out_cesarcipher_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_cesarcipher_B1_start_merge_reg_StallValid = SE_out_cesarcipher_B1_start_merge_reg_backStall & SE_out_cesarcipher_B1_start_merge_reg_wireValid;
    assign SE_out_cesarcipher_B1_start_merge_reg_toReg0 = SE_out_cesarcipher_B1_start_merge_reg_StallValid & SE_out_cesarcipher_B1_start_merge_reg_consumed0;
    assign SE_out_cesarcipher_B1_start_merge_reg_toReg1 = SE_out_cesarcipher_B1_start_merge_reg_StallValid & SE_out_cesarcipher_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_cesarcipher_B1_start_merge_reg_or0 = SE_out_cesarcipher_B1_start_merge_reg_consumed0;
    assign SE_out_cesarcipher_B1_start_merge_reg_wireStall = ~ (SE_out_cesarcipher_B1_start_merge_reg_consumed1 & SE_out_cesarcipher_B1_start_merge_reg_or0);
    assign SE_out_cesarcipher_B1_start_merge_reg_backStall = SE_out_cesarcipher_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_cesarcipher_B1_start_merge_reg_V0 = SE_out_cesarcipher_B1_start_merge_reg_wireValid & ~ (SE_out_cesarcipher_B1_start_merge_reg_fromReg0);
    assign SE_out_cesarcipher_B1_start_merge_reg_V1 = SE_out_cesarcipher_B1_start_merge_reg_wireValid & ~ (SE_out_cesarcipher_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_cesarcipher_B1_start_merge_reg_wireValid = cesarcipher_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x(STALLENABLE,61)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x(BLACKBOX,39)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    cesarcipher_i_sfc_s_c0_in_wt_entry_s_c0_enter2_cesarcipher0 thei_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_backStall),
        .in_i_valid(SE_out_cesarcipher_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_cesarcipher0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,11)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_cesarcipher1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,25)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,27)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,34)
    assign out_iord_bl_call_cesarcipher_o_fifoready = i_iord_bl_call_cesarcipher_unnamed_cesarcipher2_cesarcipher2_aunroll_x_out_iord_bl_call_cesarcipher_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,36)@11
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,37)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_address = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_address;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_enable = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_enable;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_read = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_read;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_write = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_write;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_writedata = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_byteenable = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_burstcount = i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4_aunroll_x_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;

endmodule
