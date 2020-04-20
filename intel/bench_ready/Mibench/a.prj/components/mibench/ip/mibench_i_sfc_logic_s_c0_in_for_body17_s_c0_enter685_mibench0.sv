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

// SystemVerilog created from mibench_i_sfc_logic_s_c0_in_for_body17_s_c0_enter685_mibench0
// SystemVerilog created on Sun Apr 19 21:18:32 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mibench_i_sfc_logic_s_c0_in_for_body17_s_c0_enter685_mibench0 (
    input wire [15:0] in_unnamed_mibench7_mibench_avm_readdata,
    input wire [0:0] in_unnamed_mibench7_mibench_avm_writeack,
    input wire [0:0] in_unnamed_mibench7_mibench_avm_waitrequest,
    input wire [0:0] in_unnamed_mibench7_mibench_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_unnamed_mibench8_mibench_avm_readdata,
    input wire [0:0] in_unnamed_mibench8_mibench_avm_writeack,
    input wire [0:0] in_unnamed_mibench8_mibench_avm_waitrequest,
    input wire [0:0] in_unnamed_mibench8_mibench_avm_readdatavalid,
    output wire [31:0] out_unnamed_mibench7_mibench_avm_address,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_enable,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_read,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_write,
    output wire [15:0] out_unnamed_mibench7_mibench_avm_writedata,
    output wire [1:0] out_unnamed_mibench7_mibench_avm_byteenable,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_burstcount,
    input wire [15:0] in_unnamed_mibench9_mibench_avm_readdata,
    input wire [0:0] in_unnamed_mibench9_mibench_avm_writeack,
    input wire [0:0] in_unnamed_mibench9_mibench_avm_waitrequest,
    input wire [0:0] in_unnamed_mibench9_mibench_avm_readdatavalid,
    output wire [31:0] out_unnamed_mibench8_mibench_avm_address,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_enable,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_read,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_write,
    output wire [15:0] out_unnamed_mibench8_mibench_avm_writedata,
    output wire [1:0] out_unnamed_mibench8_mibench_avm_byteenable,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_burstcount,
    input wire [15:0] in_memdep_4_mibench_avm_readdata,
    input wire [0:0] in_memdep_4_mibench_avm_writeack,
    input wire [0:0] in_memdep_4_mibench_avm_waitrequest,
    input wire [0:0] in_memdep_4_mibench_avm_readdatavalid,
    output wire [31:0] out_unnamed_mibench9_mibench_avm_address,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_enable,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_read,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_write,
    output wire [15:0] out_unnamed_mibench9_mibench_avm_writedata,
    output wire [1:0] out_unnamed_mibench9_mibench_avm_byteenable,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_burstcount,
    output wire [31:0] out_memdep_4_mibench_avm_address,
    output wire [0:0] out_memdep_4_mibench_avm_enable,
    output wire [0:0] out_memdep_4_mibench_avm_read,
    output wire [0:0] out_memdep_4_mibench_avm_write,
    output wire [15:0] out_memdep_4_mibench_avm_writedata,
    output wire [1:0] out_memdep_4_mibench_avm_byteenable,
    output wire [0:0] out_memdep_4_mibench_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mibench1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102275_q;
    wire [10:0] c_i11_177_q;
    wire [1:0] c_i2_168_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_171_q;
    wire [31:0] c_i32_4373_q;
    wire [63:0] c_mibench_A_pmem_q;
    wire [63:0] c_mibench_B_pmem_q;
    wire [63:0] c_mibench_C_pmem_q;
    wire [63:0] c_mibench_OUT_pmem_q;
    wire [32:0] i_add41_mibench24_a;
    wire [32:0] i_add41_mibench24_b;
    logic [32:0] i_add41_mibench24_o;
    wire [32:0] i_add41_mibench24_q;
    wire [10:0] i_add41_mibench24_vt_const_31_q;
    wire [31:0] i_add41_mibench24_vt_join_q;
    wire [19:0] i_add41_mibench24_vt_select_20_b;
    wire [32:0] i_add45_mibench25_a;
    wire [32:0] i_add45_mibench25_b;
    logic [32:0] i_add45_mibench25_o;
    wire [32:0] i_add45_mibench25_q;
    wire [21:0] i_add45_mibench25_vt_select_21_b;
    wire [32:0] i_add57_mibench33_a;
    wire [32:0] i_add57_mibench33_b;
    logic [32:0] i_add57_mibench33_o;
    wire [32:0] i_add57_mibench33_q;
    wire [32:0] i_add_mibench16_a;
    wire [32:0] i_add_mibench16_b;
    logic [32:0] i_add_mibench16_o;
    wire [32:0] i_add_mibench16_q;
    wire [11:0] i_add_mibench16_vt_const_31_q;
    wire [31:0] i_add_mibench16_vt_join_q;
    wire [18:0] i_add_mibench16_vt_select_19_b;
    wire [63:0] i_arrayidx195_mibench10_vt_join_q;
    wire [62:0] i_arrayidx195_mibench10_vt_select_63_b;
    wire [63:0] i_arrayidx256_mibench17_vt_join_q;
    wire [62:0] i_arrayidx256_mibench17_vt_select_63_b;
    wire [63:0] i_arrayidx307_mibench20_vt_join_q;
    wire [62:0] i_arrayidx307_mibench20_vt_select_63_b;
    wire [63:0] i_arrayidx608_mibench35_vt_join_q;
    wire [62:0] i_arrayidx608_mibench35_vt_select_63_b;
    wire [1:0] i_cleanups_shl_mibench5_vt_join_q;
    wire [0:0] i_cleanups_shl_mibench5_vt_select_1_b;
    wire [15:0] i_conv20_mibench12_vt_const_31_q;
    wire [31:0] i_conv20_mibench12_vt_join_q;
    wire [15:0] i_conv20_mibench12_vt_select_15_b;
    wire [31:0] i_conv26_mibench19_vt_join_q;
    wire [15:0] i_conv26_mibench19_vt_select_15_b;
    wire [31:0] i_conv31_mibench22_vt_join_q;
    wire [15:0] i_conv31_mibench22_vt_select_15_b;
    wire [11:0] i_fpga_indvars_iv_next6_mibench47_a;
    wire [11:0] i_fpga_indvars_iv_next6_mibench47_b;
    logic [11:0] i_fpga_indvars_iv_next6_mibench47_o;
    wire [11:0] i_fpga_indvars_iv_next6_mibench47_q;
    wire [63:0] i_idxprom18_mibench9_vt_join_q;
    wire [31:0] i_idxprom18_mibench9_vt_select_31_b;
    wire [32:0] i_inc62_mibench37_a;
    wire [32:0] i_inc62_mibench37_b;
    logic [32:0] i_inc62_mibench37_o;
    wire [32:0] i_inc62_mibench37_q;
    wire [31:0] i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mibench6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mibench6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mibench6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mibench6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mibench6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mibench7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mibench7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1948_push18_mibench51_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1948_push18_mibench51_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mibench43_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mibench43_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_mibench46_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_mibench46_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k13_025_push16_mibench38_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k13_025_push16_mibench38_out_feedback_valid_out_16;
    wire [0:0] i_masked_mibench49_qi;
    reg [0:0] i_masked_mibench49_q;
    wire [14:0] i_mul40_mibench23_vt_const_31_q;
    wire [31:0] i_mul40_mibench23_vt_join_q;
    wire [15:0] i_mul40_mibench23_vt_select_16_b;
    wire [32:0] i_mul54_add14_mibench28_a;
    wire [32:0] i_mul54_add14_mibench28_b;
    logic [32:0] i_mul54_add14_mibench28_o;
    wire [32:0] i_mul54_add14_mibench28_q;
    wire [31:0] i_mul54_add14_mibench28_vt_join_q;
    wire [19:0] i_mul54_add14_mibench28_vt_select_19_b;
    wire [32:0] i_mul_add12_mibench15_a;
    wire [32:0] i_mul_add12_mibench15_b;
    logic [32:0] i_mul_add12_mibench15_o;
    wire [32:0] i_mul_add12_mibench15_q;
    wire [12:0] i_mul_add12_mibench15_vt_const_31_q;
    wire [31:0] i_mul_add12_mibench15_vt_join_q;
    wire [17:0] i_mul_add12_mibench15_vt_select_18_b;
    wire [0:0] i_next_cleanups_mibench45_s;
    reg [1:0] i_next_cleanups_mibench45_q;
    wire [0:0] i_notcmp_mibench42_q;
    wire [0:0] i_or_mibench44_q;
    wire [32:0] i_reduction_mibench_0_mibench29_a;
    wire [32:0] i_reduction_mibench_0_mibench29_b;
    logic [32:0] i_reduction_mibench_0_mibench29_o;
    wire [32:0] i_reduction_mibench_0_mibench29_q;
    wire [31:0] i_reduction_mibench_0_mibench29_vt_join_q;
    wire [20:0] i_reduction_mibench_0_mibench29_vt_select_20_b;
    wire [32:0] i_reduction_mibench_1_mibench30_a;
    wire [32:0] i_reduction_mibench_1_mibench30_b;
    logic [32:0] i_reduction_mibench_1_mibench30_o;
    wire [32:0] i_reduction_mibench_1_mibench30_q;
    wire [31:0] i_reduction_mibench_1_mibench30_vt_join_q;
    wire [20:0] i_reduction_mibench_1_mibench30_vt_select_20_b;
    wire [32:0] i_reduction_mibench_2_mibench31_a;
    wire [32:0] i_reduction_mibench_2_mibench31_b;
    logic [32:0] i_reduction_mibench_2_mibench31_o;
    wire [32:0] i_reduction_mibench_2_mibench31_q;
    wire [21:0] i_reduction_mibench_2_mibench31_vt_select_21_b;
    wire [31:0] i_unnamed_mibench13_vt_join_q;
    wire [15:0] i_unnamed_mibench13_vt_select_16_b;
    wire [1:0] i_unnamed_mibench14_vt_const_1_q;
    wire [13:0] i_unnamed_mibench14_vt_const_31_q;
    wire [31:0] i_unnamed_mibench14_vt_join_q;
    wire [15:0] i_unnamed_mibench14_vt_select_17_b;
    wire [2:0] i_unnamed_mibench27_vt_const_2_q;
    wire [31:0] i_unnamed_mibench27_vt_join_q;
    wire [15:0] i_unnamed_mibench27_vt_select_18_b;
    wire [0:0] i_xor_mibench4_q;
    wire [31:0] bgTrunc_i_add41_mibench24_sel_x_b;
    wire [31:0] bgTrunc_i_add45_mibench25_sel_x_b;
    wire [31:0] bgTrunc_i_add57_mibench33_sel_x_b;
    wire [31:0] bgTrunc_i_add_mibench16_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next6_mibench47_sel_x_b;
    wire [31:0] bgTrunc_i_inc62_mibench37_sel_x_b;
    wire [31:0] bgTrunc_i_mul46_mibench26_sel_x_b;
    wire [31:0] bgTrunc_i_mul54_add14_mibench28_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add12_mibench15_sel_x_b;
    wire [31:0] bgTrunc_i_reass_mul_mibench32_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_mibench_0_mibench29_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_mibench_1_mibench30_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_mibench_2_mibench31_sel_x_b;
    wire [64:0] i_arrayidx195_mibench0_add_x_a;
    wire [64:0] i_arrayidx195_mibench0_add_x_b;
    logic [64:0] i_arrayidx195_mibench0_add_x_o;
    wire [64:0] i_arrayidx195_mibench0_add_x_q;
    wire [127:0] i_arrayidx195_mibench0_mult_extender_x_q;
    wire [61:0] i_arrayidx195_mibench0_mult_multconst_x_q;
    wire [63:0] i_arrayidx195_mibench0_trunc_sel_x_b;
    wire [63:0] i_arrayidx195_mibench0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx256_mibench0_add_x_a;
    wire [64:0] i_arrayidx256_mibench0_add_x_b;
    logic [64:0] i_arrayidx256_mibench0_add_x_o;
    wire [64:0] i_arrayidx256_mibench0_add_x_q;
    wire [127:0] i_arrayidx256_mibench0_mult_extender_x_q;
    wire [63:0] i_arrayidx256_mibench0_trunc_sel_x_b;
    wire [63:0] i_arrayidx256_mibench0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx307_mibench0_add_x_a;
    wire [64:0] i_arrayidx307_mibench0_add_x_b;
    logic [64:0] i_arrayidx307_mibench0_add_x_o;
    wire [64:0] i_arrayidx307_mibench0_add_x_q;
    wire [127:0] i_arrayidx307_mibench0_mult_extender_x_q;
    wire [63:0] i_arrayidx307_mibench0_trunc_sel_x_b;
    wire [63:0] i_arrayidx307_mibench0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx608_mibench0_add_x_a;
    wire [64:0] i_arrayidx608_mibench0_add_x_b;
    logic [64:0] i_arrayidx608_mibench0_add_x_o;
    wire [64:0] i_arrayidx608_mibench0_add_x_q;
    wire [127:0] i_arrayidx608_mibench0_mult_extender_x_q;
    wire [63:0] i_arrayidx608_mibench0_trunc_sel_x_b;
    wire [63:0] i_arrayidx608_mibench0_dupName_0_trunc_sel_x_b;
    wire [31:0] i_conv20_mibench12_sel_x_b;
    wire [15:0] i_conv20_mibench12_vt_join_narrowed_x_b;
    wire [31:0] i_conv26_mibench19_sel_x_b;
    wire [31:0] i_conv31_mibench22_sel_x_b;
    wire [15:0] i_conv31_mibench22_vt_join_narrowed_x_b;
    wire [15:0] i_conv58_mibench34_sel_x_b;
    wire [0:0] i_first_cleanup_mibench3_sel_x_b;
    wire [63:0] i_idxprom18_mibench9_sel_x_b;
    wire [63:0] i_mul46_mibench26_extender_x_q;
    wire [25:0] i_mul46_mibench26_multconst_x_q;
    wire [63:0] i_reass_mul_mibench32_extender_x_q;
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
    wire [0:0] i_exitcond7_mibench40_cmp_nsign_q;
    wire [35:0] i_arrayidx195_mibench0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx195_mibench0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx195_mibench0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx195_mibench0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx195_mibench0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx195_mibench0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx195_mibench0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx195_mibench0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx256_mibench0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx256_mibench0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx256_mibench0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx256_mibench0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx256_mibench0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx256_mibench0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx256_mibench0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx256_mibench0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx307_mibench0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx307_mibench0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx307_mibench0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx307_mibench0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx307_mibench0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx307_mibench0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx307_mibench0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx307_mibench0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx608_mibench0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx608_mibench0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx608_mibench0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx608_mibench0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx608_mibench0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx608_mibench0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx608_mibench0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx608_mibench0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid367_i_cleanups_shl_mibench0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid367_i_cleanups_shl_mibench0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid368_i_cleanups_shl_mibench0_shift_x_q;
    wire [0:0] leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_s;
    reg [1:0] leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid375_i_mul40_mibench0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid375_i_mul40_mibench0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid376_i_mul40_mibench0_shift_x_q;
    wire [0:0] leftShiftStage0_uid378_i_mul40_mibench0_shift_x_s;
    reg [31:0] leftShiftStage0_uid378_i_mul40_mibench0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid383_i_unnamed_mibench0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid383_i_unnamed_mibench0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid384_i_unnamed_mibench0_shift_x_q;
    wire [0:0] leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_s;
    reg [31:0] leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid391_dupName_0_i_unnamed_mibench0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid391_dupName_0_i_unnamed_mibench0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid392_dupName_0_i_unnamed_mibench0_shift_x_q;
    wire [0:0] leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_s;
    reg [31:0] leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid404_dupName_1_i_unnamed_mibench0_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid404_dupName_1_i_unnamed_mibench0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid405_dupName_1_i_unnamed_mibench0_shift_x_q;
    wire [0:0] leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_s;
    reg [31:0] leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_q;
    wire [10:0] i_arrayidx195_mibench0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx195_mibench0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx195_mibench0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx195_mibench0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx195_mibench0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx195_mibench0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx195_mibench0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx195_mibench0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx256_mibench0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx256_mibench0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx256_mibench0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx256_mibench0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx256_mibench0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx256_mibench0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx256_mibench0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx256_mibench0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx307_mibench0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx307_mibench0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx307_mibench0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx307_mibench0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx307_mibench0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx307_mibench0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx307_mibench0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx307_mibench0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx608_mibench0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx608_mibench0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx608_mibench0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx608_mibench0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx608_mibench0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx608_mibench0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx608_mibench0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx608_mibench0_mult_x_im9_shift0_qint;
    wire i_mul46_mibench26_cma_reset;
    wire [21:0] i_mul46_mibench26_cma_a0;
    wire [15:0] i_mul46_mibench26_cma_c0;
    wire [37:0] i_mul46_mibench26_cma_s0;
    wire [37:0] i_mul46_mibench26_cma_qq;
    wire [37:0] i_mul46_mibench26_cma_q;
    wire i_mul46_mibench26_cma_ena0;
    wire i_mul46_mibench26_cma_ena1;
    wire i_mul46_mibench26_cma_ena2;
    wire i_reass_mul_mibench32_cma_reset;
    wire [21:0] i_reass_mul_mibench32_cma_a0;
    wire [15:0] i_reass_mul_mibench32_cma_c0;
    wire [37:0] i_reass_mul_mibench32_cma_s0;
    wire [37:0] i_reass_mul_mibench32_cma_qq;
    wire [37:0] i_reass_mul_mibench32_cma_q;
    wire i_reass_mul_mibench32_cma_ena0;
    wire i_reass_mul_mibench32_cma_ena1;
    wire i_reass_mul_mibench32_cma_ena2;
    wire [9:0] i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e;
    reg [9:0] redist0_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b_1_q;
    reg [17:0] redist1_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c_1_q;
    reg [17:0] redist2_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d_1_q;
    reg [17:0] redist3_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e_1_q;
    reg [0:0] redist4_valid_fanout_reg0_q_1_q;
    reg [0:0] redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist6_sync_together92_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist7_sync_together92_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together92_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist9_sync_together92_aunroll_x_in_i_valid_9_q;
    reg [15:0] redist10_i_conv20_mibench12_vt_join_narrowed_x_b_1_q;
    reg [0:0] redist11_i_xor_mibench4_q_1_q;
    reg [0:0] redist12_i_xor_mibench4_q_2_q;
    reg [0:0] redist13_i_xor_mibench4_q_9_q;
    reg [19:0] redist14_i_mul54_add14_mibench28_vt_select_19_b_1_q;
    reg [0:0] redist15_i_masked_mibench49_q_10_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out_10_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_2_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_11_q;
    reg [18:0] redist22_i_add_mibench16_vt_select_19_b_1_q;
    wire redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_reset0;
    wire [62:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_ia;
    wire [2:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_aa;
    wire [2:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_ab;
    wire [62:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_iq;
    wire [62:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_q;
    wire [2:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_q;
    (* preserve *) reg [2:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i;
    (* preserve *) reg redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_eq;
    reg [2:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_wraddr_q;
    wire [3:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_last_q;
    wire [3:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmp_b;
    wire [0:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmpReg_q;
    wire [0:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_notEnable_q;
    wire [0:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_sticky_ena_q;
    wire [0:0] redist21_i_arrayidx608_mibench35_vt_select_63_b_7_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together92_aunroll_x_in_i_valid_1(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together92_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together92_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid367_i_cleanups_shl_mibench0_shift_x(BITSELECT,366)@2
    assign leftShiftStage0Idx1Rng1_uid367_i_cleanups_shl_mibench0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid367_i_cleanups_shl_mibench0_shift_x_b = leftShiftStage0Idx1Rng1_uid367_i_cleanups_shl_mibench0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid368_i_cleanups_shl_mibench0_shift_x(BITJOIN,367)@2
    assign leftShiftStage0Idx1_uid368_i_cleanups_shl_mibench0_shift_x_q = {leftShiftStage0Idx1Rng1_uid367_i_cleanups_shl_mibench0_shift_x_b, GND_q};

    // leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x(MUX,369)@2
    assign leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out or leftShiftStage0Idx1_uid368_i_cleanups_shl_mibench0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_s)
            1'b0 : leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out;
            1'b1 : leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_q = leftShiftStage0Idx1_uid368_i_cleanups_shl_mibench0_shift_x_q;
            default : leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_mibench5_vt_select_1(BITSELECT,74)@2
    assign i_cleanups_shl_mibench5_vt_select_1_b = leftShiftStage0_uid370_i_cleanups_shl_mibench0_shift_x_q[1:1];

    // i_cleanups_shl_mibench5_vt_join(BITJOIN,73)@2
    assign i_cleanups_shl_mibench5_vt_join_q = {i_cleanups_shl_mibench5_vt_select_1_b, GND_q};

    // i_xor_mibench4(LOGICAL,154)@2
    assign i_xor_mibench4_q = i_first_cleanup_mibench3_sel_x_b ^ VCC_q;

    // i_notcmp_mibench42(LOGICAL,127)@2
    assign i_notcmp_mibench42_q = i_exitcond7_mibench40_cmp_nsign_q ^ VCC_q;

    // i_or_mibench44(LOGICAL,128)@2
    assign i_or_mibench44_q = i_notcmp_mibench42_q | i_xor_mibench4_q;

    // i_next_cleanups_mibench45(MUX,126)@2
    assign i_next_cleanups_mibench45_s = i_or_mibench44_q;
    always @(i_next_cleanups_mibench45_s or i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out or i_cleanups_shl_mibench5_vt_join_q)
    begin
        unique case (i_next_cleanups_mibench45_s)
            1'b0 : i_next_cleanups_mibench45_q = i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out;
            1'b1 : i_next_cleanups_mibench45_q = i_cleanups_shl_mibench5_vt_join_q;
            default : i_next_cleanups_mibench45_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_mibench46(BLACKBOX,109)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    mibench_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_mibench46 (
        .in_data_in(i_next_cleanups_mibench45_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_feedback_stall_out_17),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_mibench46_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_mibench46_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_168(CONSTANT,33)
    assign c_i2_168_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_mibench2(BLACKBOX,103)@2
    // out out_feedback_stall_out_17@20000000
    mibench_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_mibench2 (
        .in_data_in(c_i2_168_q),
        .in_dir(redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_mibench46_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_mibench46_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_mibench3_sel_x(BITSELECT,231)@2
    assign i_first_cleanup_mibench3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_mibench2_out_data_out[0:0];

    // c_i11_177(CONSTANT,16)
    assign c_i11_177_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next6_mibench47(ADD,90)@2
    assign i_fpga_indvars_iv_next6_mibench47_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39_out_data_out};
    assign i_fpga_indvars_iv_next6_mibench47_b = {1'b0, c_i11_177_q};
    assign i_fpga_indvars_iv_next6_mibench47_o = $unsigned(i_fpga_indvars_iv_next6_mibench47_a) + $unsigned(i_fpga_indvars_iv_next6_mibench47_b);
    assign i_fpga_indvars_iv_next6_mibench47_q = i_fpga_indvars_iv_next6_mibench47_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next6_mibench47_sel_x(BITSELECT,164)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_mibench47_sel_x_b = i_fpga_indvars_iv_next6_mibench47_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48(BLACKBOX,105)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    mibench_i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_mibench47_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39_out_feedback_stall_out_15),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102275(CONSTANT,15)
    assign c_i11_102275_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39(BLACKBOX,101)@2
    // out out_feedback_stall_out_15@20000000
    mibench_i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39 (
        .in_data_in(c_i11_102275_q),
        .in_dir(redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_mibench48_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_mibench40_cmp_nsign(LOGICAL,290)@2
    assign i_exitcond7_mibench40_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_mibench39_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_mibench43(BLACKBOX,108)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    mibench_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_mibench43 (
        .in_data_in(i_exitcond7_mibench40_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_mibench6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_mibench3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_mibench43_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_mibench43_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,256)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration_mibench7(BLACKBOX,106)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    mibench_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_mibench7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_mibench6_out_initeration_stall_out),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_mibench7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_mibench7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mibench6(BLACKBOX,100)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mibench_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_mibench6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_mibench7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_mibench7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_mibench43_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_mibench43_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_mibench6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_mibench6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_mibench6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_mibench6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_mibench6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_mibench6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_mibench6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,157)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_mibench6_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,258)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist7_sync_together92_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_i_xor_mibench4_q_1(DELAY,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_xor_mibench4_q_1_q <= '0;
        end
        else
        begin
            redist11_i_xor_mibench4_q_1_q <= $unsigned(i_xor_mibench4_q);
        end
    end

    // i_arrayidx195_mibench0_mult_multconst_x(CONSTANT,188)
    assign i_arrayidx195_mibench0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_070(CONSTANT,34)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,257)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,262)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist7_sync_together92_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_2(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_2_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q);
        end
    end

    // c_i32_171(CONSTANT,35)
    assign c_i32_171_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc62_mibench37(ADD,95)@3
    assign i_inc62_mibench37_a = {1'b0, redist16_i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out_1_q};
    assign i_inc62_mibench37_b = {1'b0, c_i32_171_q};
    assign i_inc62_mibench37_o = $unsigned(i_inc62_mibench37_a) + $unsigned(i_inc62_mibench37_b);
    assign i_inc62_mibench37_q = i_inc62_mibench37_o[32:0];

    // bgTrunc_i_inc62_mibench37_sel_x(BITSELECT,165)@3
    assign bgTrunc_i_inc62_mibench37_sel_x_b = i_inc62_mibench37_q[31:0];

    // i_llvm_fpga_push_i32_k13_025_push16_mibench38(BLACKBOX,110)@3
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    mibench_i_llvm_fpga_push_i32_k13_025_push16_0 thei_llvm_fpga_push_i32_k13_025_push16_mibench38 (
        .in_data_in(bgTrunc_i_inc62_mibench37_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_feedback_stall_out_16),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k13_025_push16_mibench38_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k13_025_push16_mibench38_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k13_025_pop16_mibench8(BLACKBOX,104)@2
    // out out_feedback_stall_out_16@20000000
    mibench_i_llvm_fpga_pop_i32_k13_025_pop16_0 thei_llvm_fpga_pop_i32_k13_025_pop16_mibench8 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k13_025_push16_mibench38_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k13_025_push16_mibench38_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out_1(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out);
        end
    end

    // i_idxprom18_mibench9_sel_x(BITSELECT,232)@3
    assign i_idxprom18_mibench9_sel_x_b = {32'b00000000000000000000000000000000, redist16_i_llvm_fpga_pop_i32_k13_025_pop16_mibench8_out_data_out_1_q[31:0]};

    // i_idxprom18_mibench9_vt_select_31(BITSELECT,94)@3
    assign i_idxprom18_mibench9_vt_select_31_b = i_idxprom18_mibench9_sel_x_b[31:0];

    // i_idxprom18_mibench9_vt_join(BITJOIN,93)@3
    assign i_idxprom18_mibench9_vt_join_q = {c_i32_070_q, i_idxprom18_mibench9_vt_select_31_b};

    // i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select(BITSELECT,426)@3
    assign i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b = i_idxprom18_mibench9_vt_join_q[63:54];
    assign i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c = i_idxprom18_mibench9_vt_join_q[53:36];
    assign i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d = i_idxprom18_mibench9_vt_join_q[35:18];
    assign i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e = i_idxprom18_mibench9_vt_join_q[17:0];

    // i_arrayidx195_mibench0_mult_x_im0_shift0(BITSHIFT,408)@3
    assign i_arrayidx195_mibench0_mult_x_im0_shift0_qint = { i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx195_mibench0_mult_x_im0_shift0_q = i_arrayidx195_mibench0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx195_mibench0_mult_x_sums_align_3(BITSHIFT,306)@3
    assign i_arrayidx195_mibench0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx195_mibench0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_mibench0_mult_x_sums_align_3_q = i_arrayidx195_mibench0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx195_mibench0_mult_x_im6_shift0(BITSHIFT,410)@3
    assign i_arrayidx195_mibench0_mult_x_im6_shift0_qint = { i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx195_mibench0_mult_x_im6_shift0_q = i_arrayidx195_mibench0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx195_mibench0_mult_x_sums_align_2(BITSHIFT,305)@3
    assign i_arrayidx195_mibench0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx195_mibench0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx195_mibench0_mult_x_sums_align_2_q = i_arrayidx195_mibench0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx195_mibench0_mult_x_sums_join_4(BITJOIN,307)@3
    assign i_arrayidx195_mibench0_mult_x_sums_join_4_q = {i_arrayidx195_mibench0_mult_x_sums_align_3_q, i_arrayidx195_mibench0_mult_x_sums_align_2_q};

    // i_arrayidx195_mibench0_mult_x_im3_shift0(BITSHIFT,409)@3
    assign i_arrayidx195_mibench0_mult_x_im3_shift0_qint = { i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx195_mibench0_mult_x_im3_shift0_q = i_arrayidx195_mibench0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx195_mibench0_mult_x_sums_align_0(BITSHIFT,303)@3
    assign i_arrayidx195_mibench0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx195_mibench0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_mibench0_mult_x_sums_align_0_q = i_arrayidx195_mibench0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx195_mibench0_mult_x_im9_shift0(BITSHIFT,411)@3
    assign i_arrayidx195_mibench0_mult_x_im9_shift0_qint = { i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx195_mibench0_mult_x_im9_shift0_q = i_arrayidx195_mibench0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx195_mibench0_mult_x_sums_join_1(BITJOIN,304)@3
    assign i_arrayidx195_mibench0_mult_x_sums_join_1_q = {i_arrayidx195_mibench0_mult_x_sums_align_0_q, {1'b0, i_arrayidx195_mibench0_mult_x_im9_shift0_q}};

    // i_arrayidx195_mibench0_mult_x_sums_result_add_0_0(ADD,308)@3
    assign i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx195_mibench0_mult_x_sums_join_1_q};
    assign i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx195_mibench0_mult_x_sums_join_4_q};
    assign i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_q = i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx195_mibench0_mult_extender_x(BITJOIN,187)@3
    assign i_arrayidx195_mibench0_mult_extender_x_q = {i_arrayidx195_mibench0_mult_multconst_x_q, i_arrayidx195_mibench0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx195_mibench0_trunc_sel_x(BITSELECT,189)@3
    assign i_arrayidx195_mibench0_trunc_sel_x_b = i_arrayidx195_mibench0_mult_extender_x_q[63:0];

    // c_mibench_A_pmem(CONSTANT,39)
    assign c_mibench_A_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx195_mibench0_add_x(ADD,181)@3
    assign i_arrayidx195_mibench0_add_x_a = {1'b0, c_mibench_A_pmem_q};
    assign i_arrayidx195_mibench0_add_x_b = {1'b0, i_arrayidx195_mibench0_trunc_sel_x_b};
    assign i_arrayidx195_mibench0_add_x_o = $unsigned(i_arrayidx195_mibench0_add_x_a) + $unsigned(i_arrayidx195_mibench0_add_x_b);
    assign i_arrayidx195_mibench0_add_x_q = i_arrayidx195_mibench0_add_x_o[64:0];

    // i_arrayidx195_mibench0_dupName_0_trunc_sel_x(BITSELECT,190)@3
    assign i_arrayidx195_mibench0_dupName_0_trunc_sel_x_b = i_arrayidx195_mibench0_add_x_q[63:0];

    // i_arrayidx195_mibench10_vt_select_63(BITSELECT,62)@3
    assign i_arrayidx195_mibench10_vt_select_63_b = i_arrayidx195_mibench0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx195_mibench10_vt_join(BITJOIN,61)@3
    assign i_arrayidx195_mibench10_vt_join_q = {i_arrayidx195_mibench10_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_mibench7_mibench11(BLACKBOX,97)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_mibench7_mibench_avm_address@20000000
    // out out_unnamed_mibench7_mibench_avm_burstcount@20000000
    // out out_unnamed_mibench7_mibench_avm_byteenable@20000000
    // out out_unnamed_mibench7_mibench_avm_enable@20000000
    // out out_unnamed_mibench7_mibench_avm_read@20000000
    // out out_unnamed_mibench7_mibench_avm_write@20000000
    // out out_unnamed_mibench7_mibench_avm_writedata@20000000
    mibench_i_llvm_fpga_mem_unnamed_7_mibench0 thei_llvm_fpga_mem_unnamed_mibench7_mibench11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx195_mibench10_vt_join_q),
        .in_i_predicate(redist11_i_xor_mibench4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_mibench7_mibench_avm_readdata(in_unnamed_mibench7_mibench_avm_readdata),
        .in_unnamed_mibench7_mibench_avm_readdatavalid(in_unnamed_mibench7_mibench_avm_readdatavalid),
        .in_unnamed_mibench7_mibench_avm_waitrequest(in_unnamed_mibench7_mibench_avm_waitrequest),
        .in_unnamed_mibench7_mibench_avm_writeack(in_unnamed_mibench7_mibench_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_mibench7_mibench_avm_address(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_address),
        .out_unnamed_mibench7_mibench_avm_burstcount(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_burstcount),
        .out_unnamed_mibench7_mibench_avm_byteenable(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_byteenable),
        .out_unnamed_mibench7_mibench_avm_enable(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_enable),
        .out_unnamed_mibench7_mibench_avm_read(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_read),
        .out_unnamed_mibench7_mibench_avm_write(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_write),
        .out_unnamed_mibench7_mibench_avm_writedata(i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,175)
    assign out_unnamed_mibench7_mibench_avm_address = i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_address;
    assign out_unnamed_mibench7_mibench_avm_enable = i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_enable;
    assign out_unnamed_mibench7_mibench_avm_read = i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_read;
    assign out_unnamed_mibench7_mibench_avm_write = i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_write;
    assign out_unnamed_mibench7_mibench_avm_writedata = i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_writedata;
    assign out_unnamed_mibench7_mibench_avm_byteenable = i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_byteenable;
    assign out_unnamed_mibench7_mibench_avm_burstcount = i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_unnamed_mibench7_mibench_avm_burstcount;

    // redist8_sync_together92_aunroll_x_in_i_valid_2(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together92_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist8_sync_together92_aunroll_x_in_i_valid_2_q <= $unsigned(redist7_sync_together92_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg4(REG,259)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together92_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist12_i_xor_mibench4_q_2(DELAY,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_xor_mibench4_q_2_q <= '0;
        end
        else
        begin
            redist12_i_xor_mibench4_q_2_q <= $unsigned(redist11_i_xor_mibench4_q_1_q);
        end
    end

    // redist0_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b_1(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b_1_q <= $unsigned(i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b);
        end
    end

    // i_arrayidx256_mibench0_mult_x_im0_shift0(BITSHIFT,412)@4
    assign i_arrayidx256_mibench0_mult_x_im0_shift0_qint = { redist0_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b_1_q, 1'b0 };
    assign i_arrayidx256_mibench0_mult_x_im0_shift0_q = i_arrayidx256_mibench0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx256_mibench0_mult_x_sums_align_3(BITSHIFT,324)@4
    assign i_arrayidx256_mibench0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx256_mibench0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx256_mibench0_mult_x_sums_align_3_q = i_arrayidx256_mibench0_mult_x_sums_align_3_qint[27:0];

    // redist2_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d_1(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d_1_q <= $unsigned(i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d);
        end
    end

    // i_arrayidx256_mibench0_mult_x_im6_shift0(BITSHIFT,414)@4
    assign i_arrayidx256_mibench0_mult_x_im6_shift0_qint = { redist2_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d_1_q, 1'b0 };
    assign i_arrayidx256_mibench0_mult_x_im6_shift0_q = i_arrayidx256_mibench0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx256_mibench0_mult_x_sums_align_2(BITSHIFT,323)@4
    assign i_arrayidx256_mibench0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx256_mibench0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx256_mibench0_mult_x_sums_align_2_q = i_arrayidx256_mibench0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx256_mibench0_mult_x_sums_join_4(BITJOIN,325)@4
    assign i_arrayidx256_mibench0_mult_x_sums_join_4_q = {i_arrayidx256_mibench0_mult_x_sums_align_3_q, i_arrayidx256_mibench0_mult_x_sums_align_2_q};

    // redist1_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c_1(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c_1_q <= $unsigned(i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c);
        end
    end

    // i_arrayidx256_mibench0_mult_x_im3_shift0(BITSHIFT,413)@4
    assign i_arrayidx256_mibench0_mult_x_im3_shift0_qint = { redist1_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c_1_q, 1'b0 };
    assign i_arrayidx256_mibench0_mult_x_im3_shift0_q = i_arrayidx256_mibench0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx256_mibench0_mult_x_sums_align_0(BITSHIFT,321)@4
    assign i_arrayidx256_mibench0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx256_mibench0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx256_mibench0_mult_x_sums_align_0_q = i_arrayidx256_mibench0_mult_x_sums_align_0_qint[35:0];

    // redist3_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e_1(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e_1_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e_1_q <= $unsigned(i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e);
        end
    end

    // i_arrayidx256_mibench0_mult_x_im9_shift0(BITSHIFT,415)@4
    assign i_arrayidx256_mibench0_mult_x_im9_shift0_qint = { redist3_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e_1_q, 1'b0 };
    assign i_arrayidx256_mibench0_mult_x_im9_shift0_q = i_arrayidx256_mibench0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx256_mibench0_mult_x_sums_join_1(BITJOIN,322)@4
    assign i_arrayidx256_mibench0_mult_x_sums_join_1_q = {i_arrayidx256_mibench0_mult_x_sums_align_0_q, {1'b0, i_arrayidx256_mibench0_mult_x_im9_shift0_q}};

    // i_arrayidx256_mibench0_mult_x_sums_result_add_0_0(ADD,326)@4
    assign i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx256_mibench0_mult_x_sums_join_1_q};
    assign i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx256_mibench0_mult_x_sums_join_4_q};
    assign i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_q = i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx256_mibench0_mult_extender_x(BITJOIN,197)@4
    assign i_arrayidx256_mibench0_mult_extender_x_q = {i_arrayidx195_mibench0_mult_multconst_x_q, i_arrayidx256_mibench0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx256_mibench0_trunc_sel_x(BITSELECT,199)@4
    assign i_arrayidx256_mibench0_trunc_sel_x_b = i_arrayidx256_mibench0_mult_extender_x_q[63:0];

    // c_mibench_B_pmem(CONSTANT,40)
    assign c_mibench_B_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx256_mibench0_add_x(ADD,191)@4
    assign i_arrayidx256_mibench0_add_x_a = {1'b0, c_mibench_B_pmem_q};
    assign i_arrayidx256_mibench0_add_x_b = {1'b0, i_arrayidx256_mibench0_trunc_sel_x_b};
    assign i_arrayidx256_mibench0_add_x_o = $unsigned(i_arrayidx256_mibench0_add_x_a) + $unsigned(i_arrayidx256_mibench0_add_x_b);
    assign i_arrayidx256_mibench0_add_x_q = i_arrayidx256_mibench0_add_x_o[64:0];

    // i_arrayidx256_mibench0_dupName_0_trunc_sel_x(BITSELECT,200)@4
    assign i_arrayidx256_mibench0_dupName_0_trunc_sel_x_b = i_arrayidx256_mibench0_add_x_q[63:0];

    // i_arrayidx256_mibench17_vt_select_63(BITSELECT,65)@4
    assign i_arrayidx256_mibench17_vt_select_63_b = i_arrayidx256_mibench0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx256_mibench17_vt_join(BITJOIN,64)@4
    assign i_arrayidx256_mibench17_vt_join_q = {i_arrayidx256_mibench17_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_mibench8_mibench18(BLACKBOX,98)@4
    // in in_i_stall@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    // out out_unnamed_mibench8_mibench_avm_address@20000000
    // out out_unnamed_mibench8_mibench_avm_burstcount@20000000
    // out out_unnamed_mibench8_mibench_avm_byteenable@20000000
    // out out_unnamed_mibench8_mibench_avm_enable@20000000
    // out out_unnamed_mibench8_mibench_avm_read@20000000
    // out out_unnamed_mibench8_mibench_avm_write@20000000
    // out out_unnamed_mibench8_mibench_avm_writedata@20000000
    mibench_i_llvm_fpga_mem_unnamed_8_mibench0 thei_llvm_fpga_mem_unnamed_mibench8_mibench18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx256_mibench17_vt_join_q),
        .in_i_predicate(redist12_i_xor_mibench4_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_mibench8_mibench_avm_readdata(in_unnamed_mibench8_mibench_avm_readdata),
        .in_unnamed_mibench8_mibench_avm_readdatavalid(in_unnamed_mibench8_mibench_avm_readdatavalid),
        .in_unnamed_mibench8_mibench_avm_waitrequest(in_unnamed_mibench8_mibench_avm_waitrequest),
        .in_unnamed_mibench8_mibench_avm_writeack(in_unnamed_mibench8_mibench_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_mibench8_mibench_avm_address(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_address),
        .out_unnamed_mibench8_mibench_avm_burstcount(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_burstcount),
        .out_unnamed_mibench8_mibench_avm_byteenable(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_byteenable),
        .out_unnamed_mibench8_mibench_avm_enable(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_enable),
        .out_unnamed_mibench8_mibench_avm_read(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_read),
        .out_unnamed_mibench8_mibench_avm_write(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_write),
        .out_unnamed_mibench8_mibench_avm_writedata(i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,177)
    assign out_unnamed_mibench8_mibench_avm_address = i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_address;
    assign out_unnamed_mibench8_mibench_avm_enable = i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_enable;
    assign out_unnamed_mibench8_mibench_avm_read = i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_read;
    assign out_unnamed_mibench8_mibench_avm_write = i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_write;
    assign out_unnamed_mibench8_mibench_avm_writedata = i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_writedata;
    assign out_unnamed_mibench8_mibench_avm_byteenable = i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_byteenable;
    assign out_unnamed_mibench8_mibench_avm_burstcount = i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_unnamed_mibench8_mibench_avm_burstcount;

    // valid_fanout_reg5(REG,260)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist8_sync_together92_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_arrayidx307_mibench0_mult_x_im0_shift0(BITSHIFT,416)@4
    assign i_arrayidx307_mibench0_mult_x_im0_shift0_qint = { redist0_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b_1_q, 1'b0 };
    assign i_arrayidx307_mibench0_mult_x_im0_shift0_q = i_arrayidx307_mibench0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx307_mibench0_mult_x_sums_align_3(BITSHIFT,342)@4
    assign i_arrayidx307_mibench0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx307_mibench0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx307_mibench0_mult_x_sums_align_3_q = i_arrayidx307_mibench0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx307_mibench0_mult_x_im6_shift0(BITSHIFT,418)@4
    assign i_arrayidx307_mibench0_mult_x_im6_shift0_qint = { redist2_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d_1_q, 1'b0 };
    assign i_arrayidx307_mibench0_mult_x_im6_shift0_q = i_arrayidx307_mibench0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx307_mibench0_mult_x_sums_align_2(BITSHIFT,341)@4
    assign i_arrayidx307_mibench0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx307_mibench0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx307_mibench0_mult_x_sums_align_2_q = i_arrayidx307_mibench0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx307_mibench0_mult_x_sums_join_4(BITJOIN,343)@4
    assign i_arrayidx307_mibench0_mult_x_sums_join_4_q = {i_arrayidx307_mibench0_mult_x_sums_align_3_q, i_arrayidx307_mibench0_mult_x_sums_align_2_q};

    // i_arrayidx307_mibench0_mult_x_im3_shift0(BITSHIFT,417)@4
    assign i_arrayidx307_mibench0_mult_x_im3_shift0_qint = { redist1_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c_1_q, 1'b0 };
    assign i_arrayidx307_mibench0_mult_x_im3_shift0_q = i_arrayidx307_mibench0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx307_mibench0_mult_x_sums_align_0(BITSHIFT,339)@4
    assign i_arrayidx307_mibench0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx307_mibench0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx307_mibench0_mult_x_sums_align_0_q = i_arrayidx307_mibench0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx307_mibench0_mult_x_im9_shift0(BITSHIFT,419)@4
    assign i_arrayidx307_mibench0_mult_x_im9_shift0_qint = { redist3_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e_1_q, 1'b0 };
    assign i_arrayidx307_mibench0_mult_x_im9_shift0_q = i_arrayidx307_mibench0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx307_mibench0_mult_x_sums_join_1(BITJOIN,340)@4
    assign i_arrayidx307_mibench0_mult_x_sums_join_1_q = {i_arrayidx307_mibench0_mult_x_sums_align_0_q, {1'b0, i_arrayidx307_mibench0_mult_x_im9_shift0_q}};

    // i_arrayidx307_mibench0_mult_x_sums_result_add_0_0(ADD,344)@4
    assign i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx307_mibench0_mult_x_sums_join_1_q};
    assign i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx307_mibench0_mult_x_sums_join_4_q};
    assign i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_q = i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx307_mibench0_mult_extender_x(BITJOIN,207)@4
    assign i_arrayidx307_mibench0_mult_extender_x_q = {i_arrayidx195_mibench0_mult_multconst_x_q, i_arrayidx307_mibench0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx307_mibench0_trunc_sel_x(BITSELECT,209)@4
    assign i_arrayidx307_mibench0_trunc_sel_x_b = i_arrayidx307_mibench0_mult_extender_x_q[63:0];

    // c_mibench_C_pmem(CONSTANT,41)
    assign c_mibench_C_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx307_mibench0_add_x(ADD,201)@4
    assign i_arrayidx307_mibench0_add_x_a = {1'b0, c_mibench_C_pmem_q};
    assign i_arrayidx307_mibench0_add_x_b = {1'b0, i_arrayidx307_mibench0_trunc_sel_x_b};
    assign i_arrayidx307_mibench0_add_x_o = $unsigned(i_arrayidx307_mibench0_add_x_a) + $unsigned(i_arrayidx307_mibench0_add_x_b);
    assign i_arrayidx307_mibench0_add_x_q = i_arrayidx307_mibench0_add_x_o[64:0];

    // i_arrayidx307_mibench0_dupName_0_trunc_sel_x(BITSELECT,210)@4
    assign i_arrayidx307_mibench0_dupName_0_trunc_sel_x_b = i_arrayidx307_mibench0_add_x_q[63:0];

    // i_arrayidx307_mibench20_vt_select_63(BITSELECT,68)@4
    assign i_arrayidx307_mibench20_vt_select_63_b = i_arrayidx307_mibench0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx307_mibench20_vt_join(BITJOIN,67)@4
    assign i_arrayidx307_mibench20_vt_join_q = {i_arrayidx307_mibench20_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_mibench9_mibench21(BLACKBOX,99)@4
    // in in_i_stall@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    // out out_unnamed_mibench9_mibench_avm_address@20000000
    // out out_unnamed_mibench9_mibench_avm_burstcount@20000000
    // out out_unnamed_mibench9_mibench_avm_byteenable@20000000
    // out out_unnamed_mibench9_mibench_avm_enable@20000000
    // out out_unnamed_mibench9_mibench_avm_read@20000000
    // out out_unnamed_mibench9_mibench_avm_write@20000000
    // out out_unnamed_mibench9_mibench_avm_writedata@20000000
    mibench_i_llvm_fpga_mem_unnamed_9_mibench0 thei_llvm_fpga_mem_unnamed_mibench9_mibench21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx307_mibench20_vt_join_q),
        .in_i_predicate(redist12_i_xor_mibench4_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_mibench9_mibench_avm_readdata(in_unnamed_mibench9_mibench_avm_readdata),
        .in_unnamed_mibench9_mibench_avm_readdatavalid(in_unnamed_mibench9_mibench_avm_readdatavalid),
        .in_unnamed_mibench9_mibench_avm_waitrequest(in_unnamed_mibench9_mibench_avm_waitrequest),
        .in_unnamed_mibench9_mibench_avm_writeack(in_unnamed_mibench9_mibench_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_mibench9_mibench_avm_address(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_address),
        .out_unnamed_mibench9_mibench_avm_burstcount(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_burstcount),
        .out_unnamed_mibench9_mibench_avm_byteenable(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_byteenable),
        .out_unnamed_mibench9_mibench_avm_enable(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_enable),
        .out_unnamed_mibench9_mibench_avm_read(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_read),
        .out_unnamed_mibench9_mibench_avm_write(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_write),
        .out_unnamed_mibench9_mibench_avm_writedata(i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,179)
    assign out_unnamed_mibench9_mibench_avm_address = i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_address;
    assign out_unnamed_mibench9_mibench_avm_enable = i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_enable;
    assign out_unnamed_mibench9_mibench_avm_read = i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_read;
    assign out_unnamed_mibench9_mibench_avm_write = i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_write;
    assign out_unnamed_mibench9_mibench_avm_writedata = i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_writedata;
    assign out_unnamed_mibench9_mibench_avm_byteenable = i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_byteenable;
    assign out_unnamed_mibench9_mibench_avm_burstcount = i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_unnamed_mibench9_mibench_avm_burstcount;

    // i_mul46_mibench26_multconst_x(CONSTANT,238)
    assign i_mul46_mibench26_multconst_x_q = $unsigned(26'b00000000000000000000000000);

    // i_conv20_mibench12_vt_const_31(CONSTANT,76)
    assign i_conv20_mibench12_vt_const_31_q = $unsigned(16'b0000000000000000);

    // i_conv31_mibench22_sel_x(BITSELECT,228)@8
    assign i_conv31_mibench22_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_mibench9_mibench21_out_o_readdata[15:0]};

    // i_conv31_mibench22_vt_select_15(BITSELECT,86)@8
    assign i_conv31_mibench22_vt_select_15_b = i_conv31_mibench22_sel_x_b[15:0];

    // i_conv31_mibench22_vt_join(BITJOIN,85)@8
    assign i_conv31_mibench22_vt_join_q = {i_conv20_mibench12_vt_const_31_q, i_conv31_mibench22_vt_select_15_b};

    // i_conv31_mibench22_vt_join_narrowed_x(BITSELECT,229)@8
    assign i_conv31_mibench22_vt_join_narrowed_x_b = i_conv31_mibench22_vt_join_q[15:0];

    // i_add41_mibench24_vt_const_31(CONSTANT,47)
    assign i_add41_mibench24_vt_const_31_q = $unsigned(11'b00000000000);

    // i_mul40_mibench23_vt_const_31(CONSTANT,113)
    assign i_mul40_mibench23_vt_const_31_q = $unsigned(15'b000000000000000);

    // leftShiftStage0Idx1Rng1_uid375_i_mul40_mibench0_shift_x(BITSELECT,374)@8
    assign leftShiftStage0Idx1Rng1_uid375_i_mul40_mibench0_shift_x_in = i_conv26_mibench19_vt_join_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid375_i_mul40_mibench0_shift_x_b = leftShiftStage0Idx1Rng1_uid375_i_mul40_mibench0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid376_i_mul40_mibench0_shift_x(BITJOIN,375)@8
    assign leftShiftStage0Idx1_uid376_i_mul40_mibench0_shift_x_q = {leftShiftStage0Idx1Rng1_uid375_i_mul40_mibench0_shift_x_b, GND_q};

    // i_conv26_mibench19_sel_x(BITSELECT,227)@8
    assign i_conv26_mibench19_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_mibench8_mibench18_out_o_readdata[15:0]};

    // i_conv26_mibench19_vt_select_15(BITSELECT,82)@8
    assign i_conv26_mibench19_vt_select_15_b = i_conv26_mibench19_sel_x_b[15:0];

    // i_conv26_mibench19_vt_join(BITJOIN,81)@8
    assign i_conv26_mibench19_vt_join_q = {i_conv20_mibench12_vt_const_31_q, i_conv26_mibench19_vt_select_15_b};

    // leftShiftStage0_uid378_i_mul40_mibench0_shift_x(MUX,377)@8
    assign leftShiftStage0_uid378_i_mul40_mibench0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid378_i_mul40_mibench0_shift_x_s or i_conv26_mibench19_vt_join_q or leftShiftStage0Idx1_uid376_i_mul40_mibench0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid378_i_mul40_mibench0_shift_x_s)
            1'b0 : leftShiftStage0_uid378_i_mul40_mibench0_shift_x_q = i_conv26_mibench19_vt_join_q;
            1'b1 : leftShiftStage0_uid378_i_mul40_mibench0_shift_x_q = leftShiftStage0Idx1_uid376_i_mul40_mibench0_shift_x_q;
            default : leftShiftStage0_uid378_i_mul40_mibench0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul40_mibench23_vt_select_16(BITSELECT,115)@8
    assign i_mul40_mibench23_vt_select_16_b = leftShiftStage0_uid378_i_mul40_mibench0_shift_x_q[16:1];

    // i_mul40_mibench23_vt_join(BITJOIN,114)@8
    assign i_mul40_mibench23_vt_join_q = {i_mul40_mibench23_vt_const_31_q, i_mul40_mibench23_vt_select_16_b, GND_q};

    // i_add_mibench16_vt_const_31(CONSTANT,57)
    assign i_add_mibench16_vt_const_31_q = $unsigned(12'b000000000000);

    // c_i32_4373(CONSTANT,38)
    assign c_i32_4373_q = $unsigned(32'b00000000000000000000000000101011);

    // i_mul_add12_mibench15_vt_const_31(CONSTANT,123)
    assign i_mul_add12_mibench15_vt_const_31_q = $unsigned(13'b0000000000000);

    // i_unnamed_mibench14_vt_const_31(CONSTANT,147)
    assign i_unnamed_mibench14_vt_const_31_q = $unsigned(14'b00000000000000);

    // leftShiftStage0Idx1Rng2_uid391_dupName_0_i_unnamed_mibench0_shift_x(BITSELECT,390)@7
    assign leftShiftStage0Idx1Rng2_uid391_dupName_0_i_unnamed_mibench0_shift_x_in = i_conv20_mibench12_vt_join_q[29:0];
    assign leftShiftStage0Idx1Rng2_uid391_dupName_0_i_unnamed_mibench0_shift_x_b = leftShiftStage0Idx1Rng2_uid391_dupName_0_i_unnamed_mibench0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid392_dupName_0_i_unnamed_mibench0_shift_x(BITJOIN,391)@7
    assign leftShiftStage0Idx1_uid392_dupName_0_i_unnamed_mibench0_shift_x_q = {leftShiftStage0Idx1Rng2_uid391_dupName_0_i_unnamed_mibench0_shift_x_b, i_unnamed_mibench14_vt_const_1_q};

    // i_conv20_mibench12_sel_x(BITSELECT,225)@7
    assign i_conv20_mibench12_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_mibench7_mibench11_out_o_readdata[15:0]};

    // i_conv20_mibench12_vt_select_15(BITSELECT,78)@7
    assign i_conv20_mibench12_vt_select_15_b = i_conv20_mibench12_sel_x_b[15:0];

    // i_conv20_mibench12_vt_join(BITJOIN,77)@7
    assign i_conv20_mibench12_vt_join_q = {i_conv20_mibench12_vt_const_31_q, i_conv20_mibench12_vt_select_15_b};

    // leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x(MUX,393)@7
    assign leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_s or i_conv20_mibench12_vt_join_q or leftShiftStage0Idx1_uid392_dupName_0_i_unnamed_mibench0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_s)
            1'b0 : leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_q = i_conv20_mibench12_vt_join_q;
            1'b1 : leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_q = leftShiftStage0Idx1_uid392_dupName_0_i_unnamed_mibench0_shift_x_q;
            default : leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_mibench14_vt_select_17(BITSELECT,149)@7
    assign i_unnamed_mibench14_vt_select_17_b = leftShiftStage0_uid394_dupName_0_i_unnamed_mibench0_shift_x_q[17:2];

    // i_unnamed_mibench14_vt_const_1(CONSTANT,146)
    assign i_unnamed_mibench14_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_mibench14_vt_join(BITJOIN,148)@7
    assign i_unnamed_mibench14_vt_join_q = {i_unnamed_mibench14_vt_const_31_q, i_unnamed_mibench14_vt_select_17_b, i_unnamed_mibench14_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid383_i_unnamed_mibench0_shift_x(BITSELECT,382)@7
    assign leftShiftStage0Idx1Rng1_uid383_i_unnamed_mibench0_shift_x_in = i_conv20_mibench12_vt_join_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid383_i_unnamed_mibench0_shift_x_b = leftShiftStage0Idx1Rng1_uid383_i_unnamed_mibench0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid384_i_unnamed_mibench0_shift_x(BITJOIN,383)@7
    assign leftShiftStage0Idx1_uid384_i_unnamed_mibench0_shift_x_q = {leftShiftStage0Idx1Rng1_uid383_i_unnamed_mibench0_shift_x_b, GND_q};

    // leftShiftStage0_uid386_i_unnamed_mibench0_shift_x(MUX,385)@7
    assign leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_s or i_conv20_mibench12_vt_join_q or leftShiftStage0Idx1_uid384_i_unnamed_mibench0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_s)
            1'b0 : leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q = i_conv20_mibench12_vt_join_q;
            1'b1 : leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q = leftShiftStage0Idx1_uid384_i_unnamed_mibench0_shift_x_q;
            default : leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_mibench13_vt_select_16(BITSELECT,145)@7
    assign i_unnamed_mibench13_vt_select_16_b = leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q[16:1];

    // i_unnamed_mibench13_vt_join(BITJOIN,144)@7
    assign i_unnamed_mibench13_vt_join_q = {i_mul40_mibench23_vt_const_31_q, i_unnamed_mibench13_vt_select_16_b, GND_q};

    // i_mul_add12_mibench15(ADD,121)@7
    assign i_mul_add12_mibench15_a = {1'b0, i_unnamed_mibench13_vt_join_q};
    assign i_mul_add12_mibench15_b = {1'b0, i_unnamed_mibench14_vt_join_q};
    assign i_mul_add12_mibench15_o = $unsigned(i_mul_add12_mibench15_a) + $unsigned(i_mul_add12_mibench15_b);
    assign i_mul_add12_mibench15_q = i_mul_add12_mibench15_o[32:0];

    // bgTrunc_i_mul_add12_mibench15_sel_x(BITSELECT,168)@7
    assign bgTrunc_i_mul_add12_mibench15_sel_x_b = i_mul_add12_mibench15_q[31:0];

    // i_mul_add12_mibench15_vt_select_18(BITSELECT,125)@7
    assign i_mul_add12_mibench15_vt_select_18_b = bgTrunc_i_mul_add12_mibench15_sel_x_b[18:1];

    // i_mul_add12_mibench15_vt_join(BITJOIN,124)@7
    assign i_mul_add12_mibench15_vt_join_q = {i_mul_add12_mibench15_vt_const_31_q, i_mul_add12_mibench15_vt_select_18_b, GND_q};

    // i_add_mibench16(ADD,55)@7
    assign i_add_mibench16_a = {1'b0, i_mul_add12_mibench15_vt_join_q};
    assign i_add_mibench16_b = {1'b0, c_i32_4373_q};
    assign i_add_mibench16_o = $unsigned(i_add_mibench16_a) + $unsigned(i_add_mibench16_b);
    assign i_add_mibench16_q = i_add_mibench16_o[32:0];

    // bgTrunc_i_add_mibench16_sel_x(BITSELECT,163)@7
    assign bgTrunc_i_add_mibench16_sel_x_b = i_add_mibench16_q[31:0];

    // i_add_mibench16_vt_select_19(BITSELECT,59)@7
    assign i_add_mibench16_vt_select_19_b = bgTrunc_i_add_mibench16_sel_x_b[19:1];

    // redist22_i_add_mibench16_vt_select_19_b_1(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_add_mibench16_vt_select_19_b_1_q <= '0;
        end
        else
        begin
            redist22_i_add_mibench16_vt_select_19_b_1_q <= $unsigned(i_add_mibench16_vt_select_19_b);
        end
    end

    // i_add_mibench16_vt_join(BITJOIN,58)@8
    assign i_add_mibench16_vt_join_q = {i_add_mibench16_vt_const_31_q, redist22_i_add_mibench16_vt_select_19_b_1_q, VCC_q};

    // i_add41_mibench24(ADD,45)@8
    assign i_add41_mibench24_a = {1'b0, i_add_mibench16_vt_join_q};
    assign i_add41_mibench24_b = {1'b0, i_mul40_mibench23_vt_join_q};
    assign i_add41_mibench24_o = $unsigned(i_add41_mibench24_a) + $unsigned(i_add41_mibench24_b);
    assign i_add41_mibench24_q = i_add41_mibench24_o[32:0];

    // bgTrunc_i_add41_mibench24_sel_x(BITSELECT,160)@8
    assign bgTrunc_i_add41_mibench24_sel_x_b = i_add41_mibench24_q[31:0];

    // i_add41_mibench24_vt_select_20(BITSELECT,49)@8
    assign i_add41_mibench24_vt_select_20_b = bgTrunc_i_add41_mibench24_sel_x_b[20:1];

    // i_add41_mibench24_vt_join(BITJOIN,48)@8
    assign i_add41_mibench24_vt_join_q = {i_add41_mibench24_vt_const_31_q, i_add41_mibench24_vt_select_20_b, VCC_q};

    // i_add45_mibench25(ADD,50)@8
    assign i_add45_mibench25_a = {1'b0, i_add41_mibench24_vt_join_q};
    assign i_add45_mibench25_b = {1'b0, i_conv31_mibench22_vt_join_q};
    assign i_add45_mibench25_o = $unsigned(i_add45_mibench25_a) + $unsigned(i_add45_mibench25_b);
    assign i_add45_mibench25_q = i_add45_mibench25_o[32:0];

    // bgTrunc_i_add45_mibench25_sel_x(BITSELECT,161)@8
    assign bgTrunc_i_add45_mibench25_sel_x_b = i_add45_mibench25_q[31:0];

    // i_add45_mibench25_vt_select_21(BITSELECT,53)@8
    assign i_add45_mibench25_vt_select_21_b = bgTrunc_i_add45_mibench25_sel_x_b[21:0];

    // i_mul46_mibench26_cma(CHAINMULTADD,424)@8 + 3
    assign i_mul46_mibench26_cma_reset = ~ (resetn);
    assign i_mul46_mibench26_cma_ena0 = 1'b1;
    assign i_mul46_mibench26_cma_ena1 = i_mul46_mibench26_cma_ena0;
    assign i_mul46_mibench26_cma_ena2 = i_mul46_mibench26_cma_ena0;

    assign i_mul46_mibench26_cma_a0 = i_add45_mibench25_vt_select_21_b;
    assign i_mul46_mibench26_cma_c0 = i_conv31_mibench22_vt_join_narrowed_x_b;
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(22),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(38)
    ) i_mul46_mibench26_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul46_mibench26_cma_ena2, i_mul46_mibench26_cma_ena1, i_mul46_mibench26_cma_ena0 }),
        .aclr({ i_mul46_mibench26_cma_reset, i_mul46_mibench26_cma_reset }),
        .ay(i_mul46_mibench26_cma_a0),
        .ax(i_mul46_mibench26_cma_c0),
        .resulta(i_mul46_mibench26_cma_s0),
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
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul46_mibench26_cma_delay ( .xin(i_mul46_mibench26_cma_s0), .xout(i_mul46_mibench26_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul46_mibench26_cma_q = $unsigned(i_mul46_mibench26_cma_qq[37:0]);

    // i_mul46_mibench26_extender_x(BITJOIN,237)@11
    assign i_mul46_mibench26_extender_x_q = {i_mul46_mibench26_multconst_x_q, i_mul46_mibench26_cma_q};

    // bgTrunc_i_mul46_mibench26_sel_x(BITSELECT,166)@11
    assign bgTrunc_i_mul46_mibench26_sel_x_b = i_mul46_mibench26_extender_x_q[31:0];

    // i_conv20_mibench12_vt_join_narrowed_x(BITSELECT,226)@7
    assign i_conv20_mibench12_vt_join_narrowed_x_b = i_conv20_mibench12_vt_join_q[15:0];

    // redist10_i_conv20_mibench12_vt_join_narrowed_x_b_1(DELAY,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_conv20_mibench12_vt_join_narrowed_x_b_1_q <= '0;
        end
        else
        begin
            redist10_i_conv20_mibench12_vt_join_narrowed_x_b_1_q <= $unsigned(i_conv20_mibench12_vt_join_narrowed_x_b);
        end
    end

    // i_reduction_mibench_1_mibench30(ADD,134)@8
    assign i_reduction_mibench_1_mibench30_a = {1'b0, i_conv26_mibench19_vt_join_q};
    assign i_reduction_mibench_1_mibench30_b = {1'b0, i_add_mibench16_vt_join_q};
    assign i_reduction_mibench_1_mibench30_o = $unsigned(i_reduction_mibench_1_mibench30_a) + $unsigned(i_reduction_mibench_1_mibench30_b);
    assign i_reduction_mibench_1_mibench30_q = i_reduction_mibench_1_mibench30_o[32:0];

    // bgTrunc_i_reduction_mibench_1_mibench30_sel_x(BITSELECT,171)@8
    assign bgTrunc_i_reduction_mibench_1_mibench30_sel_x_b = i_reduction_mibench_1_mibench30_q[31:0];

    // i_reduction_mibench_1_mibench30_vt_select_20(BITSELECT,137)@8
    assign i_reduction_mibench_1_mibench30_vt_select_20_b = bgTrunc_i_reduction_mibench_1_mibench30_sel_x_b[20:0];

    // i_reduction_mibench_1_mibench30_vt_join(BITJOIN,136)@8
    assign i_reduction_mibench_1_mibench30_vt_join_q = {i_add41_mibench24_vt_const_31_q, i_reduction_mibench_1_mibench30_vt_select_20_b};

    // leftShiftStage1Idx1Rng2_uid404_dupName_1_i_unnamed_mibench0_shift_x(BITSELECT,403)@7
    assign leftShiftStage1Idx1Rng2_uid404_dupName_1_i_unnamed_mibench0_shift_x_in = leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid404_dupName_1_i_unnamed_mibench0_shift_x_b = leftShiftStage1Idx1Rng2_uid404_dupName_1_i_unnamed_mibench0_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid405_dupName_1_i_unnamed_mibench0_shift_x(BITJOIN,404)@7
    assign leftShiftStage1Idx1_uid405_dupName_1_i_unnamed_mibench0_shift_x_q = {leftShiftStage1Idx1Rng2_uid404_dupName_1_i_unnamed_mibench0_shift_x_b, i_unnamed_mibench14_vt_const_1_q};

    // leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x(MUX,406)@7
    assign leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_s or leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q or leftShiftStage1Idx1_uid405_dupName_1_i_unnamed_mibench0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_s)
            1'b0 : leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_q = leftShiftStage0_uid386_i_unnamed_mibench0_shift_x_q;
            1'b1 : leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_q = leftShiftStage1Idx1_uid405_dupName_1_i_unnamed_mibench0_shift_x_q;
            default : leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_mibench27_vt_select_18(BITSELECT,153)@7
    assign i_unnamed_mibench27_vt_select_18_b = leftShiftStage1_uid407_dupName_1_i_unnamed_mibench0_shift_x_q[18:3];

    // i_unnamed_mibench27_vt_const_2(CONSTANT,150)
    assign i_unnamed_mibench27_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_mibench27_vt_join(BITJOIN,152)@7
    assign i_unnamed_mibench27_vt_join_q = {i_mul_add12_mibench15_vt_const_31_q, i_unnamed_mibench27_vt_select_18_b, i_unnamed_mibench27_vt_const_2_q};

    // i_mul54_add14_mibench28(ADD,117)@7
    assign i_mul54_add14_mibench28_a = {1'b0, i_conv20_mibench12_vt_join_q};
    assign i_mul54_add14_mibench28_b = {1'b0, i_unnamed_mibench27_vt_join_q};
    assign i_mul54_add14_mibench28_o = $unsigned(i_mul54_add14_mibench28_a) + $unsigned(i_mul54_add14_mibench28_b);
    assign i_mul54_add14_mibench28_q = i_mul54_add14_mibench28_o[32:0];

    // bgTrunc_i_mul54_add14_mibench28_sel_x(BITSELECT,167)@7
    assign bgTrunc_i_mul54_add14_mibench28_sel_x_b = i_mul54_add14_mibench28_q[31:0];

    // i_mul54_add14_mibench28_vt_select_19(BITSELECT,120)@7
    assign i_mul54_add14_mibench28_vt_select_19_b = bgTrunc_i_mul54_add14_mibench28_sel_x_b[19:0];

    // redist14_i_mul54_add14_mibench28_vt_select_19_b_1(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_mul54_add14_mibench28_vt_select_19_b_1_q <= '0;
        end
        else
        begin
            redist14_i_mul54_add14_mibench28_vt_select_19_b_1_q <= $unsigned(i_mul54_add14_mibench28_vt_select_19_b);
        end
    end

    // i_mul54_add14_mibench28_vt_join(BITJOIN,119)@8
    assign i_mul54_add14_mibench28_vt_join_q = {i_add_mibench16_vt_const_31_q, redist14_i_mul54_add14_mibench28_vt_select_19_b_1_q};

    // i_reduction_mibench_0_mibench29(ADD,130)@8
    assign i_reduction_mibench_0_mibench29_a = {1'b0, i_mul54_add14_mibench28_vt_join_q};
    assign i_reduction_mibench_0_mibench29_b = {1'b0, c_i32_171_q};
    assign i_reduction_mibench_0_mibench29_o = $unsigned(i_reduction_mibench_0_mibench29_a) + $unsigned(i_reduction_mibench_0_mibench29_b);
    assign i_reduction_mibench_0_mibench29_q = i_reduction_mibench_0_mibench29_o[32:0];

    // bgTrunc_i_reduction_mibench_0_mibench29_sel_x(BITSELECT,170)@8
    assign bgTrunc_i_reduction_mibench_0_mibench29_sel_x_b = i_reduction_mibench_0_mibench29_q[31:0];

    // i_reduction_mibench_0_mibench29_vt_select_20(BITSELECT,133)@8
    assign i_reduction_mibench_0_mibench29_vt_select_20_b = bgTrunc_i_reduction_mibench_0_mibench29_sel_x_b[20:0];

    // i_reduction_mibench_0_mibench29_vt_join(BITJOIN,132)@8
    assign i_reduction_mibench_0_mibench29_vt_join_q = {i_add41_mibench24_vt_const_31_q, i_reduction_mibench_0_mibench29_vt_select_20_b};

    // i_reduction_mibench_2_mibench31(ADD,138)@8
    assign i_reduction_mibench_2_mibench31_a = {1'b0, i_reduction_mibench_0_mibench29_vt_join_q};
    assign i_reduction_mibench_2_mibench31_b = {1'b0, i_reduction_mibench_1_mibench30_vt_join_q};
    assign i_reduction_mibench_2_mibench31_o = $unsigned(i_reduction_mibench_2_mibench31_a) + $unsigned(i_reduction_mibench_2_mibench31_b);
    assign i_reduction_mibench_2_mibench31_q = i_reduction_mibench_2_mibench31_o[32:0];

    // bgTrunc_i_reduction_mibench_2_mibench31_sel_x(BITSELECT,172)@8
    assign bgTrunc_i_reduction_mibench_2_mibench31_sel_x_b = i_reduction_mibench_2_mibench31_q[31:0];

    // i_reduction_mibench_2_mibench31_vt_select_21(BITSELECT,141)@8
    assign i_reduction_mibench_2_mibench31_vt_select_21_b = bgTrunc_i_reduction_mibench_2_mibench31_sel_x_b[21:0];

    // i_reass_mul_mibench32_cma(CHAINMULTADD,425)@8 + 3
    assign i_reass_mul_mibench32_cma_reset = ~ (resetn);
    assign i_reass_mul_mibench32_cma_ena0 = 1'b1;
    assign i_reass_mul_mibench32_cma_ena1 = i_reass_mul_mibench32_cma_ena0;
    assign i_reass_mul_mibench32_cma_ena2 = i_reass_mul_mibench32_cma_ena0;

    assign i_reass_mul_mibench32_cma_a0 = i_reduction_mibench_2_mibench31_vt_select_21_b;
    assign i_reass_mul_mibench32_cma_c0 = redist10_i_conv20_mibench12_vt_join_narrowed_x_b_1_q;
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(22),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(38)
    ) i_reass_mul_mibench32_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_mul_mibench32_cma_ena2, i_reass_mul_mibench32_cma_ena1, i_reass_mul_mibench32_cma_ena0 }),
        .aclr({ i_reass_mul_mibench32_cma_reset, i_reass_mul_mibench32_cma_reset }),
        .ay(i_reass_mul_mibench32_cma_a0),
        .ax(i_reass_mul_mibench32_cma_c0),
        .resulta(i_reass_mul_mibench32_cma_s0),
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
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reass_mul_mibench32_cma_delay ( .xin(i_reass_mul_mibench32_cma_s0), .xout(i_reass_mul_mibench32_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_mul_mibench32_cma_q = $unsigned(i_reass_mul_mibench32_cma_qq[37:0]);

    // i_reass_mul_mibench32_extender_x(BITJOIN,239)@11
    assign i_reass_mul_mibench32_extender_x_q = {i_mul46_mibench26_multconst_x_q, i_reass_mul_mibench32_cma_q};

    // bgTrunc_i_reass_mul_mibench32_sel_x(BITSELECT,169)@11
    assign bgTrunc_i_reass_mul_mibench32_sel_x_b = i_reass_mul_mibench32_extender_x_q[31:0];

    // i_add57_mibench33(ADD,54)@11
    assign i_add57_mibench33_a = {1'b0, bgTrunc_i_reass_mul_mibench32_sel_x_b};
    assign i_add57_mibench33_b = {1'b0, bgTrunc_i_mul46_mibench26_sel_x_b};
    assign i_add57_mibench33_o = $unsigned(i_add57_mibench33_a) + $unsigned(i_add57_mibench33_b);
    assign i_add57_mibench33_q = i_add57_mibench33_o[32:0];

    // bgTrunc_i_add57_mibench33_sel_x(BITSELECT,162)@11
    assign bgTrunc_i_add57_mibench33_sel_x_b = i_add57_mibench33_q[31:0];

    // i_conv58_mibench34_sel_x(BITSELECT,230)@11
    assign i_conv58_mibench34_sel_x_b = bgTrunc_i_add57_mibench33_sel_x_b[15:0];

    // redist9_sync_together92_aunroll_x_in_i_valid_9(DELAY,436)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together92_aunroll_x_in_i_valid_9 ( .xin(redist8_sync_together92_aunroll_x_in_i_valid_2_q), .xout(redist9_sync_together92_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,261)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist9_sync_together92_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist13_i_xor_mibench4_q_9(DELAY,440)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_xor_mibench4_q_9 ( .xin(redist12_i_xor_mibench4_q_2_q), .xout(redist13_i_xor_mibench4_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_notEnable(LOGICAL,456)
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_nor(LOGICAL,457)
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_nor_q = ~ (redist21_i_arrayidx608_mibench35_vt_select_63_b_7_notEnable_q | redist21_i_arrayidx608_mibench35_vt_select_63_b_7_sticky_ena_q);

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_last(CONSTANT,453)
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_last_q = $unsigned(4'b0100);

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmp(LOGICAL,454)
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmp_b = {1'b0, redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_q};
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmp_q = $unsigned(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_last_q == redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmp_b ? 1'b1 : 1'b0);

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmpReg(REG,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmpReg_q <= $unsigned(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmp_q);
        end
    end

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_sticky_ena(REG,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_arrayidx608_mibench35_vt_select_63_b_7_nor_q == 1'b1)
        begin
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_sticky_ena_q <= $unsigned(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_cmpReg_q);
        end
    end

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_enaAnd(LOGICAL,459)
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_enaAnd_q = redist21_i_arrayidx608_mibench35_vt_select_63_b_7_sticky_ena_q & VCC_q;

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt(COUNTER,451)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i <= 3'd0;
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i == 3'd4)
            begin
                redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_eq <= 1'b0;
            end
            if (redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_eq == 1'b1)
            begin
                redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i <= $unsigned(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i <= $unsigned(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_q = redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_i[2:0];

    // i_arrayidx608_mibench0_mult_x_im0_shift0(BITSHIFT,420)@4
    assign i_arrayidx608_mibench0_mult_x_im0_shift0_qint = { redist0_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_b_1_q, 1'b0 };
    assign i_arrayidx608_mibench0_mult_x_im0_shift0_q = i_arrayidx608_mibench0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx608_mibench0_mult_x_sums_align_3(BITSHIFT,360)@4
    assign i_arrayidx608_mibench0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx608_mibench0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx608_mibench0_mult_x_sums_align_3_q = i_arrayidx608_mibench0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx608_mibench0_mult_x_im6_shift0(BITSHIFT,422)@4
    assign i_arrayidx608_mibench0_mult_x_im6_shift0_qint = { redist2_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_d_1_q, 1'b0 };
    assign i_arrayidx608_mibench0_mult_x_im6_shift0_q = i_arrayidx608_mibench0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx608_mibench0_mult_x_sums_align_2(BITSHIFT,359)@4
    assign i_arrayidx608_mibench0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx608_mibench0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx608_mibench0_mult_x_sums_align_2_q = i_arrayidx608_mibench0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx608_mibench0_mult_x_sums_join_4(BITJOIN,361)@4
    assign i_arrayidx608_mibench0_mult_x_sums_join_4_q = {i_arrayidx608_mibench0_mult_x_sums_align_3_q, i_arrayidx608_mibench0_mult_x_sums_align_2_q};

    // i_arrayidx608_mibench0_mult_x_im3_shift0(BITSHIFT,421)@4
    assign i_arrayidx608_mibench0_mult_x_im3_shift0_qint = { redist1_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_c_1_q, 1'b0 };
    assign i_arrayidx608_mibench0_mult_x_im3_shift0_q = i_arrayidx608_mibench0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx608_mibench0_mult_x_sums_align_0(BITSHIFT,357)@4
    assign i_arrayidx608_mibench0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx608_mibench0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx608_mibench0_mult_x_sums_align_0_q = i_arrayidx608_mibench0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx608_mibench0_mult_x_im9_shift0(BITSHIFT,423)@4
    assign i_arrayidx608_mibench0_mult_x_im9_shift0_qint = { redist3_i_arrayidx195_mibench0_mult_x_bs1_merged_bit_select_e_1_q, 1'b0 };
    assign i_arrayidx608_mibench0_mult_x_im9_shift0_q = i_arrayidx608_mibench0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx608_mibench0_mult_x_sums_join_1(BITJOIN,358)@4
    assign i_arrayidx608_mibench0_mult_x_sums_join_1_q = {i_arrayidx608_mibench0_mult_x_sums_align_0_q, {1'b0, i_arrayidx608_mibench0_mult_x_im9_shift0_q}};

    // i_arrayidx608_mibench0_mult_x_sums_result_add_0_0(ADD,362)@4
    assign i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx608_mibench0_mult_x_sums_join_1_q};
    assign i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx608_mibench0_mult_x_sums_join_4_q};
    assign i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_q = i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx608_mibench0_mult_extender_x(BITJOIN,217)@4
    assign i_arrayidx608_mibench0_mult_extender_x_q = {i_arrayidx195_mibench0_mult_multconst_x_q, i_arrayidx608_mibench0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx608_mibench0_trunc_sel_x(BITSELECT,219)@4
    assign i_arrayidx608_mibench0_trunc_sel_x_b = i_arrayidx608_mibench0_mult_extender_x_q[63:0];

    // c_mibench_OUT_pmem(CONSTANT,42)
    assign c_mibench_OUT_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx608_mibench0_add_x(ADD,211)@4
    assign i_arrayidx608_mibench0_add_x_a = {1'b0, c_mibench_OUT_pmem_q};
    assign i_arrayidx608_mibench0_add_x_b = {1'b0, i_arrayidx608_mibench0_trunc_sel_x_b};
    assign i_arrayidx608_mibench0_add_x_o = $unsigned(i_arrayidx608_mibench0_add_x_a) + $unsigned(i_arrayidx608_mibench0_add_x_b);
    assign i_arrayidx608_mibench0_add_x_q = i_arrayidx608_mibench0_add_x_o[64:0];

    // i_arrayidx608_mibench0_dupName_0_trunc_sel_x(BITSELECT,220)@4
    assign i_arrayidx608_mibench0_dupName_0_trunc_sel_x_b = i_arrayidx608_mibench0_add_x_q[63:0];

    // i_arrayidx608_mibench35_vt_select_63(BITSELECT,71)@4
    assign i_arrayidx608_mibench35_vt_select_63_b = i_arrayidx608_mibench0_dupName_0_trunc_sel_x_b[63:1];

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_wraddr(REG,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist21_i_arrayidx608_mibench35_vt_select_63_b_7_wraddr_q <= $unsigned(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_q);
        end
    end

    // redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem(DUALMEM,450)
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_ia = $unsigned(i_arrayidx608_mibench35_vt_select_63_b);
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_aa = redist21_i_arrayidx608_mibench35_vt_select_63_b_7_wraddr_q;
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_ab = redist21_i_arrayidx608_mibench35_vt_select_63_b_7_rdcnt_q;
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(63),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(63),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_dmem (
        .clocken1(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_aa),
        .data_a(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_ab),
        .q_b(redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_q = redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_iq[62:0];

    // i_arrayidx608_mibench35_vt_join(BITJOIN,70)@11
    assign i_arrayidx608_mibench35_vt_join_q = {redist21_i_arrayidx608_mibench35_vt_select_63_b_7_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_4_mibench36(BLACKBOX,96)@11
    // out out_memdep_4_mibench_avm_address@20000000
    // out out_memdep_4_mibench_avm_burstcount@20000000
    // out out_memdep_4_mibench_avm_byteenable@20000000
    // out out_memdep_4_mibench_avm_enable@20000000
    // out out_memdep_4_mibench_avm_read@20000000
    // out out_memdep_4_mibench_avm_write@20000000
    // out out_memdep_4_mibench_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    mibench_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_mibench36 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx608_mibench35_vt_join_q),
        .in_i_predicate(redist13_i_xor_mibench4_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_conv58_mibench34_sel_x_b),
        .in_memdep_4_mibench_avm_readdata(in_memdep_4_mibench_avm_readdata),
        .in_memdep_4_mibench_avm_readdatavalid(in_memdep_4_mibench_avm_readdatavalid),
        .in_memdep_4_mibench_avm_waitrequest(in_memdep_4_mibench_avm_waitrequest),
        .in_memdep_4_mibench_avm_writeack(in_memdep_4_mibench_avm_writeack),
        .out_memdep_4_mibench_avm_address(i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_address),
        .out_memdep_4_mibench_avm_burstcount(i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_burstcount),
        .out_memdep_4_mibench_avm_byteenable(i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_byteenable),
        .out_memdep_4_mibench_avm_enable(i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_enable),
        .out_memdep_4_mibench_avm_read(i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_read),
        .out_memdep_4_mibench_avm_write(i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_write),
        .out_memdep_4_mibench_avm_writedata(i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,180)
    assign out_memdep_4_mibench_avm_address = i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_address;
    assign out_memdep_4_mibench_avm_enable = i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_enable;
    assign out_memdep_4_mibench_avm_read = i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_read;
    assign out_memdep_4_mibench_avm_write = i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_write;
    assign out_memdep_4_mibench_avm_writedata = i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_writedata;
    assign out_memdep_4_mibench_avm_byteenable = i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_byteenable;
    assign out_memdep_4_mibench_avm_burstcount = i_llvm_fpga_mem_memdep_4_mibench36_out_memdep_4_mibench_avm_burstcount;

    // valid_fanout_reg0(REG,255)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together92_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist4_valid_fanout_reg0_q_1(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist4_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // valid_fanout_reg8(REG,263)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,264)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1948_push18_mibench51(BLACKBOX,107)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    mibench_i_llvm_fpga_push_i1_notcmp1948_push18_0 thei_llvm_fpga_push_i1_notcmp1948_push18_mibench51 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_feedback_stall_out_18),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp1948_push18_mibench51_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp1948_push18_mibench51_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together92_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together92_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together92_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50(BLACKBOX,102)@2
    // out out_feedback_stall_out_18@20000000
    mibench_i_llvm_fpga_pop_i1_notcmp1948_pop18_0 thei_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50 (
        .in_data_in(redist6_sync_together92_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist5_sync_together92_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp1948_push18_mibench51_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp1948_push18_mibench51_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out_10(DELAY,444)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out_10 ( .xin(i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out), .xout(redist17_i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_mibench49(LOGICAL,111)@2 + 1
    assign i_masked_mibench49_qi = i_notcmp_mibench42_q & i_first_cleanup_mibench3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_mibench49_delay ( .xin(i_masked_mibench49_qi), .xout(i_masked_mibench49_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_i_masked_mibench49_q_10(DELAY,442)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_i_masked_mibench49_q_10 ( .xin(i_masked_mibench49_q), .xout(redist15_i_masked_mibench49_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_11(DELAY,447)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_11 ( .xin(redist19_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_2_q), .xout(redist20_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,245)@12
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist20_i_llvm_fpga_pipeline_keep_going_mibench6_out_data_out_11_q;
    assign out_c0_exi3_2_tpl = redist15_i_masked_mibench49_q_10_q;
    assign out_c0_exi3_3_tpl = redist17_i_llvm_fpga_pop_i1_notcmp1948_pop18_mibench50_out_data_out_10_q;
    assign out_o_valid = redist4_valid_fanout_reg0_q_1_q;
    assign out_unnamed_mibench1 = GND_q;

endmodule
