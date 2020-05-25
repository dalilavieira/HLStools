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

// SystemVerilog created from claswp_bb_B5_stall_region
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_bb_B5_stall_region (
    input wire [63:0] in_lm18611_claswp_avm_readdata,
    input wire [0:0] in_lm18611_claswp_avm_writeack,
    input wire [0:0] in_lm18611_claswp_avm_waitrequest,
    input wire [0:0] in_lm18611_claswp_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out,
    input wire [0:0] in_feedback_in_13,
    input wire [0:0] in_feedback_in_14,
    input wire [0:0] in_feedback_in_15,
    input wire [0:0] in_feedback_in_16,
    input wire [0:0] in_feedback_in_17,
    input wire [0:0] in_feedback_in_18,
    input wire [31:0] in_feedback_in_8,
    output wire [0:0] out_feedback_stall_out_13,
    output wire [0:0] out_feedback_stall_out_14,
    output wire [0:0] out_feedback_stall_out_15,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_17,
    output wire [0:0] out_feedback_stall_out_18,
    output wire [0:0] out_feedback_stall_out_8,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_feedback_valid_in_14,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_feedback_valid_in_18,
    input wire [0:0] in_feedback_valid_in_8,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_27_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm19012_claswp_avm_readdata,
    input wire [0:0] in_lm19012_claswp_avm_writeack,
    input wire [0:0] in_lm19012_claswp_avm_waitrequest,
    input wire [0:0] in_lm19012_claswp_avm_readdatavalid,
    output wire [63:0] out_lm18611_claswp_avm_address,
    output wire [0:0] out_lm18611_claswp_avm_enable,
    output wire [0:0] out_lm18611_claswp_avm_read,
    output wire [0:0] out_lm18611_claswp_avm_write,
    output wire [63:0] out_lm18611_claswp_avm_writedata,
    output wire [7:0] out_lm18611_claswp_avm_byteenable,
    output wire [0:0] out_lm18611_claswp_avm_burstcount,
    output wire [31:0] out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [31:0] out_lm18611,
    output wire [31:0] out_lm19012,
    output wire [0:0] out_memdep_phi103_pop16,
    output wire [0:0] out_memdep_phi120_pop17,
    output wire [0:0] out_memdep_phi136_pop18,
    output wire [0:0] out_memdep_phi57_pop10,
    output wire [0:0] out_memdep_phi72_pop13,
    output wire [0:0] out_memdep_phi88_pop15,
    output wire [0:0] out_reduction_claswp_33,
    output wire [0:0] out_unnamed_claswp35,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_lm19012_claswp_avm_address,
    output wire [0:0] out_lm19012_claswp_avm_enable,
    output wire [0:0] out_lm19012_claswp_avm_read,
    output wire [0:0] out_lm19012_claswp_avm_write,
    output wire [63:0] out_lm19012_claswp_avm_writedata,
    output wire [7:0] out_lm19012_claswp_avm_byteenable,
    output wire [0:0] out_lm19012_claswp_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_undef30_q;
    wire [0:0] i_cmp73_claswp21_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm18611_claswp20_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm18611_claswp20_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm18611_claswp20_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm19012_claswp27_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm19012_claswp27_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm19012_claswp27_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_valid_out;
    wire [0:0] i_notlhs234_claswp23_q;
    wire [0:0] i_phi_decision209_xor210_and_i0_claswp25_q;
    wire [0:0] i_reduction_claswp_32_claswp15_q;
    wire [0:0] i_reduction_claswp_33_claswp16_q;
    wire [0:0] i_reduction_claswp_34_claswp18_q;
    wire [0:0] i_unnamed_claswp24_q;
    wire [0:0] i_unnamed_claswp26_q;
    wire [0:0] i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s;
    reg [31:0] i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q;
    wire [0:0] claswp_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] claswp_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] claswp_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [64:0] i_arrayidx72_claswp0_add_x_a;
    wire [64:0] i_arrayidx72_claswp0_add_x_b;
    logic [64:0] i_arrayidx72_claswp0_add_x_o;
    wire [64:0] i_arrayidx72_claswp0_add_x_q;
    wire [127:0] i_arrayidx72_claswp0_mult_extender_x_q;
    wire [60:0] i_arrayidx72_claswp0_mult_multconst_x_q;
    wire [63:0] i_arrayidx72_claswp0_trunc_sel_x_b;
    wire [63:0] i_arrayidx72_claswp0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom71_claswp17_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl;
    wire [35:0] i_arrayidx72_claswp0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx72_claswp0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx72_claswp0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx72_claswp0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx72_claswp0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx72_claswp0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx72_claswp0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx72_claswp0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_q;
    wire [11:0] i_arrayidx72_claswp0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx72_claswp0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx72_claswp0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx72_claswp0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx72_claswp0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx72_claswp0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx72_claswp0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx72_claswp0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_e;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [64:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [37:0] join_for_coalesced_delay_2_q;
    wire [31:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    wire [0:0] sel_for_coalesced_delay_2_d;
    wire [0:0] sel_for_coalesced_delay_2_e;
    wire [0:0] sel_for_coalesced_delay_2_f;
    wire [0:0] sel_for_coalesced_delay_2_g;
    wire [0:0] sel_for_coalesced_delay_2_h;
    wire [0:0] redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_in;
    wire redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_in;
    wire redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_data_in;
    wire [0:0] redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_out;
    wire redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_out;
    wire redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_data_out;
    reg [0:0] redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_q;
    reg [0:0] redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q;
    wire [0:0] redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_in;
    wire redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_in;
    wire redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_data_in;
    wire [0:0] redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_out;
    wire redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_out;
    wire redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_data_out;
    wire [0:0] redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_in;
    wire redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_in;
    wire redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_reduction_claswp_34_claswp18_q_32_fifo_data_in;
    wire [0:0] redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_out;
    wire redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_out;
    wire redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_reduction_claswp_34_claswp18_q_32_fifo_data_out;
    wire [0:0] redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_in;
    wire redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_in;
    wire redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_data_in;
    wire [0:0] redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_out;
    wire redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_out;
    wire redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [37:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [37:0] coalesced_delay_2_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm18611_claswp20_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm18611_claswp20_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm19012_claswp27_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm19012_claswp27_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_claswp_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_claswp_B5_merge_reg_aunroll_x_b;
    wire [35:0] bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_f;
    wire [0:0] bubble_join_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_q;
    wire [0:0] bubble_select_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_b;
    wire [0:0] bubble_join_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_q;
    wire [0:0] bubble_select_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_b;
    wire [0:0] bubble_join_redist10_i_reduction_claswp_34_claswp18_q_32_fifo_q;
    wire [0:0] bubble_select_redist10_i_reduction_claswp_34_claswp18_q_32_fifo_b;
    wire [0:0] bubble_join_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_q;
    wire [0:0] bubble_select_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [37:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [37:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_i_cmp73_claswp21_wireValid;
    wire [0:0] SE_i_cmp73_claswp21_wireStall;
    wire [0:0] SE_i_cmp73_claswp21_StallValid;
    wire [0:0] SE_i_cmp73_claswp21_toReg0;
    reg [0:0] SE_i_cmp73_claswp21_fromReg0;
    wire [0:0] SE_i_cmp73_claswp21_consumed0;
    wire [0:0] SE_i_cmp73_claswp21_toReg1;
    reg [0:0] SE_i_cmp73_claswp21_fromReg1;
    wire [0:0] SE_i_cmp73_claswp21_consumed1;
    wire [0:0] SE_i_cmp73_claswp21_and0;
    wire [0:0] SE_i_cmp73_claswp21_or0;
    wire [0:0] SE_i_cmp73_claswp21_backStall;
    wire [0:0] SE_i_cmp73_claswp21_V0;
    wire [0:0] SE_i_cmp73_claswp21_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm18611_claswp20_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_V0;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_wireValid;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_wireStall;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_StallValid;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_toReg0;
    reg [0:0] SE_i_reduction_claswp_32_claswp15_fromReg0;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_consumed0;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_toReg1;
    reg [0:0] SE_i_reduction_claswp_32_claswp15_fromReg1;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_consumed1;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_and0;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_and1;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_or0;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_backStall;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_V0;
    wire [0:0] SE_i_reduction_claswp_32_claswp15_V1;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_wireValid;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_wireStall;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_StallValid;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_toReg0;
    reg [0:0] SE_i_reduction_claswp_33_claswp16_fromReg0;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_consumed0;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_toReg1;
    reg [0:0] SE_i_reduction_claswp_33_claswp16_fromReg1;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_consumed1;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_and0;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_or0;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_backStall;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_V0;
    wire [0:0] SE_i_reduction_claswp_33_claswp16_V1;
    reg [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_0;
    reg [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_1;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_v_s_0;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_0;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_1;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backEN;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_and0;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_and1;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_or0;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backStall;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_V0;
    wire [0:0] SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_claswp_B5_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V3;
    wire [0:0] SE_join_for_coalesced_delay_1_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_1_and0;
    wire [0:0] SE_join_for_coalesced_delay_1_and1;
    wire [0:0] SE_join_for_coalesced_delay_1_backStall;
    wire [0:0] SE_join_for_coalesced_delay_1_V0;
    wire [0:0] SE_join_for_coalesced_delay_2_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_2_and0;
    wire [0:0] SE_join_for_coalesced_delay_2_and1;
    wire [0:0] SE_join_for_coalesced_delay_2_and2;
    wire [0:0] SE_join_for_coalesced_delay_2_and3;
    wire [0:0] SE_join_for_coalesced_delay_2_and4;
    wire [0:0] SE_join_for_coalesced_delay_2_and5;
    wire [0:0] SE_join_for_coalesced_delay_2_backStall;
    wire [0:0] SE_join_for_coalesced_delay_2_V0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_1;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_2;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_3;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_4;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_5;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_6;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_2;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_3;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_4;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_5;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_6;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or2;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or3;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or4;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or5;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V2;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V3;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V4;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V5;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V6;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_or0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_V0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_V1;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_or0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_backStall;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_V0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_V1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and2;
    wire [0:0] SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_backStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_V0;
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
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_V0;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,224)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,225)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,293)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = claswp_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // claswp_B5_merge_reg_aunroll_x(BLACKBOX,103)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    claswp_B5_merge_reg theclaswp_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_claswp_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(claswp_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(claswp_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(claswp_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_claswp_B5_merge_reg_aunroll_x(BITJOIN,228)
    assign bubble_join_claswp_B5_merge_reg_aunroll_x_q = claswp_B5_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_claswp_B5_merge_reg_aunroll_x(BITSELECT,229)
    assign bubble_select_claswp_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_claswp_B5_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x(BITJOIN,235)
    assign bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_q = {i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl, i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl, i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl, i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_2_tpl, i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x(BITSELECT,236)
    assign bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_q[32:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_q[35:35]);

    // redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0(REG,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_f);
        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8(STALLENABLE,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed0 = (~ (SE_i_reduction_claswp_32_claswp15_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed1 = (~ (SE_join_for_coalesced_delay_2_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_wireValid = i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11(STALLENABLE,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed0 = (~ (SE_i_reduction_claswp_33_claswp16_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed1 = (~ (SE_join_for_coalesced_delay_2_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_wireValid = i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10(STALLENABLE,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed0 = (~ (SE_i_reduction_claswp_33_claswp16_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed1 = (~ (SE_join_for_coalesced_delay_2_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_wireValid = i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_valid_out;

    // SE_i_reduction_claswp_33_claswp16(STALLENABLE,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_claswp_33_claswp16_fromReg0 <= '0;
            SE_i_reduction_claswp_33_claswp16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_claswp_33_claswp16_fromReg0 <= SE_i_reduction_claswp_33_claswp16_toReg0;
            // Successor 1
            SE_i_reduction_claswp_33_claswp16_fromReg1 <= SE_i_reduction_claswp_33_claswp16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_claswp_33_claswp16_consumed0 = (~ (SE_i_reduction_claswp_32_claswp15_backStall) & SE_i_reduction_claswp_33_claswp16_wireValid) | SE_i_reduction_claswp_33_claswp16_fromReg0;
    assign SE_i_reduction_claswp_33_claswp16_consumed1 = (~ (SE_join_for_coalesced_delay_2_backStall) & SE_i_reduction_claswp_33_claswp16_wireValid) | SE_i_reduction_claswp_33_claswp16_fromReg1;
    // Consuming
    assign SE_i_reduction_claswp_33_claswp16_StallValid = SE_i_reduction_claswp_33_claswp16_backStall & SE_i_reduction_claswp_33_claswp16_wireValid;
    assign SE_i_reduction_claswp_33_claswp16_toReg0 = SE_i_reduction_claswp_33_claswp16_StallValid & SE_i_reduction_claswp_33_claswp16_consumed0;
    assign SE_i_reduction_claswp_33_claswp16_toReg1 = SE_i_reduction_claswp_33_claswp16_StallValid & SE_i_reduction_claswp_33_claswp16_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_claswp_33_claswp16_or0 = SE_i_reduction_claswp_33_claswp16_consumed0;
    assign SE_i_reduction_claswp_33_claswp16_wireStall = ~ (SE_i_reduction_claswp_33_claswp16_consumed1 & SE_i_reduction_claswp_33_claswp16_or0);
    assign SE_i_reduction_claswp_33_claswp16_backStall = SE_i_reduction_claswp_33_claswp16_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_claswp_33_claswp16_V0 = SE_i_reduction_claswp_33_claswp16_wireValid & ~ (SE_i_reduction_claswp_33_claswp16_fromReg0);
    assign SE_i_reduction_claswp_33_claswp16_V1 = SE_i_reduction_claswp_33_claswp16_wireValid & ~ (SE_i_reduction_claswp_33_claswp16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_claswp_33_claswp16_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_V0;
    assign SE_i_reduction_claswp_33_claswp16_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_V0 & SE_i_reduction_claswp_33_claswp16_and0;

    // SE_join_for_coalesced_delay_2(STALLENABLE,319)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_2_V0 = SE_join_for_coalesced_delay_2_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_2_backStall = coalesced_delay_2_fifo_stall_out | ~ (SE_join_for_coalesced_delay_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_2_and0 = SE_i_reduction_claswp_33_claswp16_V1;
    assign SE_join_for_coalesced_delay_2_and1 = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_V0 & SE_join_for_coalesced_delay_2_and0;
    assign SE_join_for_coalesced_delay_2_and2 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_V1 & SE_join_for_coalesced_delay_2_and1;
    assign SE_join_for_coalesced_delay_2_and3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_V1 & SE_join_for_coalesced_delay_2_and2;
    assign SE_join_for_coalesced_delay_2_and4 = SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_V1 & SE_join_for_coalesced_delay_2_and3;
    assign SE_join_for_coalesced_delay_2_and5 = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_V1 & SE_join_for_coalesced_delay_2_and4;
    assign SE_join_for_coalesced_delay_2_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_V1 & SE_join_for_coalesced_delay_2_and5;

    // join_for_coalesced_delay_0(BITJOIN,163)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,178)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V3;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,333)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_i_cmp73_claswp21_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
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

    // SE_join_for_coalesced_delay_1(STALLENABLE,317)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_1_V0 = SE_join_for_coalesced_delay_1_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_1_backStall = coalesced_delay_1_fifo_stall_out | ~ (SE_join_for_coalesced_delay_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_1_and0 = SE_i_cmp73_claswp21_V1;
    assign SE_join_for_coalesced_delay_1_and1 = SE_out_coalesced_delay_0_fifo_V1 & SE_join_for_coalesced_delay_1_and0;
    assign SE_join_for_coalesced_delay_1_wireValid = SE_out_i_llvm_fpga_mem_lm18611_claswp20_V1 & SE_join_for_coalesced_delay_1_and1;

    // SE_out_i_llvm_fpga_mem_lm18611_claswp20(STALLENABLE,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg0 <= SE_out_i_llvm_fpga_mem_lm18611_claswp20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg1 <= SE_out_i_llvm_fpga_mem_lm18611_claswp20_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed0 = (~ (SE_i_cmp73_claswp21_backStall) & SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireValid) | SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireValid) | SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_StallValid = SE_out_i_llvm_fpga_mem_lm18611_claswp20_backStall & SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_toReg0 = SE_out_i_llvm_fpga_mem_lm18611_claswp20_StallValid & SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_toReg1 = SE_out_i_llvm_fpga_mem_lm18611_claswp20_StallValid & SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_or0 = SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm18611_claswp20_consumed1 & SE_out_i_llvm_fpga_mem_lm18611_claswp20_or0);
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_backStall = SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_V0 = SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_V1 = SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm18611_claswp20_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm18611_claswp20_wireValid = i_llvm_fpga_mem_lm18611_claswp20_out_o_valid;

    // redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0(REG,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_e);
        end
    end

    // redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_q <= $unsigned(redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11(BITJOIN,204)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_q = i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11(BITSELECT,205)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10(BITJOIN,201)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_q = i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10(BITSELECT,202)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_q[0:0]);

    // i_reduction_claswp_33_claswp16(LOGICAL,49)@6
    assign i_reduction_claswp_33_claswp16_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9(BITJOIN,218)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_q = i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9(BITSELECT,219)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8(BITJOIN,215)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_q = i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8(BITSELECT,216)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_q[0:0]);

    // i_reduction_claswp_32_claswp15(LOGICAL,48)@6
    assign i_reduction_claswp_32_claswp15_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_b;

    // i_reduction_claswp_34_claswp18(LOGICAL,50)@6
    assign i_reduction_claswp_34_claswp18_q = i_reduction_claswp_32_claswp15_q | i_reduction_claswp_33_claswp16_q;

    // i_arrayidx72_claswp0_mult_multconst_x(CONSTANT,115)
    assign i_arrayidx72_claswp0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1(STALLENABLE,407)
    // Valid signal propagation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_stall_out | ~ (SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_wireValid = bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3(STALLENABLE,262)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_backStall = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_wireValid = i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_select88150_claswp3(BLACKBOX,34)@5
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_dest_i32_select88150_0 thei_llvm_fpga_ffwd_dest_i32_select88150_claswp3 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_backStall),
        .in_valid_in(SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3(BITJOIN,185)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_q = i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3(BITSELECT,186)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_q[31:0]);

    // SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7(STALLENABLE,284)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_V0 = SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_backStall = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_wireValid = i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_valid_out;

    // c_i32_undef30(CONSTANT,4)
    assign c_i32_undef30_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7(BLACKBOX,45)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    claswp_i_llvm_fpga_pop_i32_zz7_pip8type_A000000Ztatic_1_pop8_claswp0 thei_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7 (
        .in_data_in(c_i32_undef30_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_f),
        .in_feedback_in_8(in_feedback_in_8),
        .in_feedback_valid_in_8(in_feedback_valid_in_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7(BITJOIN,221)
    assign bubble_join_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_q = i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7(BITSELECT,222)
    assign bubble_select_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_q[31:0]);

    // i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14(MUX,53)@5 + 1
    assign i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s = redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q <= 32'b0;
        end
        else if (SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backEN == 1'b1)
        begin
            unique case (i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s)
                1'b0 : i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q <= bubble_select_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_b;
                1'b1 : i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q <= bubble_select_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_b;
                default : i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q <= 32'b0;
            endcase
        end
    end

    // i_idxprom71_claswp17_sel_x(BITSELECT,118)@6
    assign i_idxprom71_claswp17_sel_x_b = $unsigned({{32{i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q[31]}}, i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q[31:0]});

    // i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select(BITSELECT,143)@6
    assign i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_b = i_idxprom71_claswp17_sel_x_b[63:54];
    assign i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_c = i_idxprom71_claswp17_sel_x_b[53:36];
    assign i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_d = i_idxprom71_claswp17_sel_x_b[35:18];
    assign i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_e = i_idxprom71_claswp17_sel_x_b[17:0];

    // i_arrayidx72_claswp0_mult_x_im0_shift0(BITSHIFT,139)@6
    assign i_arrayidx72_claswp0_mult_x_im0_shift0_qint = { i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx72_claswp0_mult_x_im0_shift0_q = i_arrayidx72_claswp0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx72_claswp0_mult_x_sums_align_3(BITSHIFT,136)@6
    assign i_arrayidx72_claswp0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx72_claswp0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx72_claswp0_mult_x_sums_align_3_q = i_arrayidx72_claswp0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx72_claswp0_mult_x_im6_shift0(BITSHIFT,141)@6
    assign i_arrayidx72_claswp0_mult_x_im6_shift0_qint = { i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx72_claswp0_mult_x_im6_shift0_q = i_arrayidx72_claswp0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx72_claswp0_mult_x_sums_align_2(BITSHIFT,135)@6
    assign i_arrayidx72_claswp0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx72_claswp0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx72_claswp0_mult_x_sums_align_2_q = i_arrayidx72_claswp0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx72_claswp0_mult_x_sums_join_4(BITJOIN,137)@6
    assign i_arrayidx72_claswp0_mult_x_sums_join_4_q = {i_arrayidx72_claswp0_mult_x_sums_align_3_q, i_arrayidx72_claswp0_mult_x_sums_align_2_q};

    // i_arrayidx72_claswp0_mult_x_im3_shift0(BITSHIFT,140)@6
    assign i_arrayidx72_claswp0_mult_x_im3_shift0_qint = { i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx72_claswp0_mult_x_im3_shift0_q = i_arrayidx72_claswp0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx72_claswp0_mult_x_sums_align_0(BITSHIFT,133)@6
    assign i_arrayidx72_claswp0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx72_claswp0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx72_claswp0_mult_x_sums_align_0_q = i_arrayidx72_claswp0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx72_claswp0_mult_x_im9_shift0(BITSHIFT,142)@6
    assign i_arrayidx72_claswp0_mult_x_im9_shift0_qint = { i_arrayidx72_claswp0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx72_claswp0_mult_x_im9_shift0_q = i_arrayidx72_claswp0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx72_claswp0_mult_x_sums_join_1(BITJOIN,134)@6
    assign i_arrayidx72_claswp0_mult_x_sums_join_1_q = {i_arrayidx72_claswp0_mult_x_sums_align_0_q, {1'b0, i_arrayidx72_claswp0_mult_x_im9_shift0_q}};

    // i_arrayidx72_claswp0_mult_x_sums_result_add_0_0(ADD,138)@6
    assign i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx72_claswp0_mult_x_sums_join_1_q};
    assign i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx72_claswp0_mult_x_sums_join_4_q};
    assign i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_q = i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx72_claswp0_mult_extender_x(BITJOIN,114)@6
    assign i_arrayidx72_claswp0_mult_extender_x_q = {i_arrayidx72_claswp0_mult_multconst_x_q, i_arrayidx72_claswp0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx72_claswp0_trunc_sel_x(BITSELECT,116)@6
    assign i_arrayidx72_claswp0_trunc_sel_x_b = i_arrayidx72_claswp0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4(BITJOIN,188)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_q = i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4(BITSELECT,189)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_q[63:0]);

    // i_arrayidx72_claswp0_add_x(ADD,108)@6
    assign i_arrayidx72_claswp0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_b};
    assign i_arrayidx72_claswp0_add_x_b = {1'b0, i_arrayidx72_claswp0_trunc_sel_x_b};
    assign i_arrayidx72_claswp0_add_x_o = $unsigned(i_arrayidx72_claswp0_add_x_a) + $unsigned(i_arrayidx72_claswp0_add_x_b);
    assign i_arrayidx72_claswp0_add_x_q = i_arrayidx72_claswp0_add_x_o[64:0];

    // i_arrayidx72_claswp0_dupName_0_trunc_sel_x(BITSELECT,117)@6
    assign i_arrayidx72_claswp0_dupName_0_trunc_sel_x_b = i_arrayidx72_claswp0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm18611_claswp20(BLACKBOX,37)@6
    // in in_i_stall@20000000
    // out out_lm18611_claswp_avm_address@20000000
    // out out_lm18611_claswp_avm_burstcount@20000000
    // out out_lm18611_claswp_avm_byteenable@20000000
    // out out_lm18611_claswp_avm_enable@20000000
    // out out_lm18611_claswp_avm_read@20000000
    // out out_lm18611_claswp_avm_write@20000000
    // out out_lm18611_claswp_avm_writedata@20000000
    // out out_o_readdata@38
    // out out_o_stall@20000000
    // out out_o_valid@38
    claswp_i_llvm_fpga_mem_lm18611_0 thei_llvm_fpga_mem_lm18611_claswp20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx72_claswp0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_claswp_34_claswp18_q),
        .in_i_predicate(redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm18611_claswp20_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_V0),
        .in_lm18611_claswp_avm_readdata(in_lm18611_claswp_avm_readdata),
        .in_lm18611_claswp_avm_readdatavalid(in_lm18611_claswp_avm_readdatavalid),
        .in_lm18611_claswp_avm_waitrequest(in_lm18611_claswp_avm_waitrequest),
        .in_lm18611_claswp_avm_writeack(in_lm18611_claswp_avm_writeack),
        .out_lm18611_claswp_avm_address(i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_address),
        .out_lm18611_claswp_avm_burstcount(i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_burstcount),
        .out_lm18611_claswp_avm_byteenable(i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_byteenable),
        .out_lm18611_claswp_avm_enable(i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_enable),
        .out_lm18611_claswp_avm_read(i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_read),
        .out_lm18611_claswp_avm_write(i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_write),
        .out_lm18611_claswp_avm_writedata(i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm18611_claswp20_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm18611_claswp20_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm18611_claswp20_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2(STALLENABLE,409)
    // Valid signal propagation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_stall_out | ~ (SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_wireValid = bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4(BLACKBOX,35)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_0 thei_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_backStall),
        .in_valid_in(SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4(STALLENABLE,264)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_backStall = i_llvm_fpga_mem_lm18611_claswp20_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and0 = i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and1 = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and2 = SE_i_reduction_claswp_32_claswp15_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_wireValid = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_and2;

    // SE_i_reduction_claswp_32_claswp15(STALLENABLE,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_claswp_32_claswp15_fromReg0 <= '0;
            SE_i_reduction_claswp_32_claswp15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_claswp_32_claswp15_fromReg0 <= SE_i_reduction_claswp_32_claswp15_toReg0;
            // Successor 1
            SE_i_reduction_claswp_32_claswp15_fromReg1 <= SE_i_reduction_claswp_32_claswp15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_claswp_32_claswp15_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_backStall) & SE_i_reduction_claswp_32_claswp15_wireValid) | SE_i_reduction_claswp_32_claswp15_fromReg0;
    assign SE_i_reduction_claswp_32_claswp15_consumed1 = (~ (redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_out) & SE_i_reduction_claswp_32_claswp15_wireValid) | SE_i_reduction_claswp_32_claswp15_fromReg1;
    // Consuming
    assign SE_i_reduction_claswp_32_claswp15_StallValid = SE_i_reduction_claswp_32_claswp15_backStall & SE_i_reduction_claswp_32_claswp15_wireValid;
    assign SE_i_reduction_claswp_32_claswp15_toReg0 = SE_i_reduction_claswp_32_claswp15_StallValid & SE_i_reduction_claswp_32_claswp15_consumed0;
    assign SE_i_reduction_claswp_32_claswp15_toReg1 = SE_i_reduction_claswp_32_claswp15_StallValid & SE_i_reduction_claswp_32_claswp15_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_claswp_32_claswp15_or0 = SE_i_reduction_claswp_32_claswp15_consumed0;
    assign SE_i_reduction_claswp_32_claswp15_wireStall = ~ (SE_i_reduction_claswp_32_claswp15_consumed1 & SE_i_reduction_claswp_32_claswp15_or0);
    assign SE_i_reduction_claswp_32_claswp15_backStall = SE_i_reduction_claswp_32_claswp15_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_claswp_32_claswp15_V0 = SE_i_reduction_claswp_32_claswp15_wireValid & ~ (SE_i_reduction_claswp_32_claswp15_fromReg0);
    assign SE_i_reduction_claswp_32_claswp15_V1 = SE_i_reduction_claswp_32_claswp15_wireValid & ~ (SE_i_reduction_claswp_32_claswp15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_claswp_32_claswp15_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_V0;
    assign SE_i_reduction_claswp_32_claswp15_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_V0 & SE_i_reduction_claswp_32_claswp15_and0;
    assign SE_i_reduction_claswp_32_claswp15_wireValid = SE_i_reduction_claswp_33_claswp16_V0 & SE_i_reduction_claswp_32_claswp15_and1;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9(STALLENABLE,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed0 = (~ (SE_i_reduction_claswp_32_claswp15_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed1 = (~ (SE_join_for_coalesced_delay_2_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_wireValid = i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_valid_out;

    // i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9(BLACKBOX,44)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    claswp_i_llvm_fpga_pop_i1_memdep_phi88_pop15_0 thei_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9 (
        .in_data_in(GND_q),
        .in_dir(redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V5),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8(BLACKBOX,43)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    claswp_i_llvm_fpga_pop_i1_memdep_phi72_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8 (
        .in_data_in(GND_q),
        .in_dir(redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V4),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11(BLACKBOX,40)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    claswp_i_llvm_fpga_pop_i1_memdep_phi120_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11 (
        .in_data_in(GND_q),
        .in_dir(redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10(BLACKBOX,39)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    claswp_i_llvm_fpga_pop_i1_memdep_phi103_pop16_0 thei_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10 (
        .in_data_in(GND_q),
        .in_dir(redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14(STALLENABLE,292)
    // Valid signal propagation
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_V0 = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_0;
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_V1 = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_1;
    // Stall signal propagation
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_0 = SE_join_for_coalesced_delay_2_backStall & SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_0;
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_backStall & SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_1;
    // Backward Enable generation
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_or0 = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_0;
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backEN = ~ (SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_1 | SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_and0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V1 & SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backEN;
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_select88150_claswp3_V0 & SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_and0;
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_v_s_0 = SE_out_i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_V0 & SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_and1;
    // Backward Stall generation
    assign SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backStall = ~ (SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_0 <= 1'b0;
            SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backEN == 1'b0)
            begin
                SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_0 <= SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_0 & SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_0;
            end
            else
            begin
                SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_0 <= SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_v_s_0;
            end

            if (SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backEN == 1'b0)
            begin
                SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_1 <= SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_1 & SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_s_tv_1;
            end
            else
            begin
                SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_R_v_1 <= SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_v_s_0;
            end

        end
    end

    // SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1(STALLENABLE,324)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_V0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_V1 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr145_claswp4_backStall & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_1 = SE_join_for_coalesced_delay_2_backStall & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_or0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_0;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backEN = ~ (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_1 | SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_v_s_0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backEN & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V0;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backStall = ~ (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_0 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_0 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_1 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_1 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_s_tv_1;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_R_v_1 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_v_s_0;
            end

        end
    end

    // SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0(STALLENABLE,323)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V1 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_1;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V2 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_2;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V3 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_3;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V4 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_4;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V5 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_5;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V6 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_6;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_backStall & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_1 = SE_i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_backStall & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_1;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_2 = i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_stall_out & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_2;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_3 = i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_stall_out & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_3;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_4 = i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_stall_out & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_4;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_5 = i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_stall_out & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_5;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_6 = redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_out & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_6;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_0;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or1 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_1 | SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or0;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or2 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_2 | SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or1;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or3 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_3 | SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or2;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or4 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_4 | SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or3;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or5 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_5 | SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or4;
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN = ~ (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_6 | SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_or5);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0 = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backStall = ~ (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_0 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_1 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_2 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_3 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_4 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_5 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_6 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_0 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_1 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_1 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_1;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_1 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_2 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_2 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_2;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_2 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_3 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_3 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_3;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_3 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_4 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_4 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_4;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_4 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_5 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_5 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_5;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_5 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_6 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_6 & SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_s_tv_6;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_R_v_6 <= SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_v_s_0;
            end

        end
    end

    // redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo(STALLFIFO,175)
    assign redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_in = SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_V6;
    assign redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_in = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_backStall;
    assign redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_data_in = redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q;
    assign redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_in_bitsignaltemp = redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_in[0];
    assign redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_in_bitsignaltemp = redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_in[0];
    assign redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_out[0] = redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_out_bitsignaltemp;
    assign redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_out[0] = redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo (
        .valid_in(redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_in_bitsignaltemp),
        .data_in(redist6_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_1_0_q),
        .valid_out(redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo(STALLENABLE,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg0 <= '0;
            SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg0 <= SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg1 <= SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_stall_out) & SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireValid) | SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg0;
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_stall_out) & SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireValid) | SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_StallValid = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_backStall & SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireValid;
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_toReg0 = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_StallValid & SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed0;
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_toReg1 = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_StallValid & SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_or0 = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed0;
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireStall = ~ (SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_consumed1 & SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_or0);
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_backStall = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_V0 = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireValid & ~ (SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg0);
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_V1 = SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireValid & ~ (SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_wireValid = redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_valid_out;

    // bubble_join_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo(BITJOIN,241)
    assign bubble_join_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_q = redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_data_out;

    // bubble_select_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo(BITSELECT,242)
    assign bubble_select_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_b = $unsigned(bubble_join_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13(BLACKBOX,41)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    claswp_i_llvm_fpga_pop_i1_memdep_phi136_pop18_0 thei_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_b),
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_2_fifo_backStall),
        .in_valid_in(SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12(BLACKBOX,42)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    claswp_i_llvm_fpga_pop_i1_memdep_phi57_pop10_0 thei_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_b),
        .in_feedback_in_14(in_feedback_in_14),
        .in_feedback_valid_in_14(in_feedback_valid_in_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_2_fifo_backStall),
        .in_valid_in(SE_out_redist7_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl_65_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo(STALLFIFO,171)
    assign redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V2;
    assign redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_d;
    assign redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_in[0];
    assign redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_in[0];
    assign redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_out[0] = redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_out_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_out[0] = redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo (
        .valid_in(redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_d),
        .valid_out(redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp73_claswp21(LOGICAL,30)@38
    assign i_cmp73_claswp21_q = $unsigned(bubble_select_i_llvm_fpga_mem_lm18611_claswp20_b == sel_for_coalesced_delay_0_b ? 1'b1 : 1'b0);

    // i_notlhs234_claswp23(LOGICAL,46)@38
    assign i_notlhs234_claswp23_q = i_cmp73_claswp21_q ^ VCC_q;

    // i_unnamed_claswp24(LOGICAL,51)@38
    assign i_unnamed_claswp24_q = sel_for_coalesced_delay_0_c & i_notlhs234_claswp23_q;

    // bubble_join_i_llvm_fpga_mem_lm18611_claswp20(BITJOIN,194)
    assign bubble_join_i_llvm_fpga_mem_lm18611_claswp20_q = i_llvm_fpga_mem_lm18611_claswp20_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm18611_claswp20(BITSELECT,195)
    assign bubble_select_i_llvm_fpga_mem_lm18611_claswp20_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm18611_claswp20_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,250)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,251)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,164)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // join_for_coalesced_delay_1(BITJOIN,166)
    assign join_for_coalesced_delay_1_q = {i_unnamed_claswp24_q, bubble_select_i_llvm_fpga_mem_lm18611_claswp20_b, sel_for_coalesced_delay_0_b};

    // coalesced_delay_1_fifo(STALLFIFO,179)
    assign coalesced_delay_1_fifo_valid_in = SE_join_for_coalesced_delay_1_V0;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_2(BITJOIN,169)
    assign join_for_coalesced_delay_2_q = {bubble_select_i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_b, bubble_select_i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_b, bubble_select_i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_b, bubble_select_i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_b, i_reduction_claswp_33_claswp16_q, redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_1_q, i_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_replace_phi_claswp14_q};

    // coalesced_delay_2_fifo(STALLFIFO,180)
    assign coalesced_delay_2_fifo_valid_in = SE_join_for_coalesced_delay_2_V0;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(38),
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

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,337)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_and1 = coalesced_delay_1_fifo_valid_out & SE_out_coalesced_delay_2_fifo_and0;
    assign SE_out_coalesced_delay_2_fifo_and2 = redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_valid_out & SE_out_coalesced_delay_2_fifo_and1;
    assign SE_out_coalesced_delay_2_fifo_and3 = i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_valid_out & SE_out_coalesced_delay_2_fifo_and2;
    assign SE_out_coalesced_delay_2_fifo_and4 = i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_valid_out & SE_out_coalesced_delay_2_fifo_and3;
    assign SE_out_coalesced_delay_2_fifo_wireValid = i_llvm_fpga_mem_lm19012_claswp27_out_o_valid & SE_out_coalesced_delay_2_fifo_and4;

    // bubble_join_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo(BITJOIN,247)
    assign bubble_join_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_q = redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_data_out;

    // bubble_select_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo(BITSELECT,248)
    assign bubble_select_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_b = $unsigned(bubble_join_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_q[0:0]);

    // i_phi_decision209_xor210_and_i0_claswp25(LOGICAL,47)@38
    assign i_phi_decision209_xor210_and_i0_claswp25_q = bubble_select_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_b & i_unnamed_claswp24_q;

    // i_unnamed_claswp26(LOGICAL,52)@38
    assign i_unnamed_claswp26_q = i_phi_decision209_xor210_and_i0_claswp25_q ^ VCC_q;

    // bubble_join_redist10_i_reduction_claswp_34_claswp18_q_32_fifo(BITJOIN,244)
    assign bubble_join_redist10_i_reduction_claswp_34_claswp18_q_32_fifo_q = redist10_i_reduction_claswp_34_claswp18_q_32_fifo_data_out;

    // bubble_select_redist10_i_reduction_claswp_34_claswp18_q_32_fifo(BITSELECT,245)
    assign bubble_select_redist10_i_reduction_claswp_34_claswp18_q_32_fifo_b = $unsigned(bubble_join_redist10_i_reduction_claswp_34_claswp18_q_32_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6(BITJOIN,191)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_q = i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6(BITSELECT,192)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_q[63:0]);

    // i_llvm_fpga_mem_lm19012_claswp27(BLACKBOX,38)@38
    // in in_i_stall@20000000
    // out out_lm19012_claswp_avm_address@20000000
    // out out_lm19012_claswp_avm_burstcount@20000000
    // out out_lm19012_claswp_avm_byteenable@20000000
    // out out_lm19012_claswp_avm_enable@20000000
    // out out_lm19012_claswp_avm_read@20000000
    // out out_lm19012_claswp_avm_write@20000000
    // out out_lm19012_claswp_avm_writedata@20000000
    // out out_o_readdata@70
    // out out_o_stall@20000000
    // out out_o_valid@70
    claswp_i_llvm_fpga_mem_lm19012_0 thei_llvm_fpga_mem_lm19012_claswp27 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_b),
        .in_i_dependence(bubble_select_redist10_i_reduction_claswp_34_claswp18_q_32_fifo_b),
        .in_i_predicate(i_unnamed_claswp26_q),
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_V0),
        .in_lm19012_claswp_avm_readdata(in_lm19012_claswp_avm_readdata),
        .in_lm19012_claswp_avm_readdatavalid(in_lm19012_claswp_avm_readdatavalid),
        .in_lm19012_claswp_avm_waitrequest(in_lm19012_claswp_avm_waitrequest),
        .in_lm19012_claswp_avm_writeack(in_lm19012_claswp_avm_writeack),
        .out_lm19012_claswp_avm_address(i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_address),
        .out_lm19012_claswp_avm_burstcount(i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_burstcount),
        .out_lm19012_claswp_avm_byteenable(i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_byteenable),
        .out_lm19012_claswp_avm_enable(i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_enable),
        .out_lm19012_claswp_avm_read(i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_read),
        .out_lm19012_claswp_avm_write(i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_write),
        .out_lm19012_claswp_avm_writedata(i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm19012_claswp27_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm19012_claswp27_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm19012_claswp27_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp73_claswp21(STALLENABLE,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp73_claswp21_fromReg0 <= '0;
            SE_i_cmp73_claswp21_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_cmp73_claswp21_fromReg0 <= SE_i_cmp73_claswp21_toReg0;
            // Successor 1
            SE_i_cmp73_claswp21_fromReg1 <= SE_i_cmp73_claswp21_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_cmp73_claswp21_consumed0 = (~ (SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_backStall) & SE_i_cmp73_claswp21_wireValid) | SE_i_cmp73_claswp21_fromReg0;
    assign SE_i_cmp73_claswp21_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_i_cmp73_claswp21_wireValid) | SE_i_cmp73_claswp21_fromReg1;
    // Consuming
    assign SE_i_cmp73_claswp21_StallValid = SE_i_cmp73_claswp21_backStall & SE_i_cmp73_claswp21_wireValid;
    assign SE_i_cmp73_claswp21_toReg0 = SE_i_cmp73_claswp21_StallValid & SE_i_cmp73_claswp21_consumed0;
    assign SE_i_cmp73_claswp21_toReg1 = SE_i_cmp73_claswp21_StallValid & SE_i_cmp73_claswp21_consumed1;
    // Backward Stall generation
    assign SE_i_cmp73_claswp21_or0 = SE_i_cmp73_claswp21_consumed0;
    assign SE_i_cmp73_claswp21_wireStall = ~ (SE_i_cmp73_claswp21_consumed1 & SE_i_cmp73_claswp21_or0);
    assign SE_i_cmp73_claswp21_backStall = SE_i_cmp73_claswp21_wireStall;
    // Valid signal propagation
    assign SE_i_cmp73_claswp21_V0 = SE_i_cmp73_claswp21_wireValid & ~ (SE_i_cmp73_claswp21_fromReg0);
    assign SE_i_cmp73_claswp21_V1 = SE_i_cmp73_claswp21_wireValid & ~ (SE_i_cmp73_claswp21_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_cmp73_claswp21_and0 = SE_out_coalesced_delay_0_fifo_V0;
    assign SE_i_cmp73_claswp21_wireValid = SE_out_i_llvm_fpga_mem_lm18611_claswp20_V0 & SE_i_cmp73_claswp21_and0;

    // redist10_i_reduction_claswp_34_claswp18_q_32_fifo(STALLFIFO,176)
    assign redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_in = SE_i_reduction_claswp_32_claswp15_V1;
    assign redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_in = SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_backStall;
    assign redist10_i_reduction_claswp_34_claswp18_q_32_fifo_data_in = i_reduction_claswp_34_claswp18_q;
    assign redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_in_bitsignaltemp = redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_in[0];
    assign redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_in_bitsignaltemp = redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_in[0];
    assign redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_out[0] = redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_out_bitsignaltemp;
    assign redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_out[0] = redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_reduction_claswp_34_claswp18_q_32_fifo (
        .valid_in(redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_claswp_34_claswp18_q),
        .valid_out(redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_reduction_claswp_34_claswp18_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_reduction_claswp_34_claswp18_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3(STALLENABLE,411)
    // Valid signal propagation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_stall_out | ~ (SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_wireValid = bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5(BLACKBOX,33)@5
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_0 thei_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_backStall),
        .in_valid_in(SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5(BITJOIN,182)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_q = i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5(BITSELECT,183)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_q[0:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5(STALLENABLE,260)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_backStall = redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_wireValid = i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_valid_out;

    // redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo(STALLFIFO,177)
    assign redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_V0;
    assign redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_in = SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_backStall;
    assign redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_data_in = bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_b;
    assign redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_in_bitsignaltemp = redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_in[0];
    assign redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_in_bitsignaltemp = redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_in[0];
    assign redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_out[0] = redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_out_bitsignaltemp;
    assign redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_out[0] = redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo (
        .valid_in(redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_b),
        .valid_out(redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo(STALLENABLE,331)
    // Valid signal propagation
    assign SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_V0 = SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_backStall = i_llvm_fpga_mem_lm19012_claswp27_out_o_stall | ~ (SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and0 = redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_valid_out;
    assign SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and1 = redist10_i_reduction_claswp_34_claswp18_q_32_fifo_valid_out & SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and0;
    assign SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and2 = SE_i_cmp73_claswp21_V0 & SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and1;
    assign SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_wireValid = i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_valid_out & SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_and2;

    // i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6(BLACKBOX,36)@38
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_dest_p1024i32_n77141_0 thei_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_redist17_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor184_claswp5_out_dest_data_out_27_0_33_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4(STALLENABLE,413)
    // Valid signal propagation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024i32_n77141_claswp6_out_stall_out | ~ (SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_wireValid = bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_out;

    // bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg(STALLFIFO,449)
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_in = SE_out_claswp_B5_merge_reg_aunroll_x_V3;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_claswp_B5_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg(STALLFIFO,448)
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_in = SE_out_claswp_B5_merge_reg_aunroll_x_V2;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_claswp_B5_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg(STALLFIFO,447)
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_in = SE_out_claswp_B5_merge_reg_aunroll_x_V1;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_claswp_B5_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg(STALLFIFO,446)
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_in = SE_out_claswp_B5_merge_reg_aunroll_x_V0;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_claswp_B5_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_claswp_B5_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_claswp_B5_merge_reg_aunroll_x(STALLENABLE,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_claswp_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_claswp_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_claswp_B5_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg3 <= SE_out_claswp_B5_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_claswp_B5_merge_reg_aunroll_x_fromReg4 <= SE_out_claswp_B5_merge_reg_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_claswp_B5_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_claswp_B5_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_claswp_B5_merge_reg_aunroll_x_wireValid) | SE_out_claswp_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_claswp_B5_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_claswp_B5_merge_reg_aunroll_x_wireValid) | SE_out_claswp_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_claswp_B5_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_claswp_B5_merge_reg_aunroll_x_wireValid) | SE_out_claswp_B5_merge_reg_aunroll_x_fromReg2;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_claswp_B5_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_claswp_B5_merge_reg_aunroll_x_wireValid) | SE_out_claswp_B5_merge_reg_aunroll_x_fromReg3;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_consumed4 = (~ (i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_o_stall) & SE_out_claswp_B5_merge_reg_aunroll_x_wireValid) | SE_out_claswp_B5_merge_reg_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_claswp_B5_merge_reg_aunroll_x_StallValid = SE_out_claswp_B5_merge_reg_aunroll_x_backStall & SE_out_claswp_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_toReg0 = SE_out_claswp_B5_merge_reg_aunroll_x_StallValid & SE_out_claswp_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_toReg1 = SE_out_claswp_B5_merge_reg_aunroll_x_StallValid & SE_out_claswp_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_toReg2 = SE_out_claswp_B5_merge_reg_aunroll_x_StallValid & SE_out_claswp_B5_merge_reg_aunroll_x_consumed2;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_toReg3 = SE_out_claswp_B5_merge_reg_aunroll_x_StallValid & SE_out_claswp_B5_merge_reg_aunroll_x_consumed3;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_toReg4 = SE_out_claswp_B5_merge_reg_aunroll_x_StallValid & SE_out_claswp_B5_merge_reg_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_claswp_B5_merge_reg_aunroll_x_or0 = SE_out_claswp_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_or1 = SE_out_claswp_B5_merge_reg_aunroll_x_consumed1 & SE_out_claswp_B5_merge_reg_aunroll_x_or0;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_or2 = SE_out_claswp_B5_merge_reg_aunroll_x_consumed2 & SE_out_claswp_B5_merge_reg_aunroll_x_or1;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_or3 = SE_out_claswp_B5_merge_reg_aunroll_x_consumed3 & SE_out_claswp_B5_merge_reg_aunroll_x_or2;
    assign SE_out_claswp_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_claswp_B5_merge_reg_aunroll_x_consumed4 & SE_out_claswp_B5_merge_reg_aunroll_x_or3);
    assign SE_out_claswp_B5_merge_reg_aunroll_x_backStall = SE_out_claswp_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_claswp_B5_merge_reg_aunroll_x_V0 = SE_out_claswp_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_claswp_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_claswp_B5_merge_reg_aunroll_x_V1 = SE_out_claswp_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_claswp_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_claswp_B5_merge_reg_aunroll_x_V2 = SE_out_claswp_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_claswp_B5_merge_reg_aunroll_x_fromReg2);
    assign SE_out_claswp_B5_merge_reg_aunroll_x_V3 = SE_out_claswp_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_claswp_B5_merge_reg_aunroll_x_fromReg3);
    assign SE_out_claswp_B5_merge_reg_aunroll_x_V4 = SE_out_claswp_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_claswp_B5_merge_reg_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_claswp_B5_merge_reg_aunroll_x_wireValid = claswp_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x(STALLENABLE,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed0 = (~ (SE_redist4_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl_2_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed2 = (~ (redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x(BLACKBOX,119)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit270_0_tpl@4
    // out out_c0_exit270_1_tpl@4
    // out out_c0_exit270_2_tpl@4
    // out out_c0_exit270_3_tpl@4
    // out out_c0_exit270_4_tpl@4
    // out out_c0_exit270_5_tpl@4
    claswp_i_sfc_s_c0_in_for_cond62_s_c0_enter26810_claswp1 thei_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_backStall),
        .in_i_valid(SE_out_claswp_B5_merge_reg_aunroll_x_V4),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1267_0_tpl(GND_q),
        .in_c0_eni1267_1_tpl(bubble_select_claswp_B5_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit270_0_tpl(),
        .out_c0_exit270_1_tpl(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_1_tpl),
        .out_c0_exit270_2_tpl(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_2_tpl),
        .out_c0_exit270_3_tpl(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl),
        .out_c0_exit270_4_tpl(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_4_tpl),
        .out_c0_exit270_5_tpl(i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out = i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out = i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_claswp2_exiting_stall_out;

    // feedback_stall_out_13_sync(GPOUT,16)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i1_memdep_phi72_pop13_claswp8_out_feedback_stall_out_13;

    // feedback_stall_out_14_sync(GPOUT,17)
    assign out_feedback_stall_out_14 = i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_feedback_stall_out_14;

    // feedback_stall_out_15_sync(GPOUT,18)
    assign out_feedback_stall_out_15 = i_llvm_fpga_pop_i1_memdep_phi88_pop15_claswp9_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,19)
    assign out_feedback_stall_out_16 = i_llvm_fpga_pop_i1_memdep_phi103_pop16_claswp10_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,20)
    assign out_feedback_stall_out_17 = i_llvm_fpga_pop_i1_memdep_phi120_pop17_claswp11_out_feedback_stall_out_17;

    // feedback_stall_out_18_sync(GPOUT,21)
    assign out_feedback_stall_out_18 = i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_feedback_stall_out_18;

    // feedback_stall_out_8_sync(GPOUT,22)
    assign out_feedback_stall_out_8 = i_llvm_fpga_pop_i32_zz7claswp_pip8type_3_s_s_s_s_s_e2ix_static_1_pop8_claswp7_out_feedback_stall_out_8;

    // pipeline_valid_out_sync(GPOUT,87)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,101)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,105)
    assign out_lm18611_claswp_avm_address = i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_address;
    assign out_lm18611_claswp_avm_enable = i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_enable;
    assign out_lm18611_claswp_avm_read = i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_read;
    assign out_lm18611_claswp_avm_write = i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_write;
    assign out_lm18611_claswp_avm_writedata = i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_writedata;
    assign out_lm18611_claswp_avm_byteenable = i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_byteenable;
    assign out_lm18611_claswp_avm_burstcount = i_llvm_fpga_mem_lm18611_claswp20_out_lm18611_claswp_avm_burstcount;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12(BITJOIN,211)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_q = i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12(BITSELECT,212)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13(BITJOIN,207)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_q = i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13(BITSELECT,208)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_lm19012_claswp27(BITJOIN,197)
    assign bubble_join_i_llvm_fpga_mem_lm19012_claswp27_q = i_llvm_fpga_mem_lm19012_claswp27_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm19012_claswp27(BITSELECT,198)
    assign bubble_select_i_llvm_fpga_mem_lm19012_claswp27_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm19012_claswp27_q[31:0]);

    // bubble_join_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo(BITJOIN,238)
    assign bubble_join_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_q = redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_data_out;

    // bubble_select_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo(BITSELECT,239)
    assign bubble_select_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_b = $unsigned(bubble_join_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,253)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,254)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[64:0]);

    // sel_for_coalesced_delay_1(BITSELECT,167)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,256)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,257)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[37:0]);

    // sel_for_coalesced_delay_2(BITSELECT,170)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[31:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[32:32]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[33:33]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[34:34]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[35:35]);
    assign sel_for_coalesced_delay_2_g = $unsigned(bubble_select_coalesced_delay_2_fifo_b[36:36]);
    assign sel_for_coalesced_delay_2_h = $unsigned(bubble_select_coalesced_delay_2_fifo_b[37:37]);

    // dupName_0_sync_out_x(GPOUT,106)@70
    assign out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi = sel_for_coalesced_delay_2_b;
    assign out_c0_exe1 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe3 = bubble_select_redist3_i_sfc_s_c0_in_for_cond62_claswps_c0_enter26810_claswp1_aunroll_x_out_c0_exit270_3_tpl_66_fifo_b;
    assign out_c0_exe4 = sel_for_coalesced_delay_2_c;
    assign out_lm18611 = sel_for_coalesced_delay_1_c;
    assign out_lm19012 = bubble_select_i_llvm_fpga_mem_lm19012_claswp27_b;
    assign out_memdep_phi103_pop16 = sel_for_coalesced_delay_2_h;
    assign out_memdep_phi120_pop17 = sel_for_coalesced_delay_2_g;
    assign out_memdep_phi136_pop18 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi136_pop18_claswp13_b;
    assign out_memdep_phi57_pop10 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi57_pop10_claswp12_b;
    assign out_memdep_phi72_pop13 = sel_for_coalesced_delay_2_f;
    assign out_memdep_phi88_pop15 = sel_for_coalesced_delay_2_e;
    assign out_reduction_claswp_33 = sel_for_coalesced_delay_2_d;
    assign out_unnamed_claswp35 = sel_for_coalesced_delay_1_d;
    assign out_valid_out = SE_out_coalesced_delay_2_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,107)
    assign out_lm19012_claswp_avm_address = i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_address;
    assign out_lm19012_claswp_avm_enable = i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_enable;
    assign out_lm19012_claswp_avm_read = i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_read;
    assign out_lm19012_claswp_avm_write = i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_write;
    assign out_lm19012_claswp_avm_writedata = i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_writedata;
    assign out_lm19012_claswp_avm_byteenable = i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_byteenable;
    assign out_lm19012_claswp_avm_burstcount = i_llvm_fpga_mem_lm19012_claswp27_out_lm19012_claswp_avm_burstcount;

endmodule
