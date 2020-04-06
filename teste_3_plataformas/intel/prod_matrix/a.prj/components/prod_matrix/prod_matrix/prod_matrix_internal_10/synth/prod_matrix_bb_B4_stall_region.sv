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

// SystemVerilog created from prod_matrix_bb_B4_stall_region
// SystemVerilog created on Mon Apr  6 12:55:33 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_bb_B4_stall_region (
    input wire [63:0] in_lm1_prod_matrix_avm_readdata,
    input wire [0:0] in_lm1_prod_matrix_avm_writeack,
    input wire [0:0] in_lm1_prod_matrix_avm_waitrequest,
    input wire [0:0] in_lm1_prod_matrix_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked18,
    input wire [31:0] in_i_021_pop1136_pop1857,
    input wire [31:0] in_j_018_pop1453,
    input wire [0:0] in_memdep_phi3_pop1554,
    input wire [0:0] in_memdep_phi4_pop1238_pop1958,
    input wire [0:0] in_notcmp2252,
    input wire [0:0] in_notcmp2634_pop1756,
    input wire [0:0] in_pop1655,
    input wire [0:0] in_unnamed_prod_matrix13,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm82_prod_matrix_avm_readdata,
    input wire [0:0] in_lm82_prod_matrix_avm_writeack,
    input wire [0:0] in_lm82_prod_matrix_avm_waitrequest,
    input wire [0:0] in_lm82_prod_matrix_avm_readdatavalid,
    output wire [63:0] out_lm1_prod_matrix_avm_address,
    output wire [0:0] out_lm1_prod_matrix_avm_enable,
    output wire [0:0] out_lm1_prod_matrix_avm_read,
    output wire [0:0] out_lm1_prod_matrix_avm_write,
    output wire [63:0] out_lm1_prod_matrix_avm_writedata,
    output wire [7:0] out_lm1_prod_matrix_avm_byteenable,
    output wire [0:0] out_lm1_prod_matrix_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp2240_pop29,
    output wire [0:0] out_notcmp2635_pop25,
    output wire [0:0] out_pop24,
    output wire [0:0] out_pop28,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_prod_matrix_avm_readdata,
    input wire [0:0] in_memdep_prod_matrix_avm_writeack,
    input wire [0:0] in_memdep_prod_matrix_avm_waitrequest,
    input wire [0:0] in_memdep_prod_matrix_avm_readdatavalid,
    output wire [63:0] out_lm82_prod_matrix_avm_address,
    output wire [0:0] out_lm82_prod_matrix_avm_enable,
    output wire [0:0] out_lm82_prod_matrix_avm_read,
    output wire [0:0] out_lm82_prod_matrix_avm_write,
    output wire [63:0] out_lm82_prod_matrix_avm_writedata,
    output wire [7:0] out_lm82_prod_matrix_avm_byteenable,
    output wire [0:0] out_lm82_prod_matrix_avm_burstcount,
    output wire [63:0] out_memdep_prod_matrix_avm_address,
    output wire [0:0] out_memdep_prod_matrix_avm_enable,
    output wire [0:0] out_memdep_prod_matrix_avm_read,
    output wire [0:0] out_memdep_prod_matrix_avm_write,
    output wire [63:0] out_memdep_prod_matrix_avm_writedata,
    output wire [7:0] out_memdep_prod_matrix_avm_byteenable,
    output wire [0:0] out_memdep_prod_matrix_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_160_q;
    wire [31:0] c_i32_064_q;
    wire [31:0] c_i32_165_q;
    wire [32:0] c_i33_167_q;
    wire [32:0] c_i33_undef63_q;
    wire [1:0] i_cleanups_shl_prod_matrix3_vt_join_q;
    wire [0:0] i_cleanups_shl_prod_matrix3_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_or_prod_matrix30_q;
    wire [33:0] i_fpga_indvars_iv_next_prod_matrix42_a;
    wire [33:0] i_fpga_indvars_iv_next_prod_matrix42_b;
    logic [33:0] i_fpga_indvars_iv_next_prod_matrix42_o;
    wire [33:0] i_fpga_indvars_iv_next_prod_matrix42_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_prod_matrix8_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_prod_matrix8_q;
    wire [63:0] i_idxprom11_prod_matrix11_vt_join_q;
    wire [31:0] i_idxprom11_prod_matrix11_vt_select_31_b;
    wire [63:0] i_idxprom7_prod_matrix20_vt_join_q;
    wire [31:0] i_idxprom7_prod_matrix20_vt_select_31_b;
    wire [63:0] i_idxprom_prod_matrix14_vt_join_q;
    wire [31:0] i_idxprom_prod_matrix14_vt_select_31_b;
    wire [32:0] i_inc_prod_matrix38_a;
    wire [32:0] i_inc_prod_matrix38_b;
    logic [32:0] i_inc_prod_matrix38_o;
    wire [32:0] i_inc_prod_matrix38_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_prod_matrix31_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm82_prod_matrix34_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_prod_matrix36_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_push24_prod_matrix53_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_push24_prod_matrix53_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_push24_prod_matrix53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_push24_prod_matrix53_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_push28_prod_matrix57_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push28_prod_matrix57_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push28_prod_matrix57_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_push28_prod_matrix57_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_valid_out;
    wire [0:0] i_masked_prod_matrix51_qi;
    reg [0:0] i_masked_prod_matrix51_q;
    wire [0:0] i_next_cleanups_prod_matrix49_s;
    reg [1:0] i_next_cleanups_prod_matrix49_q;
    wire [0:0] i_notcmp_prod_matrix46_q;
    wire [0:0] i_or_prod_matrix48_q;
    wire [0:0] i_reduction_prod_matrix_0_prod_matrix27_q;
    wire [0:0] i_reduction_prod_matrix_1_prod_matrix29_q;
    wire [0:0] i_unnamed_prod_matrix18_q;
    wire [0:0] i_unnamed_prod_matrix45_q;
    wire [0:0] i_xor_prod_matrix2_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_prod_matrix42_sel_x_b;
    wire [31:0] bgTrunc_i_inc_prod_matrix38_sel_x_b;
    wire [63:0] bgTrunc_i_mul_prod_matrix35_sel_x_in;
    wire [31:0] bgTrunc_i_mul_prod_matrix35_sel_x_b;
    wire [64:0] i_arrayidx12_prod_matrix0_add_x_a;
    wire [64:0] i_arrayidx12_prod_matrix0_add_x_b;
    logic [64:0] i_arrayidx12_prod_matrix0_add_x_o;
    wire [64:0] i_arrayidx12_prod_matrix0_add_x_q;
    wire [64:0] i_arrayidx12_prod_matrix0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx12_prod_matrix0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx12_prod_matrix0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx12_prod_matrix0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx12_prod_matrix0_mult_extender_x_q;
    wire [54:0] i_arrayidx12_prod_matrix0_mult_multconst_x_q;
    wire [63:0] i_arrayidx12_prod_matrix0_trunc_sel_x_b;
    wire [127:0] i_arrayidx12_prod_matrix0_dupName_0_mult_extender_x_q;
    wire [60:0] i_arrayidx12_prod_matrix0_dupName_0_mult_multconst_x_q;
    wire [63:0] i_arrayidx12_prod_matrix0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx12_prod_matrix0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx12_prod_matrix0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx16_prod_matrix0_add_x_a;
    wire [64:0] i_arrayidx16_prod_matrix0_add_x_b;
    logic [64:0] i_arrayidx16_prod_matrix0_add_x_o;
    wire [64:0] i_arrayidx16_prod_matrix0_add_x_q;
    wire [64:0] i_arrayidx16_prod_matrix0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx16_prod_matrix0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx16_prod_matrix0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx16_prod_matrix0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx16_prod_matrix0_mult_extender_x_q;
    wire [63:0] i_arrayidx16_prod_matrix0_trunc_sel_x_b;
    wire [127:0] i_arrayidx16_prod_matrix0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx16_prod_matrix0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx16_prod_matrix0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx16_prod_matrix0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx8_prod_matrix0_add_x_a;
    wire [64:0] i_arrayidx8_prod_matrix0_add_x_b;
    logic [64:0] i_arrayidx8_prod_matrix0_add_x_o;
    wire [64:0] i_arrayidx8_prod_matrix0_add_x_q;
    wire [64:0] i_arrayidx8_prod_matrix0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx8_prod_matrix0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx8_prod_matrix0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx8_prod_matrix0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx8_prod_matrix0_mult_extender_x_q;
    wire [63:0] i_arrayidx8_prod_matrix0_trunc_sel_x_b;
    wire [127:0] i_arrayidx8_prod_matrix0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx8_prod_matrix0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_prod_matrix0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_prod_matrix0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_prod_matrix1_sel_x_b;
    wire [63:0] i_idxprom11_prod_matrix11_sel_x_b;
    wire [63:0] i_idxprom7_prod_matrix20_sel_x_b;
    wire [63:0] i_idxprom_prod_matrix14_sel_x_b;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_exitcond_prod_matrix40_cmp_nsign_q;
    wire [63:0] i_mul_prod_matrix35_sums_join_0_q;
    wire [50:0] i_mul_prod_matrix35_sums_align_1_q;
    wire [50:0] i_mul_prod_matrix35_sums_align_1_qint;
    wire [64:0] i_mul_prod_matrix35_sums_result_add_0_0_a;
    wire [64:0] i_mul_prod_matrix35_sums_result_add_0_0_b;
    logic [64:0] i_mul_prod_matrix35_sums_result_add_0_0_o;
    wire [64:0] i_mul_prod_matrix35_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx12_prod_matrix0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx12_prod_matrix0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx12_prod_matrix0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx12_prod_matrix0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx12_prod_matrix0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx12_prod_matrix0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx12_prod_matrix0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx12_prod_matrix0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx16_prod_matrix0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx16_prod_matrix0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx16_prod_matrix0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx16_prod_matrix0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx16_prod_matrix0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx16_prod_matrix0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx16_prod_matrix0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx16_prod_matrix0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx8_prod_matrix0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8_prod_matrix0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx8_prod_matrix0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx8_prod_matrix0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx8_prod_matrix0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8_prod_matrix0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8_prod_matrix0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx8_prod_matrix0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid387_i_cleanups_shl_prod_matrix0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid387_i_cleanups_shl_prod_matrix0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid388_i_cleanups_shl_prod_matrix0_shift_x_q;
    wire [0:0] leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_s;
    reg [1:0] leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_q;
    wire [12:0] i_arrayidx12_prod_matrix0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx12_prod_matrix0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx12_prod_matrix0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx12_prod_matrix0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx12_prod_matrix0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx12_prod_matrix0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx12_prod_matrix0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx12_prod_matrix0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx12_prod_matrix0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx12_prod_matrix0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx12_prod_matrix0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx12_prod_matrix0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx12_prod_matrix0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx12_prod_matrix0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx12_prod_matrix0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx12_prod_matrix0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx12_prod_matrix0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx12_prod_matrix0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx12_prod_matrix0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx12_prod_matrix0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx12_prod_matrix0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx16_prod_matrix0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx16_prod_matrix0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx16_prod_matrix0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx16_prod_matrix0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx16_prod_matrix0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx16_prod_matrix0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx16_prod_matrix0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx16_prod_matrix0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx16_prod_matrix0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx16_prod_matrix0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx16_prod_matrix0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx16_prod_matrix0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx16_prod_matrix0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx16_prod_matrix0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx16_prod_matrix0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx16_prod_matrix0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx16_prod_matrix0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx16_prod_matrix0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx16_prod_matrix0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx16_prod_matrix0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx16_prod_matrix0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx16_prod_matrix0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx8_prod_matrix0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx8_prod_matrix0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx8_prod_matrix0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx8_prod_matrix0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx8_prod_matrix0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx8_prod_matrix0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx8_prod_matrix0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx8_prod_matrix0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx8_prod_matrix0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx8_prod_matrix0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx8_prod_matrix0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx8_prod_matrix0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx8_prod_matrix0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx8_prod_matrix0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx8_prod_matrix0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx8_prod_matrix0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx8_prod_matrix0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx8_prod_matrix0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx8_prod_matrix0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx8_prod_matrix0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx8_prod_matrix0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx8_prod_matrix0_dupName_0_mult_x_im9_shift0_qint;
    wire i_mul_prod_matrix35_im0_cma_reset;
    wire [13:0] i_mul_prod_matrix35_im0_cma_a0;
    wire [13:0] i_mul_prod_matrix35_im0_cma_c0;
    wire [27:0] i_mul_prod_matrix35_im0_cma_s0;
    wire [27:0] i_mul_prod_matrix35_im0_cma_qq;
    wire [27:0] i_mul_prod_matrix35_im0_cma_q;
    wire i_mul_prod_matrix35_im0_cma_ena0;
    wire i_mul_prod_matrix35_im0_cma_ena1;
    wire i_mul_prod_matrix35_im0_cma_ena2;
    wire i_mul_prod_matrix35_im8_cma_reset;
    wire [17:0] i_mul_prod_matrix35_im8_cma_a0;
    wire [17:0] i_mul_prod_matrix35_im8_cma_c0;
    wire [35:0] i_mul_prod_matrix35_im8_cma_s0;
    wire [35:0] i_mul_prod_matrix35_im8_cma_qq;
    wire [35:0] i_mul_prod_matrix35_im8_cma_q;
    wire i_mul_prod_matrix35_im8_cma_ena0;
    wire i_mul_prod_matrix35_im8_cma_ena1;
    wire i_mul_prod_matrix35_im8_cma_ena2;
    wire i_mul_prod_matrix35_ma3_cma_reset;
    wire [13:0] i_mul_prod_matrix35_ma3_cma_a0;
    wire [17:0] i_mul_prod_matrix35_ma3_cma_c0;
    wire [13:0] i_mul_prod_matrix35_ma3_cma_a1;
    wire [17:0] i_mul_prod_matrix35_ma3_cma_c1;
    wire [32:0] i_mul_prod_matrix35_ma3_cma_s0;
    wire [32:0] i_mul_prod_matrix35_ma3_cma_qq;
    wire [32:0] i_mul_prod_matrix35_ma3_cma_q;
    wire i_mul_prod_matrix35_ma3_cma_ena0;
    wire i_mul_prod_matrix35_ma3_cma_ena1;
    wire i_mul_prod_matrix35_ma3_cma_ena2;
    wire [9:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e;
    wire [13:0] i_mul_prod_matrix35_bs2_merged_bit_select_b;
    wire [17:0] i_mul_prod_matrix35_bs2_merged_bit_select_c;
    wire [13:0] i_mul_prod_matrix35_bs1_merged_bit_select_b;
    wire [17:0] i_mul_prod_matrix35_bs1_merged_bit_select_c;
    wire [3:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [63:0] join_for_coalesced_delay_1_q;
    wire [17:0] sel_for_coalesced_delay_1_b;
    wire [17:0] sel_for_coalesced_delay_1_c;
    wire [17:0] sel_for_coalesced_delay_1_d;
    wire [9:0] sel_for_coalesced_delay_1_e;
    wire [64:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    wire [63:0] join_for_coalesced_delay_3_q;
    wire [17:0] sel_for_coalesced_delay_3_b;
    wire [17:0] sel_for_coalesced_delay_3_c;
    wire [17:0] sel_for_coalesced_delay_3_d;
    wire [9:0] sel_for_coalesced_delay_3_e;
    wire [0:0] redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in;
    wire redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in;
    wire redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_in;
    wire [0:0] redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out;
    wire redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out;
    wire redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out;
    reg [0:0] redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_q;
    reg [0:0] redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q;
    reg [0:0] redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q;
    wire [0:0] redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in;
    wire redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in;
    wire redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_in;
    wire [0:0] redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out;
    wire redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out;
    wire redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_out;
    wire [0:0] redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_in;
    wire redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_in;
    wire redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_data_in;
    wire [0:0] redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_out;
    wire redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_out;
    wire redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_data_out;
    reg [63:0] redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist19_i_arrayidx16_prod_matrix0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_q;
    wire [0:0] redist21_i_masked_prod_matrix51_q_66_fifo_valid_in;
    wire redist21_i_masked_prod_matrix51_q_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_masked_prod_matrix51_q_66_fifo_stall_in;
    wire redist21_i_masked_prod_matrix51_q_66_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_masked_prod_matrix51_q_66_fifo_data_in;
    wire [0:0] redist21_i_masked_prod_matrix51_q_66_fifo_valid_out;
    wire redist21_i_masked_prod_matrix51_q_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_masked_prod_matrix51_q_66_fifo_stall_out;
    wire redist21_i_masked_prod_matrix51_q_66_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_masked_prod_matrix51_q_66_fifo_data_out;
    reg [31:0] redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_0_q;
    reg [31:0] redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_1_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_in;
    wire redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_in;
    wire redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_data_in;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_out;
    wire redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_out;
    wire redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_data_out;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_in;
    wire redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_in;
    wire redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_data_in;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_out;
    wire redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_out;
    wire redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_data_out;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_0_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_1_q;
    wire [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_in;
    wire redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_in;
    wire redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_data_in;
    wire [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_out;
    wire redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_out;
    wire redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_data_out;
    wire [0:0] redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_in;
    wire redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_in;
    wire redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_data_in;
    wire [0:0] redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_out;
    wire redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_out;
    wire redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_out;
    reg [63:0] coalesced_delay_1_0_q;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_out;
    reg [63:0] coalesced_delay_3_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_b;
    wire [32:0] bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_q;
    wire [32:0] bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_prod_matrix31_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_prod_matrix31_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm82_prod_matrix34_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm82_prod_matrix34_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_prod_matrix36_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_prod_matrix36_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_prod_matrix4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_pop24_prod_matrix52_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_pop24_prod_matrix52_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_pop28_prod_matrix56_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_pop28_prod_matrix56_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_b;
    wire [32:0] bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_q;
    wire [32:0] bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_b;
    wire [70:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [70:0] bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_prod_matrix_B4_merge_reg_aunroll_x_j;
    wire [27:0] bubble_join_i_mul_prod_matrix35_im0_cma_q;
    wire [27:0] bubble_select_i_mul_prod_matrix35_im0_cma_b;
    wire [35:0] bubble_join_i_mul_prod_matrix35_im8_cma_q;
    wire [35:0] bubble_select_i_mul_prod_matrix35_im8_cma_b;
    wire [32:0] bubble_join_i_mul_prod_matrix35_ma3_cma_q;
    wire [32:0] bubble_select_i_mul_prod_matrix35_ma3_cma_b;
    wire [0:0] bubble_join_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q;
    wire [0:0] bubble_select_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b;
    wire [0:0] bubble_join_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_q;
    wire [0:0] bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b;
    wire [0:0] bubble_join_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_q;
    wire [0:0] bubble_select_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_b;
    wire [0:0] bubble_join_redist21_i_masked_prod_matrix51_q_66_fifo_q;
    wire [0:0] bubble_select_redist21_i_masked_prod_matrix51_q_66_fifo_b;
    wire [31:0] bubble_join_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_q;
    wire [31:0] bubble_select_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_b;
    wire [31:0] bubble_join_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_q;
    wire [31:0] bubble_select_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_b;
    wire [0:0] bubble_join_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_q;
    wire [0:0] bubble_select_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_b;
    wire [0:0] bubble_join_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_q;
    wire [0:0] bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireValid;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireStall;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_StallValid;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_toReg0;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_toReg1;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_and0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_and1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_or0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_backStall;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_V0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_V1;
    wire [0:0] SE_i_inc_prod_matrix38_wireValid;
    wire [0:0] SE_i_inc_prod_matrix38_and0;
    wire [0:0] SE_i_inc_prod_matrix38_backStall;
    wire [0:0] SE_i_inc_prod_matrix38_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg7;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg8;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V8;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push24_prod_matrix53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push24_prod_matrix53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push28_prod_matrix57_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push28_prod_matrix57_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall;
    reg [0:0] SE_i_masked_prod_matrix51_R_v_0;
    wire [0:0] SE_i_masked_prod_matrix51_v_s_0;
    wire [0:0] SE_i_masked_prod_matrix51_s_tv_0;
    wire [0:0] SE_i_masked_prod_matrix51_backEN;
    wire [0:0] SE_i_masked_prod_matrix51_backStall;
    wire [0:0] SE_i_masked_prod_matrix51_V0;
    wire [0:0] SE_i_unnamed_prod_matrix45_wireValid;
    wire [0:0] SE_i_unnamed_prod_matrix45_wireStall;
    wire [0:0] SE_i_unnamed_prod_matrix45_StallValid;
    wire [0:0] SE_i_unnamed_prod_matrix45_toReg0;
    reg [0:0] SE_i_unnamed_prod_matrix45_fromReg0;
    wire [0:0] SE_i_unnamed_prod_matrix45_consumed0;
    wire [0:0] SE_i_unnamed_prod_matrix45_toReg1;
    reg [0:0] SE_i_unnamed_prod_matrix45_fromReg1;
    wire [0:0] SE_i_unnamed_prod_matrix45_consumed1;
    wire [0:0] SE_i_unnamed_prod_matrix45_and0;
    wire [0:0] SE_i_unnamed_prod_matrix45_or0;
    wire [0:0] SE_i_unnamed_prod_matrix45_backStall;
    wire [0:0] SE_i_unnamed_prod_matrix45_V0;
    wire [0:0] SE_i_unnamed_prod_matrix45_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_prod_matrix_B4_merge_reg_aunroll_x_V11;
    wire [0:0] SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_V0;
    reg [0:0] SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_R_v_0;
    wire [0:0] SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_v_s_0;
    wire [0:0] SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_s_tv_0;
    wire [0:0] SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN;
    wire [0:0] SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backStall;
    wire [0:0] SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_V0;
    reg [0:0] SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_R_v_0;
    wire [0:0] SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_v_s_0;
    wire [0:0] SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_s_tv_0;
    wire [0:0] SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN;
    wire [0:0] SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backStall;
    wire [0:0] SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_V0;
    reg [0:0] SE_i_mul_prod_matrix35_im0_cma_R_s_0;
    reg [0:0] SE_i_mul_prod_matrix35_im0_cma_R_s_1;
    reg [0:0] SE_i_mul_prod_matrix35_im0_cma_R_v_0;
    reg [0:0] SE_i_mul_prod_matrix35_im0_cma_R_v_1;
    reg [0:0] SE_i_mul_prod_matrix35_im0_cma_R_v_2;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_v_s_0;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_backEN;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_and0;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_or0;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_or1;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_backStall;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_V0;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_V1;
    wire [0:0] SE_i_mul_prod_matrix35_im0_cma_V2;
    wire [0:0] SE_sel_for_coalesced_delay_3_wireValid;
    wire [0:0] SE_sel_for_coalesced_delay_3_and0;
    wire [0:0] SE_sel_for_coalesced_delay_3_and1;
    wire [0:0] SE_sel_for_coalesced_delay_3_and2;
    wire [0:0] SE_sel_for_coalesced_delay_3_and3;
    wire [0:0] SE_sel_for_coalesced_delay_3_backStall;
    wire [0:0] SE_sel_for_coalesced_delay_3_V0;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0;
    reg [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1;
    reg [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0;
    wire [0:0] SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1;
    reg [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_R_v_0;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_v_s_0;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_s_tv_0;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backEN;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backStall;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_V0;
    reg [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_0;
    reg [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_1;
    reg [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_2;
    reg [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_3;
    reg [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_4;
    reg [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_5;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_0;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_1;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_2;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_3;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_4;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_5;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or0;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or1;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or2;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or3;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or4;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backStall;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V0;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V1;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V2;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V3;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V4;
    wire [0:0] SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V5;
    reg [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    reg [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_1;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_1;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_or0;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    wire [0:0] SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V1;
    wire [0:0] SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_wireValid;
    wire [0:0] SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_and0;
    wire [0:0] SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_backStall;
    wire [0:0] SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_V0;
    reg [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_2;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_or1;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V1;
    wire [0:0] SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V2;
    reg [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_2;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_or1;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V1;
    wire [0:0] SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V2;
    wire [0:0] SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_wireValid;
    wire [0:0] SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_backStall;
    wire [0:0] SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_V0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireStall;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_StallValid;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg0;
    reg [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg1;
    reg [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg2;
    reg [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg2;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed2;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_or0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_or1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_backStall;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V2;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_backStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_V0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireValid;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireStall;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_StallValid;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_toReg0;
    reg [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_toReg1;
    reg [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg1;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed1;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_or0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_backStall;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_V0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_V1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireStall;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg0;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg1;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg2;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg2;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed2;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg3;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg3;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed3;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg4;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg4;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed4;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg5;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg5;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed5;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or2;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or3;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or4;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_backStall;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V2;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V3;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V4;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg3;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_V0;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and0;
    wire [0:0] SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and1;
    wire [0:0] SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and2;
    wire [0:0] SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_i_masked_prod_matrix51_i_valid;
    reg [0:0] SR_SE_i_masked_prod_matrix51_r_valid;
    wire [0:0] SR_SE_i_masked_prod_matrix51_and0;
    reg [0:0] SR_SE_i_masked_prod_matrix51_r_data0;
    reg [0:0] SR_SE_i_masked_prod_matrix51_r_data1;
    wire [0:0] SR_SE_i_masked_prod_matrix51_backStall;
    wire [0:0] SR_SE_i_masked_prod_matrix51_V;
    wire [0:0] SR_SE_i_masked_prod_matrix51_D0;
    wire [0:0] SR_SE_i_masked_prod_matrix51_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data3;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data4;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data5;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data6;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data7;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D3;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D4;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D5;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D6;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D7;
    wire [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_and0;
    reg [32:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_V;
    wire [32:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_D1;


    // bubble_join_i_llvm_fpga_pipeline_keep_going_prod_matrix4(BITJOIN,565)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_prod_matrix4_q = i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4(BITSELECT,566)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_prod_matrix4_q[0:0]);

    // c_i33_167(CONSTANT,10)
    assign c_i33_167_q = $unsigned(33'b111111111111111111111111111111111);

    // bubble_join_prod_matrix_B4_merge_reg_aunroll_x(BITJOIN,614)
    assign bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q = {prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_7_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_6_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_5_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_4_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_3_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_2_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_1_tpl, prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_prod_matrix_B4_merge_reg_aunroll_x(BITSELECT,615)
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_prod_matrix_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_prod_matrix_B4_merge_reg_aunroll_x_q[70:70]);

    // join_for_coalesced_delay_0(BITJOIN,501)
    assign join_for_coalesced_delay_0_q = {bubble_select_prod_matrix_B4_merge_reg_aunroll_x_h, bubble_select_prod_matrix_B4_merge_reg_aunroll_x_g, bubble_select_prod_matrix_B4_merge_reg_aunroll_x_d, bubble_select_prod_matrix_B4_merge_reg_aunroll_x_c};

    // bubble_join_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo(BITJOIN,635)
    assign bubble_join_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_q = redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_out;

    // bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo(BITSELECT,636)
    assign bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b = $unsigned(bubble_join_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,656)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,657)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[3:0]);

    // sel_for_coalesced_delay_0(BITSELECT,502)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);

    // redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo(STALLFIFO,516)
    assign redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in = SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V1;
    assign redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_in = redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q;
    assign redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in_bitsignaltemp = redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in[0];
    assign redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in_bitsignaltemp = redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in[0];
    assign redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out[0] = redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out_bitsignaltemp;
    assign redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out[0] = redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo (
        .valid_in(redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in_bitsignaltemp),
        .data_in(redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q),
        .valid_out(redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_push24_prod_matrix53(STALLENABLE,732)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_push24_prod_matrix53_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_push24_prod_matrix53_wireValid = i_llvm_fpga_push_i1_push24_prod_matrix53_out_valid_out;

    // bubble_join_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo(BITJOIN,653)
    assign bubble_join_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_q = redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_data_out;

    // bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo(BITSELECT,654)
    assign bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b = $unsigned(bubble_join_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_pop24_prod_matrix52(BITJOIN,586)
    assign bubble_join_i_llvm_fpga_pop_i1_pop24_prod_matrix52_q = i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_pop24_prod_matrix52(BITSELECT,587)
    assign bubble_select_i_llvm_fpga_pop_i1_pop24_prod_matrix52_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_pop24_prod_matrix52_q[0:0]);

    // i_llvm_fpga_push_i1_push24_prod_matrix53(BLACKBOX,66)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    prod_matrix_i_llvm_fpga_push_i1_push24_0 thei_llvm_fpga_push_i1_push24_prod_matrix53 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_pop24_prod_matrix52_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_feedback_stall_out_24),
        .in_keep_going(bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_push24_prod_matrix53_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_push24_prod_matrix53_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_push24_prod_matrix53_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i1_push24_prod_matrix53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_push24_prod_matrix53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52(STALLENABLE,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall) & SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_backStall) & SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_StallValid = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_backStall & SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_toReg0 = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_StallValid & SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_toReg1 = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_StallValid & SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_or0 = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_consumed1 & SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_or0);
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_backStall = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_V0 = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_V1 = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_wireValid = i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53(STALLENABLE,731)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_V0 = SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_backStall = i_llvm_fpga_push_i1_push24_prod_matrix53_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_and0 = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_V1;
    assign SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_wireValid = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V3 & SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_and0;

    // SE_out_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55(STALLENABLE,728)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_wireValid = i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54(BITJOIN,582)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_q = i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54(BITSELECT,583)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55(BLACKBOX,64)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    prod_matrix_i_llvm_fpga_push_i1_notcmp2635_push25_0 thei_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_feedback_stall_out_25),
        .in_keep_going(bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54(STALLENABLE,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_wireValid = i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55(STALLENABLE,727)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_backStall = i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_and0 = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_V1;
    assign SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_wireValid = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V2 & SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_and0;

    // SE_out_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59(STALLENABLE,726)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_wireValid = i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58(BITJOIN,578)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_q = i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58(BITSELECT,579)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59(BLACKBOX,63)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    prod_matrix_i_llvm_fpga_push_i1_notcmp2240_push29_0 thei_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_feedback_stall_out_29),
        .in_keep_going(bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58(STALLENABLE,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_wireValid = i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59(STALLENABLE,725)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_backStall = i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_and0 = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_V1;
    assign SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_wireValid = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V1 & SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37(STALLENABLE,724)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_wireValid = i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_valid_out;

    // SE_out_i_llvm_fpga_mem_lm82_prod_matrix34(STALLENABLE,688)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_V0 = SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_backStall = SE_i_mul_prod_matrix35_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_wireValid = i_llvm_fpga_mem_lm82_prod_matrix34_out_o_valid;

    // i_arrayidx12_prod_matrix0_dupName_0_mult_multconst_x(CONSTANT,197)
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // c_i32_064(CONSTANT,8)
    assign c_i32_064_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9(BITJOIN,600)
    assign bubble_join_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_q = i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9(BITSELECT,601)
    assign bubble_select_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_q[31:0]);

    // SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9(STALLENABLE,712)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_V0 = SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_backStall = redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_wireValid = i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_valid_out;

    // redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo(STALLFIFO,524)
    assign redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_V0;
    assign redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_in = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_backStall;
    assign redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_b;
    assign redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_in_bitsignaltemp = redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_in[0];
    assign redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_in_bitsignaltemp = redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_in[0];
    assign redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_out[0] = redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_out_bitsignaltemp;
    assign redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_out[0] = redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo (
        .valid_in(redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_b),
        .valid_out(redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo(BITJOIN,644)
    assign bubble_join_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_q = redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_data_out;

    // bubble_select_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo(BITSELECT,645)
    assign bubble_select_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_b = $unsigned(bubble_join_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_q[31:0]);

    // i_idxprom11_prod_matrix11_sel_x(BITSELECT,246)@68
    assign i_idxprom11_prod_matrix11_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_b[31:0]};

    // i_idxprom11_prod_matrix11_vt_select_31(BITSELECT,27)@68
    assign i_idxprom11_prod_matrix11_vt_select_31_b = i_idxprom11_prod_matrix11_sel_x_b[31:0];

    // i_idxprom11_prod_matrix11_vt_join(BITJOIN,26)@68
    assign i_idxprom11_prod_matrix11_vt_join_q = {c_i32_064_q, i_idxprom11_prod_matrix11_vt_select_31_b};

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,466)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom11_prod_matrix11_vt_join_q[63:54];
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom11_prod_matrix11_vt_join_q[53:36];
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom11_prod_matrix11_vt_join_q[35:18];
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom11_prod_matrix11_vt_join_q[17:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_im0_shift0(BITSHIFT,411)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im0_shift0_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_3(BITSHIFT,308)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx12_prod_matrix0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_3_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_im6_shift0(BITSHIFT,413)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im6_shift0_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_2(BITSHIFT,307)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx12_prod_matrix0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_2_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_4(BITJOIN,309)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_3_q, i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_im3_shift0(BITSHIFT,412)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im3_shift0_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_0(BITSHIFT,305)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx12_prod_matrix0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_0_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_im9_shift0(BITSHIFT,414)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_im9_shift0_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_1(BITJOIN,306)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx12_prod_matrix0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0(ADD,310)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx12_prod_matrix0_dupName_0_mult_extender_x(BITJOIN,196)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_mult_extender_x_q = {i_arrayidx12_prod_matrix0_dupName_0_mult_multconst_x_q, i_arrayidx12_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx12_prod_matrix0_dupName_1_trunc_sel_x(BITSELECT,199)@68
    assign i_arrayidx12_prod_matrix0_dupName_1_trunc_sel_x_b = i_arrayidx12_prod_matrix0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx12_prod_matrix0_mult_multconst_x(CONSTANT,194)
    assign i_arrayidx12_prod_matrix0_mult_multconst_x_q = $unsigned(55'b0000000000000000000000000000000000000000000000000000000);

    // SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(STALLENABLE,921)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0 <= '0;
            SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0 <= SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0;
            // Successor 1
            SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1 <= SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0 = (~ (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backStall) & SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid) | SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0;
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_stall_out) & SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid) | SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall & SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid;
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0 = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid & SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1 = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid & SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0 = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall = ~ (SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1 & SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0);
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0 = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid & ~ (SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0);
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1 = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid & ~ (SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid = redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out;

    // SE_i_inc_prod_matrix38(STALLENABLE,672)
    // Valid signal propagation
    assign SE_i_inc_prod_matrix38_V0 = SE_i_inc_prod_matrix38_wireValid;
    // Backward Stall generation
    assign SE_i_inc_prod_matrix38_backStall = i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_stall_out | ~ (SE_i_inc_prod_matrix38_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_inc_prod_matrix38_and0 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V1;
    assign SE_i_inc_prod_matrix38_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V6 & SE_i_inc_prod_matrix38_and0;

    // SE_out_i_llvm_fpga_push_i32_k_016_push21_prod_matrix39(STALLENABLE,742)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_wireValid = i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_valid_out;

    // c_i32_165(CONSTANT,9)
    assign c_i32_165_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19(BITJOIN,603)
    assign bubble_join_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_q = i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19(BITSELECT,604)
    assign bubble_select_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_q[31:0]);

    // redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_0(REG,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_b);
        end
    end

    // redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_1(REG,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_1_q <= $unsigned(redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_0_q);
        end
    end

    // i_inc_prod_matrix38(ADD,36)@68
    assign i_inc_prod_matrix38_a = {1'b0, redist22_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out_2_1_q};
    assign i_inc_prod_matrix38_b = {1'b0, c_i32_165_q};
    assign i_inc_prod_matrix38_o = $unsigned(i_inc_prod_matrix38_a) + $unsigned(i_inc_prod_matrix38_b);
    assign i_inc_prod_matrix38_q = i_inc_prod_matrix38_o[32:0];

    // bgTrunc_i_inc_prod_matrix38_sel_x(BITSELECT,171)@68
    assign bgTrunc_i_inc_prod_matrix38_sel_x_b = i_inc_prod_matrix38_q[31:0];

    // i_llvm_fpga_push_i32_k_016_push21_prod_matrix39(BLACKBOX,71)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i32_k_016_push21_0 thei_llvm_fpga_push_i32_k_016_push21_prod_matrix39 (
        .in_data_in(bgTrunc_i_inc_prod_matrix38_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_backStall),
        .in_valid_in(SE_i_inc_prod_matrix38_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(BITJOIN,632)
    assign bubble_join_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q = redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out;

    // bubble_select_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(BITSELECT,633)
    assign bubble_select_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b = $unsigned(bubble_join_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q[0:0]);

    // i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19(BLACKBOX,57)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    prod_matrix_i_llvm_fpga_pop_i32_k_016_pop21_0 thei_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19 (
        .in_data_in(c_i32_064_q),
        .in_dir(bubble_select_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b),
        .in_feedback_in_21(i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_k_016_push21_prod_matrix39_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_backStall),
        .in_valid_in(SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19(STALLENABLE,714)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_V0 = SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_backStall = SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_wireValid = i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_out_valid_out;

    // SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1(STALLENABLE,833)
    // Valid signal propagation
    assign SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_V0 = SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_s_tv_0 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backStall & SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN = ~ (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_v_s_0 = SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN & SE_out_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_V0;
    // Backward Stall generation
    assign SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backStall = ~ (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN == 1'b0)
            begin
                SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_R_v_0 <= SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_R_v_0 & SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_R_v_0 <= SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_v_s_0;
            end

        end
    end

    // i_idxprom7_prod_matrix20_sel_x(BITSELECT,247)@66
    assign i_idxprom7_prod_matrix20_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_k_016_pop21_prod_matrix19_b[31:0]};

    // i_idxprom7_prod_matrix20_vt_select_31(BITSELECT,31)@66
    assign i_idxprom7_prod_matrix20_vt_select_31_b = i_idxprom7_prod_matrix20_sel_x_b[31:0];

    // i_idxprom7_prod_matrix20_vt_join(BITJOIN,30)@66
    assign i_idxprom7_prod_matrix20_vt_join_q = {c_i32_064_q, i_idxprom7_prod_matrix20_vt_select_31_b};

    // i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select(BITSELECT,467)@66
    assign i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_b = i_idxprom7_prod_matrix20_vt_join_q[63:54];
    assign i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_c = i_idxprom7_prod_matrix20_vt_join_q[53:36];
    assign i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_d = i_idxprom7_prod_matrix20_vt_join_q[35:18];
    assign i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_e = i_idxprom7_prod_matrix20_vt_join_q[17:0];

    // join_for_coalesced_delay_1(BITJOIN,504)
    assign join_for_coalesced_delay_1_q = {i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_b, i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_e, i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_d, i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_c};

    // coalesced_delay_1_0(REG,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,505)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_0_q[17:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_0_q[35:18]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_0_q[53:36]);
    assign sel_for_coalesced_delay_1_e = $unsigned(coalesced_delay_1_0_q[63:54]);

    // i_arrayidx12_prod_matrix0_mult_x_im0_shift2(BITSHIFT,393)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im0_shift2_qint = { sel_for_coalesced_delay_1_e, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im0_shift2_q = i_arrayidx12_prod_matrix0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx12_prod_matrix0_mult_x_im0_shift0(BITSHIFT,391)@66
    assign i_arrayidx12_prod_matrix0_mult_x_im0_shift0_qint = { i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im0_shift0_q = i_arrayidx12_prod_matrix0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx12_prod_matrix0_mult_x_im0_add_1(ADD,392)@66 + 1
    assign i_arrayidx12_prod_matrix0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx12_prod_matrix0_mult_x_im0_add_1_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im0_shift0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im0_add_1_o <= 14'b0;
        end
        else if (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN == 1'b1)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im0_add_1_o <= $unsigned(i_arrayidx12_prod_matrix0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im0_add_1_b);
        end
    end
    assign i_arrayidx12_prod_matrix0_mult_x_im0_add_1_q = i_arrayidx12_prod_matrix0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx12_prod_matrix0_mult_x_im0_add_3(ADD,394)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im0_add_3_a = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im0_add_1_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im0_add_3_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im0_shift2_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im0_add_3_o = $unsigned(i_arrayidx12_prod_matrix0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im0_add_3_b);
    assign i_arrayidx12_prod_matrix0_mult_x_im0_add_3_q = i_arrayidx12_prod_matrix0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx12_prod_matrix0_mult_x_im0_shift4(BITSHIFT,395)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im0_shift4_qint = { i_arrayidx12_prod_matrix0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im0_shift4_q = i_arrayidx12_prod_matrix0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx12_prod_matrix0_mult_x_sums_align_3(BITSHIFT,290)@67
    assign i_arrayidx12_prod_matrix0_mult_x_sums_align_3_qint = { i_arrayidx12_prod_matrix0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx12_prod_matrix0_mult_x_sums_align_3_q = i_arrayidx12_prod_matrix0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx12_prod_matrix0_mult_x_im6_shift2(BITSHIFT,403)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im6_shift2_qint = { sel_for_coalesced_delay_1_c, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im6_shift2_q = i_arrayidx12_prod_matrix0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx12_prod_matrix0_mult_x_im6_shift0(BITSHIFT,401)@66
    assign i_arrayidx12_prod_matrix0_mult_x_im6_shift0_qint = { i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im6_shift0_q = i_arrayidx12_prod_matrix0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx12_prod_matrix0_mult_x_im6_add_1(ADD,402)@66 + 1
    assign i_arrayidx12_prod_matrix0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx12_prod_matrix0_mult_x_im6_add_1_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im6_shift0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im6_add_1_o <= 22'b0;
        end
        else if (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN == 1'b1)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im6_add_1_o <= $unsigned(i_arrayidx12_prod_matrix0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im6_add_1_b);
        end
    end
    assign i_arrayidx12_prod_matrix0_mult_x_im6_add_1_q = i_arrayidx12_prod_matrix0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx12_prod_matrix0_mult_x_im6_add_3(ADD,404)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im6_add_3_a = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im6_add_1_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im6_add_3_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im6_shift2_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im6_add_3_o = $unsigned(i_arrayidx12_prod_matrix0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im6_add_3_b);
    assign i_arrayidx12_prod_matrix0_mult_x_im6_add_3_q = i_arrayidx12_prod_matrix0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx12_prod_matrix0_mult_x_im6_shift4(BITSHIFT,405)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im6_shift4_qint = { i_arrayidx12_prod_matrix0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im6_shift4_q = i_arrayidx12_prod_matrix0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx12_prod_matrix0_mult_x_sums_align_2(BITSHIFT,289)@67
    assign i_arrayidx12_prod_matrix0_mult_x_sums_align_2_qint = { i_arrayidx12_prod_matrix0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx12_prod_matrix0_mult_x_sums_align_2_q = i_arrayidx12_prod_matrix0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx12_prod_matrix0_mult_x_sums_join_4(BITJOIN,291)@67
    assign i_arrayidx12_prod_matrix0_mult_x_sums_join_4_q = {i_arrayidx12_prod_matrix0_mult_x_sums_align_3_q, i_arrayidx12_prod_matrix0_mult_x_sums_align_2_q};

    // i_arrayidx12_prod_matrix0_mult_x_im3_shift2(BITSHIFT,398)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im3_shift2_qint = { sel_for_coalesced_delay_1_b, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im3_shift2_q = i_arrayidx12_prod_matrix0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx12_prod_matrix0_mult_x_im3_shift0(BITSHIFT,396)@66
    assign i_arrayidx12_prod_matrix0_mult_x_im3_shift0_qint = { i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im3_shift0_q = i_arrayidx12_prod_matrix0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx12_prod_matrix0_mult_x_im3_add_1(ADD,397)@66 + 1
    assign i_arrayidx12_prod_matrix0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx12_prod_matrix0_mult_x_im3_add_1_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im3_shift0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im3_add_1_o <= 22'b0;
        end
        else if (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN == 1'b1)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im3_add_1_o <= $unsigned(i_arrayidx12_prod_matrix0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im3_add_1_b);
        end
    end
    assign i_arrayidx12_prod_matrix0_mult_x_im3_add_1_q = i_arrayidx12_prod_matrix0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx12_prod_matrix0_mult_x_im3_add_3(ADD,399)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im3_add_3_a = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im3_add_1_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im3_add_3_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im3_shift2_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im3_add_3_o = $unsigned(i_arrayidx12_prod_matrix0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im3_add_3_b);
    assign i_arrayidx12_prod_matrix0_mult_x_im3_add_3_q = i_arrayidx12_prod_matrix0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx12_prod_matrix0_mult_x_im3_shift4(BITSHIFT,400)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im3_shift4_qint = { i_arrayidx12_prod_matrix0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im3_shift4_q = i_arrayidx12_prod_matrix0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx12_prod_matrix0_mult_x_sums_align_0(BITSHIFT,287)@67
    assign i_arrayidx12_prod_matrix0_mult_x_sums_align_0_qint = { i_arrayidx12_prod_matrix0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx12_prod_matrix0_mult_x_sums_align_0_q = i_arrayidx12_prod_matrix0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx12_prod_matrix0_mult_x_im9_shift2(BITSHIFT,408)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im9_shift2_qint = { sel_for_coalesced_delay_1_d, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im9_shift2_q = i_arrayidx12_prod_matrix0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx12_prod_matrix0_mult_x_im9_shift0(BITSHIFT,406)@66
    assign i_arrayidx12_prod_matrix0_mult_x_im9_shift0_qint = { i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im9_shift0_q = i_arrayidx12_prod_matrix0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx12_prod_matrix0_mult_x_im9_add_1(ADD,407)@66 + 1
    assign i_arrayidx12_prod_matrix0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx12_prod_matrix0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx12_prod_matrix0_mult_x_im9_add_1_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im9_shift0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im9_add_1_o <= 22'b0;
        end
        else if (SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_backEN == 1'b1)
        begin
            i_arrayidx12_prod_matrix0_mult_x_im9_add_1_o <= $unsigned(i_arrayidx12_prod_matrix0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im9_add_1_b);
        end
    end
    assign i_arrayidx12_prod_matrix0_mult_x_im9_add_1_q = i_arrayidx12_prod_matrix0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx12_prod_matrix0_mult_x_im9_add_3(ADD,409)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im9_add_3_a = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im9_add_1_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im9_add_3_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_im9_shift2_q};
    assign i_arrayidx12_prod_matrix0_mult_x_im9_add_3_o = $unsigned(i_arrayidx12_prod_matrix0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_im9_add_3_b);
    assign i_arrayidx12_prod_matrix0_mult_x_im9_add_3_q = i_arrayidx12_prod_matrix0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx12_prod_matrix0_mult_x_im9_shift4(BITSHIFT,410)@67
    assign i_arrayidx12_prod_matrix0_mult_x_im9_shift4_qint = { i_arrayidx12_prod_matrix0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx12_prod_matrix0_mult_x_im9_shift4_q = i_arrayidx12_prod_matrix0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx12_prod_matrix0_mult_x_sums_join_1(BITJOIN,288)@67
    assign i_arrayidx12_prod_matrix0_mult_x_sums_join_1_q = {i_arrayidx12_prod_matrix0_mult_x_sums_align_0_q, i_arrayidx12_prod_matrix0_mult_x_im9_shift4_q};

    // i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0(ADD,292)@67
    assign i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx12_prod_matrix0_mult_x_sums_join_1_q};
    assign i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx12_prod_matrix0_mult_x_sums_join_4_q};
    assign i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_q = i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx12_prod_matrix0_mult_extender_x(BITJOIN,193)@67
    assign i_arrayidx12_prod_matrix0_mult_extender_x_q = {i_arrayidx12_prod_matrix0_mult_multconst_x_q, i_arrayidx12_prod_matrix0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx12_prod_matrix0_trunc_sel_x(BITSELECT,195)@67
    assign i_arrayidx12_prod_matrix0_trunc_sel_x_b = i_arrayidx12_prod_matrix0_mult_extender_x_q[63:0];

    // redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0(REG,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx12_prod_matrix0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32(BITJOIN,549)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_q = i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32(BITSELECT,550)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_q[63:0]);

    // i_arrayidx12_prod_matrix0_add_x(ADD,181)@68
    assign i_arrayidx12_prod_matrix0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_b};
    assign i_arrayidx12_prod_matrix0_add_x_b = {1'b0, redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx12_prod_matrix0_add_x_o = $unsigned(i_arrayidx12_prod_matrix0_add_x_a) + $unsigned(i_arrayidx12_prod_matrix0_add_x_b);
    assign i_arrayidx12_prod_matrix0_add_x_q = i_arrayidx12_prod_matrix0_add_x_o[64:0];

    // i_arrayidx12_prod_matrix0_dupName_0_trunc_sel_x(BITSELECT,198)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_trunc_sel_x_b = i_arrayidx12_prod_matrix0_add_x_q[63:0];

    // i_arrayidx12_prod_matrix0_dupName_0_add_x(ADD,188)@68
    assign i_arrayidx12_prod_matrix0_dupName_0_add_x_a = {1'b0, i_arrayidx12_prod_matrix0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx12_prod_matrix0_dupName_0_add_x_b = {1'b0, i_arrayidx12_prod_matrix0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx12_prod_matrix0_dupName_0_add_x_o = $unsigned(i_arrayidx12_prod_matrix0_dupName_0_add_x_a) + $unsigned(i_arrayidx12_prod_matrix0_dupName_0_add_x_b);
    assign i_arrayidx12_prod_matrix0_dupName_0_add_x_q = i_arrayidx12_prod_matrix0_dupName_0_add_x_o[64:0];

    // i_arrayidx12_prod_matrix0_dupName_2_trunc_sel_x(BITSELECT,200)@68
    assign i_arrayidx12_prod_matrix0_dupName_2_trunc_sel_x_b = i_arrayidx12_prod_matrix0_dupName_0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm82_prod_matrix34(BLACKBOX,44)@68
    // in in_i_stall@20000000
    // out out_lm82_prod_matrix_avm_address@20000000
    // out out_lm82_prod_matrix_avm_burstcount@20000000
    // out out_lm82_prod_matrix_avm_byteenable@20000000
    // out out_lm82_prod_matrix_avm_enable@20000000
    // out out_lm82_prod_matrix_avm_read@20000000
    // out out_lm82_prod_matrix_avm_write@20000000
    // out out_lm82_prod_matrix_avm_writedata@20000000
    // out out_o_readdata@100
    // out out_o_stall@20000000
    // out out_o_valid@100
    prod_matrix_i_llvm_fpga_mem_lm82_0 thei_llvm_fpga_mem_lm82_prod_matrix34 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx12_prod_matrix0_dupName_2_trunc_sel_x_b),
        .in_i_dependence(i_reduction_prod_matrix_1_prod_matrix29_q),
        .in_i_predicate(i_first_cleanup_xor_or_prod_matrix30_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_V0),
        .in_lm82_prod_matrix_avm_readdata(in_lm82_prod_matrix_avm_readdata),
        .in_lm82_prod_matrix_avm_readdatavalid(in_lm82_prod_matrix_avm_readdatavalid),
        .in_lm82_prod_matrix_avm_waitrequest(in_lm82_prod_matrix_avm_waitrequest),
        .in_lm82_prod_matrix_avm_writeack(in_lm82_prod_matrix_avm_writeack),
        .out_lm82_prod_matrix_avm_address(i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_address),
        .out_lm82_prod_matrix_avm_burstcount(i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_burstcount),
        .out_lm82_prod_matrix_avm_byteenable(i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_byteenable),
        .out_lm82_prod_matrix_avm_enable(i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_enable),
        .out_lm82_prod_matrix_avm_read(i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_read),
        .out_lm82_prod_matrix_avm_write(i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_write),
        .out_lm82_prod_matrix_avm_writedata(i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm82_prod_matrix34_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm82_prod_matrix34_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm82_prod_matrix34_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_im0_shift0(BITSHIFT,435)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im0_shift0_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_3(BITSHIFT,344)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx16_prod_matrix0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_3_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_im6_shift0(BITSHIFT,437)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im6_shift0_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_2(BITSHIFT,343)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx16_prod_matrix0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_2_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_4(BITJOIN,345)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_3_q, i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_im3_shift0(BITSHIFT,436)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im3_shift0_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_0(BITSHIFT,341)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx16_prod_matrix0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_0_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_im9_shift0(BITSHIFT,438)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx12_prod_matrix0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_im9_shift0_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_1(BITJOIN,342)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx16_prod_matrix0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0(ADD,346)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx16_prod_matrix0_dupName_0_mult_extender_x(BITJOIN,216)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_mult_extender_x_q = {i_arrayidx12_prod_matrix0_dupName_0_mult_multconst_x_q, i_arrayidx16_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx16_prod_matrix0_dupName_1_trunc_sel_x(BITSELECT,219)@68
    assign i_arrayidx16_prod_matrix0_dupName_1_trunc_sel_x_b = i_arrayidx16_prod_matrix0_dupName_0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12(BITJOIN,597)
    assign bubble_join_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_q = i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12(BITSELECT,598)
    assign bubble_select_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_q[31:0]);

    // SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12(STALLENABLE,710)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_V0 = SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_backStall = redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_wireValid = i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_valid_out;

    // redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo(STALLFIFO,525)
    assign redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_V0;
    assign redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_in = SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_backStall;
    assign redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_b;
    assign redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_in_bitsignaltemp = redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_in[0];
    assign redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_in_bitsignaltemp = redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_in[0];
    assign redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_out[0] = redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_out_bitsignaltemp;
    assign redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_out[0] = redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo (
        .valid_in(redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_b),
        .valid_out(redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo(STALLENABLE,939)
    // Valid signal propagation
    assign SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_V0 = SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_backStall = SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backStall | ~ (SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_wireValid = redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_valid_out;

    // SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3(STALLENABLE,859)
    // Valid signal propagation
    assign SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_V0 = SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_s_tv_0 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backStall & SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN = ~ (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_v_s_0 = SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN & SE_out_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_V0;
    // Backward Stall generation
    assign SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backStall = ~ (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b0)
            begin
                SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_R_v_0 <= SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_R_v_0 & SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_R_v_0 <= SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_v_s_0;
            end

        end
    end

    // bubble_join_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo(BITJOIN,647)
    assign bubble_join_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_q = redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_data_out;

    // bubble_select_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo(BITSELECT,648)
    assign bubble_select_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_b = $unsigned(bubble_join_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_q[31:0]);

    // i_idxprom_prod_matrix14_sel_x(BITSELECT,248)@66
    assign i_idxprom_prod_matrix14_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_b[31:0]};

    // i_idxprom_prod_matrix14_vt_select_31(BITSELECT,35)@66
    assign i_idxprom_prod_matrix14_vt_select_31_b = i_idxprom_prod_matrix14_sel_x_b[31:0];

    // i_idxprom_prod_matrix14_vt_join(BITJOIN,34)@66
    assign i_idxprom_prod_matrix14_vt_join_q = {c_i32_064_q, i_idxprom_prod_matrix14_vt_select_31_b};

    // i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select(BITSELECT,468)@66
    assign i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b = i_idxprom_prod_matrix14_vt_join_q[63:54];
    assign i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c = i_idxprom_prod_matrix14_vt_join_q[53:36];
    assign i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d = i_idxprom_prod_matrix14_vt_join_q[35:18];
    assign i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e = i_idxprom_prod_matrix14_vt_join_q[17:0];

    // i_arrayidx16_prod_matrix0_mult_x_im0_shift2(BITSHIFT,417)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im0_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im0_shift2_q = i_arrayidx16_prod_matrix0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx16_prod_matrix0_mult_x_im0_shift0(BITSHIFT,415)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im0_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im0_shift0_q = i_arrayidx16_prod_matrix0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx16_prod_matrix0_mult_x_im0_add_1(ADD,416)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx16_prod_matrix0_mult_x_im0_add_1_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im0_shift0_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im0_add_1_o = $unsigned(i_arrayidx16_prod_matrix0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im0_add_1_b);
    assign i_arrayidx16_prod_matrix0_mult_x_im0_add_1_q = i_arrayidx16_prod_matrix0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx16_prod_matrix0_mult_x_im0_add_3(ADD,418)@66 + 1
    assign i_arrayidx16_prod_matrix0_mult_x_im0_add_3_a = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im0_add_1_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im0_add_3_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx16_prod_matrix0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx16_prod_matrix0_mult_x_im0_add_3_q = i_arrayidx16_prod_matrix0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx16_prod_matrix0_mult_x_im0_shift4(BITSHIFT,419)@67
    assign i_arrayidx16_prod_matrix0_mult_x_im0_shift4_qint = { i_arrayidx16_prod_matrix0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im0_shift4_q = i_arrayidx16_prod_matrix0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx16_prod_matrix0_mult_x_sums_align_3(BITSHIFT,326)@67
    assign i_arrayidx16_prod_matrix0_mult_x_sums_align_3_qint = { i_arrayidx16_prod_matrix0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx16_prod_matrix0_mult_x_sums_align_3_q = i_arrayidx16_prod_matrix0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx16_prod_matrix0_mult_x_im6_shift2(BITSHIFT,427)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im6_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im6_shift2_q = i_arrayidx16_prod_matrix0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx16_prod_matrix0_mult_x_im6_shift0(BITSHIFT,425)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im6_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im6_shift0_q = i_arrayidx16_prod_matrix0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx16_prod_matrix0_mult_x_im6_add_1(ADD,426)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx16_prod_matrix0_mult_x_im6_add_1_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im6_shift0_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im6_add_1_o = $unsigned(i_arrayidx16_prod_matrix0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im6_add_1_b);
    assign i_arrayidx16_prod_matrix0_mult_x_im6_add_1_q = i_arrayidx16_prod_matrix0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx16_prod_matrix0_mult_x_im6_add_3(ADD,428)@66 + 1
    assign i_arrayidx16_prod_matrix0_mult_x_im6_add_3_a = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im6_add_1_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im6_add_3_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx16_prod_matrix0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx16_prod_matrix0_mult_x_im6_add_3_q = i_arrayidx16_prod_matrix0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx16_prod_matrix0_mult_x_im6_shift4(BITSHIFT,429)@67
    assign i_arrayidx16_prod_matrix0_mult_x_im6_shift4_qint = { i_arrayidx16_prod_matrix0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im6_shift4_q = i_arrayidx16_prod_matrix0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx16_prod_matrix0_mult_x_sums_align_2(BITSHIFT,325)@67
    assign i_arrayidx16_prod_matrix0_mult_x_sums_align_2_qint = { i_arrayidx16_prod_matrix0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx16_prod_matrix0_mult_x_sums_align_2_q = i_arrayidx16_prod_matrix0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx16_prod_matrix0_mult_x_sums_join_4(BITJOIN,327)@67
    assign i_arrayidx16_prod_matrix0_mult_x_sums_join_4_q = {i_arrayidx16_prod_matrix0_mult_x_sums_align_3_q, i_arrayidx16_prod_matrix0_mult_x_sums_align_2_q};

    // i_arrayidx16_prod_matrix0_mult_x_im3_shift2(BITSHIFT,422)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im3_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im3_shift2_q = i_arrayidx16_prod_matrix0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx16_prod_matrix0_mult_x_im3_shift0(BITSHIFT,420)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im3_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im3_shift0_q = i_arrayidx16_prod_matrix0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx16_prod_matrix0_mult_x_im3_add_1(ADD,421)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx16_prod_matrix0_mult_x_im3_add_1_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im3_shift0_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im3_add_1_o = $unsigned(i_arrayidx16_prod_matrix0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im3_add_1_b);
    assign i_arrayidx16_prod_matrix0_mult_x_im3_add_1_q = i_arrayidx16_prod_matrix0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx16_prod_matrix0_mult_x_im3_add_3(ADD,423)@66 + 1
    assign i_arrayidx16_prod_matrix0_mult_x_im3_add_3_a = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im3_add_1_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im3_add_3_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx16_prod_matrix0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx16_prod_matrix0_mult_x_im3_add_3_q = i_arrayidx16_prod_matrix0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx16_prod_matrix0_mult_x_im3_shift4(BITSHIFT,424)@67
    assign i_arrayidx16_prod_matrix0_mult_x_im3_shift4_qint = { i_arrayidx16_prod_matrix0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im3_shift4_q = i_arrayidx16_prod_matrix0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx16_prod_matrix0_mult_x_sums_align_0(BITSHIFT,323)@67
    assign i_arrayidx16_prod_matrix0_mult_x_sums_align_0_qint = { i_arrayidx16_prod_matrix0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx16_prod_matrix0_mult_x_sums_align_0_q = i_arrayidx16_prod_matrix0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx16_prod_matrix0_mult_x_im9_shift2(BITSHIFT,432)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im9_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im9_shift2_q = i_arrayidx16_prod_matrix0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx16_prod_matrix0_mult_x_im9_shift0(BITSHIFT,430)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im9_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im9_shift0_q = i_arrayidx16_prod_matrix0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx16_prod_matrix0_mult_x_im9_add_1(ADD,431)@66
    assign i_arrayidx16_prod_matrix0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx16_prod_matrix0_mult_x_im9_add_1_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im9_shift0_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im9_add_1_o = $unsigned(i_arrayidx16_prod_matrix0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im9_add_1_b);
    assign i_arrayidx16_prod_matrix0_mult_x_im9_add_1_q = i_arrayidx16_prod_matrix0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx16_prod_matrix0_mult_x_im9_add_3(ADD,433)@66 + 1
    assign i_arrayidx16_prod_matrix0_mult_x_im9_add_3_a = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im9_add_1_q};
    assign i_arrayidx16_prod_matrix0_mult_x_im9_add_3_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx16_prod_matrix0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx16_prod_matrix0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx16_prod_matrix0_mult_x_im9_add_3_q = i_arrayidx16_prod_matrix0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx16_prod_matrix0_mult_x_im9_shift4(BITSHIFT,434)@67
    assign i_arrayidx16_prod_matrix0_mult_x_im9_shift4_qint = { i_arrayidx16_prod_matrix0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx16_prod_matrix0_mult_x_im9_shift4_q = i_arrayidx16_prod_matrix0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx16_prod_matrix0_mult_x_sums_join_1(BITJOIN,324)@67
    assign i_arrayidx16_prod_matrix0_mult_x_sums_join_1_q = {i_arrayidx16_prod_matrix0_mult_x_sums_align_0_q, i_arrayidx16_prod_matrix0_mult_x_im9_shift4_q};

    // i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0(ADD,328)@67
    assign i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx16_prod_matrix0_mult_x_sums_join_1_q};
    assign i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx16_prod_matrix0_mult_x_sums_join_4_q};
    assign i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_q = i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx16_prod_matrix0_mult_extender_x(BITJOIN,213)@67
    assign i_arrayidx16_prod_matrix0_mult_extender_x_q = {i_arrayidx12_prod_matrix0_mult_multconst_x_q, i_arrayidx16_prod_matrix0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx16_prod_matrix0_trunc_sel_x(BITSELECT,215)@67
    assign i_arrayidx16_prod_matrix0_trunc_sel_x_b = i_arrayidx16_prod_matrix0_mult_extender_x_q[63:0];

    // redist19_i_arrayidx16_prod_matrix0_trunc_sel_x_b_1_0(REG,519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx16_prod_matrix0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist19_i_arrayidx16_prod_matrix0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx16_prod_matrix0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15(BITJOIN,546)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_q = i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15(BITSELECT,547)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_q[63:0]);

    // i_arrayidx16_prod_matrix0_add_x(ADD,201)@68
    assign i_arrayidx16_prod_matrix0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_b};
    assign i_arrayidx16_prod_matrix0_add_x_b = {1'b0, redist19_i_arrayidx16_prod_matrix0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx16_prod_matrix0_add_x_o = $unsigned(i_arrayidx16_prod_matrix0_add_x_a) + $unsigned(i_arrayidx16_prod_matrix0_add_x_b);
    assign i_arrayidx16_prod_matrix0_add_x_q = i_arrayidx16_prod_matrix0_add_x_o[64:0];

    // i_arrayidx16_prod_matrix0_dupName_0_trunc_sel_x(BITSELECT,218)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_trunc_sel_x_b = i_arrayidx16_prod_matrix0_add_x_q[63:0];

    // i_arrayidx16_prod_matrix0_dupName_0_add_x(ADD,208)@68
    assign i_arrayidx16_prod_matrix0_dupName_0_add_x_a = {1'b0, i_arrayidx16_prod_matrix0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx16_prod_matrix0_dupName_0_add_x_b = {1'b0, i_arrayidx16_prod_matrix0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx16_prod_matrix0_dupName_0_add_x_o = $unsigned(i_arrayidx16_prod_matrix0_dupName_0_add_x_a) + $unsigned(i_arrayidx16_prod_matrix0_dupName_0_add_x_b);
    assign i_arrayidx16_prod_matrix0_dupName_0_add_x_q = i_arrayidx16_prod_matrix0_dupName_0_add_x_o[64:0];

    // i_arrayidx16_prod_matrix0_dupName_2_trunc_sel_x(BITSELECT,220)@68
    assign i_arrayidx16_prod_matrix0_dupName_2_trunc_sel_x_b = i_arrayidx16_prod_matrix0_dupName_0_add_x_q[63:0];

    // join_for_coalesced_delay_2(BITJOIN,507)
    assign join_for_coalesced_delay_2_q = {i_first_cleanup_xor_or_prod_matrix30_q, i_arrayidx16_prod_matrix0_dupName_2_trunc_sel_x_b};

    // coalesced_delay_2_fifo(STALLFIFO,532)
    assign coalesced_delay_2_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_V0;
    assign coalesced_delay_2_fifo_stall_in = SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(36),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2(STALLENABLE,1071)
    // Valid signal propagation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_stall_out | ~ (SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15(BLACKBOX,40)@68
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_0 thei_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_backStall),
        .in_valid_in(SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15(STALLENABLE,680)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_backStall = coalesced_delay_2_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and0 = i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and1 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and2 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_and2;

    // SE_out_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10(STALLENABLE,740)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_wireValid = i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_valid_out;

    // i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10(BLACKBOX,70)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i32_j_018_pop1441_push30_0 thei_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10 (
        .in_data_in(bubble_select_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_feedback_stall_out_30),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10(STALLENABLE,739)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_V0 = SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_backStall = i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V5;
    assign SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_wireValid = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V0 & SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_and0;

    // SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo(STALLENABLE,937)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg0 <= '0;
            SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg1 <= '0;
            SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg0 <= SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg0;
            // Successor 1
            SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg1 <= SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg1;
            // Successor 2
            SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg2 <= SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_backStall) & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid) | SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg0;
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_backStall) & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid) | SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg1;
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_backStall) & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid) | SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg2;
    // Consuming
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_StallValid = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_backStall & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid;
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg0 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_StallValid & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed0;
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg1 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_StallValid & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed1;
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_toReg2 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_StallValid & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_or0 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed0;
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_or1 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed1 & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_or0;
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireStall = ~ (SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_consumed2 & SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_or1);
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_backStall = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V0 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid & ~ (SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg0);
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V1 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid & ~ (SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg1);
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V2 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid & ~ (SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_wireValid = redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_valid_out;

    // SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5(STALLENABLE,1077)
    // Valid signal propagation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_stall_out | ~ (SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_wireValid = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32(BLACKBOX,41)@68
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_0 thei_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_backStall),
        .in_valid_in(SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32(STALLENABLE,682)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_backStall = i_llvm_fpga_mem_lm82_prod_matrix34_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and0 = i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and1 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and2 = SE_out_redist23_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out_66_fifo_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and3 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_and3;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26(STALLENABLE,720)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_wireValid = i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_valid_out;

    // bubble_join_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo(BITJOIN,650)
    assign bubble_join_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_q = redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_data_out;

    // bubble_select_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo(BITSELECT,651)
    assign bubble_select_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_b = $unsigned(bubble_join_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26(BLACKBOX,60)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26 (
        .in_data_in(bubble_select_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_b),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_feedback_stall_out_31),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26(STALLENABLE,719)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_backStall = i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_wireValid = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25(BITJOIN,569)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_q = i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25(BITSELECT,570)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25(STALLENABLE,694)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_backStall = redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_wireValid = i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_valid_out;

    // redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo(STALLFIFO,528)
    assign redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_V0;
    assign redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_in = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_backStall;
    assign redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_b;
    assign redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_in_bitsignaltemp = redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_in[0];
    assign redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_in_bitsignaltemp = redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_in[0];
    assign redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_out[0] = redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_out_bitsignaltemp;
    assign redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_out[0] = redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo (
        .valid_in(redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_b),
        .valid_out(redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo(STALLENABLE,943)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg0 <= '0;
            SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg0 <= SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_toReg0;
            // Successor 1
            SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg1 <= SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_backStall) & SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireValid) | SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg0;
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_backStall) & SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireValid) | SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg1;
    // Consuming
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_StallValid = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_backStall & SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireValid;
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_toReg0 = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_StallValid & SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed0;
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_toReg1 = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_StallValid & SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_or0 = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed0;
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireStall = ~ (SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_consumed1 & SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_or0);
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_backStall = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_V0 = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireValid & ~ (SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg0);
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_V1 = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireValid & ~ (SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_wireValid = redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24(STALLENABLE,722)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_wireValid = i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23(BITJOIN,572)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_q = i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23(BITSELECT,573)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24(BLACKBOX,61)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_0 thei_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24(STALLENABLE,721)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_backStall = i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_and0;

    // bubble_join_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo(BITJOIN,638)
    assign bubble_join_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_q = redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_data_out;

    // bubble_select_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo(BITSELECT,639)
    assign bubble_select_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_b = $unsigned(bubble_join_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23(BLACKBOX,48)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    prod_matrix_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23 (
        .in_data_in(bubble_select_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_b),
        .in_dir(redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_backStall),
        .in_valid_in(SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23(STALLENABLE,696)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_wireValid = i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28(STALLENABLE,698)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed0 = (~ (SE_sel_for_coalesced_delay_3_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_wireValid = SE_out_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_and1;

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0(BITJOIN,594)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_q = i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0(BITSELECT,595)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_q[1:0]);

    // i_first_cleanup_prod_matrix1_sel_x(BITSELECT,245)@68
    assign i_first_cleanup_prod_matrix1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b[0:0];

    // i_exitcond_prod_matrix40_cmp_nsign(LOGICAL,259)@68
    assign i_exitcond_prod_matrix40_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_prod_matrix8_q[32:32]));

    // SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6(STALLENABLE,1079)
    // Valid signal propagation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_stall_out | ~ (SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_wireValid = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg(STALLFIFO,1132)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44(STALLENABLE,676)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed1 = (~ (SE_i_unnamed_prod_matrix45_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44(BLACKBOX,38)@68
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_dest_i1_unnamed_16_prod_matrix0 thei_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_backStall),
        .in_valid_in(SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44(BITJOIN,538)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_q = i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44(BITSELECT,539)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_q[0:0]);

    // i_unnamed_prod_matrix45(LOGICAL,81)@68
    assign i_unnamed_prod_matrix45_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_b & i_exitcond_prod_matrix40_cmp_nsign_q;

    // i_notcmp_prod_matrix46(LOGICAL,76)@68
    assign i_notcmp_prod_matrix46_q = i_unnamed_prod_matrix45_q ^ VCC_q;

    // i_masked_prod_matrix51(LOGICAL,73)@68 + 1
    assign i_masked_prod_matrix51_qi = SR_SE_i_masked_prod_matrix51_D0 & SR_SE_i_masked_prod_matrix51_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_prod_matrix51_delay ( .xin(i_masked_prod_matrix51_qi), .xout(i_masked_prod_matrix51_q), .ena(SE_i_masked_prod_matrix51_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist21_i_masked_prod_matrix51_q_66_fifo(STALLFIFO,521)
    assign redist21_i_masked_prod_matrix51_q_66_fifo_valid_in = SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_V0;
    assign redist21_i_masked_prod_matrix51_q_66_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall;
    assign redist21_i_masked_prod_matrix51_q_66_fifo_data_in = i_masked_prod_matrix51_q;
    assign redist21_i_masked_prod_matrix51_q_66_fifo_valid_in_bitsignaltemp = redist21_i_masked_prod_matrix51_q_66_fifo_valid_in[0];
    assign redist21_i_masked_prod_matrix51_q_66_fifo_stall_in_bitsignaltemp = redist21_i_masked_prod_matrix51_q_66_fifo_stall_in[0];
    assign redist21_i_masked_prod_matrix51_q_66_fifo_valid_out[0] = redist21_i_masked_prod_matrix51_q_66_fifo_valid_out_bitsignaltemp;
    assign redist21_i_masked_prod_matrix51_q_66_fifo_stall_out[0] = redist21_i_masked_prod_matrix51_q_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_masked_prod_matrix51_q_66_fifo (
        .valid_in(redist21_i_masked_prod_matrix51_q_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_masked_prod_matrix51_q_66_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_prod_matrix51_q),
        .valid_out(redist21_i_masked_prod_matrix51_q_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_masked_prod_matrix51_q_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_masked_prod_matrix51_q_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist21_i_masked_prod_matrix51_q_66_fifo(STALLENABLE,932)
    // Valid signal propagation
    assign SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_V0 = SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_backStall = redist21_i_masked_prod_matrix51_q_66_fifo_stall_out | ~ (SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_wireValid = SE_i_masked_prod_matrix51_V0;

    // SE_i_masked_prod_matrix51(STALLENABLE,745)
    // Valid signal propagation
    assign SE_i_masked_prod_matrix51_V0 = SE_i_masked_prod_matrix51_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_prod_matrix51_s_tv_0 = SE_in_redist21_i_masked_prod_matrix51_q_66_fifo_backStall & SE_i_masked_prod_matrix51_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_prod_matrix51_backEN = ~ (SE_i_masked_prod_matrix51_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_prod_matrix51_v_s_0 = SE_i_masked_prod_matrix51_backEN & SR_SE_i_masked_prod_matrix51_V;
    // Backward Stall generation
    assign SE_i_masked_prod_matrix51_backStall = ~ (SE_i_masked_prod_matrix51_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_prod_matrix51_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_prod_matrix51_backEN == 1'b0)
            begin
                SE_i_masked_prod_matrix51_R_v_0 <= SE_i_masked_prod_matrix51_R_v_0 & SE_i_masked_prod_matrix51_s_tv_0;
            end
            else
            begin
                SE_i_masked_prod_matrix51_R_v_0 <= SE_i_masked_prod_matrix51_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_prod_matrix51(STALLREG,1145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_prod_matrix51_r_valid <= 1'b0;
            SR_SE_i_masked_prod_matrix51_r_data0 <= 1'bx;
            SR_SE_i_masked_prod_matrix51_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_prod_matrix51_r_valid <= SE_i_masked_prod_matrix51_backStall & (SR_SE_i_masked_prod_matrix51_r_valid | SR_SE_i_masked_prod_matrix51_i_valid);

            if (SR_SE_i_masked_prod_matrix51_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_prod_matrix51_r_data0 <= i_notcmp_prod_matrix46_q;
                SR_SE_i_masked_prod_matrix51_r_data1 <= i_first_cleanup_prod_matrix1_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_prod_matrix51_and0 = SE_i_unnamed_prod_matrix45_V1;
    assign SR_SE_i_masked_prod_matrix51_i_valid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V2 & SR_SE_i_masked_prod_matrix51_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_prod_matrix51_backStall = SR_SE_i_masked_prod_matrix51_r_valid | ~ (SR_SE_i_masked_prod_matrix51_i_valid);

    // Valid
    assign SR_SE_i_masked_prod_matrix51_V = SR_SE_i_masked_prod_matrix51_r_valid == 1'b1 ? SR_SE_i_masked_prod_matrix51_r_valid : SR_SE_i_masked_prod_matrix51_i_valid;

    // Data0
    assign SR_SE_i_masked_prod_matrix51_D0 = SR_SE_i_masked_prod_matrix51_r_valid == 1'b1 ? SR_SE_i_masked_prod_matrix51_r_data0 : i_notcmp_prod_matrix46_q;
    // Data1
    assign SR_SE_i_masked_prod_matrix51_D1 = SR_SE_i_masked_prod_matrix51_r_valid == 1'b1 ? SR_SE_i_masked_prod_matrix51_r_data1 : i_first_cleanup_prod_matrix1_sel_x_b;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47(STALLENABLE,729)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed1 = (~ (SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_and0 = SE_i_unnamed_prod_matrix45_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_and0;

    // leftShiftStage0Idx1Rng1_uid387_i_cleanups_shl_prod_matrix0_shift_x(BITSELECT,386)@68
    assign leftShiftStage0Idx1Rng1_uid387_i_cleanups_shl_prod_matrix0_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid387_i_cleanups_shl_prod_matrix0_shift_x_b = leftShiftStage0Idx1Rng1_uid387_i_cleanups_shl_prod_matrix0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid388_i_cleanups_shl_prod_matrix0_shift_x(BITJOIN,387)@68
    assign leftShiftStage0Idx1_uid388_i_cleanups_shl_prod_matrix0_shift_x_q = {leftShiftStage0Idx1Rng1_uid387_i_cleanups_shl_prod_matrix0_shift_x_b, GND_q};

    // leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x(MUX,389)@68
    assign leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b or leftShiftStage0Idx1_uid388_i_cleanups_shl_prod_matrix0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_s)
            1'b0 : leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b;
            1'b1 : leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_q = leftShiftStage0Idx1_uid388_i_cleanups_shl_prod_matrix0_shift_x_q;
            default : leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_prod_matrix3_vt_select_1(BITSELECT,18)@68
    assign i_cleanups_shl_prod_matrix3_vt_select_1_b = leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_q[1:1];

    // i_cleanups_shl_prod_matrix3_vt_join(BITJOIN,17)@68
    assign i_cleanups_shl_prod_matrix3_vt_join_q = {i_cleanups_shl_prod_matrix3_vt_select_1_b, GND_q};

    // i_xor_prod_matrix2(LOGICAL,82)@68
    assign i_xor_prod_matrix2_q = i_first_cleanup_prod_matrix1_sel_x_b ^ VCC_q;

    // i_or_prod_matrix48(LOGICAL,77)@68
    assign i_or_prod_matrix48_q = i_notcmp_prod_matrix46_q | i_xor_prod_matrix2_q;

    // i_next_cleanups_prod_matrix49(MUX,75)@68
    assign i_next_cleanups_prod_matrix49_s = i_or_prod_matrix48_q;
    always @(i_next_cleanups_prod_matrix49_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b or i_cleanups_shl_prod_matrix3_vt_join_q)
    begin
        unique case (i_next_cleanups_prod_matrix49_s)
            1'b0 : i_next_cleanups_prod_matrix49_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_b;
            1'b1 : i_next_cleanups_prod_matrix49_q = i_cleanups_shl_prod_matrix3_vt_join_q;
            default : i_next_cleanups_prod_matrix49_q = 2'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50(STALLENABLE,736)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_wireValid = i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50(BLACKBOX,68)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i2_cleanups_push23_0 thei_llvm_fpga_push_i2_cleanups_push23_prod_matrix50 (
        .in_data_in(SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_D0),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_feedback_stall_out_23),
        .in_keep_going(SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_backStall),
        .in_valid_in(SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x(STALLENABLE,831)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_V0 = SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_stall_out | ~ (SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_wireValid = SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_V;

    // SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x(STALLREG,1147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid <= SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall & (SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid | SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data0 <= i_next_cleanups_prod_matrix49_q;
                SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_V1;
    assign SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V0 & SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V3 & SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall = SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_V = SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid : SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_D0 = SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data0 : i_next_cleanups_prod_matrix49_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_D1 = SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b;

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0(STALLENABLE,708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed0 = (~ (SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed2 = (~ (SR_SE_i_masked_prod_matrix51_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed3 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_or2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_wireValid = i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_valid_out;

    // SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3(STALLENABLE,1073)
    // Valid signal propagation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_stall_out | ~ (SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_wireValid = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17(BLACKBOX,37)@68
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_dest_i1_unnamed_15_prod_matrix0 thei_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_backStall),
        .in_valid_in(SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17(STALLENABLE,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed0 = (~ (SE_sel_for_coalesced_delay_3_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_or1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_V3 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_and0;

    // SE_out_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13(STALLENABLE,738)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_wireValid = i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_valid_out;

    // redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_0(REG,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_0_q <= $unsigned(bubble_select_redist24_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_64_fifo_b);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_1(REG,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_1_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_0_q);
        end
    end

    // i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13(BLACKBOX,69)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i32_i_021_pop1137_push26_0 thei_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13 (
        .in_data_in(redist25_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out_66_1_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_feedback_stall_out_26),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13(STALLENABLE,737)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_V0 = SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_backStall = i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_and0 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V2;
    assign SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V4 & SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_and0;

    // SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0(STALLENABLE,929)
    // Valid signal propagation
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V0 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V1 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_1;
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V2 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0 = SE_sel_for_coalesced_delay_3_backStall & SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_r2416_prod_matrix15_backStall & SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_1;
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2 = SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_backStall & SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_or0 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_or1 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_or0;
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2 | SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_v_s_0 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN & SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_V0;
    // Backward Stall generation
    assign SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 & SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 & SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 <= SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 & SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 <= SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4(STALLENABLE,1075)
    // Valid signal propagation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_stall_out | ~ (SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_wireValid = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21(BLACKBOX,42)@68
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_0 thei_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_sel_for_coalesced_delay_3_backStall),
        .in_valid_in(SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0(STALLENABLE,931)
    // Valid signal propagation
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V0 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V1 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_1;
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V2 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a100i32_v2314_prod_matrix32_backStall & SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1 = SE_i_inc_prod_matrix38_backStall & SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_1;
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2 = SE_sel_for_coalesced_delay_3_backStall & SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_or0 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_or1 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_or0;
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2 | SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_v_s_0 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN & SE_i_arrayidx12_prod_matrix0_mult_x_im0_add_1_V0;
    // Backward Stall generation
    assign SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 & SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 & SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 <= SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 & SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_R_v_2 <= SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_sel_for_coalesced_delay_3(STALLENABLE,919)
    // Valid signal propagation
    assign SE_sel_for_coalesced_delay_3_V0 = SE_sel_for_coalesced_delay_3_wireValid;
    // Backward Stall generation
    assign SE_sel_for_coalesced_delay_3_backStall = i_llvm_fpga_mem_lm1_prod_matrix31_out_o_stall | ~ (SE_sel_for_coalesced_delay_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_sel_for_coalesced_delay_3_and0 = SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_V2;
    assign SE_sel_for_coalesced_delay_3_and1 = i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_valid_out & SE_sel_for_coalesced_delay_3_and0;
    assign SE_sel_for_coalesced_delay_3_and2 = SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_V0 & SE_sel_for_coalesced_delay_3_and1;
    assign SE_sel_for_coalesced_delay_3_and3 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_V0 & SE_sel_for_coalesced_delay_3_and2;
    assign SE_sel_for_coalesced_delay_3_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_V0 & SE_sel_for_coalesced_delay_3_and3;

    // SE_out_i_llvm_fpga_mem_lm1_prod_matrix31(STALLENABLE,686)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_V0 = SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_backStall = SE_i_mul_prod_matrix35_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_wireValid = i_llvm_fpga_mem_lm1_prod_matrix31_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17(BITJOIN,535)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_q = i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17(BITSELECT,536)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_q[0:0]);

    // i_unnamed_prod_matrix18(LOGICAL,80)@68
    assign i_unnamed_prod_matrix18_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix15_prod_matrix17_b ^ VCC_q;

    // i_first_cleanup_xor_or_prod_matrix30(LOGICAL,21)@68
    assign i_first_cleanup_xor_or_prod_matrix30_q = i_unnamed_prod_matrix18_q | i_xor_prod_matrix2_q;

    // i_reduction_prod_matrix_0_prod_matrix27(LOGICAL,78)@68
    assign i_reduction_prod_matrix_0_prod_matrix27_q = bubble_select_redist26_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out_66_fifo_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28(BITJOIN,575)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28(BITSELECT,576)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_q[0:0]);

    // i_reduction_prod_matrix_1_prod_matrix29(LOGICAL,79)@68
    assign i_reduction_prod_matrix_1_prod_matrix29_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_b | i_reduction_prod_matrix_0_prod_matrix27_q;

    // join_for_coalesced_delay_3(BITJOIN,510)
    assign join_for_coalesced_delay_3_q = {sel_for_coalesced_delay_1_e, sel_for_coalesced_delay_1_d, sel_for_coalesced_delay_1_c, sel_for_coalesced_delay_1_b};

    // coalesced_delay_3_0(REG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_3_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist20_i_arrayidx12_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_3_0_q <= $unsigned(join_for_coalesced_delay_3_q);
        end
    end

    // sel_for_coalesced_delay_3(BITSELECT,511)
    assign sel_for_coalesced_delay_3_b = $unsigned(coalesced_delay_3_0_q[17:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(coalesced_delay_3_0_q[35:18]);
    assign sel_for_coalesced_delay_3_d = $unsigned(coalesced_delay_3_0_q[53:36]);
    assign sel_for_coalesced_delay_3_e = $unsigned(coalesced_delay_3_0_q[63:54]);

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_im0_shift0(BITSHIFT,459)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im0_shift0_qint = { sel_for_coalesced_delay_3_e, 2'b00 };
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im0_shift0_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_3(BITSHIFT,380)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx8_prod_matrix0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_3_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_im6_shift0(BITSHIFT,461)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im6_shift0_qint = { sel_for_coalesced_delay_3_c, 2'b00 };
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im6_shift0_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_2(BITSHIFT,379)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx8_prod_matrix0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_2_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_4(BITJOIN,381)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_3_q, i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_im3_shift0(BITSHIFT,460)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im3_shift0_qint = { sel_for_coalesced_delay_3_b, 2'b00 };
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im3_shift0_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_0(BITSHIFT,377)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx8_prod_matrix0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_0_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_im9_shift0(BITSHIFT,462)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im9_shift0_qint = { sel_for_coalesced_delay_3_d, 2'b00 };
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_im9_shift0_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_1(BITJOIN,378)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx8_prod_matrix0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0(ADD,382)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx8_prod_matrix0_dupName_0_mult_extender_x(BITJOIN,236)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_mult_extender_x_q = {i_arrayidx12_prod_matrix0_dupName_0_mult_multconst_x_q, i_arrayidx8_prod_matrix0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx8_prod_matrix0_dupName_1_trunc_sel_x(BITSELECT,239)@68
    assign i_arrayidx8_prod_matrix0_dupName_1_trunc_sel_x_b = i_arrayidx8_prod_matrix0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx8_prod_matrix0_mult_x_im0_shift2(BITSHIFT,441)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im0_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im0_shift2_q = i_arrayidx8_prod_matrix0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx8_prod_matrix0_mult_x_im0_shift0(BITSHIFT,439)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im0_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im0_shift0_q = i_arrayidx8_prod_matrix0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx8_prod_matrix0_mult_x_im0_add_1(ADD,440)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx8_prod_matrix0_mult_x_im0_add_1_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im0_shift0_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im0_add_1_o = $unsigned(i_arrayidx8_prod_matrix0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im0_add_1_b);
    assign i_arrayidx8_prod_matrix0_mult_x_im0_add_1_q = i_arrayidx8_prod_matrix0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx8_prod_matrix0_mult_x_im0_add_3(ADD,442)@66 + 1
    assign i_arrayidx8_prod_matrix0_mult_x_im0_add_3_a = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im0_add_1_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im0_add_3_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx8_prod_matrix0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx8_prod_matrix0_mult_x_im0_add_3_q = i_arrayidx8_prod_matrix0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx8_prod_matrix0_mult_x_im0_shift4(BITSHIFT,443)@67
    assign i_arrayidx8_prod_matrix0_mult_x_im0_shift4_qint = { i_arrayidx8_prod_matrix0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im0_shift4_q = i_arrayidx8_prod_matrix0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx8_prod_matrix0_mult_x_sums_align_3(BITSHIFT,362)@67
    assign i_arrayidx8_prod_matrix0_mult_x_sums_align_3_qint = { i_arrayidx8_prod_matrix0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx8_prod_matrix0_mult_x_sums_align_3_q = i_arrayidx8_prod_matrix0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx8_prod_matrix0_mult_x_im6_shift2(BITSHIFT,451)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im6_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im6_shift2_q = i_arrayidx8_prod_matrix0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx8_prod_matrix0_mult_x_im6_shift0(BITSHIFT,449)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im6_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im6_shift0_q = i_arrayidx8_prod_matrix0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx8_prod_matrix0_mult_x_im6_add_1(ADD,450)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx8_prod_matrix0_mult_x_im6_add_1_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im6_shift0_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im6_add_1_o = $unsigned(i_arrayidx8_prod_matrix0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im6_add_1_b);
    assign i_arrayidx8_prod_matrix0_mult_x_im6_add_1_q = i_arrayidx8_prod_matrix0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx8_prod_matrix0_mult_x_im6_add_3(ADD,452)@66 + 1
    assign i_arrayidx8_prod_matrix0_mult_x_im6_add_3_a = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im6_add_1_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im6_add_3_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx8_prod_matrix0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx8_prod_matrix0_mult_x_im6_add_3_q = i_arrayidx8_prod_matrix0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx8_prod_matrix0_mult_x_im6_shift4(BITSHIFT,453)@67
    assign i_arrayidx8_prod_matrix0_mult_x_im6_shift4_qint = { i_arrayidx8_prod_matrix0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im6_shift4_q = i_arrayidx8_prod_matrix0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx8_prod_matrix0_mult_x_sums_align_2(BITSHIFT,361)@67
    assign i_arrayidx8_prod_matrix0_mult_x_sums_align_2_qint = { i_arrayidx8_prod_matrix0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx8_prod_matrix0_mult_x_sums_align_2_q = i_arrayidx8_prod_matrix0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx8_prod_matrix0_mult_x_sums_join_4(BITJOIN,363)@67
    assign i_arrayidx8_prod_matrix0_mult_x_sums_join_4_q = {i_arrayidx8_prod_matrix0_mult_x_sums_align_3_q, i_arrayidx8_prod_matrix0_mult_x_sums_align_2_q};

    // i_arrayidx8_prod_matrix0_mult_x_im3_shift2(BITSHIFT,446)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im3_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im3_shift2_q = i_arrayidx8_prod_matrix0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx8_prod_matrix0_mult_x_im3_shift0(BITSHIFT,444)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im3_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im3_shift0_q = i_arrayidx8_prod_matrix0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx8_prod_matrix0_mult_x_im3_add_1(ADD,445)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx8_prod_matrix0_mult_x_im3_add_1_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im3_shift0_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im3_add_1_o = $unsigned(i_arrayidx8_prod_matrix0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im3_add_1_b);
    assign i_arrayidx8_prod_matrix0_mult_x_im3_add_1_q = i_arrayidx8_prod_matrix0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx8_prod_matrix0_mult_x_im3_add_3(ADD,447)@66 + 1
    assign i_arrayidx8_prod_matrix0_mult_x_im3_add_3_a = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im3_add_1_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im3_add_3_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx8_prod_matrix0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx8_prod_matrix0_mult_x_im3_add_3_q = i_arrayidx8_prod_matrix0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx8_prod_matrix0_mult_x_im3_shift4(BITSHIFT,448)@67
    assign i_arrayidx8_prod_matrix0_mult_x_im3_shift4_qint = { i_arrayidx8_prod_matrix0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im3_shift4_q = i_arrayidx8_prod_matrix0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx8_prod_matrix0_mult_x_sums_align_0(BITSHIFT,359)@67
    assign i_arrayidx8_prod_matrix0_mult_x_sums_align_0_qint = { i_arrayidx8_prod_matrix0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx8_prod_matrix0_mult_x_sums_align_0_q = i_arrayidx8_prod_matrix0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx8_prod_matrix0_mult_x_im9_shift2(BITSHIFT,456)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im9_shift2_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im9_shift2_q = i_arrayidx8_prod_matrix0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx8_prod_matrix0_mult_x_im9_shift0(BITSHIFT,454)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im9_shift0_qint = { i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im9_shift0_q = i_arrayidx8_prod_matrix0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx8_prod_matrix0_mult_x_im9_add_1(ADD,455)@66
    assign i_arrayidx8_prod_matrix0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx16_prod_matrix0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx8_prod_matrix0_mult_x_im9_add_1_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im9_shift0_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im9_add_1_o = $unsigned(i_arrayidx8_prod_matrix0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im9_add_1_b);
    assign i_arrayidx8_prod_matrix0_mult_x_im9_add_1_q = i_arrayidx8_prod_matrix0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx8_prod_matrix0_mult_x_im9_add_3(ADD,457)@66 + 1
    assign i_arrayidx8_prod_matrix0_mult_x_im9_add_3_a = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im9_add_1_q};
    assign i_arrayidx8_prod_matrix0_mult_x_im9_add_3_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx16_prod_matrix0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx8_prod_matrix0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx8_prod_matrix0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx8_prod_matrix0_mult_x_im9_add_3_q = i_arrayidx8_prod_matrix0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx8_prod_matrix0_mult_x_im9_shift4(BITSHIFT,458)@67
    assign i_arrayidx8_prod_matrix0_mult_x_im9_shift4_qint = { i_arrayidx8_prod_matrix0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx8_prod_matrix0_mult_x_im9_shift4_q = i_arrayidx8_prod_matrix0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx8_prod_matrix0_mult_x_sums_join_1(BITJOIN,360)@67
    assign i_arrayidx8_prod_matrix0_mult_x_sums_join_1_q = {i_arrayidx8_prod_matrix0_mult_x_sums_align_0_q, i_arrayidx8_prod_matrix0_mult_x_im9_shift4_q};

    // i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0(ADD,364)@67
    assign i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8_prod_matrix0_mult_x_sums_join_1_q};
    assign i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8_prod_matrix0_mult_x_sums_join_4_q};
    assign i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_q = i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx8_prod_matrix0_mult_extender_x(BITJOIN,233)@67
    assign i_arrayidx8_prod_matrix0_mult_extender_x_q = {i_arrayidx12_prod_matrix0_mult_multconst_x_q, i_arrayidx8_prod_matrix0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx8_prod_matrix0_trunc_sel_x(BITSELECT,235)@67
    assign i_arrayidx8_prod_matrix0_trunc_sel_x_b = i_arrayidx8_prod_matrix0_mult_extender_x_q[63:0];

    // redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0(REG,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx8_prod_matrix0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21(BITJOIN,552)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_q = i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21(BITSELECT,553)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_q[63:0]);

    // i_arrayidx8_prod_matrix0_add_x(ADD,221)@68
    assign i_arrayidx8_prod_matrix0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024a100i32_v2315_prod_matrix21_b};
    assign i_arrayidx8_prod_matrix0_add_x_b = {1'b0, redist17_i_arrayidx8_prod_matrix0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx8_prod_matrix0_add_x_o = $unsigned(i_arrayidx8_prod_matrix0_add_x_a) + $unsigned(i_arrayidx8_prod_matrix0_add_x_b);
    assign i_arrayidx8_prod_matrix0_add_x_q = i_arrayidx8_prod_matrix0_add_x_o[64:0];

    // i_arrayidx8_prod_matrix0_dupName_0_trunc_sel_x(BITSELECT,238)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_trunc_sel_x_b = i_arrayidx8_prod_matrix0_add_x_q[63:0];

    // i_arrayidx8_prod_matrix0_dupName_0_add_x(ADD,228)@68
    assign i_arrayidx8_prod_matrix0_dupName_0_add_x_a = {1'b0, i_arrayidx8_prod_matrix0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx8_prod_matrix0_dupName_0_add_x_b = {1'b0, i_arrayidx8_prod_matrix0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx8_prod_matrix0_dupName_0_add_x_o = $unsigned(i_arrayidx8_prod_matrix0_dupName_0_add_x_a) + $unsigned(i_arrayidx8_prod_matrix0_dupName_0_add_x_b);
    assign i_arrayidx8_prod_matrix0_dupName_0_add_x_q = i_arrayidx8_prod_matrix0_dupName_0_add_x_o[64:0];

    // i_arrayidx8_prod_matrix0_dupName_2_trunc_sel_x(BITSELECT,240)@68
    assign i_arrayidx8_prod_matrix0_dupName_2_trunc_sel_x_b = i_arrayidx8_prod_matrix0_dupName_0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1_prod_matrix31(BLACKBOX,43)@68
    // in in_i_stall@20000000
    // out out_lm1_prod_matrix_avm_address@20000000
    // out out_lm1_prod_matrix_avm_burstcount@20000000
    // out out_lm1_prod_matrix_avm_byteenable@20000000
    // out out_lm1_prod_matrix_avm_enable@20000000
    // out out_lm1_prod_matrix_avm_read@20000000
    // out out_lm1_prod_matrix_avm_write@20000000
    // out out_lm1_prod_matrix_avm_writedata@20000000
    // out out_o_readdata@100
    // out out_o_stall@20000000
    // out out_o_valid@100
    prod_matrix_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_prod_matrix31 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx8_prod_matrix0_dupName_2_trunc_sel_x_b),
        .in_i_dependence(i_reduction_prod_matrix_1_prod_matrix29_q),
        .in_i_predicate(i_first_cleanup_xor_or_prod_matrix30_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_backStall),
        .in_i_valid(SE_sel_for_coalesced_delay_3_V0),
        .in_lm1_prod_matrix_avm_readdata(in_lm1_prod_matrix_avm_readdata),
        .in_lm1_prod_matrix_avm_readdatavalid(in_lm1_prod_matrix_avm_readdatavalid),
        .in_lm1_prod_matrix_avm_waitrequest(in_lm1_prod_matrix_avm_waitrequest),
        .in_lm1_prod_matrix_avm_writeack(in_lm1_prod_matrix_avm_writeack),
        .out_lm1_prod_matrix_avm_address(i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_address),
        .out_lm1_prod_matrix_avm_burstcount(i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_burstcount),
        .out_lm1_prod_matrix_avm_byteenable(i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_byteenable),
        .out_lm1_prod_matrix_avm_enable(i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_enable),
        .out_lm1_prod_matrix_avm_read(i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_read),
        .out_lm1_prod_matrix_avm_write(i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_write),
        .out_lm1_prod_matrix_avm_writedata(i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_prod_matrix31_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_prod_matrix31_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_prod_matrix31_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm1_prod_matrix31(BITJOIN,555)
    assign bubble_join_i_llvm_fpga_mem_lm1_prod_matrix31_q = i_llvm_fpga_mem_lm1_prod_matrix31_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_prod_matrix31(BITSELECT,556)
    assign bubble_select_i_llvm_fpga_mem_lm1_prod_matrix31_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_prod_matrix31_q[31:0]);

    // i_mul_prod_matrix35_bs2_merged_bit_select(BITSELECT,469)@100
    assign i_mul_prod_matrix35_bs2_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm1_prod_matrix31_b[31:18];
    assign i_mul_prod_matrix35_bs2_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm1_prod_matrix31_b[17:0];

    // bubble_join_i_llvm_fpga_mem_lm82_prod_matrix34(BITJOIN,558)
    assign bubble_join_i_llvm_fpga_mem_lm82_prod_matrix34_q = i_llvm_fpga_mem_lm82_prod_matrix34_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm82_prod_matrix34(BITSELECT,559)
    assign bubble_select_i_llvm_fpga_mem_lm82_prod_matrix34_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm82_prod_matrix34_q[31:0]);

    // i_mul_prod_matrix35_bs1_merged_bit_select(BITSELECT,470)@100
    assign i_mul_prod_matrix35_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm82_prod_matrix34_b[31:18];
    assign i_mul_prod_matrix35_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm82_prod_matrix34_b[17:0];

    // i_mul_prod_matrix35_ma3_cma(CHAINMULTADD,465)@100 + 3
    assign i_mul_prod_matrix35_ma3_cma_reset = ~ (resetn);
    assign i_mul_prod_matrix35_ma3_cma_ena0 = SE_i_mul_prod_matrix35_im0_cma_backEN[0];
    assign i_mul_prod_matrix35_ma3_cma_ena1 = i_mul_prod_matrix35_ma3_cma_ena0;
    assign i_mul_prod_matrix35_ma3_cma_ena2 = i_mul_prod_matrix35_ma3_cma_ena0;

    assign i_mul_prod_matrix35_ma3_cma_a0 = i_mul_prod_matrix35_bs1_merged_bit_select_b;
    assign i_mul_prod_matrix35_ma3_cma_c0 = i_mul_prod_matrix35_bs2_merged_bit_select_c;
    assign i_mul_prod_matrix35_ma3_cma_a1 = i_mul_prod_matrix35_bs2_merged_bit_select_b;
    assign i_mul_prod_matrix35_ma3_cma_c1 = i_mul_prod_matrix35_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul_prod_matrix35_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_prod_matrix35_ma3_cma_ena2, i_mul_prod_matrix35_ma3_cma_ena1, i_mul_prod_matrix35_ma3_cma_ena0 }),
        .aclr({ i_mul_prod_matrix35_ma3_cma_reset, i_mul_prod_matrix35_ma3_cma_reset }),
        .ay(i_mul_prod_matrix35_ma3_cma_a1),
        .by(i_mul_prod_matrix35_ma3_cma_a0),
        .ax(i_mul_prod_matrix35_ma3_cma_c1),
        .bx(i_mul_prod_matrix35_ma3_cma_c0),
        .resulta(i_mul_prod_matrix35_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_prod_matrix35_ma3_cma_delay ( .xin(i_mul_prod_matrix35_ma3_cma_s0), .xout(i_mul_prod_matrix35_ma3_cma_qq), .ena(SE_i_mul_prod_matrix35_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_prod_matrix35_ma3_cma_q = $unsigned(i_mul_prod_matrix35_ma3_cma_qq[32:0]);

    // bubble_join_i_mul_prod_matrix35_ma3_cma(BITJOIN,629)
    assign bubble_join_i_mul_prod_matrix35_ma3_cma_q = i_mul_prod_matrix35_ma3_cma_q;

    // i_mul_prod_matrix35_im8_cma(CHAINMULTADD,464)@100 + 3
    assign i_mul_prod_matrix35_im8_cma_reset = ~ (resetn);
    assign i_mul_prod_matrix35_im8_cma_ena0 = SE_i_mul_prod_matrix35_im0_cma_backEN[0];
    assign i_mul_prod_matrix35_im8_cma_ena1 = i_mul_prod_matrix35_im8_cma_ena0;
    assign i_mul_prod_matrix35_im8_cma_ena2 = i_mul_prod_matrix35_im8_cma_ena0;

    assign i_mul_prod_matrix35_im8_cma_a0 = i_mul_prod_matrix35_bs1_merged_bit_select_c;
    assign i_mul_prod_matrix35_im8_cma_c0 = i_mul_prod_matrix35_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul_prod_matrix35_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_prod_matrix35_im8_cma_ena2, i_mul_prod_matrix35_im8_cma_ena1, i_mul_prod_matrix35_im8_cma_ena0 }),
        .aclr({ i_mul_prod_matrix35_im8_cma_reset, i_mul_prod_matrix35_im8_cma_reset }),
        .ay(i_mul_prod_matrix35_im8_cma_a0),
        .ax(i_mul_prod_matrix35_im8_cma_c0),
        .resulta(i_mul_prod_matrix35_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_prod_matrix35_im8_cma_delay ( .xin(i_mul_prod_matrix35_im8_cma_s0), .xout(i_mul_prod_matrix35_im8_cma_qq), .ena(SE_i_mul_prod_matrix35_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_prod_matrix35_im8_cma_q = $unsigned(i_mul_prod_matrix35_im8_cma_qq[35:0]);

    // bubble_join_i_mul_prod_matrix35_im8_cma(BITJOIN,626)
    assign bubble_join_i_mul_prod_matrix35_im8_cma_q = i_mul_prod_matrix35_im8_cma_q;

    // bubble_out_i_mul_prod_matrix35_im8_cma_data_reg(STALLFIFO,1143)
    assign bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_in = SE_i_mul_prod_matrix35_im0_cma_V1;
    assign bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_backStall;
    assign bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_data_in = bubble_join_i_mul_prod_matrix35_im8_cma_q;
    assign bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_prod_matrix35_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_prod_matrix35_im8_cma_q),
        .valid_out(bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_prod_matrix35_im0_cma(CHAINMULTADD,463)@100 + 3
    assign i_mul_prod_matrix35_im0_cma_reset = ~ (resetn);
    assign i_mul_prod_matrix35_im0_cma_ena0 = SE_i_mul_prod_matrix35_im0_cma_backEN[0];
    assign i_mul_prod_matrix35_im0_cma_ena1 = i_mul_prod_matrix35_im0_cma_ena0;
    assign i_mul_prod_matrix35_im0_cma_ena2 = i_mul_prod_matrix35_im0_cma_ena0;

    assign i_mul_prod_matrix35_im0_cma_a0 = i_mul_prod_matrix35_bs1_merged_bit_select_b;
    assign i_mul_prod_matrix35_im0_cma_c0 = i_mul_prod_matrix35_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul_prod_matrix35_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_prod_matrix35_im0_cma_ena2, i_mul_prod_matrix35_im0_cma_ena1, i_mul_prod_matrix35_im0_cma_ena0 }),
        .aclr({ i_mul_prod_matrix35_im0_cma_reset, i_mul_prod_matrix35_im0_cma_reset }),
        .ay(i_mul_prod_matrix35_im0_cma_a0),
        .ax(i_mul_prod_matrix35_im0_cma_c0),
        .resulta(i_mul_prod_matrix35_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_prod_matrix35_im0_cma_delay ( .xin(i_mul_prod_matrix35_im0_cma_s0), .xout(i_mul_prod_matrix35_im0_cma_qq), .ena(SE_i_mul_prod_matrix35_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_prod_matrix35_im0_cma_q = $unsigned(i_mul_prod_matrix35_im0_cma_qq[27:0]);

    // bubble_join_i_mul_prod_matrix35_im0_cma(BITJOIN,623)
    assign bubble_join_i_mul_prod_matrix35_im0_cma_q = i_mul_prod_matrix35_im0_cma_q;

    // bubble_out_i_mul_prod_matrix35_im0_cma_data_reg(STALLFIFO,1142)
    assign bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_in = SE_i_mul_prod_matrix35_im0_cma_V0;
    assign bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_backStall;
    assign bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_data_in = bubble_join_i_mul_prod_matrix35_im0_cma_q;
    assign bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_prod_matrix35_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_prod_matrix35_im0_cma_q),
        .valid_out(bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mul_prod_matrix35_im0_cma(STALLENABLE,904)
    // Valid signal propagation
    assign SE_i_mul_prod_matrix35_im0_cma_V0 = SE_i_mul_prod_matrix35_im0_cma_R_v_0;
    assign SE_i_mul_prod_matrix35_im0_cma_V1 = SE_i_mul_prod_matrix35_im0_cma_R_v_1;
    assign SE_i_mul_prod_matrix35_im0_cma_V2 = SE_i_mul_prod_matrix35_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul_prod_matrix35_im0_cma_s_tv_0 = bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_stall_out & SE_i_mul_prod_matrix35_im0_cma_R_v_0;
    assign SE_i_mul_prod_matrix35_im0_cma_s_tv_1 = bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_stall_out & SE_i_mul_prod_matrix35_im0_cma_R_v_1;
    assign SE_i_mul_prod_matrix35_im0_cma_s_tv_2 = bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_out & SE_i_mul_prod_matrix35_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul_prod_matrix35_im0_cma_or0 = SE_i_mul_prod_matrix35_im0_cma_s_tv_0;
    assign SE_i_mul_prod_matrix35_im0_cma_or1 = SE_i_mul_prod_matrix35_im0_cma_s_tv_1 | SE_i_mul_prod_matrix35_im0_cma_or0;
    assign SE_i_mul_prod_matrix35_im0_cma_backEN = ~ (SE_i_mul_prod_matrix35_im0_cma_s_tv_2 | SE_i_mul_prod_matrix35_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul_prod_matrix35_im0_cma_and0 = SE_out_i_llvm_fpga_mem_lm1_prod_matrix31_V0 & SE_i_mul_prod_matrix35_im0_cma_backEN;
    assign SE_i_mul_prod_matrix35_im0_cma_v_s_0 = SE_out_i_llvm_fpga_mem_lm82_prod_matrix34_V0 & SE_i_mul_prod_matrix35_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul_prod_matrix35_im0_cma_backStall = ~ (SE_i_mul_prod_matrix35_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul_prod_matrix35_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul_prod_matrix35_im0_cma_R_s_1 <= 1'b0;
            SE_i_mul_prod_matrix35_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul_prod_matrix35_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul_prod_matrix35_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul_prod_matrix35_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_s_0 <= SE_i_mul_prod_matrix35_im0_cma_v_s_0;
            end

            if (SE_i_mul_prod_matrix35_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_s_1 <= SE_i_mul_prod_matrix35_im0_cma_R_s_0;
            end

            if (SE_i_mul_prod_matrix35_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_v_0 <= SE_i_mul_prod_matrix35_im0_cma_R_v_0 & SE_i_mul_prod_matrix35_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_v_0 <= SE_i_mul_prod_matrix35_im0_cma_R_s_1;
            end

            if (SE_i_mul_prod_matrix35_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_v_1 <= SE_i_mul_prod_matrix35_im0_cma_R_v_1 & SE_i_mul_prod_matrix35_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_v_1 <= SE_i_mul_prod_matrix35_im0_cma_R_s_1;
            end

            if (SE_i_mul_prod_matrix35_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_v_2 <= SE_i_mul_prod_matrix35_im0_cma_R_v_2 & SE_i_mul_prod_matrix35_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul_prod_matrix35_im0_cma_R_v_2 <= SE_i_mul_prod_matrix35_im0_cma_R_s_1;
            end

        end
    end

    // bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg(STALLFIFO,1144)
    assign bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_in = SE_i_mul_prod_matrix35_im0_cma_V2;
    assign bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_backStall;
    assign bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_data_in = bubble_join_i_mul_prod_matrix35_ma3_cma_q;
    assign bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_prod_matrix35_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_prod_matrix35_ma3_cma_q),
        .valid_out(bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_mul_prod_matrix35_ma3_cma(BITSELECT,630)
    assign bubble_select_i_mul_prod_matrix35_ma3_cma_b = $unsigned(bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_data_out[32:0]);

    // i_mul_prod_matrix35_sums_align_1(BITSHIFT,272)@103
    assign i_mul_prod_matrix35_sums_align_1_qint = { bubble_select_i_mul_prod_matrix35_ma3_cma_b, 18'b000000000000000000 };
    assign i_mul_prod_matrix35_sums_align_1_q = i_mul_prod_matrix35_sums_align_1_qint[50:0];

    // bubble_select_i_mul_prod_matrix35_im0_cma(BITSELECT,624)
    assign bubble_select_i_mul_prod_matrix35_im0_cma_b = $unsigned(bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_data_out[27:0]);

    // bubble_select_i_mul_prod_matrix35_im8_cma(BITSELECT,627)
    assign bubble_select_i_mul_prod_matrix35_im8_cma_b = $unsigned(bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_data_out[35:0]);

    // i_mul_prod_matrix35_sums_join_0(BITJOIN,271)@103
    assign i_mul_prod_matrix35_sums_join_0_q = {bubble_select_i_mul_prod_matrix35_im0_cma_b, bubble_select_i_mul_prod_matrix35_im8_cma_b};

    // i_mul_prod_matrix35_sums_result_add_0_0(ADD,274)@103
    assign i_mul_prod_matrix35_sums_result_add_0_0_a = {1'b0, i_mul_prod_matrix35_sums_join_0_q};
    assign i_mul_prod_matrix35_sums_result_add_0_0_b = {14'b00000000000000, i_mul_prod_matrix35_sums_align_1_q};
    assign i_mul_prod_matrix35_sums_result_add_0_0_o = $unsigned(i_mul_prod_matrix35_sums_result_add_0_0_a) + $unsigned(i_mul_prod_matrix35_sums_result_add_0_0_b);
    assign i_mul_prod_matrix35_sums_result_add_0_0_q = i_mul_prod_matrix35_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_prod_matrix35_sel_x(BITSELECT,172)@103
    assign bgTrunc_i_mul_prod_matrix35_sel_x_in = i_mul_prod_matrix35_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_prod_matrix35_sel_x_b = bgTrunc_i_mul_prod_matrix35_sel_x_in[31:0];

    // SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data(STALLENABLE,1089)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_V0 = SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_backStall = i_llvm_fpga_mem_memdep_prod_matrix36_out_o_stall | ~ (SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and0 = bubble_out_i_mul_prod_matrix35_ma3_cma_data_reg_valid_out;
    assign SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and1 = bubble_out_i_mul_prod_matrix35_im8_cma_data_reg_valid_out & SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and0;
    assign SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and2 = bubble_out_i_mul_prod_matrix35_im0_cma_data_reg_valid_out & SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and1;
    assign SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_wireValid = coalesced_delay_2_fifo_valid_out & SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_and2;

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,659)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,660)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[64:0]);

    // sel_for_coalesced_delay_2(BITSELECT,508)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_prod_matrix36(BLACKBOX,45)@103
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_prod_matrix_avm_address@20000000
    // out out_memdep_prod_matrix_avm_burstcount@20000000
    // out out_memdep_prod_matrix_avm_byteenable@20000000
    // out out_memdep_prod_matrix_avm_enable@20000000
    // out out_memdep_prod_matrix_avm_read@20000000
    // out out_memdep_prod_matrix_avm_write@20000000
    // out out_memdep_prod_matrix_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_o_writeack@134
    prod_matrix_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_prod_matrix36 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_2_b),
        .in_i_predicate(sel_for_coalesced_delay_2_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_backStall),
        .in_i_valid(SE_out_bubble_out_i_mul_prod_matrix35_ma3_cma_data_V0),
        .in_i_writedata(bgTrunc_i_mul_prod_matrix35_sel_x_b),
        .in_memdep_prod_matrix_avm_readdata(in_memdep_prod_matrix_avm_readdata),
        .in_memdep_prod_matrix_avm_readdatavalid(in_memdep_prod_matrix_avm_readdatavalid),
        .in_memdep_prod_matrix_avm_waitrequest(in_memdep_prod_matrix_avm_waitrequest),
        .in_memdep_prod_matrix_avm_writeack(in_memdep_prod_matrix_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_prod_matrix36_out_lsu_memdep_o_active),
        .out_memdep_prod_matrix_avm_address(i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_address),
        .out_memdep_prod_matrix_avm_burstcount(i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_burstcount),
        .out_memdep_prod_matrix_avm_byteenable(i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_byteenable),
        .out_memdep_prod_matrix_avm_enable(i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_enable),
        .out_memdep_prod_matrix_avm_read(i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_read),
        .out_memdep_prod_matrix_avm_write(i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_write),
        .out_memdep_prod_matrix_avm_writedata(i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_prod_matrix36_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_prod_matrix36_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_prod_matrix36_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_prod_matrix36(BITJOIN,561)
    assign bubble_join_i_llvm_fpga_mem_memdep_prod_matrix36_q = i_llvm_fpga_mem_memdep_prod_matrix36_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_prod_matrix36(BITSELECT,562)
    assign bubble_select_i_llvm_fpga_mem_memdep_prod_matrix36_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_prod_matrix36_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37(BLACKBOX,62)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    prod_matrix_i_llvm_fpga_push_i1_memdep_phi_push22_0 thei_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_prod_matrix36_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_feedback_stall_out_22),
        .in_keep_going(bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_prod_matrix36(STALLENABLE,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireValid) | SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_backStall) & SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireValid) | SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_StallValid = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_backStall & SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_toReg0 = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_StallValid & SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_toReg1 = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_StallValid & SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_or0 = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_consumed1 & SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_backStall = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_V0 = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_V1 = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_wireValid = i_llvm_fpga_mem_memdep_prod_matrix36_out_o_valid;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37(STALLENABLE,723)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_backStall = i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_and0 = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_wireValid = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_and0;

    // redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo(STALLFIFO,529)
    assign redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V8;
    assign redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_in = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_backStall;
    assign redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b;
    assign redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_in_bitsignaltemp = redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_in[0];
    assign redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_in_bitsignaltemp = redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_in[0];
    assign redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_out[0] = redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_out_bitsignaltemp;
    assign redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_out[0] = redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo (
        .valid_in(redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b),
        .valid_out(redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo(STALLENABLE,945)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg0 <= '0;
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg1 <= '0;
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg2 <= '0;
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg3 <= '0;
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg4 <= '0;
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg0 <= SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg0;
            // Successor 1
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg1 <= SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg1;
            // Successor 2
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg2 <= SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg2;
            // Successor 3
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg3 <= SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg3;
            // Successor 4
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg4 <= SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg4;
            // Successor 5
            SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg5 <= SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_backStall) & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg0;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_backStall) & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg1;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_backStall) & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg2;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed3 = (~ (SE_in_i_llvm_fpga_push_i1_push24_prod_matrix53_backStall) & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg3;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed4 = (~ (SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_backStall) & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg4;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed5 = (~ (i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_stall_out) & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg5;
    // Consuming
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_backStall & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg0 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed0;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg1 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed1;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg2 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed2;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg3 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed3;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg4 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed4;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_toReg5 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed5;
    // Backward Stall generation
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or0 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed0;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or1 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed1 & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or0;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or2 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed2 & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or1;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or3 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed3 & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or2;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or4 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed4 & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or3;
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireStall = ~ (SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_consumed5 & SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_or4);
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_backStall = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V0 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg0);
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V1 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg1);
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V2 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg2);
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V3 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg3);
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V4 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg4);
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V5 = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_wireValid = redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_valid_out;

    // SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57(STALLENABLE,733)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_V0 = SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_backStall = i_llvm_fpga_push_i1_push28_prod_matrix57_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_and0 = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_V1;
    assign SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_wireValid = SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V4 & SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_and0;

    // bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg(STALLFIFO,1133)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg(STALLFIFO,1134)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1(STALLENABLE,1057)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and0 = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and2 = redist21_i_masked_prod_matrix51_q_66_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and3 = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and5 = SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and6 = SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and7 = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and8 = SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_prod_matrix36_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_and8;

    // SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56(STALLENABLE,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall) & SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_backStall) & SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_StallValid = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_backStall & SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_toReg0 = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_StallValid & SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_toReg1 = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_StallValid & SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_or0 = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_consumed1 & SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_or0);
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_backStall = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_V0 = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_V1 = SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_wireValid = i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_push28_prod_matrix57(STALLENABLE,734)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_push28_prod_matrix57_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_push28_prod_matrix57_wireValid = i_llvm_fpga_push_i1_push28_prod_matrix57_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_pop28_prod_matrix56(BITJOIN,590)
    assign bubble_join_i_llvm_fpga_pop_i1_pop28_prod_matrix56_q = i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_pop28_prod_matrix56(BITSELECT,591)
    assign bubble_select_i_llvm_fpga_pop_i1_pop28_prod_matrix56_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_pop28_prod_matrix56_q[0:0]);

    // i_llvm_fpga_push_i1_push28_prod_matrix57(BLACKBOX,67)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    prod_matrix_i_llvm_fpga_push_i1_push28_0 thei_llvm_fpga_push_i1_push28_prod_matrix57 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_pop28_prod_matrix56_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_push28_prod_matrix57_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_push28_prod_matrix57_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_push28_prod_matrix57_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_push28_prod_matrix57_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_push28_prod_matrix57_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_push28_prod_matrix57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop28_prod_matrix56(BLACKBOX,53)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    prod_matrix_i_llvm_fpga_pop_i1_pop28_0 thei_llvm_fpga_pop_i1_pop28_prod_matrix56 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D7),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D4),
        .in_feedback_in_28(i_llvm_fpga_push_i1_push28_prod_matrix57_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_push28_prod_matrix57_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_pop28_prod_matrix56_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop24_prod_matrix52(BLACKBOX,52)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    prod_matrix_i_llvm_fpga_pop_i1_pop24_0 thei_llvm_fpga_pop_i1_pop24_prod_matrix52 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D3),
        .in_feedback_in_24(i_llvm_fpga_push_i1_push24_prod_matrix53_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_push24_prod_matrix53_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_pop24_prod_matrix52_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54(BLACKBOX,51)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    prod_matrix_i_llvm_fpga_pop_i1_notcmp2635_pop25_0 thei_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D2),
        .in_feedback_in_25(i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_notcmp2635_push25_prod_matrix55_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58(BLACKBOX,50)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    prod_matrix_i_llvm_fpga_pop_i1_notcmp2240_pop29_0 thei_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_29(i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_notcmp2240_push29_prod_matrix59_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,947)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_0_fifo_fromReg2 <= SE_out_coalesced_delay_0_fifo_toReg2;
            // Successor 3
            SE_out_coalesced_delay_0_fifo_fromReg3 <= SE_out_coalesced_delay_0_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_pop24_prod_matrix52_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    assign SE_out_coalesced_delay_0_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_pop28_prod_matrix56_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg3;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    assign SE_out_coalesced_delay_0_fifo_toReg3 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_or2 = SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed3 & SE_out_coalesced_delay_0_fifo_or2);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    assign SE_out_coalesced_delay_0_fifo_V3 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = SR_SE_out_coalesced_delay_0_fifo_V;

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,1146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_0_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data3 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data4 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data5 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data6 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data7 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= SE_out_coalesced_delay_0_fifo_backStall & (SR_SE_out_coalesced_delay_0_fifo_r_valid | SR_SE_out_coalesced_delay_0_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_0_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_coalesced_delay_0_fifo_r_data1 <= $unsigned(bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data2 <= $unsigned(bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data3 <= $unsigned(bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data4 <= $unsigned(bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_0_e);
                SR_SE_out_coalesced_delay_0_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_0_d);
                SR_SE_out_coalesced_delay_0_fifo_r_data7 <= $unsigned(sel_for_coalesced_delay_0_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_0_fifo_i_valid = redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out & SR_SE_out_coalesced_delay_0_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_0_fifo_backStall = SR_SE_out_coalesced_delay_0_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_0_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_0_fifo_V = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_valid : SR_SE_out_coalesced_delay_0_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_0_fifo_D0 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data0 : sel_for_coalesced_delay_0_c;
    // Data1
    assign SR_SE_out_coalesced_delay_0_fifo_D1 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data1 : bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b;
    // Data2
    assign SR_SE_out_coalesced_delay_0_fifo_D2 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data2 : bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b;
    // Data3
    assign SR_SE_out_coalesced_delay_0_fifo_D3 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data3 : bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b;
    // Data4
    assign SR_SE_out_coalesced_delay_0_fifo_D4 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data4 : bubble_select_redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b;
    // Data5
    assign SR_SE_out_coalesced_delay_0_fifo_D5 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data5 : sel_for_coalesced_delay_0_e;
    // Data6
    assign SR_SE_out_coalesced_delay_0_fifo_D6 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data6 : sel_for_coalesced_delay_0_d;
    // Data7
    assign SR_SE_out_coalesced_delay_0_fifo_D7 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data7 : sel_for_coalesced_delay_0_b;

    // coalesced_delay_0_fifo(STALLFIFO,530)
    assign coalesced_delay_0_fifo_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V11;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(133),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
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

    // redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo(STALLFIFO,517)
    assign redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V10;
    assign redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_in = SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_backStall;
    assign redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_data_in = bubble_select_prod_matrix_B4_merge_reg_aunroll_x_j;
    assign redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_in_bitsignaltemp = redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_in[0];
    assign redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_in_bitsignaltemp = redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_in[0];
    assign redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_out[0] = redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_out_bitsignaltemp;
    assign redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_out[0] = redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo (
        .valid_in(redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_j),
        .valid_out(redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(STALLFIFO,512)
    assign redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V9;
    assign redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in = SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall;
    assign redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_in = bubble_select_prod_matrix_B4_merge_reg_aunroll_x_b;
    assign redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp = redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in[0];
    assign redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp = redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in[0];
    assign redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out[0] = redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp;
    assign redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out[0] = redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo (
        .valid_in(redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_b),
        .valid_out(redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9(BLACKBOX,56)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    prod_matrix_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_0 thei_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9 (
        .in_data_in(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_e),
        .in_dir(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_30(i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_backStall),
        .in_valid_in(SE_out_prod_matrix_B4_merge_reg_aunroll_x_V8),
        .out_data_out(i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12(BLACKBOX,55)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    prod_matrix_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_0 thei_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12 (
        .in_data_in(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_i),
        .in_dir(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_26(i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_backStall),
        .in_valid_in(SE_out_prod_matrix_B4_merge_reg_aunroll_x_V7),
        .out_data_out(i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25(BLACKBOX,47)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    prod_matrix_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25 (
        .in_data_in(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_prod_matrix_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_31(i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_backStall),
        .in_valid_in(SE_out_prod_matrix_B4_merge_reg_aunroll_x_V6),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg(STALLFIFO,1141)
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V5;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg(STALLFIFO,1140)
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V4;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg(STALLFIFO,1139)
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V3;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg(STALLFIFO,1138)
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V2;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,1137)
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,610)
    assign bubble_join_stall_entry_q = {in_unnamed_prod_matrix13, in_pop1655, in_notcmp2634_pop1756, in_notcmp2252, in_memdep_phi4_pop1238_pop1958, in_memdep_phi3_pop1554, in_j_018_pop1453, in_i_021_pop1136_pop1857, in_forked18};

    // bubble_select_stall_entry(BITSELECT,611)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[69:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:70]);

    // SE_stall_entry(STALLENABLE,754)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = prod_matrix_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // prod_matrix_B4_merge_reg_aunroll_x(BLACKBOX,249)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    prod_matrix_B4_merge_reg theprod_matrix_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_prod_matrix_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_j),
        .in_data_in_2_tpl(bubble_select_stall_entry_g),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_data_in_5_tpl(bubble_select_stall_entry_i),
        .in_data_in_6_tpl(bubble_select_stall_entry_h),
        .in_data_in_7_tpl(bubble_select_stall_entry_c),
        .in_data_in_8_tpl(bubble_select_stall_entry_f),
        .out_stall_out(prod_matrix_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(prod_matrix_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_prod_matrix_B4_merge_reg_aunroll_x(STALLENABLE,788)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg11 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg8 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg9 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg10 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg11 <= SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg11;
        end
    end
    // Input Stall processing
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_prod_matrix_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_prod_matrix_B4_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_prod_matrix_B4_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_prod_matrix_B4_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_prod_matrix_B4_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_pop1542_pop31_prod_matrix25_out_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed7 = (~ (i_llvm_fpga_pop_i32_i_021_pop1137_pop26_prod_matrix12_out_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg7;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed8 = (~ (i_llvm_fpga_pop_i32_j_018_pop1441_pop30_prod_matrix9_out_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg8;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed9 = (~ (redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg9;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed10 = (~ (redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg10;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed11 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid) | SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg11;
    // Consuming
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid = SE_out_prod_matrix_B4_merge_reg_aunroll_x_backStall & SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg0 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg1 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg2 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg3 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg4 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg5 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg6 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg7 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed7;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg8 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed8;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg9 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed9;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg10 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed10;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_toReg11 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_StallValid & SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed11;
    // Backward Stall generation
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or0 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or1 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed1 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or0;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or2 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed2 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or1;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or3 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed3 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or2;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or4 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed4 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or3;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or5 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed5 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or4;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or6 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed6 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or5;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or7 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed7 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or6;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or8 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed8 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or7;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or9 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed9 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or8;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_or10 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed10 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or9;
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_consumed11 & SE_out_prod_matrix_B4_merge_reg_aunroll_x_or10);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_backStall = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V0 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V1 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V2 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V3 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V4 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V5 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V6 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V7 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg7);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V8 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg8);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V9 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg9);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V10 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg10);
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_V11 = SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_prod_matrix_B4_merge_reg_aunroll_x_fromReg11);
    // Computing multiple Valid(s)
    assign SE_out_prod_matrix_B4_merge_reg_aunroll_x_wireValid = prod_matrix_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,1136)
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_prod_matrix_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1(STALLENABLE,1069)
    // Valid signal propagation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_stall_out | ~ (SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6(BLACKBOX,39)@68
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_dest_i33_unnamed_14_prod_matrix0 thei_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_backStall),
        .in_valid_in(SE_out_bubble_out_prod_matrix_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6(BITJOIN,542)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_q = i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6(BITSELECT,543)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_q[32:0]);

    // bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7(BITJOIN,606)
    assign bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7(BITSELECT,607)
    assign bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_q[32:0]);

    // redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(REG,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b1)
        begin
            redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_fpga_indvars_iv_replace_phi_prod_matrix8(MUX,23)@68
    assign i_fpga_indvars_iv_replace_phi_prod_matrix8_s = redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q;
    always @(i_fpga_indvars_iv_replace_phi_prod_matrix8_s or bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_b or bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_b)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_prod_matrix8_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_prod_matrix8_q = bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_b;
            1'b1 : i_fpga_indvars_iv_replace_phi_prod_matrix8_q = bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_b;
            default : i_fpga_indvars_iv_replace_phi_prod_matrix8_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv_next_prod_matrix42(ADD,22)@68
    assign i_fpga_indvars_iv_next_prod_matrix42_a = {1'b0, i_fpga_indvars_iv_replace_phi_prod_matrix8_q};
    assign i_fpga_indvars_iv_next_prod_matrix42_b = {1'b0, c_i33_167_q};
    assign i_fpga_indvars_iv_next_prod_matrix42_o = $unsigned(i_fpga_indvars_iv_next_prod_matrix42_a) + $unsigned(i_fpga_indvars_iv_next_prod_matrix42_b);
    assign i_fpga_indvars_iv_next_prod_matrix42_q = i_fpga_indvars_iv_next_prod_matrix42_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_prod_matrix42_sel_x(BITSELECT,170)@68
    assign bgTrunc_i_fpga_indvars_iv_next_prod_matrix42_sel_x_b = i_fpga_indvars_iv_next_prod_matrix42_q[32:0];

    // SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43(STALLENABLE,743)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_V0 = SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall = i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_wireValid = SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_V;

    // SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43(STALLREG,1148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid <= SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall & (SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid | SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_prod_matrix42_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_and0 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_V1;
    assign SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V7 & SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall = SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_V = SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid : SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_D0 = SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data0 : bgTrunc_i_fpga_indvars_iv_next_prod_matrix42_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_D1 = SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_prod_matrix4_b;

    // SE_i_unnamed_prod_matrix45(STALLENABLE,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_prod_matrix45_fromReg0 <= '0;
            SE_i_unnamed_prod_matrix45_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_prod_matrix45_fromReg0 <= SE_i_unnamed_prod_matrix45_toReg0;
            // Successor 1
            SE_i_unnamed_prod_matrix45_fromReg1 <= SE_i_unnamed_prod_matrix45_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_prod_matrix45_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall) & SE_i_unnamed_prod_matrix45_wireValid) | SE_i_unnamed_prod_matrix45_fromReg0;
    assign SE_i_unnamed_prod_matrix45_consumed1 = (~ (SR_SE_i_masked_prod_matrix51_backStall) & SE_i_unnamed_prod_matrix45_wireValid) | SE_i_unnamed_prod_matrix45_fromReg1;
    // Consuming
    assign SE_i_unnamed_prod_matrix45_StallValid = SE_i_unnamed_prod_matrix45_backStall & SE_i_unnamed_prod_matrix45_wireValid;
    assign SE_i_unnamed_prod_matrix45_toReg0 = SE_i_unnamed_prod_matrix45_StallValid & SE_i_unnamed_prod_matrix45_consumed0;
    assign SE_i_unnamed_prod_matrix45_toReg1 = SE_i_unnamed_prod_matrix45_StallValid & SE_i_unnamed_prod_matrix45_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_prod_matrix45_or0 = SE_i_unnamed_prod_matrix45_consumed0;
    assign SE_i_unnamed_prod_matrix45_wireStall = ~ (SE_i_unnamed_prod_matrix45_consumed1 & SE_i_unnamed_prod_matrix45_or0);
    assign SE_i_unnamed_prod_matrix45_backStall = SE_i_unnamed_prod_matrix45_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_prod_matrix45_V0 = SE_i_unnamed_prod_matrix45_wireValid & ~ (SE_i_unnamed_prod_matrix45_fromReg0);
    assign SE_i_unnamed_prod_matrix45_V1 = SE_i_unnamed_prod_matrix45_wireValid & ~ (SE_i_unnamed_prod_matrix45_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_prod_matrix45_and0 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_V0;
    assign SE_i_unnamed_prod_matrix45_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix16_prod_matrix44_V1 & SE_i_unnamed_prod_matrix45_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6(STALLENABLE,678)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed1 = (~ (SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_backStall & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_or0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_backStall = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_V1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_wireValid = i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_out_valid_out;

    // SE_i_fpga_indvars_iv_replace_phi_prod_matrix8(STALLENABLE,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg0 <= '0;
            SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg0 <= SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_toReg0;
            // Successor 1
            SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg1 <= SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed0 = (~ (SE_i_unnamed_prod_matrix45_backStall) & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireValid) | SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg0;
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall) & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireValid) | SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg1;
    // Consuming
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_StallValid = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_backStall & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireValid;
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_toReg0 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_StallValid & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed0;
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_toReg1 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_StallValid & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed1;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_or0 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed0;
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireStall = ~ (SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_consumed1 & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_or0);
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_backStall = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireStall;
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_V0 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireValid & ~ (SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg0);
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_V1 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireValid & ~ (SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_and0 = SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_and1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix14_prod_matrix6_V1 & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_and0;
    assign SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_wireValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_V1 & SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_and1;

    // bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg(STALLFIFO,1135)
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_V0;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7(STALLENABLE,716)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg0 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg1 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed1 = (~ (SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_backStall) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_StallValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_backStall & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_toReg0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_toReg1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_or0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_consumed1 & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_or0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_backStall = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_V0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_V1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_wireValid = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43(STALLENABLE,744)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_wireValid = i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_valid_out;

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43(BLACKBOX,72)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef63(CONSTANT,11)
    assign c_i33_undef63_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7(BLACKBOX,58)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    prod_matrix_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7 (
        .in_data_in(c_i33_undef63_q),
        .in_dir(redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_backStall),
        .in_valid_in(SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V5),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_160(CONSTANT,7)
    assign c_i2_160_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0(BLACKBOX,54)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    prod_matrix_i_llvm_fpga_pop_i2_cleanups_pop23_0 thei_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0 (
        .in_data_in(c_i2_160_q),
        .in_dir(redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_cleanups_push23_prod_matrix50_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_backStall),
        .in_valid_in(SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V4),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28(BLACKBOX,49)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    prod_matrix_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28 (
        .in_data_in(GND_q),
        .in_dir(redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_prod_matrix37_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_backStall),
        .in_valid_in(SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(STALLENABLE,924)
    // Valid signal propagation
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0 = SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V1 = SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_1;
    // Stall signal propagation
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0 = SE_i_fpga_indvars_iv_replace_phi_prod_matrix8_backStall & SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_1 = redist11_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out & SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_1;
    // Backward Enable generation
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_or0 = SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN = ~ (SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_1 | SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0 = SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V1;
    // Backward Stall generation
    assign SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall = ~ (SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= 1'b0;
            SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b0)
            begin
                SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 & SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
            end
            else
            begin
                SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
            end

            if (SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b0)
            begin
                SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_1 <= SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_1 & SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_1;
            end
            else
            begin
                SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_1 <= SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
            end

        end
    end

    // SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo(STALLENABLE,928)
    // Valid signal propagation
    assign SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_V0 = SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi4_pop1239_pop27_prod_matrix23_out_stall_out | ~ (SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_and0 = redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_valid_out;
    assign SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_wireValid = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V0 & SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_and0;

    // SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0(STALLENABLE,922)
    // Valid signal propagation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_V0 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_s_tv_0 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backStall & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backEN = ~ (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_v_s_0 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backEN & SE_out_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0;
    // Backward Stall generation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backStall = ~ (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backEN == 1'b0)
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_R_v_0 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_R_v_0 & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_s_tv_0;
            end
            else
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_R_v_0 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_v_s_0;
            end

        end
    end

    // SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1(STALLENABLE,923)
    // Valid signal propagation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V0 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_0;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V1 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_1;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V2 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_2;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V3 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_3;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V4 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_4;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V5 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_5;
    // Stall signal propagation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_0 = SE_out_redist16_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_8_tpl_66_fifo_backStall & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_0;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_1 = SE_redist10_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_1;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_2 = i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_stall_out & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_2;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_3 = i_llvm_fpga_pop_i1_memdep_phi_pop22_prod_matrix28_out_stall_out & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_3;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_4 = i_llvm_fpga_pop_i2_cleanups_pop23_prod_matrix0_out_stall_out & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_4;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_5 = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_out_stall_out & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_5;
    // Backward Enable generation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or0 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_0;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or1 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_1 | SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or0;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or2 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_2 | SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or1;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or3 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_3 | SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or2;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or4 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_4 | SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or3;
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN = ~ (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_5 | SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_or4);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0 = SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_V0;
    // Backward Stall generation
    assign SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backStall = ~ (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_0 <= 1'b0;
            SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_1 <= 1'b0;
            SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_2 <= 1'b0;
            SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_3 <= 1'b0;
            SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_4 <= 1'b0;
            SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_5 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN == 1'b0)
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_0 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_0 & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_0;
            end
            else
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_0 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0;
            end

            if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN == 1'b0)
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_1 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_1 & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_1;
            end
            else
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_1 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0;
            end

            if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN == 1'b0)
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_2 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_2 & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_2;
            end
            else
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_2 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0;
            end

            if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN == 1'b0)
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_3 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_3 & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_3;
            end
            else
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_3 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0;
            end

            if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN == 1'b0)
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_4 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_4 & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_4;
            end
            else
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_4 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0;
            end

            if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN == 1'b0)
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_5 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_5 & SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_s_tv_5;
            end
            else
            begin
                SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_R_v_5 <= SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4(STALLENABLE,692)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg6 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg7 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg6;
            // Successor 7
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg7 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg7;
            // Successor 8
            SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg8 <= SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi3_pop1542_push31_prod_matrix26_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1239_push27_prod_matrix24_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed3 = (~ (SR_SE_leftShiftStage0_uid390_i_cleanups_shl_prod_matrix0_shift_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed4 = (~ (SE_in_i_llvm_fpga_push_i32_i_021_pop1137_push26_prod_matrix13_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed5 = (~ (SE_in_i_llvm_fpga_push_i32_j_018_pop1441_push30_prod_matrix10_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed6 = (~ (SE_i_inc_prod_matrix38_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed7 = (~ (SR_SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_prod_matrix43_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed8 = (~ (redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg8;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg7 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_toReg8 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed8;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or6 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or7 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed7 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_consumed8 & SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_or7);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg6);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V7 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg7);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_V8 = SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_wireValid = i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_prod_matrix47(STALLENABLE,730)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_wireValid = i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_prod_matrix47(BLACKBOX,65)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    prod_matrix_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_prod_matrix47 (
        .in_data_in(i_unnamed_prod_matrix45_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_prod_matrix1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_prod_matrix47_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_prod_matrix5(STALLENABLE,718)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_wireValid = i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_prod_matrix5(BLACKBOX,59)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    prod_matrix_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_prod_matrix5 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_initeration_stall_out),
        .in_keep_going(bubble_select_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_backStall),
        .in_valid_in(SE_out_redist27_i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out_66_fifo_V5),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0(REG,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_backEN == 1'b1)
        begin
            redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_q <= $unsigned(bubble_select_redist8_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b);
        end
    end

    // redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1(REG,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_backEN == 1'b1)
        begin
            redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q <= $unsigned(redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_0_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_prod_matrix4(BLACKBOX,46)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    prod_matrix_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_prod_matrix4 (
        .in_data_in(redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_prod_matrix5_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_prod_matrix47_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_prod_matrix4_backStall),
        .in_valid_in(SE_redist9_prod_matrix_B4_merge_reg_aunroll_x_out_data_out_0_tpl_66_1_V2),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_prod_matrix4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,159)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_prod_matrix4_out_pipeline_valid_out;

    // sync_out(GPOUT,168)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,175)
    assign out_lm1_prod_matrix_avm_address = i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_address;
    assign out_lm1_prod_matrix_avm_enable = i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_enable;
    assign out_lm1_prod_matrix_avm_read = i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_read;
    assign out_lm1_prod_matrix_avm_write = i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_write;
    assign out_lm1_prod_matrix_avm_writedata = i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_writedata;
    assign out_lm1_prod_matrix_avm_byteenable = i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_byteenable;
    assign out_lm1_prod_matrix_avm_burstcount = i_llvm_fpga_mem_lm1_prod_matrix31_out_lm1_prod_matrix_avm_burstcount;

    // bubble_join_redist21_i_masked_prod_matrix51_q_66_fifo(BITJOIN,641)
    assign bubble_join_redist21_i_masked_prod_matrix51_q_66_fifo_q = redist21_i_masked_prod_matrix51_q_66_fifo_data_out;

    // bubble_select_redist21_i_masked_prod_matrix51_q_66_fifo(BITSELECT,642)
    assign bubble_select_redist21_i_masked_prod_matrix51_q_66_fifo_b = $unsigned(bubble_join_redist21_i_masked_prod_matrix51_q_66_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,176)@134
    assign out_masked = bubble_select_redist21_i_masked_prod_matrix51_q_66_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_prod_matrix36_b;
    assign out_notcmp2240_pop29 = bubble_select_i_llvm_fpga_pop_i1_notcmp2240_pop29_prod_matrix58_b;
    assign out_notcmp2635_pop25 = bubble_select_i_llvm_fpga_pop_i1_notcmp2635_pop25_prod_matrix54_b;
    assign out_pop24 = bubble_select_i_llvm_fpga_pop_i1_pop24_prod_matrix52_b;
    assign out_pop28 = bubble_select_i_llvm_fpga_pop_i1_pop28_prod_matrix56_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_prod_matrix7_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,178)
    assign out_lm82_prod_matrix_avm_address = i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_address;
    assign out_lm82_prod_matrix_avm_enable = i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_enable;
    assign out_lm82_prod_matrix_avm_read = i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_read;
    assign out_lm82_prod_matrix_avm_write = i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_write;
    assign out_lm82_prod_matrix_avm_writedata = i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_writedata;
    assign out_lm82_prod_matrix_avm_byteenable = i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_byteenable;
    assign out_lm82_prod_matrix_avm_burstcount = i_llvm_fpga_mem_lm82_prod_matrix34_out_lm82_prod_matrix_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,179)
    assign out_memdep_prod_matrix_avm_address = i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_address;
    assign out_memdep_prod_matrix_avm_enable = i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_enable;
    assign out_memdep_prod_matrix_avm_read = i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_read;
    assign out_memdep_prod_matrix_avm_write = i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_write;
    assign out_memdep_prod_matrix_avm_writedata = i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_writedata;
    assign out_memdep_prod_matrix_avm_byteenable = i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_byteenable;
    assign out_memdep_prod_matrix_avm_burstcount = i_llvm_fpga_mem_memdep_prod_matrix36_out_memdep_prod_matrix_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,180)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_prod_matrix36_out_lsu_memdep_o_active;

endmodule
