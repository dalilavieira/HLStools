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
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_sfc_logic_s_c0_in_fA000000Z_glfwchoosefbconfig0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_3_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_4_tpl,
    output wire [0:0] out_c0_exi21_0_tpl,
    output wire [0:0] out_c0_exi21_1_tpl,
    output wire [0:0] out_c0_exi21_2_tpl,
    output wire [63:0] out_c0_exi21_3_tpl,
    output wire [63:0] out_c0_exi21_4_tpl,
    output wire [0:0] out_c0_exi21_5_tpl,
    output wire [63:0] out_c0_exi21_6_tpl,
    output wire [63:0] out_c0_exi21_7_tpl,
    output wire [63:0] out_c0_exi21_8_tpl,
    output wire [63:0] out_c0_exi21_9_tpl,
    output wire [63:0] out_c0_exi21_10_tpl,
    output wire [63:0] out_c0_exi21_11_tpl,
    output wire [63:0] out_c0_exi21_12_tpl,
    output wire [63:0] out_c0_exi21_13_tpl,
    output wire [63:0] out_c0_exi21_14_tpl,
    output wire [63:0] out_c0_exi21_15_tpl,
    output wire [63:0] out_c0_exi21_16_tpl,
    output wire [63:0] out_c0_exi21_17_tpl,
    output wire [63:0] out_c0_exi21_18_tpl,
    output wire [63:0] out_c0_exi21_19_tpl,
    output wire [0:0] out_c0_exi21_20_tpl,
    output wire [0:0] out_c0_exi21_21_tpl,
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
    wire [31:0] c_i32_059_q;
    wire [31:0] c_i32_160_q;
    wire [32:0] c_i33_162_q;
    wire [32:0] c_i33_undef58_q;
    wire [3:0] c_i4_755_q;
    wire [3:0] i_cleanups_shl_glfwchoosefbconfig5_vt_join_q;
    wire [2:0] i_cleanups_shl_glfwchoosefbconfig5_vt_select_3_b;
    wire [0:0] i_cmp1_not_glfwchoosefbconfig16_q;
    wire [0:0] i_first_cleanup_xor_or_glfwchoosefbconfig25_q;
    wire [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig49_a;
    wire [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig49_b;
    logic [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig49_o;
    wire [33:0] i_fpga_indvars_iv_next_glfwchoosefbconfig49_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q;
    wire [63:0] i_idx_ext_glfwchoosefbconfig22_vt_join_q;
    wire [31:0] i_idx_ext_glfwchoosefbconfig22_vt_select_31_b;
    wire [32:0] i_inc189_glfwchoosefbconfig40_a;
    wire [32:0] i_inc189_glfwchoosefbconfig40_b;
    logic [32:0] i_inc189_glfwchoosefbconfig40_o;
    wire [32:0] i_inc189_glfwchoosefbconfig40_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp13155_glfwchoosefbconfig17_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp158_glfwchoosefbconfig15_out_dest_data_out_3_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig25_glfwchoosefbconfig12_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_feedback_stall_out_11;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_glfwchoosefbconfig11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push12_glfwchoosefbconfig9_out_feedback_valid_out_12;
    wire [0:0] i_masked_glfwchoosefbconfig51_q;
    wire [0:0] i_next_cleanups_glfwchoosefbconfig47_s;
    reg [3:0] i_next_cleanups_glfwchoosefbconfig47_q;
    wire [3:0] i_next_initerations_glfwchoosefbconfig8_vt_join_q;
    wire [2:0] i_next_initerations_glfwchoosefbconfig8_vt_select_2_b;
    wire [0:0] i_notcmp_glfwchoosefbconfig44_q;
    wire [0:0] i_or_glfwchoosefbconfig46_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig18_q;
    wire [0:0] i_xor_glfwchoosefbconfig4_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig49_sel_x_b;
    wire [31:0] bgTrunc_i_inc189_glfwchoosefbconfig40_sel_x_b;
    wire [64:0] i_accumalphabits148_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumalphabits148_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumalphabits148_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumalphabits148_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumalphabits148_glfwchoosefbconfig0_c_i64_522_x_q;
    wire [64:0] i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumalphabits148_glfwchoosefbconfig0_mult_extender_x_q;
    wire [57:0] i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q;
    wire [63:0] i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumalphabits148_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumalphabits148_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_accumbluebits137_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumbluebits137_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumbluebits137_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumbluebits137_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumbluebits137_glfwchoosefbconfig0_c_i64_482_x_q;
    wire [64:0] i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumbluebits137_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumbluebits137_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumbluebits137_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_accumgreenbits126_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumgreenbits126_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumgreenbits126_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumgreenbits126_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumgreenbits126_glfwchoosefbconfig0_c_i64_442_x_q;
    wire [64:0] i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumgreenbits126_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_accumredbits115_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumredbits115_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumredbits115_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumredbits115_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumredbits115_glfwchoosefbconfig0_c_i64_402_x_q;
    wire [64:0] i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_accumredbits115_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_accumredbits115_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_accumredbits115_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
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
    wire [64:0] i_bluebits68_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_bluebits68_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_bluebits68_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_bluebits68_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_bluebits68_glfwchoosefbconfig0_c_i64_362_x_q;
    wire [64:0] i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_bluebits68_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_bluebits68_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_bluebits68_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
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
    wire [64:0] i_greenbits57_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_greenbits57_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_greenbits57_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_greenbits57_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_greenbits57_glfwchoosefbconfig0_c_i64_322_x_q;
    wire [64:0] i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_greenbits57_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_greenbits57_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_greenbits57_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_idx_ext_glfwchoosefbconfig22_sel_x_b;
    wire [0:0] i_last_initeration_glfwchoosefbconfig10_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [64:0] i_redbits47_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_redbits47_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_redbits47_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_redbits47_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_redbits47_glfwchoosefbconfig0_c_i64_282_x_q;
    wire [64:0] i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_redbits47_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_redbits47_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_redbits47_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
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
    wire [64:0] i_srgb169_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_srgb169_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_srgb169_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_srgb169_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_srgb169_glfwchoosefbconfig0_c_i64_562_x_q;
    wire [64:0] i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_a;
    wire [64:0] i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_b;
    logic [64:0] i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_o;
    wire [64:0] i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_q;
    wire [127:0] i_srgb169_glfwchoosefbconfig0_mult_extender_x_q;
    wire [63:0] i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [63:0] i_srgb169_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_srgb169_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_glfwchoosefbconfig42_cmp_nsign_q;
    wire [35:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid464_i_cleanups_shl_glfwchoosefbconfig0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid464_i_cleanups_shl_glfwchoosefbconfig0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid465_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q;
    wire [0:0] leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s;
    reg [3:0] leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q;
    wire [35:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid525_i_next_initerations_glfwchoosefbconfig0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid527_i_next_initerations_glfwchoosefbconfig0_shift_x_q;
    wire [0:0] rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_s;
    reg [3:0] rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_q;
    wire [35:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_q;
    wire [35:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_qint;
    wire [59:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1_q;
    wire [41:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_q;
    wire [41:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_qint;
    wire [27:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_q;
    wire [27:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_qint;
    wire [69:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4_q;
    wire [70:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q;
    wire [13:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_samples39_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_samples39_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_samples39_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_samples39_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [13:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_q;
    wire [13:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_qint;
    wire [14:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_a;
    wire [14:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_b;
    logic [14:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_o;
    wire [14:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_q;
    wire [16:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift2_q;
    wire [16:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift2_qint;
    wire [21:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_q;
    wire [21:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_qint;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_a;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_b;
    logic [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_o;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_q;
    wire [24:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift2_q;
    wire [24:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift2_qint;
    wire [21:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_q;
    wire [21:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_qint;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_a;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_b;
    logic [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_o;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_q;
    wire [24:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift2_q;
    wire [24:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift2_qint;
    wire [21:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_q;
    wire [21:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_qint;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_a;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_b;
    logic [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_o;
    wire [22:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_q;
    wire [24:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift2_q;
    wire [24:0] i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift2_qint;
    wire [9:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together80_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_q;
    reg [0:0] redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together80_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together80_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist4_sync_together80_aunroll_x_in_i_valid_3_q;
    reg [63:0] redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist6_i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist8_i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist9_i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist12_i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist16_i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist17_i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist18_i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [63:0] redist19_i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b_1_q;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_3_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,807)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist2_sync_together80_aunroll_x_in_i_valid_1(DELAY,785)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together80_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together80_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together80_aunroll_x_in_i_valid_2(DELAY,786)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together80_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together80_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist4_sync_together80_aunroll_x_in_i_valid_3(DELAY,787)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together80_aunroll_x_in_i_valid_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together80_aunroll_x_in_i_valid_3_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1(DELAY,804)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out);
        end
    end

    // redist22_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2(DELAY,805)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist22_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q <= $unsigned(redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_3(DELAY,806)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_3_q <= $unsigned(redist22_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid464_i_cleanups_shl_glfwchoosefbconfig0_shift_x(BITSELECT,463)@4
    assign leftShiftStage0Idx1Rng1_uid464_i_cleanups_shl_glfwchoosefbconfig0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid464_i_cleanups_shl_glfwchoosefbconfig0_shift_x_b = leftShiftStage0Idx1Rng1_uid464_i_cleanups_shl_glfwchoosefbconfig0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid465_i_cleanups_shl_glfwchoosefbconfig0_shift_x(BITJOIN,464)@4
    assign leftShiftStage0Idx1_uid465_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = {leftShiftStage0Idx1Rng1_uid464_i_cleanups_shl_glfwchoosefbconfig0_shift_x_b, GND_q};

    // leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x(MUX,466)@4
    assign leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out or leftShiftStage0Idx1_uid465_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_s)
            1'b0 : leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out;
            1'b1 : leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = leftShiftStage0Idx1_uid465_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q;
            default : leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_glfwchoosefbconfig5_vt_select_3(BITSELECT,17)@4
    assign i_cleanups_shl_glfwchoosefbconfig5_vt_select_3_b = leftShiftStage0_uid467_i_cleanups_shl_glfwchoosefbconfig0_shift_x_q[3:1];

    // i_cleanups_shl_glfwchoosefbconfig5_vt_join(BITJOIN,16)@4
    assign i_cleanups_shl_glfwchoosefbconfig5_vt_join_q = {i_cleanups_shl_glfwchoosefbconfig5_vt_select_3_b, GND_q};

    // i_xor_glfwchoosefbconfig4(LOGICAL,52)@4
    assign i_xor_glfwchoosefbconfig4_q = i_first_cleanup_glfwchoosefbconfig3_sel_x_b ^ VCC_q;

    // i_notcmp_glfwchoosefbconfig44(LOGICAL,49)@4
    assign i_notcmp_glfwchoosefbconfig44_q = i_exitcond_glfwchoosefbconfig42_cmp_nsign_q ^ VCC_q;

    // i_or_glfwchoosefbconfig46(LOGICAL,50)@4
    assign i_or_glfwchoosefbconfig46_q = i_notcmp_glfwchoosefbconfig44_q | i_xor_glfwchoosefbconfig4_q;

    // i_next_cleanups_glfwchoosefbconfig47(MUX,45)@4
    assign i_next_cleanups_glfwchoosefbconfig47_s = i_or_glfwchoosefbconfig46_q;
    always @(i_next_cleanups_glfwchoosefbconfig47_s or i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out or i_cleanups_shl_glfwchoosefbconfig5_vt_join_q)
    begin
        unique case (i_next_cleanups_glfwchoosefbconfig47_s)
            1'b0 : i_next_cleanups_glfwchoosefbconfig47_q = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out;
            1'b1 : i_next_cleanups_glfwchoosefbconfig47_q = i_cleanups_shl_glfwchoosefbconfig5_vt_join_q;
            default : i_next_cleanups_glfwchoosefbconfig47_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48(BLACKBOX,42)@4
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i4_cA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48 (
        .in_data_in(i_next_cleanups_glfwchoosefbconfig47_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_feedback_stall_out_13),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together80_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,783)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together80_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together80_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3(DELAY,784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= '0;
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together80_aunroll_x_in_c0_eni1_1_tpl_1_q);
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_q <= redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
        end
    end

    // c_i4_755(CONSTANT,11)
    assign c_i4_755_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2(BLACKBOX,36)@4
    // out out_feedback_stall_out_13@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i4_clA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2 (
        .in_data_in(c_i4_755_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i4_cleanups_push13_glfwchoosefbconfig48_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_glfwchoosefbconfig3_sel_x(BITSELECT,217)@4
    assign i_first_cleanup_glfwchoosefbconfig3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop13_glfwchoosefbconfig2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig25_glfwchoosefbconfig12(BLACKBOX,32)@4
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000043Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig25_glfwchoosefbconfig12 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_3_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig25_glfwchoosefbconfig12_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_162(CONSTANT,8)
    assign c_i33_162_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_glfwchoosefbconfig49(ADD,22)@4
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig49_a = {1'b0, i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q};
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig49_b = {1'b0, c_i33_162_q};
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig49_o = $unsigned(i_fpga_indvars_iv_next_glfwchoosefbconfig49_a) + $unsigned(i_fpga_indvars_iv_next_glfwchoosefbconfig49_b);
    assign i_fpga_indvars_iv_next_glfwchoosefbconfig49_q = i_fpga_indvars_iv_next_glfwchoosefbconfig49_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig49_sel_x(BITSELECT,60)@4
    assign bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig49_sel_x_b = i_fpga_indvars_iv_next_glfwchoosefbconfig49_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50(BLACKBOX,41)@4
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i33_A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_glfwchoosefbconfig49_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_feedback_stall_out_6),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef58(CONSTANT,9)
    assign c_i33_undef58_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13(BLACKBOX,35)@4
    // out out_feedback_stall_out_6@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i33_fA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13 (
        .in_data_in(c_i33_undef58_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_glfwchoosefbconfig50_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14(MUX,23)@4
    assign i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s = redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_q;
    always @(i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig25_glfwchoosefbconfig12_out_dest_data_out_19_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_glfwchoosefbconfig13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_glfwchoosefbconfig25_glfwchoosefbconfig12_out_dest_data_out_19_0;
            default : i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q = 33'b0;
        endcase
    end

    // i_exitcond_glfwchoosefbconfig42_cmp_nsign(LOGICAL,315)@4
    assign i_exitcond_glfwchoosefbconfig42_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_glfwchoosefbconfig14_q[32:32]));

    // i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45(BLACKBOX,39)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i1_nA000001Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45 (
        .in_data_in(i_exitcond_glfwchoosefbconfig42_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_glfwchoosefbconfig3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,301)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid525_i_next_initerations_glfwchoosefbconfig0_shift_x(BITSELECT,524)@2
    assign rightShiftStage0Idx1Rng1_uid525_i_next_initerations_glfwchoosefbconfig0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid527_i_next_initerations_glfwchoosefbconfig0_shift_x(BITJOIN,526)@2
    assign rightShiftStage0Idx1_uid527_i_next_initerations_glfwchoosefbconfig0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid525_i_next_initerations_glfwchoosefbconfig0_shift_x_b};

    // valid_fanout_reg1(REG,299)@1 + 1
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

    // valid_fanout_reg2(REG,300)@1 + 1
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
        .in_keep_going(redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q),
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
        .in_data_in(c_i4_755_q),
        .in_dir(redist0_sync_together80_aunroll_x_in_c0_eni1_1_tpl_1_q),
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

    // rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x(MUX,528)@2
    assign rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out or rightShiftStage0Idx1_uid527_i_next_initerations_glfwchoosefbconfig0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_s)
            1'b0 : rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop12_glfwchoosefbconfig7_out_data_out;
            1'b1 : rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_q = rightShiftStage0Idx1_uid527_i_next_initerations_glfwchoosefbconfig0_shift_x_q;
            default : rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_glfwchoosefbconfig8_vt_select_2(BITSELECT,48)@2
    assign i_next_initerations_glfwchoosefbconfig8_vt_select_2_b = rightShiftStage0_uid529_i_next_initerations_glfwchoosefbconfig0_shift_x_q[2:0];

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
        .in_keep_going(redist21_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_1_q),
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
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_glfwchoosefbconfig45_out_feedback_valid_out_3),
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

    // valid_fanout_reg0(REG,298)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked_glfwchoosefbconfig51(LOGICAL,44)@4
    assign i_masked_glfwchoosefbconfig51_q = i_notcmp_glfwchoosefbconfig44_q & i_first_cleanup_glfwchoosefbconfig3_sel_x_b;

    // i_srgb169_glfwchoosefbconfig0_c_i64_562_x(CONSTANT,268)
    assign i_srgb169_glfwchoosefbconfig0_c_i64_562_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000111000);

    // i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x(CONSTANT,87)
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // c_i32_059(CONSTANT,6)
    assign c_i32_059_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg7(REG,305)@1 + 1
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

    // valid_fanout_reg8(REG,306)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_160(CONSTANT,7)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc189_glfwchoosefbconfig40(ADD,28)@3
    assign i_inc189_glfwchoosefbconfig40_a = {1'b0, redist20_i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out_1_q};
    assign i_inc189_glfwchoosefbconfig40_b = {1'b0, c_i32_160_q};
    assign i_inc189_glfwchoosefbconfig40_o = $unsigned(i_inc189_glfwchoosefbconfig40_a) + $unsigned(i_inc189_glfwchoosefbconfig40_b);
    assign i_inc189_glfwchoosefbconfig40_q = i_inc189_glfwchoosefbconfig40_o[32:0];

    // bgTrunc_i_inc189_glfwchoosefbconfig40_sel_x(BITSELECT,61)@3
    assign bgTrunc_i_inc189_glfwchoosefbconfig40_sel_x_b = i_inc189_glfwchoosefbconfig40_q[31:0];

    // i_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41(BLACKBOX,40)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41 (
        .in_data_in(bgTrunc_i_inc189_glfwchoosefbconfig40_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_feedback_stall_out_11),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21(BLACKBOX,34)@2
    // out out_feedback_stall_out_11@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_iA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21 (
        .in_data_in(c_i32_059_q),
        .in_dir(redist0_sync_together80_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_i_0132_push11_glfwchoosefbconfig41_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out_1(DELAY,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out);
        end
    end

    // i_idx_ext_glfwchoosefbconfig22_sel_x(BITSELECT,232)@3
    assign i_idx_ext_glfwchoosefbconfig22_sel_x_b = {32'b00000000000000000000000000000000, redist20_i_llvm_fpga_pop_i32_i_0132_pop11_glfwchoosefbconfig21_out_data_out_1_q[31:0]};

    // i_idx_ext_glfwchoosefbconfig22_vt_select_31(BITSELECT,27)@3
    assign i_idx_ext_glfwchoosefbconfig22_vt_select_31_b = i_idx_ext_glfwchoosefbconfig22_sel_x_b[31:0];

    // i_idx_ext_glfwchoosefbconfig22_vt_join(BITJOIN,26)@3
    assign i_idx_ext_glfwchoosefbconfig22_vt_join_q = {c_i32_059_q, i_idx_ext_glfwchoosefbconfig22_vt_select_31_b};

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select(BITSELECT,782)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b = i_idx_ext_glfwchoosefbconfig22_vt_join_q[63:54];
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c = i_idx_ext_glfwchoosefbconfig22_vt_join_q[53:36];
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d = i_idx_ext_glfwchoosefbconfig22_vt_join_q[35:18];
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e = i_idx_ext_glfwchoosefbconfig22_vt_join_q[17:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,758)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,759)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,760)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_srgb169_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,581)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_srgb169_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,764)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,765)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,766)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_srgb169_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,580)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_srgb169_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,582)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,761)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,762)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,763)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_srgb169_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,578)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_srgb169_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,767)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,768)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,769)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_srgb169_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,579)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_srgb169_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_srgb169_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,583)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_srgb169_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_srgb169_glfwchoosefbconfig0_mult_extender_x(BITJOIN,276)@3
    assign i_srgb169_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_srgb169_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_srgb169_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,278)@3
    assign i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b = i_srgb169_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist6_i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,789)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg6(REG,304)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x(BLACKBOX,234)@4
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000044Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x (
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
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_dest_data_out_0_0_2_tpl(),
        .out_dest_data_out_0_0_3_tpl(),
        .out_dest_data_out_0_0_4_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_srgb169_glfwchoosefbconfig0_add_x(ADD,267)@4
    assign i_srgb169_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_srgb169_glfwchoosefbconfig0_add_x_b = {1'b0, redist6_i_srgb169_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_srgb169_glfwchoosefbconfig0_add_x_o = $unsigned(i_srgb169_glfwchoosefbconfig0_add_x_a) + $unsigned(i_srgb169_glfwchoosefbconfig0_add_x_b);
    assign i_srgb169_glfwchoosefbconfig0_add_x_q = i_srgb169_glfwchoosefbconfig0_add_x_o[64:0];

    // i_srgb169_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,279)@4
    assign i_srgb169_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_srgb169_glfwchoosefbconfig0_add_x_q[63:0];

    // i_srgb169_glfwchoosefbconfig0_dupName_0_add_x(ADD,273)@4
    assign i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_srgb169_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_srgb169_glfwchoosefbconfig0_c_i64_562_x_q};
    assign i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_q = i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_srgb169_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,280)@4
    assign i_srgb169_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_srgb169_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumalphabits148_glfwchoosefbconfig0_c_i64_522_x(CONSTANT,78)
    assign i_accumalphabits148_glfwchoosefbconfig0_c_i64_522_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000110100);

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,602)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,603)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,604)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,331)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,608)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,609)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,610)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,330)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,332)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,605)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,606)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,607)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,328)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,611)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,612)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,613)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,329)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_accumalphabits148_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,333)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_accumalphabits148_glfwchoosefbconfig0_mult_extender_x(BITJOIN,86)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_accumalphabits148_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,88)@3
    assign i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b = i_accumalphabits148_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist19_i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,802)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumalphabits148_glfwchoosefbconfig0_add_x(ADD,77)@4
    assign i_accumalphabits148_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumalphabits148_glfwchoosefbconfig0_add_x_b = {1'b0, redist19_i_accumalphabits148_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumalphabits148_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumalphabits148_glfwchoosefbconfig0_add_x_b);
    assign i_accumalphabits148_glfwchoosefbconfig0_add_x_q = i_accumalphabits148_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumalphabits148_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,89)@4
    assign i_accumalphabits148_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumalphabits148_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x(ADD,83)@4
    assign i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumalphabits148_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumalphabits148_glfwchoosefbconfig0_c_i64_522_x_q};
    assign i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumalphabits148_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,90)@4
    assign i_accumalphabits148_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumalphabits148_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumbluebits137_glfwchoosefbconfig0_c_i64_482_x(CONSTANT,92)
    assign i_accumbluebits137_glfwchoosefbconfig0_c_i64_482_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000110000);

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,614)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,615)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,616)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,349)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_accumbluebits137_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,620)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,621)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,622)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,348)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_accumbluebits137_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,350)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,617)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,618)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,619)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,346)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_accumbluebits137_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,623)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,624)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,625)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,347)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_accumbluebits137_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,351)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_accumbluebits137_glfwchoosefbconfig0_mult_extender_x(BITJOIN,100)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_accumbluebits137_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,102)@3
    assign i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b = i_accumbluebits137_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist18_i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,801)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumbluebits137_glfwchoosefbconfig0_add_x(ADD,91)@4
    assign i_accumbluebits137_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumbluebits137_glfwchoosefbconfig0_add_x_b = {1'b0, redist18_i_accumbluebits137_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumbluebits137_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumbluebits137_glfwchoosefbconfig0_add_x_b);
    assign i_accumbluebits137_glfwchoosefbconfig0_add_x_q = i_accumbluebits137_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumbluebits137_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,103)@4
    assign i_accumbluebits137_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumbluebits137_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x(ADD,97)@4
    assign i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumbluebits137_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumbluebits137_glfwchoosefbconfig0_c_i64_482_x_q};
    assign i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumbluebits137_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,104)@4
    assign i_accumbluebits137_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumbluebits137_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_c_i64_442_x(CONSTANT,106)
    assign i_accumgreenbits126_glfwchoosefbconfig0_c_i64_442_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000101100);

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,626)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,627)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,628)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,367)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,632)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,633)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,634)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,366)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,368)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,629)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,630)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,631)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,364)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,635)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,636)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,637)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,365)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,369)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_mult_extender_x(BITJOIN,114)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_accumgreenbits126_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,116)@3
    assign i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b = i_accumgreenbits126_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist17_i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,800)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumgreenbits126_glfwchoosefbconfig0_add_x(ADD,105)@4
    assign i_accumgreenbits126_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumgreenbits126_glfwchoosefbconfig0_add_x_b = {1'b0, redist17_i_accumgreenbits126_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_add_x_b);
    assign i_accumgreenbits126_glfwchoosefbconfig0_add_x_q = i_accumgreenbits126_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,117)@4
    assign i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumgreenbits126_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x(ADD,111)@4
    assign i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumgreenbits126_glfwchoosefbconfig0_c_i64_442_x_q};
    assign i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumgreenbits126_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,118)@4
    assign i_accumgreenbits126_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumgreenbits126_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_accumredbits115_glfwchoosefbconfig0_c_i64_402_x(CONSTANT,120)
    assign i_accumredbits115_glfwchoosefbconfig0_c_i64_402_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000101000);

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,638)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,639)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,640)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,385)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_accumredbits115_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,644)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,645)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,646)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,384)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_accumredbits115_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,386)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,641)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,642)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,643)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,382)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_accumredbits115_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,647)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,648)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,649)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,383)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_accumredbits115_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,387)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_accumredbits115_glfwchoosefbconfig0_mult_extender_x(BITJOIN,128)@3
    assign i_accumredbits115_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_accumredbits115_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,130)@3
    assign i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b = i_accumredbits115_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist16_i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,799)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_accumredbits115_glfwchoosefbconfig0_add_x(ADD,119)@4
    assign i_accumredbits115_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_accumredbits115_glfwchoosefbconfig0_add_x_b = {1'b0, redist16_i_accumredbits115_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_accumredbits115_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumredbits115_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumredbits115_glfwchoosefbconfig0_add_x_b);
    assign i_accumredbits115_glfwchoosefbconfig0_add_x_q = i_accumredbits115_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumredbits115_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,131)@4
    assign i_accumredbits115_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_accumredbits115_glfwchoosefbconfig0_add_x_q[63:0];

    // i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x(ADD,125)@4
    assign i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_accumredbits115_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_accumredbits115_glfwchoosefbconfig0_c_i64_402_x_q};
    assign i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_q = i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_accumredbits115_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,132)@4
    assign i_accumredbits115_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_accumredbits115_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_bluebits68_glfwchoosefbconfig0_c_i64_362_x(CONSTANT,172)
    assign i_bluebits68_glfwchoosefbconfig0_c_i64_362_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000100100);

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,686)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,687)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,688)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_bluebits68_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,457)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_bluebits68_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,692)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,693)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,694)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_bluebits68_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,456)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_bluebits68_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,458)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,689)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,690)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,691)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_bluebits68_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,454)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_bluebits68_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,695)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,696)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,697)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_bluebits68_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,455)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_bluebits68_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_bluebits68_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,459)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_bluebits68_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_bluebits68_glfwchoosefbconfig0_mult_extender_x(BITJOIN,180)@3
    assign i_bluebits68_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_bluebits68_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_bluebits68_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,182)@3
    assign i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b = i_bluebits68_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist12_i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,795)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_bluebits68_glfwchoosefbconfig0_add_x(ADD,171)@4
    assign i_bluebits68_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_bluebits68_glfwchoosefbconfig0_add_x_b = {1'b0, redist12_i_bluebits68_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_bluebits68_glfwchoosefbconfig0_add_x_o = $unsigned(i_bluebits68_glfwchoosefbconfig0_add_x_a) + $unsigned(i_bluebits68_glfwchoosefbconfig0_add_x_b);
    assign i_bluebits68_glfwchoosefbconfig0_add_x_q = i_bluebits68_glfwchoosefbconfig0_add_x_o[64:0];

    // i_bluebits68_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,183)@4
    assign i_bluebits68_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_bluebits68_glfwchoosefbconfig0_add_x_q[63:0];

    // i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x(ADD,177)@4
    assign i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_bluebits68_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_bluebits68_glfwchoosefbconfig0_c_i64_362_x_q};
    assign i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_q = i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_bluebits68_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,184)@4
    assign i_bluebits68_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_bluebits68_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_greenbits57_glfwchoosefbconfig0_c_i64_322_x(CONSTANT,219)
    assign i_greenbits57_glfwchoosefbconfig0_c_i64_322_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000100000);

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,722)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,723)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,724)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_greenbits57_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,519)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_greenbits57_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,728)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,729)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,730)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_greenbits57_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,518)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_greenbits57_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,520)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,725)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,726)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,727)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_greenbits57_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,516)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_greenbits57_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,731)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,732)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,733)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_greenbits57_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,517)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_greenbits57_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_greenbits57_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,521)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_greenbits57_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_greenbits57_glfwchoosefbconfig0_mult_extender_x(BITJOIN,227)@3
    assign i_greenbits57_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_greenbits57_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_greenbits57_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,229)@3
    assign i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b = i_greenbits57_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist9_i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_greenbits57_glfwchoosefbconfig0_add_x(ADD,218)@4
    assign i_greenbits57_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_greenbits57_glfwchoosefbconfig0_add_x_b = {1'b0, redist9_i_greenbits57_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_greenbits57_glfwchoosefbconfig0_add_x_o = $unsigned(i_greenbits57_glfwchoosefbconfig0_add_x_a) + $unsigned(i_greenbits57_glfwchoosefbconfig0_add_x_b);
    assign i_greenbits57_glfwchoosefbconfig0_add_x_q = i_greenbits57_glfwchoosefbconfig0_add_x_o[64:0];

    // i_greenbits57_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,230)@4
    assign i_greenbits57_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_greenbits57_glfwchoosefbconfig0_add_x_q[63:0];

    // i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x(ADD,224)@4
    assign i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_greenbits57_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_greenbits57_glfwchoosefbconfig0_c_i64_322_x_q};
    assign i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_q = i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_greenbits57_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,231)@4
    assign i_greenbits57_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_greenbits57_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_redbits47_glfwchoosefbconfig0_c_i64_282_x(CONSTANT,240)
    assign i_redbits47_glfwchoosefbconfig0_c_i64_282_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000011100);

    // i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,734)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,735)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,736)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_redbits47_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,545)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_redbits47_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,740)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,741)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,742)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_redbits47_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,544)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_redbits47_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,546)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,737)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,738)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,739)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_redbits47_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,542)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_redbits47_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,743)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,744)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,745)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_redbits47_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,543)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_redbits47_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_redbits47_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,547)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_redbits47_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_redbits47_glfwchoosefbconfig0_mult_extender_x(BITJOIN,248)@3
    assign i_redbits47_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_redbits47_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_redbits47_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,250)@3
    assign i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b = i_redbits47_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist8_i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,791)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b_1_q <= $unsigned(i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b);
        end
    end

    // i_redbits47_glfwchoosefbconfig0_add_x(ADD,239)@4
    assign i_redbits47_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_redbits47_glfwchoosefbconfig0_add_x_b = {1'b0, redist8_i_redbits47_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_redbits47_glfwchoosefbconfig0_add_x_o = $unsigned(i_redbits47_glfwchoosefbconfig0_add_x_a) + $unsigned(i_redbits47_glfwchoosefbconfig0_add_x_b);
    assign i_redbits47_glfwchoosefbconfig0_add_x_q = i_redbits47_glfwchoosefbconfig0_add_x_o[64:0];

    // i_redbits47_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,251)@4
    assign i_redbits47_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_redbits47_glfwchoosefbconfig0_add_x_q[63:0];

    // i_redbits47_glfwchoosefbconfig0_dupName_0_add_x(ADD,245)@4
    assign i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_redbits47_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_redbits47_glfwchoosefbconfig0_c_i64_282_x_q};
    assign i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_q = i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_redbits47_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,252)@4
    assign i_redbits47_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_redbits47_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_samples39_glfwchoosefbconfig0_c_i64_242_x(CONSTANT,254)
    assign i_samples39_glfwchoosefbconfig0_c_i64_242_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000011000);

    // i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,746)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,747)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,748)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_samples39_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_samples39_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,563)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_samples39_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,752)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,753)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,754)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_samples39_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_samples39_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,562)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_samples39_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,564)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_samples39_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_samples39_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,749)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,750)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,751)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_samples39_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_samples39_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,560)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_samples39_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,755)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,756)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,757)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_samples39_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_samples39_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_samples39_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,561)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_samples39_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_samples39_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,565)@3
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_samples39_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_samples39_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_samples39_glfwchoosefbconfig0_mult_extender_x(BITJOIN,262)@3
    assign i_samples39_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_samples39_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_samples39_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,264)@3
    assign i_samples39_glfwchoosefbconfig0_trunc_sel_x_b = i_samples39_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,790)
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

    // i_samples39_glfwchoosefbconfig0_add_x(ADD,253)@4
    assign i_samples39_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_samples39_glfwchoosefbconfig0_add_x_b = {1'b0, redist7_i_samples39_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_samples39_glfwchoosefbconfig0_add_x_o = $unsigned(i_samples39_glfwchoosefbconfig0_add_x_a) + $unsigned(i_samples39_glfwchoosefbconfig0_add_x_b);
    assign i_samples39_glfwchoosefbconfig0_add_x_q = i_samples39_glfwchoosefbconfig0_add_x_o[64:0];

    // i_samples39_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,265)@4
    assign i_samples39_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_samples39_glfwchoosefbconfig0_add_x_q[63:0];

    // i_samples39_glfwchoosefbconfig0_dupName_0_add_x(ADD,259)@4
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_samples39_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_samples39_glfwchoosefbconfig0_c_i64_242_x_q};
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_samples39_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_samples39_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_samples39_glfwchoosefbconfig0_dupName_0_add_x_q = i_samples39_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_samples39_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,266)@4
    assign i_samples39_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_samples39_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_auxbuffers30_glfwchoosefbconfig0_c_i64_202_x(CONSTANT,158)
    assign i_auxbuffers30_glfwchoosefbconfig0_c_i64_202_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000010100);

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,674)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,675)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,676)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,439)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_auxbuffers30_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,680)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,681)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,682)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,438)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_auxbuffers30_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,440)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,677)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,678)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,679)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,436)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_auxbuffers30_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,683)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,684)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,685)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,437)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_auxbuffers30_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,441)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_auxbuffers30_glfwchoosefbconfig0_mult_extender_x(BITJOIN,166)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_auxbuffers30_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,168)@3
    assign i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b = i_auxbuffers30_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,796)
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

    // i_auxbuffers30_glfwchoosefbconfig0_add_x(ADD,157)@4
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_b = {1'b0, redist13_i_auxbuffers30_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_add_x_a) + $unsigned(i_auxbuffers30_glfwchoosefbconfig0_add_x_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_add_x_q = i_auxbuffers30_glfwchoosefbconfig0_add_x_o[64:0];

    // i_auxbuffers30_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,169)@4
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_auxbuffers30_glfwchoosefbconfig0_add_x_q[63:0];

    // i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x(ADD,163)@4
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_auxbuffers30_glfwchoosefbconfig0_c_i64_202_x_q};
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_q = i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_auxbuffers30_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,170)@4
    assign i_auxbuffers30_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_auxbuffers30_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_stencilbits23_glfwchoosefbconfig0_c_i64_162_x(CONSTANT,282)
    assign i_stencilbits23_glfwchoosefbconfig0_c_i64_162_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000010000);

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,770)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,771)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,772)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,599)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_stencilbits23_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,776)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,777)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,778)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,598)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_stencilbits23_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,600)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,773)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,774)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,775)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,596)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_stencilbits23_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,779)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,780)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,781)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,597)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_stencilbits23_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,601)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_stencilbits23_glfwchoosefbconfig0_mult_extender_x(BITJOIN,290)@3
    assign i_stencilbits23_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_stencilbits23_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,292)@3
    assign i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b = i_stencilbits23_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,788)
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

    // i_stencilbits23_glfwchoosefbconfig0_add_x(ADD,281)@4
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_b = {1'b0, redist5_i_stencilbits23_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_add_x_a) + $unsigned(i_stencilbits23_glfwchoosefbconfig0_add_x_b);
    assign i_stencilbits23_glfwchoosefbconfig0_add_x_q = i_stencilbits23_glfwchoosefbconfig0_add_x_o[64:0];

    // i_stencilbits23_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,293)@4
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_stencilbits23_glfwchoosefbconfig0_add_x_q[63:0];

    // i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x(ADD,287)@4
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_stencilbits23_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_stencilbits23_glfwchoosefbconfig0_c_i64_162_x_q};
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_q = i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_stencilbits23_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,294)@4
    assign i_stencilbits23_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_stencilbits23_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_depthbits16_glfwchoosefbconfig0_c_i64_122_x(CONSTANT,190)
    assign i_depthbits16_glfwchoosefbconfig0_c_i64_122_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001100);

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,698)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,699)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,700)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_depthbits16_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,483)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_depthbits16_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,704)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,705)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,706)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_depthbits16_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,482)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_depthbits16_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,484)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,701)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,702)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,703)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_depthbits16_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,480)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_depthbits16_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,707)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,708)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,709)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_depthbits16_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,481)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_depthbits16_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_depthbits16_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,485)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_depthbits16_glfwchoosefbconfig0_mult_extender_x(BITJOIN,198)@3
    assign i_depthbits16_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_depthbits16_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_depthbits16_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,200)@3
    assign i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b = i_depthbits16_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,794)
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

    // i_depthbits16_glfwchoosefbconfig0_add_x(ADD,189)@4
    assign i_depthbits16_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_depthbits16_glfwchoosefbconfig0_add_x_b = {1'b0, redist11_i_depthbits16_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_depthbits16_glfwchoosefbconfig0_add_x_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_add_x_a) + $unsigned(i_depthbits16_glfwchoosefbconfig0_add_x_b);
    assign i_depthbits16_glfwchoosefbconfig0_add_x_q = i_depthbits16_glfwchoosefbconfig0_add_x_o[64:0];

    // i_depthbits16_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,201)@4
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_depthbits16_glfwchoosefbconfig0_add_x_q[63:0];

    // i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x(ADD,195)@4
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_depthbits16_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_depthbits16_glfwchoosefbconfig0_c_i64_122_x_q};
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_q = i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_depthbits16_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,202)@4
    assign i_depthbits16_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_depthbits16_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_alphabits10_glfwchoosefbconfig0_c_i64_82_x(CONSTANT,145)
    assign i_alphabits10_glfwchoosefbconfig0_c_i64_82_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001000);

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,662)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,663)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,664)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_alphabits10_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,421)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_alphabits10_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,668)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,669)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,670)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_alphabits10_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,420)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_alphabits10_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,422)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,665)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,666)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,667)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_alphabits10_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,418)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_alphabits10_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,671)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,672)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,673)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_alphabits10_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,419)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_alphabits10_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_alphabits10_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,423)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_alphabits10_glfwchoosefbconfig0_mult_extender_x(BITJOIN,152)@3
    assign i_alphabits10_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_alphabits10_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_alphabits10_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,154)@3
    assign i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b = i_alphabits10_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,797)
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

    // i_alphabits10_glfwchoosefbconfig0_add_x(ADD,143)@4
    assign i_alphabits10_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_alphabits10_glfwchoosefbconfig0_add_x_b = {1'b0, redist14_i_alphabits10_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_alphabits10_glfwchoosefbconfig0_add_x_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_add_x_a) + $unsigned(i_alphabits10_glfwchoosefbconfig0_add_x_b);
    assign i_alphabits10_glfwchoosefbconfig0_add_x_q = i_alphabits10_glfwchoosefbconfig0_add_x_o[64:0];

    // i_alphabits10_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,155)@4
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_alphabits10_glfwchoosefbconfig0_add_x_q[63:0];

    // i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x(ADD,149)@4
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_alphabits10_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_alphabits10_glfwchoosefbconfig0_c_i64_82_x_q};
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_q = i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_alphabits10_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,156)@4
    assign i_alphabits10_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_alphabits10_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // i_doublebuffer4_glfwchoosefbconfig0_c_i64_42_x(CONSTANT,204)
    assign i_doublebuffer4_glfwchoosefbconfig0_c_i64_42_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,710)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,711)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,712)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,501)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_doublebuffer4_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,716)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,717)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,718)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,500)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_doublebuffer4_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,502)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,713)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,714)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,715)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,498)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_doublebuffer4_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,719)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,720)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,721)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,499)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_doublebuffer4_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,503)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_doublebuffer4_glfwchoosefbconfig0_mult_extender_x(BITJOIN,212)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_doublebuffer4_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,214)@3
    assign i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b = i_doublebuffer4_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,793)
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

    // i_doublebuffer4_glfwchoosefbconfig0_add_x(ADD,203)@4
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_b = {1'b0, redist10_i_doublebuffer4_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_add_x_a) + $unsigned(i_doublebuffer4_glfwchoosefbconfig0_add_x_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_add_x_q = i_doublebuffer4_glfwchoosefbconfig0_add_x_o[64:0];

    // i_doublebuffer4_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,215)@4
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_doublebuffer4_glfwchoosefbconfig0_add_x_q[63:0];

    // i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x(ADD,209)@4
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_a = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b};
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_b = {1'b0, i_doublebuffer4_glfwchoosefbconfig0_c_i64_42_x_q};
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_o = $unsigned(i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_a) + $unsigned(i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_b);
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_q = i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_o[64:0];

    // i_doublebuffer4_glfwchoosefbconfig0_dupName_1_trunc_sel_x(BITSELECT,216)@4
    assign i_doublebuffer4_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b = i_doublebuffer4_glfwchoosefbconfig0_dupName_0_add_x_q[63:0];

    // valid_fanout_reg4(REG,302)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp158_glfwchoosefbconfig15(BLACKBOX,31)@4
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000042Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i1_cmp158_glfwchoosefbconfig15 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp158_glfwchoosefbconfig15_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp1_not_glfwchoosefbconfig16(LOGICAL,18)@4
    assign i_cmp1_not_glfwchoosefbconfig16_q = i_llvm_fpga_ffwd_dest_i1_cmp158_glfwchoosefbconfig15_out_dest_data_out_3_0 ^ VCC_q;

    // valid_fanout_reg5(REG,303)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp13155_glfwchoosefbconfig17(BLACKBOX,30)@4
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000041Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i1_cmp13155_glfwchoosefbconfig17 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp13155_glfwchoosefbconfig17_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_glfwchoosefbconfig18(LOGICAL,51)@4
    assign i_unnamed_glfwchoosefbconfig18_q = i_llvm_fpga_ffwd_dest_i1_cmp13155_glfwchoosefbconfig17_out_dest_data_out_2_0 | i_cmp1_not_glfwchoosefbconfig16_q;

    // i_first_cleanup_xor_or_glfwchoosefbconfig25(LOGICAL,21)@4
    assign i_first_cleanup_xor_or_glfwchoosefbconfig25_q = i_unnamed_glfwchoosefbconfig18_q | i_xor_glfwchoosefbconfig4_q;

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0(BITSHIFT,650)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_qint[13:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1(SUB,651)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_a = {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift0_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_b};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_a) - $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_b);
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_o[14:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift2(BITSHIFT,652)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift2_qint = { i_add_ptr_glfwchoosefbconfig0_mult_x_im0_sub_1_q, 2'b00 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift2_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift2_qint[16:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3(BITSHIFT,403)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_qint = { i_add_ptr_glfwchoosefbconfig0_mult_x_im0_shift2_q[15:0], 12'b000000000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0(BITSHIFT,656)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_qint[21:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1(SUB,657)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_a = {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift0_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_d};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_a) - $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_b);
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_o[22:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift2(BITSHIFT,658)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift2_qint = { i_add_ptr_glfwchoosefbconfig0_mult_x_im6_sub_1_q, 2'b00 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift2_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift2_qint[24:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2(BITSHIFT,402)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_qint = { i_add_ptr_glfwchoosefbconfig0_mult_x_im6_shift2_q[23:0], 18'b000000000000000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_qint[41:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4(BITJOIN,404)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4_q = {i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_3_q, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_2_q};

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0(BITSHIFT,653)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_qint[21:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1(SUB,654)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_a = {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift0_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_c};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_a) - $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_b);
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_o[22:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift2(BITSHIFT,655)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift2_qint = { i_add_ptr_glfwchoosefbconfig0_mult_x_im3_sub_1_q, 2'b00 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift2_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift2_qint[24:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0(BITSHIFT,400)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_qint = { i_add_ptr_glfwchoosefbconfig0_mult_x_im3_shift2_q[23:0], 12'b000000000000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0(BITSHIFT,659)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_qint = { i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_qint[21:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1(SUB,660)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_a = {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift0_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_b = {5'b00000, i_accumalphabits148_glfwchoosefbconfig0_mult_x_bs1_merged_bit_select_e};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_a) - $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_b);
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_o[22:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift2(BITSHIFT,661)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift2_qint = { i_add_ptr_glfwchoosefbconfig0_mult_x_im9_sub_1_q, 2'b00 };
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift2_q = i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift2_qint[24:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1(BITJOIN,401)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1_q = {i_add_ptr_glfwchoosefbconfig0_mult_x_sums_align_0_q, i_add_ptr_glfwchoosefbconfig0_mult_x_im9_shift2_q[23:0]};

    // i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0(ADD,405)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_1_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_join_4_q};
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q = i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_o[70:0];

    // i_add_ptr_glfwchoosefbconfig0_mult_extender_x(BITJOIN,139)@3
    assign i_add_ptr_glfwchoosefbconfig0_mult_extender_x_q = {i_accumalphabits148_glfwchoosefbconfig0_mult_multconst_x_q, i_add_ptr_glfwchoosefbconfig0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_add_ptr_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,141)@3
    assign i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b = i_add_ptr_glfwchoosefbconfig0_mult_extender_x_q[63:0];

    // redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1(DELAY,798)
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

    // i_add_ptr_glfwchoosefbconfig0_add_x(ADD,133)@4
    assign i_add_ptr_glfwchoosefbconfig0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig19_aunroll_x_out_dest_data_out_0_0_1_tpl};
    assign i_add_ptr_glfwchoosefbconfig0_add_x_b = {1'b0, redist15_i_add_ptr_glfwchoosefbconfig0_trunc_sel_x_b_1_q};
    assign i_add_ptr_glfwchoosefbconfig0_add_x_o = $unsigned(i_add_ptr_glfwchoosefbconfig0_add_x_a) + $unsigned(i_add_ptr_glfwchoosefbconfig0_add_x_b);
    assign i_add_ptr_glfwchoosefbconfig0_add_x_q = i_add_ptr_glfwchoosefbconfig0_add_x_o[64:0];

    // i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x(BITSELECT,142)@4
    assign i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b = i_add_ptr_glfwchoosefbconfig0_add_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,296)@4
    assign out_c0_exi21_0_tpl = GND_q;
    assign out_c0_exi21_1_tpl = i_xor_glfwchoosefbconfig4_q;
    assign out_c0_exi21_2_tpl = redist23_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_out_data_out_3_q;
    assign out_c0_exi21_3_tpl = i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi21_4_tpl = i_add_ptr_glfwchoosefbconfig0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi21_5_tpl = i_first_cleanup_xor_or_glfwchoosefbconfig25_q;
    assign out_c0_exi21_6_tpl = i_doublebuffer4_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_7_tpl = i_alphabits10_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_8_tpl = i_depthbits16_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_9_tpl = i_stencilbits23_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_10_tpl = i_auxbuffers30_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_11_tpl = i_samples39_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_12_tpl = i_redbits47_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_13_tpl = i_greenbits57_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_14_tpl = i_bluebits68_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_15_tpl = i_accumredbits115_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_16_tpl = i_accumgreenbits126_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_17_tpl = i_accumbluebits137_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_18_tpl = i_accumalphabits148_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_19_tpl = i_srgb169_glfwchoosefbconfig0_dupName_1_trunc_sel_x_b;
    assign out_c0_exi21_20_tpl = i_masked_glfwchoosefbconfig51_q;
    assign out_c0_exi21_21_tpl = redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_glfwChooseFBConfig1 = GND_q;

endmodule
