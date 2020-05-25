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

// SystemVerilog created from glfwChooseFBConfig_i_sfc_logic_s_c0_in_fA000000Z_glfwchoosefbconfig0
// SystemVerilog created on Sun May 24 22:33:25 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_sfc_logic_s_c0_in_fA000000Z_glfwchoosefbconfig0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_20_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_3_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_4_tpl,
    output wire [0:0] out_c0_exi22_0_tpl,
    output wire [0:0] out_c0_exi22_1_tpl,
    output wire [0:0] out_c0_exi22_2_tpl,
    output wire [63:0] out_c0_exi22_3_tpl,
    output wire [63:0] out_c0_exi22_4_tpl,
    output wire [0:0] out_c0_exi22_5_tpl,
    output wire [63:0] out_c0_exi22_6_tpl,
    output wire [63:0] out_c0_exi22_7_tpl,
    output wire [63:0] out_c0_exi22_8_tpl,
    output wire [63:0] out_c0_exi22_9_tpl,
    output wire [63:0] out_c0_exi22_10_tpl,
    output wire [63:0] out_c0_exi22_11_tpl,
    output wire [63:0] out_c0_exi22_12_tpl,
    output wire [63:0] out_c0_exi22_13_tpl,
    output wire [63:0] out_c0_exi22_14_tpl,
    output wire [63:0] out_c0_exi22_15_tpl,
    output wire [63:0] out_c0_exi22_16_tpl,
    output wire [63:0] out_c0_exi22_17_tpl,
    output wire [63:0] out_c0_exi22_18_tpl,
    output wire [63:0] out_c0_exi22_19_tpl,
    output wire [63:0] out_c0_exi22_20_tpl,
    output wire [0:0] out_c0_exi22_21_tpl,
    output wire [0:0] out_c0_exi22_22_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_glfwChooseFBConfig1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_060_q;
    wire [31:0] c_i32_161_q;
    wire [32:0] c_i33_163_q;
    wire [32:0] c_i33_undef59_q;
    wire [3:0] c_i4_756_q;
    wire [3:0] i_cleanups_shl_glfwchoosefbconfig5_vt_join_q;
    wire [2:0] i_cleanups_shl_glfwchoosefbconfig5_vt_select_3_b;
    wire [0:0] i_cmp1_not_glfwchoosefbconfig16_q;
    wire [0:0] i_first_cleanup_xor_or_glfwchoosefbconfig25_q;
    wire [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig50_a;
    wire [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig50_b;
    logic [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig50_o;
    wire [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig50_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q;
    wire [63:0] i_idx_ext_glfwchoosefbconfig22_vt_join_q;
    wire [31:0] i_idx_ext_glfwchoosefbconfig22_vt_select_31_b;
    wire [32:0] i_inc194_glfwchoosefbconfig41_a;
    wire [32:0] i_inc194_glfwchoosefbconfig41_b;
    logic [32:0] i_inc194_glfwchoosefbconfig41_o;
    wire [32:0] i_inc194_glfwchoosefbconfig41_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp13557_glfwchoosefbconfig17_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp159_glfwchoosefbconfig15_out_dest_data_out_3_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig12_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21_out_feedback_stall_out_11;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_valid_out_12;
    wire [0:0] i_masked_glfwchoosefbconfig52_q;
    wire [0:0] i_next_cleanups_glfwchoosefbconfig48_s;
    reg [3:0] i_next_cleanups_glfwchoosefbconfig48_q;
    wire [3:0] i_next_initerations_glfwchoosefbconfig8_vt_join_q;
    wire [2:0] i_next_initerations_glfwchoosefbconfig8_vt_select_2_b;
    wire [0:0] i_notcmp_glfwchoosefbconfig45_q;
    wire [0:0] i_or_glfwchoosefbconfig47_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig18_q;
    wire [0:0] i_xor_glfwchoosefbconfig4_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig50_sel_x_b;
    wire [31:0] bgTrunc_i_inc194_glfwchoosefbconfig41_sel_x_b;
    wire [64:0] i_accumalphabits153_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumalphabits153_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumalphabits153_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumalphabits153_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumalphabits153_glfwchoosefbconfig0_c_i64_562_x_q;
    wire [64:0] i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumalphabits153_glfwchoosefbconfig0_mult_extender_x_q;
    wire [56:0] i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q;
    wire [63:0] i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumalphabits153_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumalphabits153_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_accumbluebits142_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumbluebits142_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumbluebits142_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumbluebits142_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumbluebits142_glfwchoosefbconfig0_c_i64_522_x_q;
    wire [64:0] i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumbluebits142_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumbluebits142_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumbluebits142_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_accumgreenbits131_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumgreenbits131_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumgreenbits131_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumgreenbits131_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumgreenbits131_glfwchoosefbconfig0_c_i64_482_x_q;
    wire [64:0] i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumgreenbits131_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_accumredbits120_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumredbits120_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumredbits120_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumredbits120_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumredbits120_glfwchoosefbconfig0_c_i64_442_x_q;
    wire [64:0] i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumredbits120_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumredbits120_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumredbits120_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_add_ptr_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_add_ptr_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_add_ptr_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_add_ptr_glfwchoosefbconfig0_add_x_q;
    wire [127:0] i_add_ptr_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_alphabits10_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_alphabits10_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_alphabits10_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_alphabits10_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_alphabits10_glfwchoosefbconfig0_c_i64_82_x_q;
    wire [64:0] i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_alphabits10_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_alphabits10_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_alphabits10_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_auxbuffers30_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_auxbuffers30_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_auxbuffers30_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_auxbuffers30_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_auxbuffers30_glfwchoosefbconfig0_c_i64_202_x_q;
    wire [64:0] i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_auxbuffers30_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_auxbuffers30_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_auxbuffers30_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_bluebits73_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_bluebits73_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_bluebits73_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_bluebits73_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_bluebits73_glfwchoosefbconfig0_c_i64_402_x_q;
    wire [64:0] i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_bluebits73_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_bluebits73_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_bluebits73_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_depthbits16_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_depthbits16_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_depthbits16_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_depthbits16_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_depthbits16_glfwchoosefbconfig0_c_i64_122_x_q;
    wire [64:0] i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_depthbits16_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_depthbits16_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_depthbits16_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_doublebuffer4_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_doublebuffer4_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_doublebuffer4_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_doublebuffer4_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_doublebuffer4_glfwchoosefbconfig0_c_i64_42_x_q;
    wire [64:0] i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_doublebuffer4_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_doublebuffer4_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_doublebuffer4_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_glfwchoosefbconfig3_sel_x_b;
    wire [64:0] i_greenbits62_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_greenbits62_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_greenbits62_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_greenbits62_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_greenbits62_glfwchoosefbconfig0_c_i64_362_x_q;
    wire [64:0] i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_greenbits62_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_greenbits62_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_greenbits62_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_idx_ext_glfwchoosefbconfig22_sel_x_b;
    wire [0:0] i_last_initeration_glfwchoosefbconfig10_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [64:0] i_redbits52_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_redbits52_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_redbits52_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_redbits52_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_redbits52_glfwchoosefbconfig0_c_i64_322_x_q;
    wire [64:0] i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_redbits52_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_redbits52_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_redbits52_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_samples39_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_samples39_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_samples39_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_samples39_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_samples39_glfwchoosefbconfig0_c_i64_242_x_q;
    wire [64:0] i_samples39_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_samples39_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_samples39_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_samples39_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_samples39_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_samples39_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_samples39_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_samples39_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_srgb174_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_srgb174_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_srgb174_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_srgb174_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_srgb174_glfwchoosefbconfig0_c_i64_602_x_q;
    wire [64:0] i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_srgb174_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_srgb174_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_srgb174_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_stencilbits23_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_stencilbits23_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_stencilbits23_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_stencilbits23_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_stencilbits23_glfwchoosefbconfig0_c_i64_162_x_q;
    wire [64:0] i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_stencilbits23_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_stencilbits23_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_stencilbits23_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_transparent44_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_transparent44_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_transparent44_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_transparent44_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_transparent44_glfwchoosefbconfig0_c_i64_282_x_q;
    wire [64:0] i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_transparent44_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_transparent44_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_transparent44_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_glfwchoosefbconfig43_cmp_nsign_q;
    wire [35:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid478_i_cleanups_shl_glfwchoosefbconfig0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid478_i_cleanups_shl_glfwchoosefbconfig0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid479_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q;
    wire [0:0] leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s;
    reg [3:0] leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q;
    wire [35:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid539_i_next_initerations_glfwchoosefbconfig0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid541_i_next_initerations_glfwchoosefbconfig0_shift_x_q;
    wire [0:0] rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_s;
    reg [3:0] rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_q;
    wire [35:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [60:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [42:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [42:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [70:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [71:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [15:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_accumbluebits142_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_accumredbits120_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_bluebits73_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_greenbits62_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_redbits52_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_redbits52_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_redbits52_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_redbits52_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_redbits52_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_redbits52_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_redbits52_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_redbits52_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_srgb174_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_srgb174_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_srgb174_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_srgb174_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_srgb174_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_srgb174_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_srgb174_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_srgb174_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [15:0] i_transparent44_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [15:0] i_transparent44_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [23:0] i_transparent44_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [23:0] i_transparent44_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [23:0] i_transparent44_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [23:0] i_transparent44_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [23:0] i_transparent44_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [23:0] i_transparent44_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [9:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together81_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together81_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together81_aunroll_x_in_i_valid_2_q;
    reg [63:0] redist4_i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist6_i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist8_i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist9_i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist12_i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist16_i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist17_i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist18_i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist19_i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,721)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist2_sync_together81_aunroll_x_in_i_valid_1(DELAY,701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together81_aunroll_x_in_i_valid_2(DELAY,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together81_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together81_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together81_aunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1(DELAY,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out);
        end
    end

    // redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2(DELAY,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid478_i_cleanups_shl_glfwchoosefbconfig0_shift_x(BITSELECT,477)@3
    assign leftShiftStage0Idx1Rng1_uid478_i_cleanups_shl_glfwchoosefbconfig0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid478_i_cleanups_shl_glfwchoosefbconfig0_shift_x_b = leftShiftStage0Idx1Rng1_uid478_i_cleanups_shl_glfwchoosefbconfig0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid479_i_cleanups_shl_glfwchoosefbconfig0_shift_x(BITJOIN,478)@3
    assign leftShiftStage0Idx1_uid479_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = {leftShiftStage0Idx1Rng1_uid478_i_cleanups_shl_glfwchoosefbconfig0_shift_x_b, GND_q};

    // leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x(MUX,480)@3
    assign leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out or leftShiftStage0Idx1_uid479_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s)
            1'b0 : leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out;
            1'b1 : leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = leftShiftStage0Idx1_uid479_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q;
            default : leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_glfwchoosefbconfig5_vt_select_3(BITSELECT,17)@3
    assign i_cleanups_shl_glfwchoosefbconfig5_vt_select_3_b = leftShiftStage0_uid481_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q[3:1];

    // i_cleanups_shl_glfwchoosefbconfig5_vt_join(BITJOIN,16)@3
    assign i_cleanups_shl_glfwchoosefbconfig5_vt_join_q = {i_cleanups_shl_glfwchoosefbconfig5_vt_select_3_b, GND_q};

    // i_xor_glfwchoosefbconfig4(LOGICAL,52)@3
    assign i_xor_glfwchoosefbconfig4_q = i_first_cleanup_glfwchoosefbconfig3_sel_x_b ^ VCC_q;

    // i_notcmp_glfwchoosefbconfig45(LOGICAL,49)@3
    assign i_notcmp_glfwchoosefbconfig45_q = i_exitcond_glfwchoosefbconfig43_cmp_nsign_q ^ VCC_q;

    // i_or_glfwchoosefbconfig47(LOGICAL,50)@3
    assign i_or_glfwchoosefbconfig47_q = i_notcmp_glfwchoosefbconfig45_q | i_xor_glfwchoosefbconfig4_q;

    // i_next_cleanups_glfwchoosefbconfig48(MUX,45)@3
    assign i_next_cleanups_glfwchoosefbconfig48_s = i_or_glfwchoosefbconfig47_q;
    always @(i_next_cleanups_glfwchoosefbconfig48_s or i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out or i_cleanups_shl_glfwchoosefbconfig5_vt_join_q)
    begin
        unique case (i_next_cleanups_glfwchoosefbconfig48_s)
            1'b0 : i_next_cleanups_glfwchoosefbconfig48_q = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out;
            1'b1 : i_next_cleanups_glfwchoosefbconfig48_q = i_cleanups_shl_glfwchoosefbconfig5_vt_join_q;
            default : i_next_cleanups_glfwchoosefbconfig48_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49(BLACKBOX,42)@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i4_cA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49 (
        .in_data_in(i_next_cleanups_glfwchoosefbconfig48_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_feedback_stall_out_13),
        .in_keep_going(redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together81_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together81_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together81_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together81_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together81_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_756(CONSTANT,11)
    assign c_i4_756_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2(BLACKBOX,36)@3
    // out out_feedback_stall_out_13@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i4_clA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2 (
        .in_data_in(c_i4_756_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig49_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together81_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_glfwchoosefbconfig3_sel_x(BITSELECT,217)@3
    assign i_first_cleanup_glfwchoosefbconfig3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig12(BLACKBOX,32)@3
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000044Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig12 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together81_aunroll_x_in_i_valid_2_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig12_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_163(CONSTANT,8)
    assign c_i33_163_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_glfwchoosefbconfig50(ADD,22)@3
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig50_a = {1'b0, i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q};
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig50_b = {1'b0, c_i33_163_q};
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig50_o = $unsigned(i_fpga_indvars_iv_next_glfwchoosefbconfig50_a) + $unsigned(i_fpga_indvars_iv_next_glfwchoosefbconfig50_b);
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig50_q = i_fpga_indvars_iv_next_glfwchoosefbconfig50_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig50_sel_x(BITSELECT,60)@3
    assign bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig50_sel_x_b = i_fpga_indvars_iv_next_glfwchoosefbconfig50_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51(BLACKBOX,41)@3
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i33_A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig50_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_feedback_stall_out_6),
        .in_keep_going(redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together81_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef59(CONSTANT,9)
    assign c_i33_undef59_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13(BLACKBOX,35)@3
    // out out_feedback_stall_out_6@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i33_fA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13 (
        .in_data_in(c_i33_undef59_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig51_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together81_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14(MUX,23)@3
    assign i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s = redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig12_out_dest_data_out_20_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig12_out_dest_data_out_20_0;
            default : i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q = 33'b0;
        endcase
    end

    // i_exitcond_glfwchoosefbconfig43_cmp_nsign(LOGICAL,329)@3
    assign i_exitcond_glfwchoosefbconfig43_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q[32:32]));

    // i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46(BLACKBOX,39)@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i1_nA000001Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46 (
        .in_data_in(i_exitcond_glfwchoosefbconfig43_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_glfwchoosefbconfig3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together81_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,315)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid539_i_next_initerations_glfwchoosefbconfig0_shift_x(BITSELECT,538)@2
    assign rightShiftStage0Idx1Rng1_uid539_i_next_initerations_glfwchoosefbconfig0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid541_i_next_initerations_glfwchoosefbconfig0_shift_x(BITJOIN,540)@2
    assign rightShiftStage0Idx1_uid541_i_next_initerations_glfwchoosefbconfig0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid539_i_next_initerations_glfwchoosefbconfig0_shift_x_b};

    // valid_fanout_reg1(REG,313)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,314)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9(BLACKBOX,43)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i4_iA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9 (
        .in_data_in(i_next_initerations_glfwchoosefbconfig8_vt_join_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_feedback_stall_out_12),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7(BLACKBOX,37)@2
    // out out_feedback_stall_out_12@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i4_inA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7 (
        .in_data_in(c_i4_756_q),
        .in_dir(redist0_sync_together81_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x(MUX,542)@2
    assign rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out or rightShiftStage0Idx1_uid541_i_next_initerations_glfwchoosefbconfig0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_s)
            1'b0 : rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out;
            1'b1 : rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_q = rightShiftStage0Idx1_uid541_i_next_initerations_glfwchoosefbconfig0_shift_x_q;
            default : rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_glfwchoosefbconfig8_vt_select_2(BITSELECT,48)@2
    assign i_next_initerations_glfwchoosefbconfig8_vt_select_2_b = rightShiftStage0_uid543_i_next_initerations_glfwchoosefbconfig0_shift_x_q[2:0];

    // i_next_initerations_glfwchoosefbconfig8_vt_join(BITJOIN,47)@2
    assign i_next_initerations_glfwchoosefbconfig8_vt_join_q = {GND_q, i_next_initerations_glfwchoosefbconfig8_vt_select_2_b};

    // i_last_initeration_glfwchoosefbconfig10_sel_x(BITSELECT,233)@2
    assign i_last_initeration_glfwchoosefbconfig10_sel_x_b = i_next_initerations_glfwchoosefbconfig8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11(BLACKBOX,38)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i1_lA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11 (
        .in_data_in(i_last_initeration_glfwchoosefbconfig10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_initeration_stall_out),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6(BLACKBOX,33)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_pipeline_A000001Z_glfwchoosefbconfig0 thei_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig46_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,55)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,312)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together81_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_masked_glfwchoosefbconfig52(LOGICAL,44)@3
    assign i_masked_glfwchoosefbconfig52_q = i_notcmp_glfwchoosefbconfig45_q & i_first_cleanup_glfwchoosefbconfig3_sel_x_b;

    // i_srgb174_glfwchoosefbconfig0_c_i64_602_x(CONSTANT,268)
    assign i_srgb174_glfwchoosefbconfig0_c_i64_602_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000111100);

    // i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x(CONSTANT,87)
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // c_i32_060(CONSTANT,6)
    assign c_i32_060_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg7(REG,319)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,320)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_161(CONSTANT,7)
    assign c_i32_161_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc194_glfwchoosefbconfig41(ADD,28)@2
    assign i_inc194_glfwchoosefbconfig41_a = {1'b0, i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21_out_data_out};
    assign i_inc194_glfwchoosefbconfig41_b = {1'b0, c_i32_161_q};
    assign i_inc194_glfwchoosefbconfig41_o = $unsigned(i_inc194_glfwchoosefbconfig41_a) + $unsigned(i_inc194_glfwchoosefbconfig41_b);
    assign i_inc194_glfwchoosefbconfig41_q = i_inc194_glfwchoosefbconfig41_o[32:0];

    // bgTrunc_i_inc194_glfwchoosefbconfig41_sel_x(BITSELECT,61)@2
    assign bgTrunc_i_inc194_glfwchoosefbconfig41_sel_x_b = i_inc194_glfwchoosefbconfig41_q[31:0];

    // i_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42(BLACKBOX,40)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42 (
        .in_data_in(bgTrunc_i_inc194_glfwchoosefbconfig41_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21_out_feedback_stall_out_11),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21(BLACKBOX,34)@2
    // out out_feedback_stall_out_11@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_iA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21 (
        .in_data_in(c_i32_060_q),
        .in_dir(redist0_sync_together81_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_i_0136_push11_glfwchoosefbconfig42_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idx_ext_glfwchoosefbconfig22_sel_x(BITSELECT,232)@2
    assign i_idx_ext_glfwchoosefbconfig22_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_0136_pop11_glfwchoosefbconfig21_out_data_out[31:0]};

    // i_idx_ext_glfwchoosefbconfig22_vt_select_31(BITSELECT,27)@2
    assign i_idx_ext_glfwchoosefbconfig22_vt_select_31_b = i_idx_ext_glfwchoosefbconfig22_sel_x_b[31:0];

    // i_idx_ext_glfwchoosefbconfig22_vt_join(BITJOIN,26)@2
    assign i_idx_ext_glfwchoosefbconfig22_vt_join_q = {c_i32_060_q, i_idx_ext_glfwchoosefbconfig22_vt_select_31_b};

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select(BITSELECT,698)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b = i_idx_ext_glfwchoosefbconfig22_vt_join_q[63:54];
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c = i_idx_ext_glfwchoosefbconfig22_vt_join_q[53:36];
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d = i_idx_ext_glfwchoosefbconfig22_vt_join_q[35:18];
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e = i_idx_ext_glfwchoosefbconfig22_vt_join_q[17:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,686)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_srgb174_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,595)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_srgb174_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,688)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_srgb174_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,594)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_srgb174_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,596)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_srgb174_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,687)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_srgb174_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,592)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_srgb174_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,689)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_srgb174_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_srgb174_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,593)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_srgb174_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_srgb174_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,597)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_srgb174_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_srgb174_glfwchoosefbconfig0_mult_extender_x(BITJOIN,276)@2
    assign i_srgb174_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_srgb174_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_srgb174_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,278)@2
    assign i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b = i_srgb174_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist6_i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg6(REG,318)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together81_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x(BLACKBOX,234)@3
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000045Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x (
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .in_intel_reserved_ffwd_0_0_3_tpl(in_intel_reserved_ffwd_0_0_3_tpl),
        .in_intel_reserved_ffwd_0_0_4_tpl(in_intel_reserved_ffwd_0_0_4_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_dest_data_out_0_0_2_tpl(),
        .out_dest_data_out_0_0_3_tpl(),
        .out_dest_data_out_0_0_4_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_srgb174_glfwchoosefbconfig0_add_x(ADD,267)@3
    assign i_srgb174_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_srgb174_glfwchoosefbconfig0_add_x_b = {1'b0, redist6_i_srgb174_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_srgb174_glfwchoosefbconfig0_add_x_o = $unsigned(i_srgb174_glfwchoosefbconfig0_add_x_a) + $unsigned(i_srgb174_glfwchoosefbconfig0_add_x_b);
    assign i_srgb174_glfwchoosefbconfig0_add_x_q = i_srgb174_glfwchoosefbconfig0_add_x_o[64:0];

    // i_srgb174_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,279)@3
    assign i_srgb174_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_srgb174_glfwchoosefbconfig0_add_x_q[63:0];

    // i_srgb174_glfwchoosefbconfig0_dupName_0_add_x(ADD,273)@3
    assign i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_srgb174_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_srgb174_glfwchoosefbconfig0_c_i64_602_x_q};
    assign i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_q = i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_srgb174_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,280)@3
    assign i_srgb174_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_srgb174_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumalphabits153_glfwchoosefbconfig0_c_i64_562_x(CONSTANT,78)
    assign i_accumalphabits153_glfwchoosefbconfig0_c_i64_562_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000111000);

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,634)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,345)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_accumalphabits153_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,636)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,344)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_accumalphabits153_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,346)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,635)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,342)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_accumalphabits153_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,637)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,343)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_accumalphabits153_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,347)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_accumalphabits153_glfwchoosefbconfig0_mult_extender_x(BITJOIN,86)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_accumalphabits153_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,88)@2
    assign i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b = i_accumalphabits153_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist19_i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumalphabits153_glfwchoosefbconfig0_add_x(ADD,77)@3
    assign i_accumalphabits153_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumalphabits153_glfwchoosefbconfig0_add_x_b = {1'b0, redist19_i_accumalphabits153_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumalphabits153_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumalphabits153_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumalphabits153_glfwchoosefbconfig0_add_x_b);
    assign i_accumalphabits153_glfwchoosefbconfig0_add_x_q = i_accumalphabits153_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumalphabits153_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,89)@3
    assign i_accumalphabits153_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumalphabits153_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x(ADD,83)@3
    assign i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumalphabits153_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumalphabits153_glfwchoosefbconfig0_c_i64_562_x_q};
    assign i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumalphabits153_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,90)@3
    assign i_accumalphabits153_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumalphabits153_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumbluebits142_glfwchoosefbconfig0_c_i64_522_x(CONSTANT,92)
    assign i_accumbluebits142_glfwchoosefbconfig0_c_i64_522_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000110100);

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,638)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,363)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_accumbluebits142_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,640)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,362)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_accumbluebits142_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,364)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,639)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,360)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_accumbluebits142_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,641)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,361)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_accumbluebits142_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,365)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_accumbluebits142_glfwchoosefbconfig0_mult_extender_x(BITJOIN,100)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_accumbluebits142_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,102)@2
    assign i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b = i_accumbluebits142_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist18_i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumbluebits142_glfwchoosefbconfig0_add_x(ADD,91)@3
    assign i_accumbluebits142_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumbluebits142_glfwchoosefbconfig0_add_x_b = {1'b0, redist18_i_accumbluebits142_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumbluebits142_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumbluebits142_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumbluebits142_glfwchoosefbconfig0_add_x_b);
    assign i_accumbluebits142_glfwchoosefbconfig0_add_x_q = i_accumbluebits142_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumbluebits142_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,103)@3
    assign i_accumbluebits142_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumbluebits142_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x(ADD,97)@3
    assign i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumbluebits142_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumbluebits142_glfwchoosefbconfig0_c_i64_522_x_q};
    assign i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumbluebits142_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,104)@3
    assign i_accumbluebits142_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumbluebits142_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_c_i64_482_x(CONSTANT,106)
    assign i_accumgreenbits131_glfwchoosefbconfig0_c_i64_482_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000110000);

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,642)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,381)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,644)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,380)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,382)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,643)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,378)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,645)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,379)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,383)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_mult_extender_x(BITJOIN,114)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_accumgreenbits131_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,116)@2
    assign i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b = i_accumgreenbits131_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist17_i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,716)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumgreenbits131_glfwchoosefbconfig0_add_x(ADD,105)@3
    assign i_accumgreenbits131_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumgreenbits131_glfwchoosefbconfig0_add_x_b = {1'b0, redist17_i_accumgreenbits131_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumgreenbits131_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumgreenbits131_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumgreenbits131_glfwchoosefbconfig0_add_x_b);
    assign i_accumgreenbits131_glfwchoosefbconfig0_add_x_q = i_accumgreenbits131_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,117)@3
    assign i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumgreenbits131_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x(ADD,111)@3
    assign i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumgreenbits131_glfwchoosefbconfig0_c_i64_482_x_q};
    assign i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumgreenbits131_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,118)@3
    assign i_accumgreenbits131_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumgreenbits131_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumredbits120_glfwchoosefbconfig0_c_i64_442_x(CONSTANT,120)
    assign i_accumredbits120_glfwchoosefbconfig0_c_i64_442_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000101100);

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,646)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,399)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_accumredbits120_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,648)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,398)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_accumredbits120_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,400)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,647)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,396)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_accumredbits120_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,649)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,397)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_accumredbits120_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,401)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_accumredbits120_glfwchoosefbconfig0_mult_extender_x(BITJOIN,128)@2
    assign i_accumredbits120_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_accumredbits120_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,130)@2
    assign i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b = i_accumredbits120_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist16_i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumredbits120_glfwchoosefbconfig0_add_x(ADD,119)@3
    assign i_accumredbits120_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumredbits120_glfwchoosefbconfig0_add_x_b = {1'b0, redist16_i_accumredbits120_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumredbits120_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumredbits120_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumredbits120_glfwchoosefbconfig0_add_x_b);
    assign i_accumredbits120_glfwchoosefbconfig0_add_x_q = i_accumredbits120_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumredbits120_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,131)@3
    assign i_accumredbits120_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumredbits120_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x(ADD,125)@3
    assign i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumredbits120_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumredbits120_glfwchoosefbconfig0_c_i64_442_x_q};
    assign i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumredbits120_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,132)@3
    assign i_accumredbits120_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumredbits120_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_bluebits73_glfwchoosefbconfig0_c_i64_402_x(CONSTANT,172)
    assign i_bluebits73_glfwchoosefbconfig0_c_i64_402_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000101000);

    // i_bluebits73_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,662)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_bluebits73_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,471)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_bluebits73_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,664)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_bluebits73_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,470)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_bluebits73_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,472)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_bluebits73_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,663)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_bluebits73_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,468)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_bluebits73_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,665)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_bluebits73_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,469)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_bluebits73_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_bluebits73_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,473)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_bluebits73_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_bluebits73_glfwchoosefbconfig0_mult_extender_x(BITJOIN,180)@2
    assign i_bluebits73_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_bluebits73_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_bluebits73_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,182)@2
    assign i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b = i_bluebits73_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist12_i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_bluebits73_glfwchoosefbconfig0_add_x(ADD,171)@3
    assign i_bluebits73_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_bluebits73_glfwchoosefbconfig0_add_x_b = {1'b0, redist12_i_bluebits73_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_bluebits73_glfwchoosefbconfig0_add_x_o = $unsigned(i_bluebits73_glfwchoosefbconfig0_add_x_a) + $unsigned(i_bluebits73_glfwchoosefbconfig0_add_x_b);
    assign i_bluebits73_glfwchoosefbconfig0_add_x_q = i_bluebits73_glfwchoosefbconfig0_add_x_o[64:0];

    // i_bluebits73_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,183)@3
    assign i_bluebits73_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_bluebits73_glfwchoosefbconfig0_add_x_q[63:0];

    // i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x(ADD,177)@3
    assign i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_bluebits73_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_bluebits73_glfwchoosefbconfig0_c_i64_402_x_q};
    assign i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_q = i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_bluebits73_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,184)@3
    assign i_bluebits73_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_bluebits73_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_greenbits62_glfwchoosefbconfig0_c_i64_362_x(CONSTANT,219)
    assign i_greenbits62_glfwchoosefbconfig0_c_i64_362_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000100100);

    // i_greenbits62_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,674)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_greenbits62_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,533)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_greenbits62_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,676)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_greenbits62_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,532)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_greenbits62_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,534)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_greenbits62_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,675)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_greenbits62_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,530)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_greenbits62_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,677)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_greenbits62_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,531)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_greenbits62_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_greenbits62_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,535)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_greenbits62_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_greenbits62_glfwchoosefbconfig0_mult_extender_x(BITJOIN,227)@2
    assign i_greenbits62_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_greenbits62_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_greenbits62_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,229)@2
    assign i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b = i_greenbits62_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist9_i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_greenbits62_glfwchoosefbconfig0_add_x(ADD,218)@3
    assign i_greenbits62_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_greenbits62_glfwchoosefbconfig0_add_x_b = {1'b0, redist9_i_greenbits62_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_greenbits62_glfwchoosefbconfig0_add_x_o = $unsigned(i_greenbits62_glfwchoosefbconfig0_add_x_a) + $unsigned(i_greenbits62_glfwchoosefbconfig0_add_x_b);
    assign i_greenbits62_glfwchoosefbconfig0_add_x_q = i_greenbits62_glfwchoosefbconfig0_add_x_o[64:0];

    // i_greenbits62_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,230)@3
    assign i_greenbits62_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_greenbits62_glfwchoosefbconfig0_add_x_q[63:0];

    // i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x(ADD,224)@3
    assign i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_greenbits62_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_greenbits62_glfwchoosefbconfig0_c_i64_362_x_q};
    assign i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_q = i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_greenbits62_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,231)@3
    assign i_greenbits62_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_greenbits62_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_redbits52_glfwchoosefbconfig0_c_i64_322_x(CONSTANT,240)
    assign i_redbits52_glfwchoosefbconfig0_c_i64_322_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000100000);

    // i_redbits52_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,678)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_redbits52_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,559)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_redbits52_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_redbits52_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,680)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_redbits52_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,558)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_redbits52_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,560)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_redbits52_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,679)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_redbits52_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,556)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_redbits52_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_redbits52_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,681)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_redbits52_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_redbits52_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,557)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_redbits52_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_redbits52_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,561)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_redbits52_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_redbits52_glfwchoosefbconfig0_mult_extender_x(BITJOIN,248)@2
    assign i_redbits52_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_redbits52_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_redbits52_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,250)@2
    assign i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b = i_redbits52_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist8_i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_redbits52_glfwchoosefbconfig0_add_x(ADD,239)@3
    assign i_redbits52_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_redbits52_glfwchoosefbconfig0_add_x_b = {1'b0, redist8_i_redbits52_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_redbits52_glfwchoosefbconfig0_add_x_o = $unsigned(i_redbits52_glfwchoosefbconfig0_add_x_a) + $unsigned(i_redbits52_glfwchoosefbconfig0_add_x_b);
    assign i_redbits52_glfwchoosefbconfig0_add_x_q = i_redbits52_glfwchoosefbconfig0_add_x_o[64:0];

    // i_redbits52_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,251)@3
    assign i_redbits52_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_redbits52_glfwchoosefbconfig0_add_x_q[63:0];

    // i_redbits52_glfwchoosefbconfig0_dupName_0_add_x(ADD,245)@3
    assign i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_redbits52_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_redbits52_glfwchoosefbconfig0_c_i64_322_x_q};
    assign i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_q = i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_redbits52_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,252)@3
    assign i_redbits52_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_redbits52_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_transparent44_glfwchoosefbconfig0_c_i64_282_x(CONSTANT,296)
    assign i_transparent44_glfwchoosefbconfig0_c_i64_282_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000011100);

    // i_transparent44_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,694)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_transparent44_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,631)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_transparent44_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_transparent44_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,696)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_transparent44_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,630)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_transparent44_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,632)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_transparent44_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,695)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_transparent44_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,628)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_transparent44_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_transparent44_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,697)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_transparent44_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_transparent44_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,629)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_transparent44_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_transparent44_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,633)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_transparent44_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_transparent44_glfwchoosefbconfig0_mult_extender_x(BITJOIN,304)@2
    assign i_transparent44_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_transparent44_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_transparent44_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,306)@2
    assign i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b = i_transparent44_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist4_i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_transparent44_glfwchoosefbconfig0_add_x(ADD,295)@3
    assign i_transparent44_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_transparent44_glfwchoosefbconfig0_add_x_b = {1'b0, redist4_i_transparent44_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_transparent44_glfwchoosefbconfig0_add_x_o = $unsigned(i_transparent44_glfwchoosefbconfig0_add_x_a) + $unsigned(i_transparent44_glfwchoosefbconfig0_add_x_b);
    assign i_transparent44_glfwchoosefbconfig0_add_x_q = i_transparent44_glfwchoosefbconfig0_add_x_o[64:0];

    // i_transparent44_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,307)@3
    assign i_transparent44_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_transparent44_glfwchoosefbconfig0_add_x_q[63:0];

    // i_transparent44_glfwchoosefbconfig0_dupName_0_add_x(ADD,301)@3
    assign i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_transparent44_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_transparent44_glfwchoosefbconfig0_c_i64_282_x_q};
    assign i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_q = i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_transparent44_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,308)@3
    assign i_transparent44_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_transparent44_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_samples39_glfwchoosefbconfig0_c_i64_242_x(CONSTANT,254)
    assign i_samples39_glfwchoosefbconfig0_c_i64_242_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000011000);

    // i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,682)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,577)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,684)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,576)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,578)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,683)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,574)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,685)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,575)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,579)@2
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_samples39_glfwchoosefbconfig0_mult_extender_x(BITJOIN,262)@2
    assign i_samples39_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_samples39_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,264)@2
    assign i_samples39_glfwchoosefbconfig0_trunc_sel_x_b = i_samples39_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_samples39_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_samples39_glfwchoosefbconfig0_add_x(ADD,253)@3
    assign i_samples39_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_samples39_glfwchoosefbconfig0_add_x_b = {1'b0, redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_samples39_glfwchoosefbconfig0_add_x_o = $unsigned(i_samples39_glfwchoosefbconfig0_add_x_a) + $unsigned(i_samples39_glfwchoosefbconfig0_add_x_b);
    assign i_samples39_glfwchoosefbconfig0_add_x_q = i_samples39_glfwchoosefbconfig0_add_x_o[64:0];

    // i_samples39_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,265)@3
    assign i_samples39_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_samples39_glfwchoosefbconfig0_add_x_q[63:0];

    // i_samples39_glfwchoosefbconfig0_dupName_0_add_x(ADD,259)@3
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_samples39_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_samples39_glfwchoosefbconfig0_c_i64_242_x_q};
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_samples39_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_samples39_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_q = i_samples39_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_samples39_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,266)@3
    assign i_samples39_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_samples39_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_auxbuffers30_glfwchoosefbconfig0_c_i64_202_x(CONSTANT,158)
    assign i_auxbuffers30_glfwchoosefbconfig0_c_i64_202_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000010100);

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,658)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,453)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,660)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,452)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,454)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,659)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,450)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,661)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,451)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,455)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_extender_x(BITJOIN,166)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,168)@2
    assign i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b = i_auxbuffers30_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_auxbuffers30_glfwchoosefbconfig0_add_x(ADD,157)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_b = {1'b0, redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_add_x_a) + $unsigned(i_auxbuffers30_glfwchoosefbconfig0_add_x_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_q = i_auxbuffers30_glfwchoosefbconfig0_add_x_o[64:0];

    // i_auxbuffers30_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,169)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_auxbuffers30_glfwchoosefbconfig0_add_x_q[63:0];

    // i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x(ADD,163)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_c_i64_202_x_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_q = i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_auxbuffers30_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,170)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_stencilbits23_glfwchoosefbconfig0_c_i64_162_x(CONSTANT,282)
    assign i_stencilbits23_glfwchoosefbconfig0_c_i64_162_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000010000);

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,690)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,613)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,692)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,612)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,614)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,691)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,610)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,693)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,611)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,615)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_extender_x(BITJOIN,290)@2
    assign i_stencilbits23_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,292)@2
    assign i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b = i_stencilbits23_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_stencilbits23_glfwchoosefbconfig0_add_x(ADD,281)@3
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_b = {1'b0, redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_add_x_a) + $unsigned(i_stencilbits23_glfwchoosefbconfig0_add_x_b);
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_q = i_stencilbits23_glfwchoosefbconfig0_add_x_o[64:0];

    // i_stencilbits23_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,293)@3
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_stencilbits23_glfwchoosefbconfig0_add_x_q[63:0];

    // i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x(ADD,287)@3
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_stencilbits23_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_stencilbits23_glfwchoosefbconfig0_c_i64_162_x_q};
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_q = i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_stencilbits23_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,294)@3
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_depthbits16_glfwchoosefbconfig0_c_i64_122_x(CONSTANT,190)
    assign i_depthbits16_glfwchoosefbconfig0_c_i64_122_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001100);

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,666)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,497)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,668)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,496)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,498)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,667)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,494)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,669)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,495)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,499)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_extender_x(BITJOIN,198)@2
    assign i_depthbits16_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_depthbits16_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,200)@2
    assign i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b = i_depthbits16_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_depthbits16_glfwchoosefbconfig0_add_x(ADD,189)@3
    assign i_depthbits16_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_depthbits16_glfwchoosefbconfig0_add_x_b = {1'b0, redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_depthbits16_glfwchoosefbconfig0_add_x_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_add_x_a) + $unsigned(i_depthbits16_glfwchoosefbconfig0_add_x_b);
    assign i_depthbits16_glfwchoosefbconfig0_add_x_q = i_depthbits16_glfwchoosefbconfig0_add_x_o[64:0];

    // i_depthbits16_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,201)@3
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_depthbits16_glfwchoosefbconfig0_add_x_q[63:0];

    // i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x(ADD,195)@3
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_depthbits16_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_depthbits16_glfwchoosefbconfig0_c_i64_122_x_q};
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_q = i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_depthbits16_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,202)@3
    assign i_depthbits16_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_alphabits10_glfwchoosefbconfig0_c_i64_82_x(CONSTANT,145)
    assign i_alphabits10_glfwchoosefbconfig0_c_i64_82_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001000);

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,654)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,435)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,656)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,434)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,436)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,655)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,432)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,657)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,433)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,437)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_extender_x(BITJOIN,152)@2
    assign i_alphabits10_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_alphabits10_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,154)@2
    assign i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b = i_alphabits10_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,713)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_alphabits10_glfwchoosefbconfig0_add_x(ADD,143)@3
    assign i_alphabits10_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_alphabits10_glfwchoosefbconfig0_add_x_b = {1'b0, redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_alphabits10_glfwchoosefbconfig0_add_x_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_add_x_a) + $unsigned(i_alphabits10_glfwchoosefbconfig0_add_x_b);
    assign i_alphabits10_glfwchoosefbconfig0_add_x_q = i_alphabits10_glfwchoosefbconfig0_add_x_o[64:0];

    // i_alphabits10_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,155)@3
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_alphabits10_glfwchoosefbconfig0_add_x_q[63:0];

    // i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x(ADD,149)@3
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_alphabits10_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_alphabits10_glfwchoosefbconfig0_c_i64_82_x_q};
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_q = i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_alphabits10_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,156)@3
    assign i_alphabits10_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_doublebuffer4_glfwchoosefbconfig0_c_i64_42_x(CONSTANT,204)
    assign i_doublebuffer4_glfwchoosefbconfig0_c_i64_42_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,670)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,515)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,672)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,514)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,516)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,671)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,512)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,673)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,513)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,517)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_extender_x(BITJOIN,212)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,214)@2
    assign i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b = i_doublebuffer4_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_doublebuffer4_glfwchoosefbconfig0_add_x(ADD,203)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_b = {1'b0, redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_add_x_a) + $unsigned(i_doublebuffer4_glfwchoosefbconfig0_add_x_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_q = i_doublebuffer4_glfwchoosefbconfig0_add_x_o[64:0];

    // i_doublebuffer4_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,215)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_doublebuffer4_glfwchoosefbconfig0_add_x_q[63:0];

    // i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x(ADD,209)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_c_i64_42_x_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_q = i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_doublebuffer4_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,216)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // valid_fanout_reg4(REG,316)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together81_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp159_glfwchoosefbconfig15(BLACKBOX,31)@3
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000043Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i1_cmp159_glfwchoosefbconfig15 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp159_glfwchoosefbconfig15_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp1_not_glfwchoosefbconfig16(LOGICAL,18)@3
    assign i_cmp1_not_glfwchoosefbconfig16_q = i_llvm_fpga_ffwd_dest_i1_cmp159_glfwchoosefbconfig15_out_dest_data_out_3_0 ^ VCC_q;

    // valid_fanout_reg5(REG,317)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together81_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp13557_glfwchoosefbconfig17(BLACKBOX,30)@3
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000042Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i1_cmp13557_glfwchoosefbconfig17 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp13557_glfwchoosefbconfig17_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_glfwchoosefbconfig18(LOGICAL,51)@3
    assign i_unnamed_glfwchoosefbconfig18_q = i_llvm_fpga_ffwd_dest_i1_cmp13557_glfwchoosefbconfig17_out_dest_data_out_2_0 | i_cmp1_not_glfwchoosefbconfig16_q;

    // i_first_cleanup_xor_or_glfwchoosefbconfig25(LOGICAL,21)@3
    assign i_first_cleanup_xor_or_glfwchoosefbconfig25_q = i_unnamed_glfwchoosefbconfig18_q | i_xor_glfwchoosefbconfig4_q;

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,650)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 6'b000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_qint[15:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,417)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_q}, 11'b00000000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,652)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 6'b000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_qint[23:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,416)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_qint[42:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,418)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,651)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 6'b000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_qint[23:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,414)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_q}, 11'b00000000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,653)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits153_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 6'b000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_qint[23:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,415)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_q, {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_q}};

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,419)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[71:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_extender_x(BITJOIN,139)@2
    assign i_add_ptr_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits153_glfwchoosefbconfig0_mult_multconst_x_q, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_add_ptr_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,141)@2
    assign i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b = i_add_ptr_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_add_ptr_glfwchoosefbconfig0_add_x(ADD,133)@3
    assign i_add_ptr_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig27_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_add_ptr_glfwchoosefbconfig0_add_x_b = {1'b0, redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_add_ptr_glfwchoosefbconfig0_add_x_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_add_x_a) + $unsigned(i_add_ptr_glfwchoosefbconfig0_add_x_b);
    assign i_add_ptr_glfwchoosefbconfig0_add_x_q = i_add_ptr_glfwchoosefbconfig0_add_x_o[64:0];

    // i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,142)@3
    assign i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_add_ptr_glfwchoosefbconfig0_add_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,310)@3
    assign out_c0_exi22_0_tpl = GND_q;
    assign out_c0_exi22_1_tpl = i_xor_glfwchoosefbconfig4_q;
    assign out_c0_exi22_2_tpl = redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q;
    assign out_c0_exi22_3_tpl = i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi22_4_tpl = i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi22_5_tpl = i_first_cleanup_xor_or_glfwchoosefbconfig25_q;
    assign out_c0_exi22_6_tpl = i_doublebuffer4_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_7_tpl = i_alphabits10_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_8_tpl = i_depthbits16_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_9_tpl = i_stencilbits23_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_10_tpl = i_auxbuffers30_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_11_tpl = i_samples39_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_12_tpl = i_transparent44_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_13_tpl = i_redbits52_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_14_tpl = i_greenbits62_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_15_tpl = i_bluebits73_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_16_tpl = i_accumredbits120_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_17_tpl = i_accumgreenbits131_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_18_tpl = i_accumbluebits142_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_19_tpl = i_accumalphabits153_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_20_tpl = i_srgb174_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi22_21_tpl = i_masked_glfwchoosefbconfig52_q;
    assign out_c0_exi22_22_tpl = redist1_sync_together81_aunroll_x_in_c0_eni1_1_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_glfwChooseFBConfig1 = GND_q;

endmodule
