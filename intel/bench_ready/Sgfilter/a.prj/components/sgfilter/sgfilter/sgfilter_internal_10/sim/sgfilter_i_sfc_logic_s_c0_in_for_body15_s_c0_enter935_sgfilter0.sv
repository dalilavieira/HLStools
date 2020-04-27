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

// SystemVerilog created from sgfilter_i_sfc_logic_s_c0_in_for_body15_s_c0_enter935_sgfilter0
// SystemVerilog created on Mon Apr 27 09:54:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sgfilter_i_sfc_logic_s_c0_in_for_body15_s_c0_enter935_sgfilter0 (
    input wire [15:0] in_unnamed_sgfilter7_sgfilter_avm_readdata,
    input wire [0:0] in_unnamed_sgfilter7_sgfilter_avm_writeack,
    input wire [0:0] in_unnamed_sgfilter7_sgfilter_avm_waitrequest,
    input wire [0:0] in_unnamed_sgfilter7_sgfilter_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_unnamed_sgfilter8_sgfilter_avm_readdata,
    input wire [0:0] in_unnamed_sgfilter8_sgfilter_avm_writeack,
    input wire [0:0] in_unnamed_sgfilter8_sgfilter_avm_waitrequest,
    input wire [0:0] in_unnamed_sgfilter8_sgfilter_avm_readdatavalid,
    output wire [31:0] out_unnamed_sgfilter7_sgfilter_avm_address,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_enable,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_read,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_write,
    output wire [15:0] out_unnamed_sgfilter7_sgfilter_avm_writedata,
    output wire [1:0] out_unnamed_sgfilter7_sgfilter_avm_byteenable,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_burstcount,
    input wire [15:0] in_memdep_3_sgfilter_avm_readdata,
    input wire [0:0] in_memdep_3_sgfilter_avm_writeack,
    input wire [0:0] in_memdep_3_sgfilter_avm_waitrequest,
    input wire [0:0] in_memdep_3_sgfilter_avm_readdatavalid,
    output wire [31:0] out_unnamed_sgfilter8_sgfilter_avm_address,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_enable,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_read,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_write,
    output wire [15:0] out_unnamed_sgfilter8_sgfilter_avm_writedata,
    output wire [1:0] out_unnamed_sgfilter8_sgfilter_avm_byteenable,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_burstcount,
    output wire [31:0] out_memdep_3_sgfilter_avm_address,
    output wire [0:0] out_memdep_3_sgfilter_avm_enable,
    output wire [0:0] out_memdep_3_sgfilter_avm_read,
    output wire [0:0] out_memdep_3_sgfilter_avm_write,
    output wire [15:0] out_memdep_3_sgfilter_avm_writedata,
    output wire [1:0] out_memdep_3_sgfilter_avm_byteenable,
    output wire [0:0] out_memdep_3_sgfilter_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sgfilter1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_1022101_q;
    wire [10:0] c_i11_1103_q;
    wire [15:0] c_i16_3993_q;
    wire [15:0] c_i16_4690_q;
    wire [15:0] c_i16_7599_q;
    wire [15:0] c_i16_7698_q;
    wire [15:0] c_i16_796_q;
    wire [15:0] c_i16_9292_q;
    wire [15:0] c_i16_98489_q;
    wire [1:0] c_i2_185_q;
    wire [31:0] c_i32_087_q;
    wire [31:0] c_i32_1100_q;
    wire [63:0] c_sgfilter_OUT_pmem_q;
    wire [63:0] c_sgfilter_a_pmem_q;
    wire [63:0] c_sgfilter_b_pmem_q;
    wire [63:0] i_arrayidx175_sgfilter10_vt_join_q;
    wire [62:0] i_arrayidx175_sgfilter10_vt_select_63_b;
    wire [63:0] i_arrayidx426_sgfilter22_vt_join_q;
    wire [62:0] i_arrayidx426_sgfilter22_vt_select_63_b;
    wire [63:0] i_arrayidx607_sgfilter53_vt_join_q;
    wire [62:0] i_arrayidx607_sgfilter53_vt_select_63_b;
    wire [1:0] i_cleanups_shl_sgfilter5_vt_join_q;
    wire [0:0] i_cleanups_shl_sgfilter5_vt_select_1_b;
    wire [16:0] i_dot_prod_add50_sgfilter18_a;
    wire [16:0] i_dot_prod_add50_sgfilter18_b;
    logic [16:0] i_dot_prod_add50_sgfilter18_o;
    wire [16:0] i_dot_prod_add50_sgfilter18_q;
    wire [16:0] i_dot_prod_add54_sgfilter21_a;
    wire [16:0] i_dot_prod_add54_sgfilter21_b;
    logic [16:0] i_dot_prod_add54_sgfilter21_o;
    wire [16:0] i_dot_prod_add54_sgfilter21_q;
    wire [16:0] i_dot_prod_add61_sgfilter36_a;
    wire [16:0] i_dot_prod_add61_sgfilter36_b;
    logic [16:0] i_dot_prod_add61_sgfilter36_o;
    wire [16:0] i_dot_prod_add61_sgfilter36_q;
    wire [16:0] i_dot_prod_add67_sgfilter44_a;
    wire [16:0] i_dot_prod_add67_sgfilter44_b;
    logic [16:0] i_dot_prod_add67_sgfilter44_o;
    wire [16:0] i_dot_prod_add67_sgfilter44_q;
    wire [16:0] i_dot_prod_add73_sgfilter52_a;
    wire [16:0] i_dot_prod_add73_sgfilter52_b;
    logic [16:0] i_dot_prod_add73_sgfilter52_o;
    wire [16:0] i_dot_prod_add73_sgfilter52_q;
    wire [16:0] i_dot_prod_add_sgfilter14_a;
    wire [16:0] i_dot_prod_add_sgfilter14_b;
    logic [16:0] i_dot_prod_add_sgfilter14_o;
    wire [16:0] i_dot_prod_add_sgfilter14_q;
    wire [11:0] i_fpga_indvars_iv_next5_sgfilter65_a;
    wire [11:0] i_fpga_indvars_iv_next5_sgfilter65_b;
    logic [11:0] i_fpga_indvars_iv_next5_sgfilter65_o;
    wire [11:0] i_fpga_indvars_iv_next5_sgfilter65_q;
    wire [63:0] i_idxprom16_sgfilter9_vt_join_q;
    wire [31:0] i_idxprom16_sgfilter9_vt_select_31_b;
    wire [32:0] i_inc62_sgfilter55_a;
    wire [32:0] i_inc62_sgfilter55_b;
    logic [32:0] i_inc62_sgfilter55_o;
    wire [32:0] i_inc62_sgfilter55_q;
    wire [31:0] i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sgfilter6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sgfilter6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sgfilter6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sgfilter6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sgfilter6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sgfilter7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sgfilter7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sgfilter61_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sgfilter61_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_sgfilter64_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_sgfilter64_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k11_023_push16_sgfilter56_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k11_023_push16_sgfilter56_out_feedback_valid_out_16;
    wire [0:0] i_masked_sgfilter67_qi;
    reg [0:0] i_masked_sgfilter67_q;
    wire [0:0] i_next_cleanups_sgfilter63_s;
    reg [1:0] i_next_cleanups_sgfilter63_q;
    wire [0:0] i_notcmp_sgfilter60_q;
    wire [0:0] i_or_sgfilter62_q;
    wire [15:0] i_unnamed_sgfilter24_vt_join_q;
    wire [14:0] i_unnamed_sgfilter24_vt_select_15_b;
    wire [1:0] i_unnamed_sgfilter25_vt_const_1_q;
    wire [15:0] i_unnamed_sgfilter25_vt_join_q;
    wire [13:0] i_unnamed_sgfilter25_vt_select_15_b;
    wire [0:0] i_xor_sgfilter4_q;
    wire [15:0] bgTrunc_i_dot_prod_add50_sgfilter18_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add54_sgfilter21_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add61_sgfilter36_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add67_sgfilter44_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add73_sgfilter52_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add_sgfilter14_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next5_sgfilter65_sel_x_b;
    wire [31:0] bgTrunc_i_inc62_sgfilter55_sel_x_b;
    wire [64:0] i_arrayidx175_sgfilter0_add_x_a;
    wire [64:0] i_arrayidx175_sgfilter0_add_x_b;
    logic [64:0] i_arrayidx175_sgfilter0_add_x_o;
    wire [64:0] i_arrayidx175_sgfilter0_add_x_q;
    wire [127:0] i_arrayidx175_sgfilter0_mult_extender_x_q;
    wire [61:0] i_arrayidx175_sgfilter0_mult_multconst_x_q;
    wire [63:0] i_arrayidx175_sgfilter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx175_sgfilter0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx426_sgfilter0_add_x_a;
    wire [64:0] i_arrayidx426_sgfilter0_add_x_b;
    logic [64:0] i_arrayidx426_sgfilter0_add_x_o;
    wire [64:0] i_arrayidx426_sgfilter0_add_x_q;
    wire [127:0] i_arrayidx426_sgfilter0_mult_extender_x_q;
    wire [63:0] i_arrayidx426_sgfilter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx426_sgfilter0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx607_sgfilter0_add_x_a;
    wire [64:0] i_arrayidx607_sgfilter0_add_x_b;
    logic [64:0] i_arrayidx607_sgfilter0_add_x_o;
    wire [64:0] i_arrayidx607_sgfilter0_add_x_q;
    wire [127:0] i_arrayidx607_sgfilter0_mult_extender_x_q;
    wire [63:0] i_arrayidx607_sgfilter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx607_sgfilter0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_sgfilter3_sel_x_b;
    wire [63:0] i_idxprom16_sgfilter9_sel_x_b;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_q;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_q;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_a;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_b;
    logic [15:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_o;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire [0:0] i_exitcond6_sgfilter58_cmp_nsign_q;
    wire [35:0] i_arrayidx175_sgfilter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx175_sgfilter0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx175_sgfilter0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx175_sgfilter0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx175_sgfilter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx175_sgfilter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx175_sgfilter0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx175_sgfilter0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx426_sgfilter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx426_sgfilter0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx426_sgfilter0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx426_sgfilter0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx426_sgfilter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx426_sgfilter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx426_sgfilter0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx426_sgfilter0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx607_sgfilter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx607_sgfilter0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx607_sgfilter0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx607_sgfilter0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx607_sgfilter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx607_sgfilter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx607_sgfilter0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx607_sgfilter0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid274_i_cleanups_shl_sgfilter0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid274_i_cleanups_shl_sgfilter0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid275_i_cleanups_shl_sgfilter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_s;
    reg [1:0] leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_q;
    wire [14:0] leftShiftStage0Idx1Rng1_uid282_i_unnamed_sgfilter0_shift_x_in;
    wire [14:0] leftShiftStage0Idx1Rng1_uid282_i_unnamed_sgfilter0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid283_i_unnamed_sgfilter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_s;
    reg [15:0] leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_q;
    wire [13:0] leftShiftStage0Idx1Rng2_uid290_dupName_0_i_unnamed_sgfilter0_shift_x_in;
    wire [13:0] leftShiftStage0Idx1Rng2_uid290_dupName_0_i_unnamed_sgfilter0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid291_dupName_0_i_unnamed_sgfilter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_s;
    reg [15:0] leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_q;
    wire [10:0] i_arrayidx175_sgfilter0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx175_sgfilter0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx175_sgfilter0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx175_sgfilter0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx175_sgfilter0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx175_sgfilter0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx175_sgfilter0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx175_sgfilter0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx426_sgfilter0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx426_sgfilter0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx426_sgfilter0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx426_sgfilter0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx426_sgfilter0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx426_sgfilter0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx426_sgfilter0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx426_sgfilter0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx607_sgfilter0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx607_sgfilter0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx607_sgfilter0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx607_sgfilter0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx607_sgfilter0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx607_sgfilter0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx607_sgfilter0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx607_sgfilter0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e;
    reg [9:0] redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_q;
    reg [9:0] redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_delay_0;
    reg [17:0] redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_q;
    reg [17:0] redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_delay_0;
    reg [17:0] redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_q;
    reg [17:0] redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_delay_0;
    reg [17:0] redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_q;
    reg [17:0] redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_delay_0;
    reg [0:0] redist4_valid_fanout_reg0_q_1_q;
    reg [0:0] redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist6_sync_together118_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist7_sync_together118_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together118_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist8_sync_together118_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist9_sync_together118_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist10_i_xor_sgfilter4_q_1_q;
    reg [0:0] redist11_i_xor_sgfilter4_q_3_q;
    reg [0:0] redist11_i_xor_sgfilter4_q_3_delay_0;
    reg [0:0] redist12_i_xor_sgfilter4_q_14_q;
    reg [0:0] redist13_i_masked_sgfilter67_q_15_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_15_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_2_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_16_q;
    reg [15:0] redist19_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_1_q;
    reg [15:0] redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_q;
    reg [15:0] redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_delay_0;
    reg [31:0] redist23_i_idxprom16_sgfilter9_vt_select_31_b_1_q;
    wire redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_reset0;
    wire [15:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_ia;
    wire [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_aa;
    wire [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_ab;
    wire [15:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_iq;
    wire [15:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_q;
    wire [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_q;
    (* preserve *) reg [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_i;
    reg [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_enaAnd_q;
    reg [15:0] redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_inputreg0_q;
    wire redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_reset0;
    wire [15:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_ia;
    wire [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_aa;
    wire [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_ab;
    wire [15:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_iq;
    wire [15:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_q;
    wire [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_q;
    (* preserve *) reg [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_i;
    reg [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_cmpReg_q;
    wire [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_notEnable_q;
    wire [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_nor_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_sticky_ena_q;
    wire [0:0] redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_enaAnd_q;
    wire redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_reset0;
    wire [62:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_ia;
    wire [3:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_aa;
    wire [3:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_ab;
    wire [62:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_iq;
    wire [62:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_q;
    wire [3:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_q;
    (* preserve *) reg [3:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i;
    (* preserve *) reg redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_eq;
    reg [3:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_wraddr_q;
    wire [4:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_last_q;
    wire [4:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmp_b;
    wire [0:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmp_q;
    (* dont_merge *) reg [0:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmpReg_q;
    wire [0:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_notEnable_q;
    wire [0:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_nor_q;
    (* dont_merge *) reg [0:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_sticky_ena_q;
    wire [0:0] redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together118_aunroll_x_in_i_valid_1(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together118_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together118_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid274_i_cleanups_shl_sgfilter0_shift_x(BITSELECT,273)@2
    assign leftShiftStage0Idx1Rng1_uid274_i_cleanups_shl_sgfilter0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid274_i_cleanups_shl_sgfilter0_shift_x_b = leftShiftStage0Idx1Rng1_uid274_i_cleanups_shl_sgfilter0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid275_i_cleanups_shl_sgfilter0_shift_x(BITJOIN,274)@2
    assign leftShiftStage0Idx1_uid275_i_cleanups_shl_sgfilter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid274_i_cleanups_shl_sgfilter0_shift_x_b, GND_q};

    // leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x(MUX,276)@2
    assign leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out or leftShiftStage0Idx1_uid275_i_cleanups_shl_sgfilter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_s)
            1'b0 : leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out;
            1'b1 : leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_q = leftShiftStage0Idx1_uid275_i_cleanups_shl_sgfilter0_shift_x_q;
            default : leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_sgfilter5_vt_select_1(BITSELECT,55)@2
    assign i_cleanups_shl_sgfilter5_vt_select_1_b = leftShiftStage0_uid277_i_cleanups_shl_sgfilter0_shift_x_q[1:1];

    // i_cleanups_shl_sgfilter5_vt_join(BITJOIN,54)@2
    assign i_cleanups_shl_sgfilter5_vt_join_q = {i_cleanups_shl_sgfilter5_vt_select_1_b, GND_q};

    // i_xor_sgfilter4(LOGICAL,95)@2
    assign i_xor_sgfilter4_q = i_first_cleanup_sgfilter3_sel_x_b ^ VCC_q;

    // i_notcmp_sgfilter60(LOGICAL,87)@2
    assign i_notcmp_sgfilter60_q = i_exitcond6_sgfilter58_cmp_nsign_q ^ VCC_q;

    // i_or_sgfilter62(LOGICAL,88)@2
    assign i_or_sgfilter62_q = i_notcmp_sgfilter60_q | i_xor_sgfilter4_q;

    // i_next_cleanups_sgfilter63(MUX,86)@2
    assign i_next_cleanups_sgfilter63_s = i_or_sgfilter62_q;
    always @(i_next_cleanups_sgfilter63_s or i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out or i_cleanups_shl_sgfilter5_vt_join_q)
    begin
        unique case (i_next_cleanups_sgfilter63_s)
            1'b0 : i_next_cleanups_sgfilter63_q = i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out;
            1'b1 : i_next_cleanups_sgfilter63_q = i_cleanups_shl_sgfilter5_vt_join_q;
            default : i_next_cleanups_sgfilter63_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_sgfilter64(BLACKBOX,83)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    sgfilter_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_sgfilter64 (
        .in_data_in(i_next_cleanups_sgfilter63_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_feedback_stall_out_17),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together118_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_sgfilter64_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_sgfilter64_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_185(CONSTANT,36)
    assign c_i2_185_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2(BLACKBOX,77)@2
    // out out_feedback_stall_out_17@20000000
    sgfilter_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2 (
        .in_data_in(c_i2_185_q),
        .in_dir(redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_sgfilter64_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_sgfilter64_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together118_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_sgfilter3_sel_x(BITSELECT,149)@2
    assign i_first_cleanup_sgfilter3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_sgfilter2_out_data_out[0:0];

    // c_i11_1103(CONSTANT,11)
    assign c_i11_1103_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next5_sgfilter65(ADD,64)@2
    assign i_fpga_indvars_iv_next5_sgfilter65_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57_out_data_out};
    assign i_fpga_indvars_iv_next5_sgfilter65_b = {1'b0, c_i11_1103_q};
    assign i_fpga_indvars_iv_next5_sgfilter65_o = $unsigned(i_fpga_indvars_iv_next5_sgfilter65_a) + $unsigned(i_fpga_indvars_iv_next5_sgfilter65_b);
    assign i_fpga_indvars_iv_next5_sgfilter65_q = i_fpga_indvars_iv_next5_sgfilter65_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next5_sgfilter65_sel_x(BITSELECT,107)@2
    assign bgTrunc_i_fpga_indvars_iv_next5_sgfilter65_sel_x_b = i_fpga_indvars_iv_next5_sgfilter65_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66(BLACKBOX,79)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    sgfilter_i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next5_sgfilter65_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57_out_feedback_stall_out_15),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together118_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_1022101(CONSTANT,10)
    assign c_i11_1022101_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57(BLACKBOX,75)@2
    // out out_feedback_stall_out_15@20000000
    sgfilter_i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57 (
        .in_data_in(c_i11_1022101_q),
        .in_dir(redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv4_push15_sgfilter66_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together118_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond6_sgfilter58_cmp_nsign(LOGICAL,215)@2
    assign i_exitcond6_sgfilter58_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop15_sgfilter57_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_sgfilter61(BLACKBOX,82)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    sgfilter_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_sgfilter61 (
        .in_data_in(i_exitcond6_sgfilter58_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_sgfilter3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together118_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_sgfilter61_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_sgfilter61_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,187)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_sgfilter7(BLACKBOX,80)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    sgfilter_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_sgfilter7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_initeration_stall_out),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_sgfilter7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_sgfilter7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_sgfilter6(BLACKBOX,74)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    sgfilter_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_sgfilter6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_sgfilter7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_sgfilter7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_sgfilter61_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_sgfilter61_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_sgfilter6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,43)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_sgfilter6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_sgfilter6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,98)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_sgfilter6_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,189)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist7_sync_together118_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist10_i_xor_sgfilter4_q_1(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_xor_sgfilter4_q_1_q <= '0;
        end
        else
        begin
            redist10_i_xor_sgfilter4_q_1_q <= $unsigned(i_xor_sgfilter4_q);
        end
    end

    // i_arrayidx175_sgfilter0_mult_multconst_x(CONSTANT,122)
    assign i_arrayidx175_sgfilter0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_087(CONSTANT,37)
    assign c_i32_087_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,188)@1 + 1
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

    // valid_fanout_reg6(REG,192)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1100(CONSTANT,38)
    assign c_i32_1100_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc62_sgfilter55(ADD,69)@2
    assign i_inc62_sgfilter55_a = {1'b0, i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8_out_data_out};
    assign i_inc62_sgfilter55_b = {1'b0, c_i32_1100_q};
    assign i_inc62_sgfilter55_o = $unsigned(i_inc62_sgfilter55_a) + $unsigned(i_inc62_sgfilter55_b);
    assign i_inc62_sgfilter55_q = i_inc62_sgfilter55_o[32:0];

    // bgTrunc_i_inc62_sgfilter55_sel_x(BITSELECT,108)@2
    assign bgTrunc_i_inc62_sgfilter55_sel_x_b = i_inc62_sgfilter55_q[31:0];

    // i_llvm_fpga_push_i32_k11_023_push16_sgfilter56(BLACKBOX,84)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    sgfilter_i_llvm_fpga_push_i32_k11_023_push16_0 thei_llvm_fpga_push_i32_k11_023_push16_sgfilter56 (
        .in_data_in(bgTrunc_i_inc62_sgfilter55_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8_out_feedback_stall_out_16),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k11_023_push16_sgfilter56_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k11_023_push16_sgfilter56_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8(BLACKBOX,78)@2
    // out out_feedback_stall_out_16@20000000
    sgfilter_i_llvm_fpga_pop_i32_k11_023_pop16_0 thei_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8 (
        .in_data_in(c_i32_087_q),
        .in_dir(redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k11_023_push16_sgfilter56_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k11_023_push16_sgfilter56_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom16_sgfilter9_sel_x(BITSELECT,150)@2
    assign i_idxprom16_sgfilter9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k11_023_pop16_sgfilter8_out_data_out[31:0]};

    // i_idxprom16_sgfilter9_vt_select_31(BITSELECT,68)@2
    assign i_idxprom16_sgfilter9_vt_select_31_b = i_idxprom16_sgfilter9_sel_x_b[31:0];

    // redist23_i_idxprom16_sgfilter9_vt_select_31_b_1(DELAY,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom16_sgfilter9_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist23_i_idxprom16_sgfilter9_vt_select_31_b_1_q <= $unsigned(i_idxprom16_sgfilter9_vt_select_31_b);
        end
    end

    // i_idxprom16_sgfilter9_vt_join(BITJOIN,67)@3
    assign i_idxprom16_sgfilter9_vt_join_q = {c_i32_087_q, redist23_i_idxprom16_sgfilter9_vt_select_31_b_1_q};

    // i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select(BITSELECT,306)@3
    assign i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b = i_idxprom16_sgfilter9_vt_join_q[63:54];
    assign i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c = i_idxprom16_sgfilter9_vt_join_q[53:36];
    assign i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d = i_idxprom16_sgfilter9_vt_join_q[35:18];
    assign i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e = i_idxprom16_sgfilter9_vt_join_q[17:0];

    // i_arrayidx175_sgfilter0_mult_x_im0_shift0(BITSHIFT,294)@3
    assign i_arrayidx175_sgfilter0_mult_x_im0_shift0_qint = { i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx175_sgfilter0_mult_x_im0_shift0_q = i_arrayidx175_sgfilter0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx175_sgfilter0_mult_x_sums_align_3(BITSHIFT,231)@3
    assign i_arrayidx175_sgfilter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx175_sgfilter0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx175_sgfilter0_mult_x_sums_align_3_q = i_arrayidx175_sgfilter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx175_sgfilter0_mult_x_im6_shift0(BITSHIFT,296)@3
    assign i_arrayidx175_sgfilter0_mult_x_im6_shift0_qint = { i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx175_sgfilter0_mult_x_im6_shift0_q = i_arrayidx175_sgfilter0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx175_sgfilter0_mult_x_sums_align_2(BITSHIFT,230)@3
    assign i_arrayidx175_sgfilter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx175_sgfilter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx175_sgfilter0_mult_x_sums_align_2_q = i_arrayidx175_sgfilter0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx175_sgfilter0_mult_x_sums_join_4(BITJOIN,232)@3
    assign i_arrayidx175_sgfilter0_mult_x_sums_join_4_q = {i_arrayidx175_sgfilter0_mult_x_sums_align_3_q, i_arrayidx175_sgfilter0_mult_x_sums_align_2_q};

    // i_arrayidx175_sgfilter0_mult_x_im3_shift0(BITSHIFT,295)@3
    assign i_arrayidx175_sgfilter0_mult_x_im3_shift0_qint = { i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx175_sgfilter0_mult_x_im3_shift0_q = i_arrayidx175_sgfilter0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx175_sgfilter0_mult_x_sums_align_0(BITSHIFT,228)@3
    assign i_arrayidx175_sgfilter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx175_sgfilter0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx175_sgfilter0_mult_x_sums_align_0_q = i_arrayidx175_sgfilter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx175_sgfilter0_mult_x_im9_shift0(BITSHIFT,297)@3
    assign i_arrayidx175_sgfilter0_mult_x_im9_shift0_qint = { i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx175_sgfilter0_mult_x_im9_shift0_q = i_arrayidx175_sgfilter0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx175_sgfilter0_mult_x_sums_join_1(BITJOIN,229)@3
    assign i_arrayidx175_sgfilter0_mult_x_sums_join_1_q = {i_arrayidx175_sgfilter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx175_sgfilter0_mult_x_im9_shift0_q}};

    // i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0(ADD,233)@3
    assign i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx175_sgfilter0_mult_x_sums_join_1_q};
    assign i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx175_sgfilter0_mult_x_sums_join_4_q};
    assign i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_q = i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx175_sgfilter0_mult_extender_x(BITJOIN,121)@3
    assign i_arrayidx175_sgfilter0_mult_extender_x_q = {i_arrayidx175_sgfilter0_mult_multconst_x_q, i_arrayidx175_sgfilter0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx175_sgfilter0_trunc_sel_x(BITSELECT,123)@3
    assign i_arrayidx175_sgfilter0_trunc_sel_x_b = i_arrayidx175_sgfilter0_mult_extender_x_q[63:0];

    // c_sgfilter_a_pmem(CONSTANT,40)
    assign c_sgfilter_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx175_sgfilter0_add_x(ADD,115)@3
    assign i_arrayidx175_sgfilter0_add_x_a = {1'b0, c_sgfilter_a_pmem_q};
    assign i_arrayidx175_sgfilter0_add_x_b = {1'b0, i_arrayidx175_sgfilter0_trunc_sel_x_b};
    assign i_arrayidx175_sgfilter0_add_x_o = $unsigned(i_arrayidx175_sgfilter0_add_x_a) + $unsigned(i_arrayidx175_sgfilter0_add_x_b);
    assign i_arrayidx175_sgfilter0_add_x_q = i_arrayidx175_sgfilter0_add_x_o[64:0];

    // i_arrayidx175_sgfilter0_dupName_0_trunc_sel_x(BITSELECT,124)@3
    assign i_arrayidx175_sgfilter0_dupName_0_trunc_sel_x_b = i_arrayidx175_sgfilter0_add_x_q[63:0];

    // i_arrayidx175_sgfilter10_vt_select_63(BITSELECT,46)@3
    assign i_arrayidx175_sgfilter10_vt_select_63_b = i_arrayidx175_sgfilter0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx175_sgfilter10_vt_join(BITJOIN,45)@3
    assign i_arrayidx175_sgfilter10_vt_join_q = {i_arrayidx175_sgfilter10_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11(BLACKBOX,72)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_sgfilter7_sgfilter_avm_address@20000000
    // out out_unnamed_sgfilter7_sgfilter_avm_burstcount@20000000
    // out out_unnamed_sgfilter7_sgfilter_avm_byteenable@20000000
    // out out_unnamed_sgfilter7_sgfilter_avm_enable@20000000
    // out out_unnamed_sgfilter7_sgfilter_avm_read@20000000
    // out out_unnamed_sgfilter7_sgfilter_avm_write@20000000
    // out out_unnamed_sgfilter7_sgfilter_avm_writedata@20000000
    sgfilter_i_llvm_fpga_mem_unnamed_7_sgfilter0 thei_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx175_sgfilter10_vt_join_q),
        .in_i_predicate(redist10_i_xor_sgfilter4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_sgfilter7_sgfilter_avm_readdata(in_unnamed_sgfilter7_sgfilter_avm_readdata),
        .in_unnamed_sgfilter7_sgfilter_avm_readdatavalid(in_unnamed_sgfilter7_sgfilter_avm_readdatavalid),
        .in_unnamed_sgfilter7_sgfilter_avm_waitrequest(in_unnamed_sgfilter7_sgfilter_avm_waitrequest),
        .in_unnamed_sgfilter7_sgfilter_avm_writeack(in_unnamed_sgfilter7_sgfilter_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_sgfilter7_sgfilter_avm_address(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_address),
        .out_unnamed_sgfilter7_sgfilter_avm_burstcount(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_burstcount),
        .out_unnamed_sgfilter7_sgfilter_avm_byteenable(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_byteenable),
        .out_unnamed_sgfilter7_sgfilter_avm_enable(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_enable),
        .out_unnamed_sgfilter7_sgfilter_avm_read(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_read),
        .out_unnamed_sgfilter7_sgfilter_avm_write(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_write),
        .out_unnamed_sgfilter7_sgfilter_avm_writedata(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,111)
    assign out_unnamed_sgfilter7_sgfilter_avm_address = i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_address;
    assign out_unnamed_sgfilter7_sgfilter_avm_enable = i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_enable;
    assign out_unnamed_sgfilter7_sgfilter_avm_read = i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_read;
    assign out_unnamed_sgfilter7_sgfilter_avm_write = i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_write;
    assign out_unnamed_sgfilter7_sgfilter_avm_writedata = i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_writedata;
    assign out_unnamed_sgfilter7_sgfilter_avm_byteenable = i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_byteenable;
    assign out_unnamed_sgfilter7_sgfilter_avm_burstcount = i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_unnamed_sgfilter7_sgfilter_avm_burstcount;

    // redist8_sync_together118_aunroll_x_in_i_valid_3(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together118_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist8_sync_together118_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist8_sync_together118_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist7_sync_together118_aunroll_x_in_i_valid_1_q);
            redist8_sync_together118_aunroll_x_in_i_valid_3_q <= redist8_sync_together118_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // valid_fanout_reg4(REG,190)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together118_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist11_i_xor_sgfilter4_q_3(DELAY,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_xor_sgfilter4_q_3_delay_0 <= '0;
            redist11_i_xor_sgfilter4_q_3_q <= '0;
        end
        else
        begin
            redist11_i_xor_sgfilter4_q_3_delay_0 <= $unsigned(redist10_i_xor_sgfilter4_q_1_q);
            redist11_i_xor_sgfilter4_q_3_q <= redist11_i_xor_sgfilter4_q_3_delay_0;
        end
    end

    // redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_delay_0 <= '0;
            redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_delay_0 <= $unsigned(i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b);
            redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_q <= redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_delay_0;
        end
    end

    // i_arrayidx426_sgfilter0_mult_x_im0_shift0(BITSHIFT,298)@5
    assign i_arrayidx426_sgfilter0_mult_x_im0_shift0_qint = { redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_q, 1'b0 };
    assign i_arrayidx426_sgfilter0_mult_x_im0_shift0_q = i_arrayidx426_sgfilter0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx426_sgfilter0_mult_x_sums_align_3(BITSHIFT,249)@5
    assign i_arrayidx426_sgfilter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx426_sgfilter0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx426_sgfilter0_mult_x_sums_align_3_q = i_arrayidx426_sgfilter0_mult_x_sums_align_3_qint[27:0];

    // redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_delay_0 <= '0;
            redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_delay_0 <= $unsigned(i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d);
            redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_q <= redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_delay_0;
        end
    end

    // i_arrayidx426_sgfilter0_mult_x_im6_shift0(BITSHIFT,300)@5
    assign i_arrayidx426_sgfilter0_mult_x_im6_shift0_qint = { redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_q, 1'b0 };
    assign i_arrayidx426_sgfilter0_mult_x_im6_shift0_q = i_arrayidx426_sgfilter0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx426_sgfilter0_mult_x_sums_align_2(BITSHIFT,248)@5
    assign i_arrayidx426_sgfilter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx426_sgfilter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx426_sgfilter0_mult_x_sums_align_2_q = i_arrayidx426_sgfilter0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx426_sgfilter0_mult_x_sums_join_4(BITJOIN,250)@5
    assign i_arrayidx426_sgfilter0_mult_x_sums_join_4_q = {i_arrayidx426_sgfilter0_mult_x_sums_align_3_q, i_arrayidx426_sgfilter0_mult_x_sums_align_2_q};

    // redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_delay_0 <= '0;
            redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_delay_0 <= $unsigned(i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c);
            redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_q <= redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_delay_0;
        end
    end

    // i_arrayidx426_sgfilter0_mult_x_im3_shift0(BITSHIFT,299)@5
    assign i_arrayidx426_sgfilter0_mult_x_im3_shift0_qint = { redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_q, 1'b0 };
    assign i_arrayidx426_sgfilter0_mult_x_im3_shift0_q = i_arrayidx426_sgfilter0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx426_sgfilter0_mult_x_sums_align_0(BITSHIFT,246)@5
    assign i_arrayidx426_sgfilter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx426_sgfilter0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx426_sgfilter0_mult_x_sums_align_0_q = i_arrayidx426_sgfilter0_mult_x_sums_align_0_qint[35:0];

    // redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_delay_0 <= '0;
            redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_delay_0 <= $unsigned(i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e);
            redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_q <= redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_delay_0;
        end
    end

    // i_arrayidx426_sgfilter0_mult_x_im9_shift0(BITSHIFT,301)@5
    assign i_arrayidx426_sgfilter0_mult_x_im9_shift0_qint = { redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_q, 1'b0 };
    assign i_arrayidx426_sgfilter0_mult_x_im9_shift0_q = i_arrayidx426_sgfilter0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx426_sgfilter0_mult_x_sums_join_1(BITJOIN,247)@5
    assign i_arrayidx426_sgfilter0_mult_x_sums_join_1_q = {i_arrayidx426_sgfilter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx426_sgfilter0_mult_x_im9_shift0_q}};

    // i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0(ADD,251)@5
    assign i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx426_sgfilter0_mult_x_sums_join_1_q};
    assign i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx426_sgfilter0_mult_x_sums_join_4_q};
    assign i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_q = i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx426_sgfilter0_mult_extender_x(BITJOIN,131)@5
    assign i_arrayidx426_sgfilter0_mult_extender_x_q = {i_arrayidx175_sgfilter0_mult_multconst_x_q, i_arrayidx426_sgfilter0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx426_sgfilter0_trunc_sel_x(BITSELECT,133)@5
    assign i_arrayidx426_sgfilter0_trunc_sel_x_b = i_arrayidx426_sgfilter0_mult_extender_x_q[63:0];

    // c_sgfilter_b_pmem(CONSTANT,41)
    assign c_sgfilter_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx426_sgfilter0_add_x(ADD,125)@5
    assign i_arrayidx426_sgfilter0_add_x_a = {1'b0, c_sgfilter_b_pmem_q};
    assign i_arrayidx426_sgfilter0_add_x_b = {1'b0, i_arrayidx426_sgfilter0_trunc_sel_x_b};
    assign i_arrayidx426_sgfilter0_add_x_o = $unsigned(i_arrayidx426_sgfilter0_add_x_a) + $unsigned(i_arrayidx426_sgfilter0_add_x_b);
    assign i_arrayidx426_sgfilter0_add_x_q = i_arrayidx426_sgfilter0_add_x_o[64:0];

    // i_arrayidx426_sgfilter0_dupName_0_trunc_sel_x(BITSELECT,134)@5
    assign i_arrayidx426_sgfilter0_dupName_0_trunc_sel_x_b = i_arrayidx426_sgfilter0_add_x_q[63:0];

    // i_arrayidx426_sgfilter22_vt_select_63(BITSELECT,49)@5
    assign i_arrayidx426_sgfilter22_vt_select_63_b = i_arrayidx426_sgfilter0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx426_sgfilter22_vt_join(BITJOIN,48)@5
    assign i_arrayidx426_sgfilter22_vt_join_q = {i_arrayidx426_sgfilter22_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23(BLACKBOX,73)@5
    // in in_i_stall@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    // out out_unnamed_sgfilter8_sgfilter_avm_address@20000000
    // out out_unnamed_sgfilter8_sgfilter_avm_burstcount@20000000
    // out out_unnamed_sgfilter8_sgfilter_avm_byteenable@20000000
    // out out_unnamed_sgfilter8_sgfilter_avm_enable@20000000
    // out out_unnamed_sgfilter8_sgfilter_avm_read@20000000
    // out out_unnamed_sgfilter8_sgfilter_avm_write@20000000
    // out out_unnamed_sgfilter8_sgfilter_avm_writedata@20000000
    sgfilter_i_llvm_fpga_mem_unnamed_8_sgfilter0 thei_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx426_sgfilter22_vt_join_q),
        .in_i_predicate(redist11_i_xor_sgfilter4_q_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_sgfilter8_sgfilter_avm_readdata(in_unnamed_sgfilter8_sgfilter_avm_readdata),
        .in_unnamed_sgfilter8_sgfilter_avm_readdatavalid(in_unnamed_sgfilter8_sgfilter_avm_readdatavalid),
        .in_unnamed_sgfilter8_sgfilter_avm_waitrequest(in_unnamed_sgfilter8_sgfilter_avm_waitrequest),
        .in_unnamed_sgfilter8_sgfilter_avm_writeack(in_unnamed_sgfilter8_sgfilter_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_sgfilter8_sgfilter_avm_address(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_address),
        .out_unnamed_sgfilter8_sgfilter_avm_burstcount(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_burstcount),
        .out_unnamed_sgfilter8_sgfilter_avm_byteenable(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_byteenable),
        .out_unnamed_sgfilter8_sgfilter_avm_enable(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_enable),
        .out_unnamed_sgfilter8_sgfilter_avm_read(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_read),
        .out_unnamed_sgfilter8_sgfilter_avm_write(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_write),
        .out_unnamed_sgfilter8_sgfilter_avm_writedata(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,113)
    assign out_unnamed_sgfilter8_sgfilter_avm_address = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_address;
    assign out_unnamed_sgfilter8_sgfilter_avm_enable = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_enable;
    assign out_unnamed_sgfilter8_sgfilter_avm_read = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_read;
    assign out_unnamed_sgfilter8_sgfilter_avm_write = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_write;
    assign out_unnamed_sgfilter8_sgfilter_avm_writedata = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_writedata;
    assign out_unnamed_sgfilter8_sgfilter_avm_byteenable = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_byteenable;
    assign out_unnamed_sgfilter8_sgfilter_avm_burstcount = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_unnamed_sgfilter8_sgfilter_avm_burstcount;

    // c_i16_7599(CONSTANT,16)
    assign c_i16_7599_q = $unsigned(16'b1111111110110101);

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_notEnable(LOGICAL,345)
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_nor(LOGICAL,346)
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_nor_q = ~ (redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_notEnable_q | redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_sticky_ena_q);

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_cmpReg(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_sticky_ena(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_nor_q == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_sticky_ena_q <= $unsigned(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_cmpReg_q);
        end
    end

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_enaAnd(LOGICAL,348)
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_enaAnd_q = redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_sticky_ena_q & VCC_q;

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt(COUNTER,342)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_i <= $unsigned(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_q = redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_i[0:0];

    // redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_inputreg0(DELAY,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_inputreg0_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata);
        end
    end

    // redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_delay_0 <= '0;
            redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_delay_0 <= $unsigned(redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_inputreg0_q);
            redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_q <= redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_delay_0;
        end
    end

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_wraddr(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_wraddr_q <= $unsigned(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_q);
        end
    end

    // redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem(DUALMEM,341)
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_ia = $unsigned(redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_q);
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_aa = redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_wraddr_q;
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_ab = redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_rdcnt_q;
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(16),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_dmem (
        .clocken1(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_reset0),
        .clock1(clock),
        .address_a(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_aa),
        .data_a(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_ab),
        .q_b(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_iq),
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
    assign redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_q = redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_iq[15:0];

    // c_i16_4690(CONSTANT,15)
    assign c_i16_4690_q = $unsigned(16'b1111111111010010);

    // c_i16_98489(CONSTANT,20)
    assign c_i16_98489_q = $unsigned(16'b1111110000101000);

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,198)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(c_i16_98489_q);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add_sgfilter14(ADD,61)@10
    assign i_dot_prod_add_sgfilter14_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add_sgfilter14_b = {1'b0, c_i16_4690_q};
    assign i_dot_prod_add_sgfilter14_o = $unsigned(i_dot_prod_add_sgfilter14_a) + $unsigned(i_dot_prod_add_sgfilter14_b);
    assign i_dot_prod_add_sgfilter14_q = i_dot_prod_add_sgfilter14_o[16:0];

    // bgTrunc_i_dot_prod_add_sgfilter14_sel_x(BITSELECT,106)@10
    assign bgTrunc_i_dot_prod_add_sgfilter14_sel_x_b = i_dot_prod_add_sgfilter14_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,195)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_dot_prod_add_sgfilter14_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_q);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add50_sgfilter18(ADD,56)@13
    assign i_dot_prod_add50_sgfilter18_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod49_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add50_sgfilter18_b = {1'b0, c_i16_4690_q};
    assign i_dot_prod_add50_sgfilter18_o = $unsigned(i_dot_prod_add50_sgfilter18_a) + $unsigned(i_dot_prod_add50_sgfilter18_b);
    assign i_dot_prod_add50_sgfilter18_q = i_dot_prod_add50_sgfilter18_o[16:0];

    // bgTrunc_i_dot_prod_add50_sgfilter18_sel_x(BITSELECT,101)@13
    assign bgTrunc_i_dot_prod_add50_sgfilter18_sel_x_b = i_dot_prod_add50_sgfilter18_q[15:0];

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_notEnable(LOGICAL,336)
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_nor(LOGICAL,337)
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_nor_q = ~ (redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_notEnable_q | redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_sticky_ena_q);

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_cmpReg(REG,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_sticky_ena(REG,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_enaAnd(LOGICAL,339)
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_enaAnd_q = redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt(COUNTER,333)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_q = redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_i[0:0];

    // redist19_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_1(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_1_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_1_q <= $unsigned(i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata);
        end
    end

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_wraddr(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_wraddr_q <= $unsigned(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem(DUALMEM,332)
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_ia = $unsigned(redist19_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_1_q);
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_aa = redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_wraddr_q;
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_ab = redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_rdcnt_q;
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(16),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_aa),
        .data_a(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_ab),
        .q_b(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_iq),
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
    assign redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_q = redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_iq[15:0];

    // c_i16_796(CONSTANT,18)
    assign c_i16_796_q = $unsigned(16'b0000000000000111);

    // c_i16_3993(CONSTANT,14)
    assign c_i16_3993_q = $unsigned(16'b1111111111011001);

    // c_i16_9292(CONSTANT,19)
    assign c_i16_9292_q = $unsigned(16'b0000000001011100);

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,196)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(c_i16_9292_q);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add54_sgfilter21(ADD,57)@10
    assign i_dot_prod_add54_sgfilter21_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod53_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add54_sgfilter21_b = {1'b0, c_i16_3993_q};
    assign i_dot_prod_add54_sgfilter21_o = $unsigned(i_dot_prod_add54_sgfilter21_a) + $unsigned(i_dot_prod_add54_sgfilter21_b);
    assign i_dot_prod_add54_sgfilter21_q = i_dot_prod_add54_sgfilter21_o[16:0];

    // bgTrunc_i_dot_prod_add54_sgfilter21_sel_x(BITSELECT,102)@10
    assign bgTrunc_i_dot_prod_add54_sgfilter21_sel_x_b = i_dot_prod_add54_sgfilter21_q[15:0];

    // leftShiftStage0Idx1Rng1_uid282_i_unnamed_sgfilter0_shift_x(BITSELECT,281)@9
    assign leftShiftStage0Idx1Rng1_uid282_i_unnamed_sgfilter0_shift_x_in = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata[14:0];
    assign leftShiftStage0Idx1Rng1_uid282_i_unnamed_sgfilter0_shift_x_b = leftShiftStage0Idx1Rng1_uid282_i_unnamed_sgfilter0_shift_x_in[14:0];

    // leftShiftStage0Idx1_uid283_i_unnamed_sgfilter0_shift_x(BITJOIN,282)@9
    assign leftShiftStage0Idx1_uid283_i_unnamed_sgfilter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid282_i_unnamed_sgfilter0_shift_x_b, GND_q};

    // leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x(MUX,284)@9
    assign leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_s or i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata or leftShiftStage0Idx1_uid283_i_unnamed_sgfilter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_s)
            1'b0 : leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_q = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata;
            1'b1 : leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_q = leftShiftStage0Idx1_uid283_i_unnamed_sgfilter0_shift_x_q;
            default : leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_sgfilter24_vt_select_15(BITSELECT,91)@9
    assign i_unnamed_sgfilter24_vt_select_15_b = leftShiftStage0_uid285_i_unnamed_sgfilter0_shift_x_q[15:1];

    // i_unnamed_sgfilter24_vt_join(BITJOIN,90)@9
    assign i_unnamed_sgfilter24_vt_join_q = {i_unnamed_sgfilter24_vt_select_15_b, GND_q};

    // i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1(ADD,184)@9
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_a = {1'b0, c_i16_796_q};
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_b = {1'b0, i_unnamed_sgfilter24_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_o = $unsigned(i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_b);
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_q = i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_o[16:0];

    // leftShiftStage0Idx1Rng2_uid290_dupName_0_i_unnamed_sgfilter0_shift_x(BITSELECT,289)@9
    assign leftShiftStage0Idx1Rng2_uid290_dupName_0_i_unnamed_sgfilter0_shift_x_in = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata[13:0];
    assign leftShiftStage0Idx1Rng2_uid290_dupName_0_i_unnamed_sgfilter0_shift_x_b = leftShiftStage0Idx1Rng2_uid290_dupName_0_i_unnamed_sgfilter0_shift_x_in[13:0];

    // leftShiftStage0Idx1_uid291_dupName_0_i_unnamed_sgfilter0_shift_x(BITJOIN,290)@9
    assign leftShiftStage0Idx1_uid291_dupName_0_i_unnamed_sgfilter0_shift_x_q = {leftShiftStage0Idx1Rng2_uid290_dupName_0_i_unnamed_sgfilter0_shift_x_b, i_unnamed_sgfilter25_vt_const_1_q};

    // leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x(MUX,292)@9
    assign leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_s or i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata or leftShiftStage0Idx1_uid291_dupName_0_i_unnamed_sgfilter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_s)
            1'b0 : leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_q = i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata;
            1'b1 : leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_q = leftShiftStage0Idx1_uid291_dupName_0_i_unnamed_sgfilter0_shift_x_q;
            default : leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_sgfilter25_vt_select_15(BITSELECT,94)@9
    assign i_unnamed_sgfilter25_vt_select_15_b = leftShiftStage0_uid293_dupName_0_i_unnamed_sgfilter0_shift_x_q[15:2];

    // i_unnamed_sgfilter25_vt_const_1(CONSTANT,92)
    assign i_unnamed_sgfilter25_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_sgfilter25_vt_join(BITJOIN,93)@9
    assign i_unnamed_sgfilter25_vt_join_q = {i_unnamed_sgfilter25_vt_select_15_b, i_unnamed_sgfilter25_vt_const_1_q};

    // i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0(ADD,183)@9
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_a = {1'b0, i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata};
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_b = {1'b0, i_unnamed_sgfilter25_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_b);
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_q = i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_o[16:0];

    // i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0(ADD,185)@9 + 1
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_a = i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_0_q[15:0];
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_b = i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_0_1_q[15:0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_o <= 16'b0;
        end
        else
        begin
            i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_o <= $unsigned(i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_b);
        end
    end
    assign i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_q = i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_o[15:0];

    // c_i16_7698(CONSTANT,17)
    assign c_i16_7698_q = $unsigned(16'b1111111110110100);

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,197)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(c_i16_7698_q);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add61_sgfilter36(ADD,58)@10
    assign i_dot_prod_add61_sgfilter36_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod60_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add61_sgfilter36_b = {1'b0, i_llvm_experimental_vector_reduce_add_v4i16_add_red_sgfilter33_vunroll_re_add_1_0_q};
    assign i_dot_prod_add61_sgfilter36_o = $unsigned(i_dot_prod_add61_sgfilter36_a) + $unsigned(i_dot_prod_add61_sgfilter36_b);
    assign i_dot_prod_add61_sgfilter36_q = i_dot_prod_add61_sgfilter36_o[16:0];

    // bgTrunc_i_dot_prod_add61_sgfilter36_sel_x(BITSELECT,103)@10
    assign bgTrunc_i_dot_prod_add61_sgfilter36_sel_x_b = i_dot_prod_add61_sgfilter36_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,199)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_dot_prod_add61_sgfilter36_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist19_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_1_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(bgTrunc_i_dot_prod_add54_sgfilter21_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(redist21_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_3_q);
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .by_clock("0"),
        .by_width(16),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(16),
        .bx_width(16),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // i_dot_prod_add67_sgfilter44(ADD,59)@13
    assign i_dot_prod_add67_sgfilter44_a = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add67_sgfilter44_b = {1'b0, c_i16_796_q};
    assign i_dot_prod_add67_sgfilter44_o = $unsigned(i_dot_prod_add67_sgfilter44_a) + $unsigned(i_dot_prod_add67_sgfilter44_b);
    assign i_dot_prod_add67_sgfilter44_q = i_dot_prod_add67_sgfilter44_o[16:0];

    // bgTrunc_i_dot_prod_add67_sgfilter44_sel_x(BITSELECT,104)@13
    assign bgTrunc_i_dot_prod_add67_sgfilter44_sel_x_b = i_dot_prod_add67_sgfilter44_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,200)@13 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_dot_prod_add67_sgfilter44_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist20_i_llvm_fpga_mem_unnamed_sgfilter8_sgfilter23_out_o_readdata_4_mem_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(bgTrunc_i_dot_prod_add50_sgfilter18_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(redist22_i_llvm_fpga_mem_unnamed_sgfilter7_sgfilter11_out_o_readdata_6_mem_q);
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .by_clock("0"),
        .by_width(16),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(16),
        .bx_width(16),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // i_dot_prod_add73_sgfilter52(ADD,60)@16
    assign i_dot_prod_add73_sgfilter52_a = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_sgfilter0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add73_sgfilter52_b = {1'b0, c_i16_7599_q};
    assign i_dot_prod_add73_sgfilter52_o = $unsigned(i_dot_prod_add73_sgfilter52_a) + $unsigned(i_dot_prod_add73_sgfilter52_b);
    assign i_dot_prod_add73_sgfilter52_q = i_dot_prod_add73_sgfilter52_o[16:0];

    // bgTrunc_i_dot_prod_add73_sgfilter52_sel_x(BITSELECT,105)@16
    assign bgTrunc_i_dot_prod_add73_sgfilter52_sel_x_b = i_dot_prod_add73_sgfilter52_q[15:0];

    // redist9_sync_together118_aunroll_x_in_i_valid_14(DELAY,316)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together118_aunroll_x_in_i_valid_14 ( .xin(redist8_sync_together118_aunroll_x_in_i_valid_3_q), .xout(redist9_sync_together118_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,191)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist9_sync_together118_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist12_i_xor_sgfilter4_q_14(DELAY,319)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_xor_sgfilter4_q_14 ( .xin(redist11_i_xor_sgfilter4_q_3_q), .xout(redist12_i_xor_sgfilter4_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_notEnable(LOGICAL,355)
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_nor(LOGICAL,356)
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_nor_q = ~ (redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_notEnable_q | redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_sticky_ena_q);

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_last(CONSTANT,352)
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_last_q = $unsigned(5'b01000);

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmp(LOGICAL,353)
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmp_b = {1'b0, redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_q};
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmp_q = $unsigned(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_last_q == redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmp_b ? 1'b1 : 1'b0);

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmpReg(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmpReg_q <= $unsigned(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmp_q);
        end
    end

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_sticky_ena(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_nor_q == 1'b1)
        begin
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_sticky_ena_q <= $unsigned(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_cmpReg_q);
        end
    end

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_enaAnd(LOGICAL,358)
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_enaAnd_q = redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_sticky_ena_q & VCC_q;

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt(COUNTER,350)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i <= 4'd0;
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i == 4'd8)
            begin
                redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_eq <= 1'b0;
            end
            if (redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_eq == 1'b1)
            begin
                redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i <= $unsigned(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i <= $unsigned(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_q = redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_i[3:0];

    // i_arrayidx607_sgfilter0_mult_x_im0_shift0(BITSHIFT,302)@5
    assign i_arrayidx607_sgfilter0_mult_x_im0_shift0_qint = { redist0_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_b_2_q, 1'b0 };
    assign i_arrayidx607_sgfilter0_mult_x_im0_shift0_q = i_arrayidx607_sgfilter0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx607_sgfilter0_mult_x_sums_align_3(BITSHIFT,267)@5
    assign i_arrayidx607_sgfilter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx607_sgfilter0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx607_sgfilter0_mult_x_sums_align_3_q = i_arrayidx607_sgfilter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx607_sgfilter0_mult_x_im6_shift0(BITSHIFT,304)@5
    assign i_arrayidx607_sgfilter0_mult_x_im6_shift0_qint = { redist2_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_d_2_q, 1'b0 };
    assign i_arrayidx607_sgfilter0_mult_x_im6_shift0_q = i_arrayidx607_sgfilter0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx607_sgfilter0_mult_x_sums_align_2(BITSHIFT,266)@5
    assign i_arrayidx607_sgfilter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx607_sgfilter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx607_sgfilter0_mult_x_sums_align_2_q = i_arrayidx607_sgfilter0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx607_sgfilter0_mult_x_sums_join_4(BITJOIN,268)@5
    assign i_arrayidx607_sgfilter0_mult_x_sums_join_4_q = {i_arrayidx607_sgfilter0_mult_x_sums_align_3_q, i_arrayidx607_sgfilter0_mult_x_sums_align_2_q};

    // i_arrayidx607_sgfilter0_mult_x_im3_shift0(BITSHIFT,303)@5
    assign i_arrayidx607_sgfilter0_mult_x_im3_shift0_qint = { redist1_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_c_2_q, 1'b0 };
    assign i_arrayidx607_sgfilter0_mult_x_im3_shift0_q = i_arrayidx607_sgfilter0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx607_sgfilter0_mult_x_sums_align_0(BITSHIFT,264)@5
    assign i_arrayidx607_sgfilter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx607_sgfilter0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx607_sgfilter0_mult_x_sums_align_0_q = i_arrayidx607_sgfilter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx607_sgfilter0_mult_x_im9_shift0(BITSHIFT,305)@5
    assign i_arrayidx607_sgfilter0_mult_x_im9_shift0_qint = { redist3_i_arrayidx175_sgfilter0_mult_x_bs1_merged_bit_select_e_2_q, 1'b0 };
    assign i_arrayidx607_sgfilter0_mult_x_im9_shift0_q = i_arrayidx607_sgfilter0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx607_sgfilter0_mult_x_sums_join_1(BITJOIN,265)@5
    assign i_arrayidx607_sgfilter0_mult_x_sums_join_1_q = {i_arrayidx607_sgfilter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx607_sgfilter0_mult_x_im9_shift0_q}};

    // i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0(ADD,269)@5
    assign i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx607_sgfilter0_mult_x_sums_join_1_q};
    assign i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx607_sgfilter0_mult_x_sums_join_4_q};
    assign i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_q = i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx607_sgfilter0_mult_extender_x(BITJOIN,141)@5
    assign i_arrayidx607_sgfilter0_mult_extender_x_q = {i_arrayidx175_sgfilter0_mult_multconst_x_q, i_arrayidx607_sgfilter0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx607_sgfilter0_trunc_sel_x(BITSELECT,143)@5
    assign i_arrayidx607_sgfilter0_trunc_sel_x_b = i_arrayidx607_sgfilter0_mult_extender_x_q[63:0];

    // c_sgfilter_OUT_pmem(CONSTANT,39)
    assign c_sgfilter_OUT_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx607_sgfilter0_add_x(ADD,135)@5
    assign i_arrayidx607_sgfilter0_add_x_a = {1'b0, c_sgfilter_OUT_pmem_q};
    assign i_arrayidx607_sgfilter0_add_x_b = {1'b0, i_arrayidx607_sgfilter0_trunc_sel_x_b};
    assign i_arrayidx607_sgfilter0_add_x_o = $unsigned(i_arrayidx607_sgfilter0_add_x_a) + $unsigned(i_arrayidx607_sgfilter0_add_x_b);
    assign i_arrayidx607_sgfilter0_add_x_q = i_arrayidx607_sgfilter0_add_x_o[64:0];

    // i_arrayidx607_sgfilter0_dupName_0_trunc_sel_x(BITSELECT,144)@5
    assign i_arrayidx607_sgfilter0_dupName_0_trunc_sel_x_b = i_arrayidx607_sgfilter0_add_x_q[63:0];

    // i_arrayidx607_sgfilter53_vt_select_63(BITSELECT,52)@5
    assign i_arrayidx607_sgfilter53_vt_select_63_b = i_arrayidx607_sgfilter0_dupName_0_trunc_sel_x_b[63:1];

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_wraddr(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_wraddr_q <= $unsigned(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_q);
        end
    end

    // redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem(DUALMEM,349)
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_ia = $unsigned(i_arrayidx607_sgfilter53_vt_select_63_b);
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_aa = redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_wraddr_q;
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_ab = redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_rdcnt_q;
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(63),
        .widthad_a(4),
        .numwords_a(10),
        .width_b(63),
        .widthad_b(4),
        .numwords_b(10),
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
    ) redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_dmem (
        .clocken1(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_reset0),
        .clock1(clock),
        .address_a(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_aa),
        .data_a(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_ab),
        .q_b(redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_iq),
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
    assign redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_q = redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_iq[62:0];

    // i_arrayidx607_sgfilter53_vt_join(BITJOIN,51)@16
    assign i_arrayidx607_sgfilter53_vt_join_q = {redist24_i_arrayidx607_sgfilter53_vt_select_63_b_11_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_3_sgfilter54(BLACKBOX,71)@16
    // out out_memdep_3_sgfilter_avm_address@20000000
    // out out_memdep_3_sgfilter_avm_burstcount@20000000
    // out out_memdep_3_sgfilter_avm_byteenable@20000000
    // out out_memdep_3_sgfilter_avm_enable@20000000
    // out out_memdep_3_sgfilter_avm_read@20000000
    // out out_memdep_3_sgfilter_avm_write@20000000
    // out out_memdep_3_sgfilter_avm_writedata@20000000
    // out out_o_stall@17
    // out out_o_valid@17
    // out out_o_writeack@17
    sgfilter_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_sgfilter54 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx607_sgfilter53_vt_join_q),
        .in_i_predicate(redist12_i_xor_sgfilter4_q_14_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(bgTrunc_i_dot_prod_add73_sgfilter52_sel_x_b),
        .in_memdep_3_sgfilter_avm_readdata(in_memdep_3_sgfilter_avm_readdata),
        .in_memdep_3_sgfilter_avm_readdatavalid(in_memdep_3_sgfilter_avm_readdatavalid),
        .in_memdep_3_sgfilter_avm_waitrequest(in_memdep_3_sgfilter_avm_waitrequest),
        .in_memdep_3_sgfilter_avm_writeack(in_memdep_3_sgfilter_avm_writeack),
        .out_memdep_3_sgfilter_avm_address(i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_address),
        .out_memdep_3_sgfilter_avm_burstcount(i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_burstcount),
        .out_memdep_3_sgfilter_avm_byteenable(i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_byteenable),
        .out_memdep_3_sgfilter_avm_enable(i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_enable),
        .out_memdep_3_sgfilter_avm_read(i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_read),
        .out_memdep_3_sgfilter_avm_write(i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_write),
        .out_memdep_3_sgfilter_avm_writedata(i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,114)
    assign out_memdep_3_sgfilter_avm_address = i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_address;
    assign out_memdep_3_sgfilter_avm_enable = i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_enable;
    assign out_memdep_3_sgfilter_avm_read = i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_read;
    assign out_memdep_3_sgfilter_avm_write = i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_write;
    assign out_memdep_3_sgfilter_avm_writedata = i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_writedata;
    assign out_memdep_3_sgfilter_avm_byteenable = i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_byteenable;
    assign out_memdep_3_sgfilter_avm_burstcount = i_llvm_fpga_mem_memdep_3_sgfilter54_out_memdep_3_sgfilter_avm_burstcount;

    // valid_fanout_reg0(REG,186)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together118_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist4_valid_fanout_reg0_q_1(DELAY,311)
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

    // valid_fanout_reg7(REG,193)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,194)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist7_sync_together118_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_2(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_2_q <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69(BLACKBOX,81)@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    sgfilter_i_llvm_fpga_push_i1_notcmp1745_push18_0 thei_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69 (
        .in_data_in(redist14_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_feedback_stall_out_18),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together118_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together118_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together118_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68(BLACKBOX,76)@2
    // out out_feedback_stall_out_18@20000000
    sgfilter_i_llvm_fpga_pop_i1_notcmp1745_pop18_0 thei_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68 (
        .in_data_in(redist6_sync_together118_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist5_sync_together118_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp1745_push18_sgfilter69_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_1(DELAY,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out);
        end
    end

    // redist15_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_15(DELAY,322)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_15 ( .xin(redist14_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_1_q), .xout(redist15_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_sgfilter67(LOGICAL,85)@2 + 1
    assign i_masked_sgfilter67_qi = i_notcmp_sgfilter60_q & i_first_cleanup_sgfilter3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_sgfilter67_delay ( .xin(i_masked_sgfilter67_qi), .xout(i_masked_sgfilter67_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_masked_sgfilter67_q_15(DELAY,320)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_masked_sgfilter67_q_15 ( .xin(i_masked_sgfilter67_q), .xout(redist13_i_masked_sgfilter67_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_16(DELAY,325)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_16 ( .xin(redist17_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_2_q), .xout(redist18_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,177)@17
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist18_i_llvm_fpga_pipeline_keep_going_sgfilter6_out_data_out_16_q;
    assign out_c0_exi3_2_tpl = redist13_i_masked_sgfilter67_q_15_q;
    assign out_c0_exi3_3_tpl = redist15_i_llvm_fpga_pop_i1_notcmp1745_pop18_sgfilter68_out_data_out_15_q;
    assign out_o_valid = redist4_valid_fanout_reg0_q_1_q;
    assign out_unnamed_sgfilter1 = GND_q;

endmodule
