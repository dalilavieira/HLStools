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

// SystemVerilog created from claswp_bb_B10_stall_region
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_bb_B10_stall_region (
    input wire [63:0] in_lm5619_claswp_avm_readdata,
    input wire [0:0] in_lm5619_claswp_avm_writeack,
    input wire [0:0] in_lm5619_claswp_avm_waitrequest,
    input wire [0:0] in_lm5619_claswp_avm_readdatavalid,
    output wire [63:0] out_lm5619_claswp_avm_address,
    output wire [0:0] out_lm5619_claswp_avm_enable,
    output wire [0:0] out_lm5619_claswp_avm_read,
    output wire [0:0] out_lm5619_claswp_avm_write,
    output wire [63:0] out_lm5619_claswp_avm_writedata,
    output wire [7:0] out_lm5619_claswp_avm_byteenable,
    output wire [0:0] out_lm5619_claswp_avm_burstcount,
    output wire [0:0] out_feedback_out_13,
    output wire [0:0] out_feedback_out_14,
    output wire [0:0] out_feedback_out_15,
    output wire [0:0] out_feedback_out_16,
    output wire [0:0] out_feedback_out_17,
    output wire [0:0] out_feedback_out_18,
    output wire [31:0] out_feedback_out_8,
    input wire [0:0] in_feedback_stall_in_13,
    input wire [0:0] in_feedback_stall_in_14,
    input wire [0:0] in_feedback_stall_in_15,
    input wire [0:0] in_feedback_stall_in_16,
    input wire [0:0] in_feedback_stall_in_17,
    input wire [0:0] in_feedback_stall_in_18,
    input wire [0:0] in_feedback_stall_in_8,
    output wire [0:0] out_feedback_valid_out_13,
    output wire [0:0] out_feedback_valid_out_14,
    output wire [0:0] out_feedback_valid_out_15,
    output wire [0:0] out_feedback_valid_out_16,
    output wire [0:0] out_feedback_valid_out_17,
    output wire [0:0] out_feedback_valid_out_18,
    output wire [0:0] out_feedback_valid_out_8,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316,
    input wire [0:0] in_lm3213_toi1_intcast561,
    input wire [0:0] in_memdep_1024,
    input wire [0:0] in_memdep_1195,
    input wire [0:0] in_memdep_712,
    input wire [0:0] in_memdep_873,
    input wire [0:0] in_notcmp193223_pop338,
    input wire [0:0] in_phi_decision209_xor_and_i0222_pop327,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_notcmp193223_pop338,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [32:0] i_add114_claswp9_a;
    wire [32:0] i_add114_claswp9_b;
    logic [32:0] i_add114_claswp9_o;
    wire [32:0] i_add114_claswp9_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm5619_claswp6_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm5619_claswp6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm5619_claswp6_out_o_valid;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_valid_out;
    wire [31:0] bgTrunc_i_add114_claswp9_sel_x_b;
    wire [0:0] i_lm5619_toi1_intcast_claswp7_sel_x_b;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm5619_claswp6_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm5619_claswp6_b;
    wire [38:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [33:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm5619_claswp6_V2;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_backStall;
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
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;


    // SE_out_i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3(STALLENABLE,111)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_wireValid = i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    claswp_i_llvm_fpga_push_i1_memdep_phi88_push15_0 thei_llvm_fpga_push_i1_memdep_phi88_push15_claswp3 (
        .in_data_in(bubble_select_stall_entry_g),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_phi_decision209_xor_and_i0222_pop327(bubble_select_stall_entry_i),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4(STALLENABLE,109)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_wireValid = i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4(BLACKBOX,35)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    claswp_i_llvm_fpga_push_i1_memdep_phi72_push13_0 thei_llvm_fpga_push_i1_memdep_phi72_push13_claswp4 (
        .in_data_in(bubble_select_stall_entry_f),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_phi_decision209_xor_and_i0222_pop327(bubble_select_stall_entry_i),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5(STALLENABLE,107)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_wireValid = i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    claswp_i_llvm_fpga_push_i1_memdep_phi57_push10_0 thei_llvm_fpga_push_i1_memdep_phi57_push10_claswp5 (
        .in_data_in(bubble_select_stall_entry_c),
        .in_feedback_stall_in_14(in_feedback_stall_in_14),
        .in_phi_decision209_xor_and_i0222_pop327(bubble_select_stall_entry_i),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1(STALLENABLE,103)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_wireValid = i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1(BLACKBOX,32)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    claswp_i_llvm_fpga_push_i1_memdep_phi120_push17_0 thei_llvm_fpga_push_i1_memdep_phi120_push17_claswp1 (
        .in_data_in(bubble_select_stall_entry_e),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_phi_decision209_xor_and_i0222_pop327(bubble_select_stall_entry_i),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2(STALLENABLE,101)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_wireValid = i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    claswp_i_llvm_fpga_push_i1_memdep_phi103_push16_0 thei_llvm_fpga_push_i1_memdep_phi103_push16_claswp2 (
        .in_data_in(bubble_select_stall_entry_d),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_phi_decision209_xor_and_i0222_pop327(bubble_select_stall_entry_i),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,73)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_i, bubble_select_stall_entry_h, bubble_select_stall_entry_b};

    // SE_out_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10(STALLENABLE,113)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_wireValid = i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_valid_out;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,93)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,94)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[33:0]);

    // sel_for_coalesced_delay_0(BITSELECT,74)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);

    // bubble_join_i_llvm_fpga_mem_lm5619_claswp6(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_mem_lm5619_claswp6_q = i_llvm_fpga_mem_lm5619_claswp6_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm5619_claswp6(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_mem_lm5619_claswp6_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm5619_claswp6_q[31:0]);

    // i_add114_claswp9(ADD,28)@32
    assign i_add114_claswp9_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_add114_claswp9_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm5619_claswp6_b};
    assign i_add114_claswp9_o = $unsigned(i_add114_claswp9_a) + $unsigned(i_add114_claswp9_b);
    assign i_add114_claswp9_q = i_add114_claswp9_o[32:0];

    // bgTrunc_i_add114_claswp9_sel_x(BITSELECT,64)@32
    assign bgTrunc_i_add114_claswp9_sel_x_b = i_add114_claswp9_q[31:0];

    // i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10(BLACKBOX,37)@32
    // in in_stall_in@20000000
    // out out_data_out@33
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@33
    claswp_i_llvm_fpga_push_i32_zz7_pip8typeA000000Zatic_1_push8_claswp0 thei_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10 (
        .in_data_in(bgTrunc_i_add114_claswp9_sel_x_b),
        .in_feedback_stall_in_8(in_feedback_stall_in_8),
        .in_phi_decision209_xor_and_i0222_pop327(sel_for_coalesced_delay_0_d),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10(STALLENABLE,112)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_V0 = SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_backStall = i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_and0 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_V0;
    assign SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_wireValid = SE_out_coalesced_delay_0_fifo_V1 & SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_lm5619_claswp6_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // coalesced_delay_0_fifo(STALLFIFO,75)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(34),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed7 & SE_stall_entry_or6);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0(BLACKBOX,29)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_0 thei_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0(STALLENABLE,97)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_backStall = i_llvm_fpga_mem_lm5619_claswp6_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_and0 = i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_wireValid = SE_stall_entry_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8(STALLENABLE,105)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_wireValid = i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_valid_out;

    // i_lm5619_toi1_intcast_claswp7_sel_x(BITSELECT,66)@32
    assign i_lm5619_toi1_intcast_claswp7_sel_x_b = bubble_select_i_llvm_fpga_mem_lm5619_claswp6_b[0:0];

    // i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8(BLACKBOX,33)@32
    // in in_stall_in@20000000
    // out out_data_out@33
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@33
    claswp_i_llvm_fpga_push_i1_memdep_phi136_push18_0 thei_llvm_fpga_push_i1_memdep_phi136_push18_claswp8 (
        .in_data_in(i_lm5619_toi1_intcast_claswp7_sel_x_b),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_phi_decision209_xor_and_i0222_pop327(sel_for_coalesced_delay_0_d),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm5619_claswp6_V1),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm5619_claswp6(STALLENABLE,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg0 <= SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg1 <= SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg2 <= SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_backStall) & SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid) | SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_stall_out) & SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid) | SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg1;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed2 = (~ (in_stall_in) & SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid) | SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_StallValid = SE_out_i_llvm_fpga_mem_lm5619_claswp6_backStall & SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg0 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_StallValid & SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg1 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_StallValid & SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed1;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_toReg2 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_StallValid & SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_or0 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_or1 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed1 & SE_out_i_llvm_fpga_mem_lm5619_claswp6_or0;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm5619_claswp6_consumed2 & SE_out_i_llvm_fpga_mem_lm5619_claswp6_or1);
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_backStall = SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_V0 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_V1 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg1);
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_V2 = SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm5619_claswp6_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_and0 = i_llvm_fpga_mem_lm5619_claswp6_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm5619_claswp6_wireValid = SE_out_coalesced_delay_0_fifo_V0 & SE_out_i_llvm_fpga_mem_lm5619_claswp6_and0;

    // bubble_join_stall_entry(BITJOIN,84)
    assign bubble_join_stall_entry_q = {in_phi_decision209_xor_and_i0222_pop327, in_notcmp193223_pop338, in_memdep_873, in_memdep_712, in_memdep_1195, in_memdep_1024, in_lm3213_toi1_intcast561, in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316};

    // bubble_select_stall_entry(BITSELECT,85)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[37:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[38:38]);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0(BITJOIN,77)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_q = i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0(BITSELECT,78)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_q[63:0]);

    // i_llvm_fpga_mem_lm5619_claswp6(BLACKBOX,30)@0
    // in in_i_stall@20000000
    // out out_lm5619_claswp_avm_address@20000000
    // out out_lm5619_claswp_avm_burstcount@20000000
    // out out_lm5619_claswp_avm_byteenable@20000000
    // out out_lm5619_claswp_avm_enable@20000000
    // out out_lm5619_claswp_avm_read@20000000
    // out out_lm5619_claswp_avm_write@20000000
    // out out_lm5619_claswp_avm_writedata@20000000
    // out out_o_readdata@32
    // out out_o_stall@20000000
    // out out_o_valid@32
    claswp_i_llvm_fpga_mem_lm5619_0 thei_llvm_fpga_mem_lm5619_claswp6 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_b),
        .in_i_predicate(bubble_select_stall_entry_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm5619_claswp6_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incx83143_claswp0_V0),
        .in_lm5619_claswp_avm_readdata(in_lm5619_claswp_avm_readdata),
        .in_lm5619_claswp_avm_readdatavalid(in_lm5619_claswp_avm_readdatavalid),
        .in_lm5619_claswp_avm_waitrequest(in_lm5619_claswp_avm_waitrequest),
        .in_lm5619_claswp_avm_writeack(in_lm5619_claswp_avm_writeack),
        .out_lm5619_claswp_avm_address(i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_address),
        .out_lm5619_claswp_avm_burstcount(i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_burstcount),
        .out_lm5619_claswp_avm_byteenable(i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_byteenable),
        .out_lm5619_claswp_avm_enable(i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_enable),
        .out_lm5619_claswp_avm_read(i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_read),
        .out_lm5619_claswp_avm_write(i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_write),
        .out_lm5619_claswp_avm_writedata(i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm5619_claswp6_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm5619_claswp6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm5619_claswp6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_lm5619_claswp_avm_address = i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_address;
    assign out_lm5619_claswp_avm_enable = i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_enable;
    assign out_lm5619_claswp_avm_read = i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_read;
    assign out_lm5619_claswp_avm_write = i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_write;
    assign out_lm5619_claswp_avm_writedata = i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_writedata;
    assign out_lm5619_claswp_avm_byteenable = i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_byteenable;
    assign out_lm5619_claswp_avm_burstcount = i_llvm_fpga_mem_lm5619_claswp6_out_lm5619_claswp_avm_burstcount;

    // feedback_out_13_sync(GPOUT,7)
    assign out_feedback_out_13 = i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_feedback_out_13;

    // feedback_out_14_sync(GPOUT,8)
    assign out_feedback_out_14 = i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_feedback_out_14;

    // feedback_out_15_sync(GPOUT,9)
    assign out_feedback_out_15 = i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_feedback_out_15;

    // feedback_out_16_sync(GPOUT,10)
    assign out_feedback_out_16 = i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_feedback_out_16;

    // feedback_out_17_sync(GPOUT,11)
    assign out_feedback_out_17 = i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_feedback_out_17;

    // feedback_out_18_sync(GPOUT,12)
    assign out_feedback_out_18 = i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_feedback_out_18;

    // feedback_out_8_sync(GPOUT,13)
    assign out_feedback_out_8 = i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_feedback_out_8;

    // feedback_valid_out_13_sync(GPOUT,21)
    assign out_feedback_valid_out_13 = i_llvm_fpga_push_i1_memdep_phi72_push13_claswp4_out_feedback_valid_out_13;

    // feedback_valid_out_14_sync(GPOUT,22)
    assign out_feedback_valid_out_14 = i_llvm_fpga_push_i1_memdep_phi57_push10_claswp5_out_feedback_valid_out_14;

    // feedback_valid_out_15_sync(GPOUT,23)
    assign out_feedback_valid_out_15 = i_llvm_fpga_push_i1_memdep_phi88_push15_claswp3_out_feedback_valid_out_15;

    // feedback_valid_out_16_sync(GPOUT,24)
    assign out_feedback_valid_out_16 = i_llvm_fpga_push_i1_memdep_phi103_push16_claswp2_out_feedback_valid_out_16;

    // feedback_valid_out_17_sync(GPOUT,25)
    assign out_feedback_valid_out_17 = i_llvm_fpga_push_i1_memdep_phi120_push17_claswp1_out_feedback_valid_out_17;

    // feedback_valid_out_18_sync(GPOUT,26)
    assign out_feedback_valid_out_18 = i_llvm_fpga_push_i1_memdep_phi136_push18_claswp8_out_feedback_valid_out_18;

    // feedback_valid_out_8_sync(GPOUT,27)
    assign out_feedback_valid_out_8 = i_llvm_fpga_push_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_push8_claswp10_out_feedback_valid_out_8;

    // sync_out(GPOUT,62)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,65)@32
    assign out_notcmp193223_pop338 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_lm5619_claswp6_V2;

endmodule
