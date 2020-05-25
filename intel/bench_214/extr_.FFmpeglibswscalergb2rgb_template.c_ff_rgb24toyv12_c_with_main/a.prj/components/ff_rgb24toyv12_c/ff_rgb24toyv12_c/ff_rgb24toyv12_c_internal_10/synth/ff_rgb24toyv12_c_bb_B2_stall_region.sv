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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B2_stall_region
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B2_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out,
    input wire [0:0] in_feedback_in_26,
    input wire [0:0] in_feedback_in_36,
    output wire [0:0] out_feedback_stall_out_26,
    output wire [0:0] out_feedback_stall_out_36,
    input wire [0:0] in_feedback_valid_in_26,
    input wire [0:0] in_feedback_valid_in_36,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1423,
    output wire [63:0] out_c0_exe2,
    output wire [63:0] out_c0_exe3,
    output wire [63:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [63:0] out_c0_exe8,
    output wire [63:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi126_pop27,
    output wire [0:0] out_memdep_phi18_pop15,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_valid_out;
    wire [0:0] ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_10_tpl;
    wire [386:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [63:0] sel_for_coalesced_delay_0_e;
    wire [63:0] sel_for_coalesced_delay_0_f;
    wire [63:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    reg [386:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_b;
    wire [387:0] bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_k;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V2;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,64)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,65)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,77)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ff_rgb24toyv12_c_B2_merge_reg_aunroll_x(BLACKBOX,40)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    ff_rgb24toyv12_c_B2_merge_reg theff_rgb24toyv12_c_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x(BITJOIN,68)
    assign bubble_join_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_q = ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x(BITSELECT,69)
    assign bubble_select_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x(STALLENABLE,80)
    // Valid signal propagation
    assign SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_V0 = SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_o_stall | ~ (SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_wireValid = ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3(STALLENABLE,76)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_and0 = i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_and1 = i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_valid_out & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_and1;

    // SE_coalesced_delay_0_0(STALLENABLE,85)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V2;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x(BITJOIN,71)
    assign bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q = {i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_10_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_9_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_8_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_7_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_6_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_5_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_4_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_3_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_2_tpl, i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x(BITSELECT,72)
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[191:128]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[255:192]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[256:256]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[257:257]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[258:258]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[322:259]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[386:323]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_q[387:387]);

    // i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3(BLACKBOX,13)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    ff_rgb24toyv12_c_i_llvm_fpga_pop_i1_memdep_phi18_pop15_0 thei_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_k),
        .in_feedback_in_26(in_feedback_in_26),
        .in_feedback_valid_in_26(in_feedback_valid_in_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4(BLACKBOX,12)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_36@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    ff_rgb24toyv12_c_i_llvm_fpga_pop_i1_memdep_phi126_pop27_0 thei_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_k),
        .in_feedback_in_36(in_feedback_in_36),
        .in_feedback_valid_in_36(in_feedback_valid_in_36),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_feedback_stall_out_36),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x(STALLENABLE,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x(BLACKBOX,41)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit422_0_tpl@6
    // out out_c0_exit422_1_tpl@6
    // out out_c0_exit422_2_tpl@6
    // out out_c0_exit422_3_tpl@6
    // out out_c0_exit422_4_tpl@6
    // out out_c0_exit422_5_tpl@6
    // out out_c0_exit422_6_tpl@6
    // out out_c0_exit422_7_tpl@6
    // out out_c0_exit422_8_tpl@6
    // out out_c0_exit422_9_tpl@6
    // out out_c0_exit422_10_tpl@6
    ff_rgb24toyv12_c_i_sfc_s_c0_in_for_cond9A000000Z19_ff_rgb24toyv12_c1 thei_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_backStall),
        .in_i_valid(SE_out_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ff_rgb24toyv12_c_B2_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit422_0_tpl(),
        .out_c0_exit422_1_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_1_tpl),
        .out_c0_exit422_2_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_2_tpl),
        .out_c0_exit422_3_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_3_tpl),
        .out_c0_exit422_4_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_4_tpl),
        .out_c0_exit422_5_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_5_tpl),
        .out_c0_exit422_6_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_6_tpl),
        .out_c0_exit422_7_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_7_tpl),
        .out_c0_exit422_8_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_8_tpl),
        .out_c0_exit422_9_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_9_tpl),
        .out_c0_exit422_10_tpl(i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_c0_exit422_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out = i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out = i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out;

    // feedback_stall_out_26_sync(GPOUT,8)
    assign out_feedback_stall_out_26 = i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_feedback_stall_out_26;

    // feedback_stall_out_36_sync(GPOUT,9)
    assign out_feedback_stall_out_36 = i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_feedback_stall_out_36;

    // pipeline_valid_out_sync(GPOUT,23)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_q = i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4(BITJOIN,56)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_q = i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4(BITSELECT,57)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,52)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond9_preheader_ff_rgb24toyv12_cs_c0_enter42019_ff_rgb24toyv12_c1_aunroll_x_b};

    // coalesced_delay_0_0(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(387'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,53)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[255:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[319:256]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[383:320]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[384:384]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[385:385]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[386:386]);

    // dupName_0_sync_out_x(GPOUT,39)@7
    assign out_c0_exe1423 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_g;
    assign out_memdep_phi126_pop27 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi126_pop27_ff_rgb24toyv12_c4_b;
    assign out_memdep_phi18_pop15 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop15_ff_rgb24toyv12_c3_V0;

endmodule
