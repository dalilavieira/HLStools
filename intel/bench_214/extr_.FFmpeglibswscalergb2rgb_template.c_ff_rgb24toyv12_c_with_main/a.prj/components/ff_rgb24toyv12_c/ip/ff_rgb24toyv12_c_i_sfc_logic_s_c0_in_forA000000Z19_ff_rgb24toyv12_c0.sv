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

// SystemVerilog created from ff_rgb24toyv12_c_i_sfc_logic_s_c0_in_forA000000Z19_ff_rgb24toyv12_c0
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_i_sfc_logic_s_c0_in_forA000000Z19_ff_rgb24toyv12_c0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [63:0] out_c0_exi10_1_tpl,
    output wire [63:0] out_c0_exi10_2_tpl,
    output wire [63:0] out_c0_exi10_3_tpl,
    output wire [63:0] out_c0_exi10_4_tpl,
    output wire [0:0] out_c0_exi10_5_tpl,
    output wire [0:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [63:0] out_c0_exi10_8_tpl,
    output wire [63:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_079_q;
    wire [31:0] c_i32_180_q;
    wire [31:0] c_i32_281_q;
    wire [63:0] c_i32_addrspace_1024_undef78_q;
    wire [32:0] i_add140_ff_rgb24toyv12_c29_a;
    wire [32:0] i_add140_ff_rgb24toyv12_c29_b;
    logic [32:0] i_add140_ff_rgb24toyv12_c29_o;
    wire [32:0] i_add140_ff_rgb24toyv12_c29_q;
    wire [31:0] i_add74_ff_rgb24toyv12_c22_q;
    wire [31:0] i_add74_ff_rgb24toyv12_c22_vt_join_q;
    wire [30:0] i_add74_ff_rgb24toyv12_c22_vt_select_31_b;
    wire [0:0] i_cmp75_ff_rgb24toyv12_c24_q;
    wire [33:0] i_cmp_ff_rgb24toyv12_c31_a;
    wire [33:0] i_cmp_ff_rgb24toyv12_c31_b;
    logic [33:0] i_cmp_ff_rgb24toyv12_c31_o;
    wire [0:0] i_cmp_ff_rgb24toyv12_c31_c;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp106245_ff_rgb24toyv12_c34_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_rgb24toyv12_c44_ff_rgb24toyv12_c26_out_dest_data_out_21_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_chromstride119248_ff_rgb24toyv12_c15_out_dest_data_out_13_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_height117239_ff_rgb24toyv12_c30_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_height117240_ff_rgb24toyv12_c23_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_lumstride118249_ff_rgb24toyv12_c19_out_dest_data_out_14_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_srcstride120247_ff_rgb24toyv12_c17_out_dest_data_out_12_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_src112253_ff_rgb24toyv12_c3_out_dest_data_out_18_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_udst114251_ff_rgb24toyv12_c9_out_dest_data_out_16_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_vdst115250_ff_rgb24toyv12_c12_out_dest_data_out_15_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_ydst113252_ff_rgb24toyv12_c6_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21_out_feedback_stall_out_14;
    wire [63:0] i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4_out_feedback_stall_out_10;
    wire [63:0] i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10_out_feedback_stall_out_12;
    wire [63:0] i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13_out_feedback_stall_out_13;
    wire [63:0] i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42_out_feedback_valid_out_10;
    wire [63:0] i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49_out_feedback_valid_out_12;
    wire [63:0] i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52_out_feedback_valid_out_13;
    wire [63:0] i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46_out_feedback_valid_out_11;
    wire [0:0] i_not_came_from_for_end_ff_rgb24toyv12_c28_q;
    wire [0:0] i_notcmp292_ff_rgb24toyv12_c37_q;
    wire [0:0] i_or_cond_ff_rgb24toyv12_c33_q;
    wire [0:0] i_select13_ff_rgb24toyv12_c48_s;
    reg [63:0] i_select13_ff_rgb24toyv12_c48_q;
    wire [0:0] i_select18_ff_rgb24toyv12_c45_s;
    reg [63:0] i_select18_ff_rgb24toyv12_c45_q;
    wire [0:0] i_select23_ff_rgb24toyv12_c41_s;
    reg [63:0] i_select23_ff_rgb24toyv12_c41_q;
    wire [0:0] i_select8_ff_rgb24toyv12_c51_s;
    reg [63:0] i_select8_ff_rgb24toyv12_c51_q;
    wire [0:0] i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_s;
    reg [63:0] i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_q;
    wire [0:0] i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_s;
    reg [63:0] i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q;
    wire [0:0] i_unnamed_ff_rgb24toyv12_c27_q;
    wire [0:0] i_unnamed_ff_rgb24toyv12_c35_q;
    wire [0:0] i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_s;
    reg [63:0] i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q;
    wire [0:0] i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_s;
    reg [63:0] i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_q;
    wire [31:0] bgTrunc_i_add140_ff_rgb24toyv12_c29_sel_x_b;
    wire [64:0] i_add_ptr132_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_add_ptr132_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_add_ptr132_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_add_ptr132_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [60:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q;
    wire [63:0] i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_add_ptr132_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr134_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_add_ptr134_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_add_ptr134_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_add_ptr134_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_add_ptr134_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr136_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_add_ptr136_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_add_ptr136_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_add_ptr136_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_add_ptr136_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr138_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_add_ptr138_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_add_ptr138_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_add_ptr138_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_add_ptr138_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr73_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_add_ptr73_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_add_ptr73_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_add_ptr73_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_add_ptr73_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_add_ptr_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_add_ptr_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_add_ptr_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_add_ptr_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_add_ptr_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idx_ext131_ff_rgb24toyv12_c16_sel_x_b;
    wire [63:0] i_idx_ext72_ff_rgb24toyv12_c18_sel_x_b;
    wire [63:0] i_idx_ext_ff_rgb24toyv12_c20_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    wire [35:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [11:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_add_ptr_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [9:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
    reg [0:0] redist1_sync_together107_aunroll_x_in_i_valid_1_q;
    reg [63:0] redist2_i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q;
    reg [63:0] redist3_i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q;
    reg [63:0] redist4_i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q;
    reg [63:0] redist5_i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q;
    reg [63:0] redist6_i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q;
    reg [63:0] redist7_i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q;
    reg [0:0] redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q;
    reg [0:0] redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_delay_0;
    reg [0:0] redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_q;
    reg [0:0] redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_delay_0;
    reg [0:0] redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_q;
    reg [0:0] redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_delay_0;


    // i_llvm_fpga_ffwd_dest_i1_unnamed_ff_rgb24toyv12_c44_ff_rgb24toyv12_c26(BLACKBOX,48)@1
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_iA000000Z44_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_dest_i1_unnamed_ff_rgb24toyv12_c44_ff_rgb24toyv12_c26 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_rgb24toyv12_c44_ff_rgb24toyv12_c26_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_height117240_ff_rgb24toyv12_c23(BLACKBOX,51)@1
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i32_height117240_0 thei_llvm_fpga_ffwd_dest_i32_height117240_ff_rgb24toyv12_c23 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_height117240_ff_rgb24toyv12_c23_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_180(CONSTANT,30)
    assign c_i32_180_q = $unsigned(32'b00000000000000000000000000000001);

    // c_i32_281(CONSTANT,31)
    assign c_i32_281_q = $unsigned(32'b00000000000000000000000000000010);

    // i_add140_ff_rgb24toyv12_c29(ADD,34)@1
    assign i_add140_ff_rgb24toyv12_c29_a = {1'b0, i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21_out_data_out};
    assign i_add140_ff_rgb24toyv12_c29_b = {1'b0, c_i32_281_q};
    assign i_add140_ff_rgb24toyv12_c29_o = $unsigned(i_add140_ff_rgb24toyv12_c29_a) + $unsigned(i_add140_ff_rgb24toyv12_c29_b);
    assign i_add140_ff_rgb24toyv12_c29_q = i_add140_ff_rgb24toyv12_c29_o[32:0];

    // bgTrunc_i_add140_ff_rgb24toyv12_c29_sel_x(BITSELECT,101)@1
    assign bgTrunc_i_add140_ff_rgb24toyv12_c29_sel_x_b = i_add140_ff_rgb24toyv12_c29_q[31:0];

    // i_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36(BLACKBOX,65)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_push_i32_y_0107_push14_0 thei_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36 (
        .in_data_in(bgTrunc_i_add140_ff_rgb24toyv12_c29_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_ff_rgb24toyv12_c71(i_unnamed_ff_rgb24toyv12_c35_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_079(CONSTANT,29)
    assign c_i32_079_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21(BLACKBOX,59)@1
    // out out_feedback_stall_out_14@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_pop_i32_y_0107_pop14_0 thei_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21 (
        .in_data_in(c_i32_079_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_14(i_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_y_0107_push14_ff_rgb24toyv12_c36_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add74_ff_rgb24toyv12_c22(LOGICAL,35)@1
    assign i_add74_ff_rgb24toyv12_c22_q = i_llvm_fpga_pop_i32_y_0107_pop14_ff_rgb24toyv12_c21_out_data_out | c_i32_180_q;

    // i_add74_ff_rgb24toyv12_c22_vt_select_31(BITSELECT,38)@1
    assign i_add74_ff_rgb24toyv12_c22_vt_select_31_b = i_add74_ff_rgb24toyv12_c22_q[31:1];

    // i_add74_ff_rgb24toyv12_c22_vt_join(BITJOIN,37)@1
    assign i_add74_ff_rgb24toyv12_c22_vt_join_q = {i_add74_ff_rgb24toyv12_c22_vt_select_31_b, VCC_q};

    // i_cmp75_ff_rgb24toyv12_c24(LOGICAL,39)@1
    assign i_cmp75_ff_rgb24toyv12_c24_q = $unsigned(i_add74_ff_rgb24toyv12_c22_vt_join_q == i_llvm_fpga_ffwd_dest_i32_height117240_ff_rgb24toyv12_c23_out_dest_data_out_0_0 ? 1'b1 : 1'b0);

    // i_unnamed_ff_rgb24toyv12_c27(LOGICAL,79)@1
    assign i_unnamed_ff_rgb24toyv12_c27_q = i_cmp75_ff_rgb24toyv12_c24_q | i_llvm_fpga_ffwd_dest_i1_unnamed_ff_rgb24toyv12_c44_ff_rgb24toyv12_c26_out_dest_data_out_21_0;

    // i_not_came_from_for_end_ff_rgb24toyv12_c28(LOGICAL,70)@1
    assign i_not_came_from_for_end_ff_rgb24toyv12_c28_q = i_unnamed_ff_rgb24toyv12_c27_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i32_height117239_ff_rgb24toyv12_c30(BLACKBOX,50)@1
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i32_height117239_0 thei_llvm_fpga_ffwd_dest_i32_height117239_ff_rgb24toyv12_c30 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_height117239_ff_rgb24toyv12_c30_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp_ff_rgb24toyv12_c31(COMPARE,40)@1
    assign i_cmp_ff_rgb24toyv12_c31_a = $unsigned({{2{bgTrunc_i_add140_ff_rgb24toyv12_c29_sel_x_b[31]}}, bgTrunc_i_add140_ff_rgb24toyv12_c29_sel_x_b});
    assign i_cmp_ff_rgb24toyv12_c31_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_height117239_ff_rgb24toyv12_c30_out_dest_data_out_0_0[31]}}, i_llvm_fpga_ffwd_dest_i32_height117239_ff_rgb24toyv12_c30_out_dest_data_out_0_0});
    assign i_cmp_ff_rgb24toyv12_c31_o = $unsigned($signed(i_cmp_ff_rgb24toyv12_c31_a) - $signed(i_cmp_ff_rgb24toyv12_c31_b));
    assign i_cmp_ff_rgb24toyv12_c31_c[0] = i_cmp_ff_rgb24toyv12_c31_o[33];

    // i_or_cond_ff_rgb24toyv12_c33(LOGICAL,72)@1
    assign i_or_cond_ff_rgb24toyv12_c33_q = i_cmp_ff_rgb24toyv12_c31_c & i_not_came_from_for_end_ff_rgb24toyv12_c28_q;

    // i_llvm_fpga_ffwd_dest_i1_cmp106245_ff_rgb24toyv12_c34(BLACKBOX,47)@1
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i1_cmp106245_0 thei_llvm_fpga_ffwd_dest_i1_cmp106245_ff_rgb24toyv12_c34 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i1_cmp106245_ff_rgb24toyv12_c34_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_ff_rgb24toyv12_c35(LOGICAL,80)@1
    assign i_unnamed_ff_rgb24toyv12_c35_q = i_llvm_fpga_ffwd_dest_i1_cmp106245_ff_rgb24toyv12_c34_out_dest_data_out_11_0 & i_or_cond_ff_rgb24toyv12_c33_q;

    // i_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38(BLACKBOX,64)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_push_i1_notexitcond294_0 thei_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38 (
        .in_data_in(i_unnamed_ff_rgb24toyv12_c35_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2(BLACKBOX,58)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_pipeline_keep_going293_0 thei_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond294_ff_rgb24toyv12_c38_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,33)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,87)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going293_ff_rgb24toyv12_c2_out_pipeline_valid_out;

    // redist1_sync_together107_aunroll_x_in_i_valid_1(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together107_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together107_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,169)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= '0;
            redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q <= redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
        end
    end

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x(CONSTANT,111)
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg11(REG,180)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_lumstride118249_ff_rgb24toyv12_c19(BLACKBOX,52)@2
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i32_lumstride118249_0 thei_llvm_fpga_ffwd_dest_i32_lumstride118249_ff_rgb24toyv12_c19 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i32_lumstride118249_ff_rgb24toyv12_c19_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idx_ext_ff_rgb24toyv12_c20_sel_x(BITSELECT,166)@2
    assign i_idx_ext_ff_rgb24toyv12_c20_sel_x_b = $unsigned({{32{i_llvm_fpga_ffwd_dest_i32_lumstride118249_ff_rgb24toyv12_c19_out_dest_data_out_14_0[31]}}, i_llvm_fpga_ffwd_dest_i32_lumstride118249_ff_rgb24toyv12_c19_out_dest_data_out_14_0[31:0]});

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,323)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = i_idx_ext_ff_rgb24toyv12_c20_sel_x_b[63:54];
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = i_idx_ext_ff_rgb24toyv12_c20_sel_x_b[53:36];
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = i_idx_ext_ff_rgb24toyv12_c20_sel_x_b[35:18];
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = i_idx_ext_ff_rgb24toyv12_c20_sel_x_b[17:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,317)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,294)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,319)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,293)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,295)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,318)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,291)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,320)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,292)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_add_ptr_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,296)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_add_ptr_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,160)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_mult_extender_x_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q, i_add_ptr_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,162)@2
    assign i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b = i_add_ptr_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // redist2_i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b_1(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b);
        end
    end

    // i_add_ptr_ff_rgb24toyv12_c0_add_x(ADD,154)@3
    assign i_add_ptr_ff_rgb24toyv12_c0_add_x_a = {1'b0, i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_q};
    assign i_add_ptr_ff_rgb24toyv12_c0_add_x_b = {1'b0, redist2_i_add_ptr_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q};
    assign i_add_ptr_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_add_ptr_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_add_ptr_ff_rgb24toyv12_c0_add_x_b);
    assign i_add_ptr_ff_rgb24toyv12_c0_add_x_q = i_add_ptr_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_add_ptr_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,163)@3
    assign i_add_ptr_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_add_ptr_ff_rgb24toyv12_c0_add_x_q[63:0];

    // valid_fanout_reg10(REG,179)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_srcstride120247_ff_rgb24toyv12_c17(BLACKBOX,53)@2
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i32_srcstride120247_0 thei_llvm_fpga_ffwd_dest_i32_srcstride120247_ff_rgb24toyv12_c17 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i32_srcstride120247_ff_rgb24toyv12_c17_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idx_ext72_ff_rgb24toyv12_c18_sel_x(BITSELECT,165)@2
    assign i_idx_ext72_ff_rgb24toyv12_c18_sel_x_b = $unsigned({{32{i_llvm_fpga_ffwd_dest_i32_srcstride120247_ff_rgb24toyv12_c17_out_dest_data_out_12_0[31]}}, i_llvm_fpga_ffwd_dest_i32_srcstride120247_ff_rgb24toyv12_c17_out_dest_data_out_12_0[31:0]});

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,322)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = i_idx_ext72_ff_rgb24toyv12_c18_sel_x_b[63:54];
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = i_idx_ext72_ff_rgb24toyv12_c18_sel_x_b[53:36];
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = i_idx_ext72_ff_rgb24toyv12_c18_sel_x_b[35:18];
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = i_idx_ext72_ff_rgb24toyv12_c18_sel_x_b[17:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,313)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,276)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,315)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,275)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,277)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,314)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,273)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,316)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,274)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,278)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,150)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_mult_extender_x_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q, i_add_ptr73_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,152)@2
    assign i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b = i_add_ptr73_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // redist3_i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b_1(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b);
        end
    end

    // i_add_ptr73_ff_rgb24toyv12_c0_add_x(ADD,144)@3
    assign i_add_ptr73_ff_rgb24toyv12_c0_add_x_a = {1'b0, i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_q};
    assign i_add_ptr73_ff_rgb24toyv12_c0_add_x_b = {1'b0, redist3_i_add_ptr73_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q};
    assign i_add_ptr73_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_add_ptr73_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_add_ptr73_ff_rgb24toyv12_c0_add_x_b);
    assign i_add_ptr73_ff_rgb24toyv12_c0_add_x_q = i_add_ptr73_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_add_ptr73_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,153)@3
    assign i_add_ptr73_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_add_ptr73_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_notcmp292_ff_rgb24toyv12_c37(LOGICAL,71)@3
    assign i_notcmp292_ff_rgb24toyv12_c37_q = redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q ^ VCC_q;

    // redist8_i_unnamed_ff_rgb24toyv12_c35_q_2(DELAY,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_delay_0 <= '0;
            redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q <= '0;
        end
        else
        begin
            redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_delay_0 <= $unsigned(i_unnamed_ff_rgb24toyv12_c35_q);
            redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q <= redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_delay_0;
        end
    end

    // redist10_i_cmp75_ff_rgb24toyv12_c24_q_2(DELAY,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_delay_0 <= '0;
            redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_q <= '0;
        end
        else
        begin
            redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_delay_0 <= $unsigned(i_cmp75_ff_rgb24toyv12_c24_q);
            redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_q <= redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_delay_0;
        end
    end

    // valid_fanout_reg7(REG,176)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_vdst115250_ff_rgb24toyv12_c12(BLACKBOX,56)@3
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_p1024i32_vdst115250_0 thei_llvm_fpga_ffwd_dest_p1024i32_vdst115250_ff_rgb24toyv12_c12 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_p1024i32_vdst115250_ff_rgb24toyv12_c12_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,177)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg15(REG,184)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg9(REG,178)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_chromstride119248_ff_rgb24toyv12_c15(BLACKBOX,49)@2
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i32_chromstride119248_0 thei_llvm_fpga_ffwd_dest_i32_chromstride119248_ff_rgb24toyv12_c15 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i32_chromstride119248_ff_rgb24toyv12_c15_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idx_ext131_ff_rgb24toyv12_c16_sel_x(BITSELECT,164)@2
    assign i_idx_ext131_ff_rgb24toyv12_c16_sel_x_b = $unsigned({{32{i_llvm_fpga_ffwd_dest_i32_chromstride119248_ff_rgb24toyv12_c15_out_dest_data_out_13_0[31]}}, i_llvm_fpga_ffwd_dest_i32_chromstride119248_ff_rgb24toyv12_c15_out_dest_data_out_13_0[31:0]});

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,321)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = i_idx_ext131_ff_rgb24toyv12_c16_sel_x_b[63:54];
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = i_idx_ext131_ff_rgb24toyv12_c16_sel_x_b[53:36];
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = i_idx_ext131_ff_rgb24toyv12_c16_sel_x_b[35:18];
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = i_idx_ext131_ff_rgb24toyv12_c16_sel_x_b[17:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,301)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,222)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,303)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,221)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,223)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,302)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,219)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,304)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,220)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,224)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,120)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_mult_extender_x_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q, i_add_ptr134_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,122)@2
    assign i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b = i_add_ptr134_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // redist6_i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b_1(DELAY,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b);
        end
    end

    // i_add_ptr134_ff_rgb24toyv12_c0_add_x(ADD,114)@3
    assign i_add_ptr134_ff_rgb24toyv12_c0_add_x_a = {1'b0, i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q};
    assign i_add_ptr134_ff_rgb24toyv12_c0_add_x_b = {1'b0, redist6_i_add_ptr134_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q};
    assign i_add_ptr134_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_add_ptr134_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_add_ptr134_ff_rgb24toyv12_c0_add_x_b);
    assign i_add_ptr134_ff_rgb24toyv12_c0_add_x_q = i_add_ptr134_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_add_ptr134_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,123)@3
    assign i_add_ptr134_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_add_ptr134_ff_rgb24toyv12_c0_add_x_q[63:0];

    // redist9_i_unnamed_ff_rgb24toyv12_c27_q_2(DELAY,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_delay_0 <= '0;
            redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_q <= '0;
        end
        else
        begin
            redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_delay_0 <= $unsigned(i_unnamed_ff_rgb24toyv12_c27_q);
            redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_q <= redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_delay_0;
        end
    end

    // i_select8_ff_rgb24toyv12_c51(MUX,76)@3
    assign i_select8_ff_rgb24toyv12_c51_s = redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_q;
    always @(i_select8_ff_rgb24toyv12_c51_s or i_add_ptr134_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b or i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q)
    begin
        unique case (i_select8_ff_rgb24toyv12_c51_s)
            1'b0 : i_select8_ff_rgb24toyv12_c51_q = i_add_ptr134_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
            1'b1 : i_select8_ff_rgb24toyv12_c51_q = i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q;
            default : i_select8_ff_rgb24toyv12_c51_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52(BLACKBOX,68)@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_0 thei_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52 (
        .in_data_in(i_select8_ff_rgb24toyv12_c51_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_unnamed_ff_rgb24toyv12_c71(redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_1024_undef78(CONSTANT,32)
    assign c_i32_addrspace_1024_undef78_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13(BLACKBOX,62)@3
    // out out_feedback_stall_out_13@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_0 thei_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13 (
        .in_data_in(c_i32_addrspace_1024_undef78_q),
        .in_dir(redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_13(i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_p1024i32_vdst_addr_0108_push13_ff_rgb24toyv12_c52_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14(MUX,81)@3
    assign i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_s = redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_s or i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13_out_data_out or i_llvm_fpga_ffwd_dest_p1024i32_vdst115250_ff_rgb24toyv12_c12_out_dest_data_out_15_0)
    begin
        unique case (i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_s)
            1'b0 : i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q = i_llvm_fpga_pop_p1024i32_vdst_addr_0108_pop13_ff_rgb24toyv12_c13_out_data_out;
            1'b1 : i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q = i_llvm_fpga_ffwd_dest_p1024i32_vdst115250_ff_rgb24toyv12_c12_out_dest_data_out_15_0;
            default : i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q = 64'b0;
        endcase
    end

    // valid_fanout_reg5(REG,174)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_udst114251_ff_rgb24toyv12_c9(BLACKBOX,55)@3
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_p1024i32_udst114251_0 thei_llvm_fpga_ffwd_dest_p1024i32_udst114251_ff_rgb24toyv12_c9 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_p1024i32_udst114251_ff_rgb24toyv12_c9_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,175)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,183)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,297)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,204)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,299)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,203)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,205)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,298)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,201)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,300)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_add_ptr132_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,202)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,206)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,110)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_mult_extender_x_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q, i_add_ptr132_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,112)@2
    assign i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b = i_add_ptr132_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // redist7_i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b_1(DELAY,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist7_i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b);
        end
    end

    // i_add_ptr132_ff_rgb24toyv12_c0_add_x(ADD,104)@3
    assign i_add_ptr132_ff_rgb24toyv12_c0_add_x_a = {1'b0, i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q};
    assign i_add_ptr132_ff_rgb24toyv12_c0_add_x_b = {1'b0, redist7_i_add_ptr132_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q};
    assign i_add_ptr132_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_add_ptr132_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_add_ptr132_ff_rgb24toyv12_c0_add_x_b);
    assign i_add_ptr132_ff_rgb24toyv12_c0_add_x_q = i_add_ptr132_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_add_ptr132_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,113)@3
    assign i_add_ptr132_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_add_ptr132_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_select13_ff_rgb24toyv12_c48(MUX,73)@3
    assign i_select13_ff_rgb24toyv12_c48_s = redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_q;
    always @(i_select13_ff_rgb24toyv12_c48_s or i_add_ptr132_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b or i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q)
    begin
        unique case (i_select13_ff_rgb24toyv12_c48_s)
            1'b0 : i_select13_ff_rgb24toyv12_c48_q = i_add_ptr132_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
            1'b1 : i_select13_ff_rgb24toyv12_c48_q = i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q;
            default : i_select13_ff_rgb24toyv12_c48_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49(BLACKBOX,67)@3
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_0 thei_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49 (
        .in_data_in(i_select13_ff_rgb24toyv12_c48_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_unnamed_ff_rgb24toyv12_c71(redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10(BLACKBOX,61)@3
    // out out_feedback_stall_out_12@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_0 thei_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10 (
        .in_data_in(c_i32_addrspace_1024_undef78_q),
        .in_dir(redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_12(i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_p1024i32_udst_addr_0109_push12_ff_rgb24toyv12_c49_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11(MUX,78)@3
    assign i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_s = redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_s or i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10_out_data_out or i_llvm_fpga_ffwd_dest_p1024i32_udst114251_ff_rgb24toyv12_c9_out_dest_data_out_16_0)
    begin
        unique case (i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_s)
            1'b0 : i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q = i_llvm_fpga_pop_p1024i32_udst_addr_0109_pop12_ff_rgb24toyv12_c10_out_data_out;
            1'b1 : i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q = i_llvm_fpga_ffwd_dest_p1024i32_udst114251_ff_rgb24toyv12_c9_out_dest_data_out_16_0;
            default : i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q = 64'b0;
        endcase
    end

    // valid_fanout_reg3(REG,172)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_ydst113252_ff_rgb24toyv12_c6(BLACKBOX,57)@3
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_p1024i32_ydst113252_0 thei_llvm_fpga_ffwd_dest_p1024i32_ydst113252_ff_rgb24toyv12_c6 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024i32_ydst113252_ff_rgb24toyv12_c6_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,173)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg13(REG,182)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,305)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,240)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,307)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,239)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,241)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,306)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,237)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,308)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_add_ptr136_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,238)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,242)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,130)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_mult_extender_x_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q, i_add_ptr136_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,132)@2
    assign i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b = i_add_ptr136_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // redist5_i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b_1(DELAY,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist5_i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b);
        end
    end

    // i_add_ptr136_ff_rgb24toyv12_c0_add_x(ADD,124)@3
    assign i_add_ptr136_ff_rgb24toyv12_c0_add_x_a = {1'b0, i_add_ptr_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b};
    assign i_add_ptr136_ff_rgb24toyv12_c0_add_x_b = {1'b0, redist5_i_add_ptr136_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q};
    assign i_add_ptr136_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_add_ptr136_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_add_ptr136_ff_rgb24toyv12_c0_add_x_b);
    assign i_add_ptr136_ff_rgb24toyv12_c0_add_x_q = i_add_ptr136_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_add_ptr136_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,133)@3
    assign i_add_ptr136_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_add_ptr136_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_select18_ff_rgb24toyv12_c45(MUX,74)@3
    assign i_select18_ff_rgb24toyv12_c45_s = redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_q;
    always @(i_select18_ff_rgb24toyv12_c45_s or i_add_ptr136_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b or i_add_ptr_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b)
    begin
        unique case (i_select18_ff_rgb24toyv12_c45_s)
            1'b0 : i_select18_ff_rgb24toyv12_c45_q = i_add_ptr136_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
            1'b1 : i_select18_ff_rgb24toyv12_c45_q = i_add_ptr_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
            default : i_select18_ff_rgb24toyv12_c45_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46(BLACKBOX,69)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_0 thei_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46 (
        .in_data_in(i_select18_ff_rgb24toyv12_c45_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_ff_rgb24toyv12_c71(redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7(BLACKBOX,63)@3
    // out out_feedback_stall_out_11@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_0 thei_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7 (
        .in_data_in(c_i32_addrspace_1024_undef78_q),
        .in_dir(redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_11(i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_p1024i32_ydst_addr_0110_push11_ff_rgb24toyv12_c46_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8(MUX,82)@3
    assign i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_s = redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_s or i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7_out_data_out or i_llvm_fpga_ffwd_dest_p1024i32_ydst113252_ff_rgb24toyv12_c6_out_dest_data_out_17_0)
    begin
        unique case (i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_s)
            1'b0 : i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_q = i_llvm_fpga_pop_p1024i32_ydst_addr_0110_pop11_ff_rgb24toyv12_c7_out_data_out;
            1'b1 : i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_q = i_llvm_fpga_ffwd_dest_p1024i32_ydst113252_ff_rgb24toyv12_c6_out_dest_data_out_17_0;
            default : i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_q = 64'b0;
        endcase
    end

    // valid_fanout_reg1(REG,170)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_src112253_ff_rgb24toyv12_c3(BLACKBOX,54)@3
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_p1024i32_src112253_0 thei_llvm_fpga_ffwd_dest_p1024i32_src112253_ff_rgb24toyv12_c3 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_p1024i32_src112253_ff_rgb24toyv12_c3_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,171)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,181)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist1_sync_together107_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,309)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,258)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,311)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,257)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,259)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,310)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,255)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,312)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_add_ptr138_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,256)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,260)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,140)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_mult_extender_x_q = {i_add_ptr132_ff_rgb24toyv12_c0_mult_multconst_x_q, i_add_ptr138_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,142)@2
    assign i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b = i_add_ptr138_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // redist4_i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b_1(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b);
        end
    end

    // i_add_ptr138_ff_rgb24toyv12_c0_add_x(ADD,134)@3
    assign i_add_ptr138_ff_rgb24toyv12_c0_add_x_a = {1'b0, i_add_ptr73_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b};
    assign i_add_ptr138_ff_rgb24toyv12_c0_add_x_b = {1'b0, redist4_i_add_ptr138_ff_rgb24toyv12_c0_trunc_sel_x_b_1_q};
    assign i_add_ptr138_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_add_ptr138_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_add_ptr138_ff_rgb24toyv12_c0_add_x_b);
    assign i_add_ptr138_ff_rgb24toyv12_c0_add_x_q = i_add_ptr138_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_add_ptr138_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,143)@3
    assign i_add_ptr138_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_add_ptr138_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_select23_ff_rgb24toyv12_c41(MUX,75)@3
    assign i_select23_ff_rgb24toyv12_c41_s = redist9_i_unnamed_ff_rgb24toyv12_c27_q_2_q;
    always @(i_select23_ff_rgb24toyv12_c41_s or i_add_ptr138_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b or i_add_ptr73_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b)
    begin
        unique case (i_select23_ff_rgb24toyv12_c41_s)
            1'b0 : i_select23_ff_rgb24toyv12_c41_q = i_add_ptr138_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
            1'b1 : i_select23_ff_rgb24toyv12_c41_q = i_add_ptr73_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
            default : i_select23_ff_rgb24toyv12_c41_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42(BLACKBOX,66)@3
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_push_p1024i32_src_addr_0111_push10_0 thei_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42 (
        .in_data_in(i_select23_ff_rgb24toyv12_c41_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_unnamed_ff_rgb24toyv12_c71(redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4(BLACKBOX,60)@3
    // out out_feedback_stall_out_10@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_0 thei_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4 (
        .in_data_in(c_i32_addrspace_1024_undef78_q),
        .in_dir(redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_p1024i32_src_addr_0111_push10_ff_rgb24toyv12_c42_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5(MUX,77)@3
    assign i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_s = redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_s or i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4_out_data_out or i_llvm_fpga_ffwd_dest_p1024i32_src112253_ff_rgb24toyv12_c3_out_dest_data_out_18_0)
    begin
        unique case (i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_s)
            1'b0 : i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_q = i_llvm_fpga_pop_p1024i32_src_addr_0111_pop10_ff_rgb24toyv12_c4_out_data_out;
            1'b1 : i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_q = i_llvm_fpga_ffwd_dest_p1024i32_src112253_ff_rgb24toyv12_c3_out_dest_data_out_18_0;
            default : i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_q = 64'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,167)@3
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = i_src_addr_0111_replace_phi_ff_rgb24toyv12_c5_q;
    assign out_c0_exi10_2_tpl = i_ydst_addr_0110_replace_phi_ff_rgb24toyv12_c8_q;
    assign out_c0_exi10_3_tpl = i_udst_addr_0109_replace_phi_ff_rgb24toyv12_c11_q;
    assign out_c0_exi10_4_tpl = i_vdst_addr_0108_replace_phi_ff_rgb24toyv12_c14_q;
    assign out_c0_exi10_5_tpl = redist10_i_cmp75_ff_rgb24toyv12_c24_q_2_q;
    assign out_c0_exi10_6_tpl = redist8_i_unnamed_ff_rgb24toyv12_c35_q_2_q;
    assign out_c0_exi10_7_tpl = i_notcmp292_ff_rgb24toyv12_c37_q;
    assign out_c0_exi10_8_tpl = i_add_ptr73_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi10_9_tpl = i_add_ptr_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi10_10_tpl = redist0_sync_together107_aunroll_x_in_c0_eni1_1_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_ff_rgb24toyv12_c1 = GND_q;

endmodule
