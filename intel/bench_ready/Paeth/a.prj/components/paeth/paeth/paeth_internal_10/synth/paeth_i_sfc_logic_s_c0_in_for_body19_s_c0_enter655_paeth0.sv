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

// SystemVerilog created from paeth_i_sfc_logic_s_c0_in_for_body19_s_c0_enter655_paeth0
// SystemVerilog created on Sun Apr 19 21:42:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module paeth_i_sfc_logic_s_c0_in_for_body19_s_c0_enter655_paeth0 (
    input wire [15:0] in_unnamed_paeth7_paeth_avm_readdata,
    input wire [0:0] in_unnamed_paeth7_paeth_avm_writeack,
    input wire [0:0] in_unnamed_paeth7_paeth_avm_waitrequest,
    input wire [0:0] in_unnamed_paeth7_paeth_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_paeth6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_paeth6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_unnamed_paeth8_paeth_avm_readdata,
    input wire [0:0] in_unnamed_paeth8_paeth_avm_writeack,
    input wire [0:0] in_unnamed_paeth8_paeth_avm_waitrequest,
    input wire [0:0] in_unnamed_paeth8_paeth_avm_readdatavalid,
    output wire [31:0] out_unnamed_paeth7_paeth_avm_address,
    output wire [0:0] out_unnamed_paeth7_paeth_avm_enable,
    output wire [0:0] out_unnamed_paeth7_paeth_avm_read,
    output wire [0:0] out_unnamed_paeth7_paeth_avm_write,
    output wire [15:0] out_unnamed_paeth7_paeth_avm_writedata,
    output wire [1:0] out_unnamed_paeth7_paeth_avm_byteenable,
    output wire [0:0] out_unnamed_paeth7_paeth_avm_burstcount,
    input wire [15:0] in_unnamed_paeth9_paeth_avm_readdata,
    input wire [0:0] in_unnamed_paeth9_paeth_avm_writeack,
    input wire [0:0] in_unnamed_paeth9_paeth_avm_waitrequest,
    input wire [0:0] in_unnamed_paeth9_paeth_avm_readdatavalid,
    output wire [31:0] out_unnamed_paeth8_paeth_avm_address,
    output wire [0:0] out_unnamed_paeth8_paeth_avm_enable,
    output wire [0:0] out_unnamed_paeth8_paeth_avm_read,
    output wire [0:0] out_unnamed_paeth8_paeth_avm_write,
    output wire [15:0] out_unnamed_paeth8_paeth_avm_writedata,
    output wire [1:0] out_unnamed_paeth8_paeth_avm_byteenable,
    output wire [0:0] out_unnamed_paeth8_paeth_avm_burstcount,
    input wire [15:0] in_memdep_4_paeth_avm_readdata,
    input wire [0:0] in_memdep_4_paeth_avm_writeack,
    input wire [0:0] in_memdep_4_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_4_paeth_avm_readdatavalid,
    output wire [31:0] out_unnamed_paeth9_paeth_avm_address,
    output wire [0:0] out_unnamed_paeth9_paeth_avm_enable,
    output wire [0:0] out_unnamed_paeth9_paeth_avm_read,
    output wire [0:0] out_unnamed_paeth9_paeth_avm_write,
    output wire [15:0] out_unnamed_paeth9_paeth_avm_writedata,
    output wire [1:0] out_unnamed_paeth9_paeth_avm_byteenable,
    output wire [0:0] out_unnamed_paeth9_paeth_avm_burstcount,
    output wire [31:0] out_memdep_4_paeth_avm_address,
    output wire [0:0] out_memdep_4_paeth_avm_enable,
    output wire [0:0] out_memdep_4_paeth_avm_read,
    output wire [0:0] out_memdep_4_paeth_avm_write,
    output wire [15:0] out_memdep_4_paeth_avm_writedata,
    output wire [1:0] out_memdep_4_paeth_avm_byteenable,
    output wire [0:0] out_memdep_4_paeth_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_paeth1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102292_q;
    wire [10:0] c_i11_194_q;
    wire [1:0] c_i2_188_q;
    wire [31:0] c_i32_090_q;
    wire [31:0] c_i32_191_q;
    wire [63:0] c_paeth_a_pmem_q;
    wire [63:0] c_paeth_b_pmem_q;
    wire [63:0] c_paeth_c_pmem_q;
    wire [63:0] c_paeth_out_pmem_q;
    wire [0:0] i_acl_12_demorgan_paeth50_q;
    wire [0:0] i_acl_paeth49_q;
    wire [63:0] i_arrayidx215_paeth10_vt_join_q;
    wire [62:0] i_arrayidx215_paeth10_vt_select_63_b;
    wire [63:0] i_arrayidx246_paeth13_vt_join_q;
    wire [62:0] i_arrayidx246_paeth13_vt_select_63_b;
    wire [63:0] i_arrayidx297_paeth23_vt_join_q;
    wire [62:0] i_arrayidx297_paeth23_vt_select_63_b;
    wire [63:0] i_arrayidx6810_paeth45_vt_join_q;
    wire [62:0] i_arrayidx6810_paeth45_vt_select_63_b;
    wire [1:0] i_cleanups_shl_paeth5_vt_join_q;
    wire [0:0] i_cleanups_shl_paeth5_vt_select_1_b;
    wire [33:0] i_cmp57_paeth40_a;
    wire [33:0] i_cmp57_paeth40_b;
    logic [33:0] i_cmp57_paeth40_o;
    wire [0:0] i_cmp57_paeth40_n;
    wire [33:0] i_cmp58_paeth42_a;
    wire [33:0] i_cmp58_paeth42_b;
    logic [33:0] i_cmp58_paeth42_o;
    wire [0:0] i_cmp58_paeth42_n;
    wire [33:0] i_cmp60_paeth47_a;
    wire [33:0] i_cmp60_paeth47_b;
    logic [33:0] i_cmp60_paeth47_o;
    wire [0:0] i_cmp60_paeth47_c;
    wire [15:0] i_conv22_paeth12_vt_const_31_q;
    wire [31:0] i_conv22_paeth12_vt_join_q;
    wire [15:0] i_conv22_paeth12_vt_select_15_b;
    wire [31:0] i_conv25_paeth15_vt_join_q;
    wire [15:0] i_conv25_paeth15_vt_select_15_b;
    wire [31:0] i_conv30_paeth25_vt_join_q;
    wire [15:0] i_conv30_paeth25_vt_select_15_b;
    wire [0:0] i_first_cleanup_xor15_or_paeth55_q;
    wire [11:0] i_fpga_indvars_iv_next6_paeth67_a;
    wire [11:0] i_fpga_indvars_iv_next6_paeth67_b;
    logic [11:0] i_fpga_indvars_iv_next6_paeth67_o;
    wire [11:0] i_fpga_indvars_iv_next6_paeth67_q;
    wire [63:0] i_idxprom20_paeth9_vt_join_q;
    wire [31:0] i_idxprom20_paeth9_vt_select_31_b;
    wire [32:0] i_inc82_paeth57_a;
    wire [32:0] i_inc82_paeth57_b;
    logic [32:0] i_inc82_paeth57_o;
    wire [32:0] i_inc82_paeth57_q;
    wire [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_a;
    wire [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_b;
    logic [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_o;
    wire [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_q;
    wire [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_a;
    wire [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_b;
    logic [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_o;
    wire [16:0] i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_q;
    wire [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_a;
    wire [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_b;
    logic [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_o;
    wire [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_q;
    wire [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_a;
    wire [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_b;
    logic [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_o;
    wire [17:0] i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_q;
    wire [31:0] i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_paeth6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_paeth6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_paeth6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_paeth6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_paeth6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_paeth7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_paeth7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1645_push18_paeth71_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1645_push18_paeth71_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_paeth63_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_paeth63_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_paeth66_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_paeth66_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k15_039_push16_paeth58_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k15_039_push16_paeth58_out_feedback_valid_out_16;
    wire [0:0] i_masked_paeth69_qi;
    reg [0:0] i_masked_paeth69_q;
    wire [14:0] i_mul_paeth33_vt_const_31_q;
    wire [31:0] i_mul_paeth33_vt_join_q;
    wire [15:0] i_mul_paeth33_vt_select_16_b;
    wire [0:0] i_next_cleanups_paeth65_s;
    reg [1:0] i_next_cleanups_paeth65_q;
    wire [0:0] i_notcmp_paeth62_q;
    wire [0:0] i_or12_paeth64_q;
    wire [31:0] i_or_paeth35_q;
    wire [0:0] i_pred_sel14_paeth53_s;
    reg [0:0] i_pred_sel14_paeth53_q;
    wire [0:0] i_pred_sel_paeth51_qi;
    reg [0:0] i_pred_sel_paeth51_q;
    wire [32:0] i_sub50_paeth34_a;
    wire [32:0] i_sub50_paeth34_b;
    logic [32:0] i_sub50_paeth34_o;
    wire [32:0] i_sub50_paeth34_q;
    wire [32:0] i_sub53_paeth38_a;
    wire [32:0] i_sub53_paeth38_b;
    logic [32:0] i_sub53_paeth38_o;
    wire [32:0] i_sub53_paeth38_q;
    wire [0:0] i_unnamed_paeth22_s;
    reg [31:0] i_unnamed_paeth22_q;
    wire [0:0] i_unnamed_paeth32_s;
    reg [31:0] i_unnamed_paeth32_q;
    wire [0:0] i_unnamed_paeth39_s;
    reg [31:0] i_unnamed_paeth39_q;
    wire [31:0] i_unnamed_paeth39_vt_join_q;
    wire [30:0] i_unnamed_paeth39_vt_select_30_b;
    wire [0:0] i_unnamed_paeth44_q;
    wire [0:0] i_unnamed_paeth46_q;
    wire [0:0] i_val16_paeth54_s;
    reg [15:0] i_val16_paeth54_q;
    wire [0:0] i_val_paeth52_s;
    reg [15:0] i_val_paeth52_q;
    wire [0:0] i_xor_paeth4_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next6_paeth67_sel_x_b;
    wire [31:0] bgTrunc_i_inc82_paeth57_sel_x_b;
    wire [31:0] bgTrunc_i_sub50_paeth34_sel_x_b;
    wire [31:0] bgTrunc_i_sub53_paeth38_sel_x_b;
    wire [64:0] i_arrayidx215_paeth0_add_x_a;
    wire [64:0] i_arrayidx215_paeth0_add_x_b;
    logic [64:0] i_arrayidx215_paeth0_add_x_o;
    wire [64:0] i_arrayidx215_paeth0_add_x_q;
    wire [127:0] i_arrayidx215_paeth0_mult_extender_x_q;
    wire [61:0] i_arrayidx215_paeth0_mult_multconst_x_q;
    wire [63:0] i_arrayidx215_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx215_paeth0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx246_paeth0_add_x_a;
    wire [64:0] i_arrayidx246_paeth0_add_x_b;
    logic [64:0] i_arrayidx246_paeth0_add_x_o;
    wire [64:0] i_arrayidx246_paeth0_add_x_q;
    wire [127:0] i_arrayidx246_paeth0_mult_extender_x_q;
    wire [63:0] i_arrayidx246_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx246_paeth0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx297_paeth0_add_x_a;
    wire [64:0] i_arrayidx297_paeth0_add_x_b;
    logic [64:0] i_arrayidx297_paeth0_add_x_o;
    wire [64:0] i_arrayidx297_paeth0_add_x_q;
    wire [127:0] i_arrayidx297_paeth0_mult_extender_x_q;
    wire [63:0] i_arrayidx297_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx297_paeth0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx6810_paeth0_add_x_a;
    wire [64:0] i_arrayidx6810_paeth0_add_x_b;
    logic [64:0] i_arrayidx6810_paeth0_add_x_o;
    wire [64:0] i_arrayidx6810_paeth0_add_x_q;
    wire [127:0] i_arrayidx6810_paeth0_mult_extender_x_q;
    wire [63:0] i_arrayidx6810_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx6810_paeth0_dupName_0_trunc_sel_x_b;
    wire [31:0] i_conv22_paeth12_sel_x_b;
    wire [31:0] i_conv25_paeth15_sel_x_b;
    wire [31:0] i_conv30_paeth25_sel_x_b;
    wire [0:0] i_first_cleanup_paeth3_sel_x_b;
    wire [63:0] i_idxprom20_paeth9_sel_x_b;
    wire [31:0] i_sub27_sext_paeth21_sel_x_b;
    wire [31:0] i_sub34_sext_paeth27_sel_x_b;
    wire [31:0] i_sub37_sext_paeth31_sel_x_b;
    wire [31:0] i_sub_sext_paeth17_sel_x_b;
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
    wire [0:0] i_cmp26_paeth18_cmp_sign_q;
    wire [0:0] i_cmp35_paeth28_cmp_sign_q;
    wire [0:0] i_cmp51_paeth36_cmp_sign_q;
    wire [0:0] i_exitcond7_paeth60_cmp_nsign_q;
    wire [35:0] i_arrayidx215_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx215_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx215_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx215_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx215_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx215_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx215_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx215_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx246_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx246_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx246_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx246_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx246_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx246_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx246_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx246_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx297_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx297_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx297_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx297_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx297_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx297_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx297_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx297_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx6810_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx6810_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx6810_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx6810_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx6810_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx6810_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx6810_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx6810_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid325_i_cleanups_shl_paeth0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid325_i_cleanups_shl_paeth0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid326_i_cleanups_shl_paeth0_shift_x_q;
    wire [0:0] leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_s;
    reg [1:0] leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid333_i_mul_paeth0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid333_i_mul_paeth0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid334_i_mul_paeth0_shift_x_q;
    wire [0:0] leftShiftStage0_uid336_i_mul_paeth0_shift_x_s;
    reg [31:0] leftShiftStage0_uid336_i_mul_paeth0_shift_x_q;
    wire [10:0] i_arrayidx215_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx215_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx215_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx215_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx215_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx215_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx215_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx215_paeth0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx246_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx246_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx246_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx246_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx246_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx246_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx246_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx246_paeth0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx297_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx297_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx297_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx297_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx297_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx297_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx297_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx297_paeth0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx6810_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx6810_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx6810_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx6810_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx6810_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx6810_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx6810_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx6810_paeth0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e;
    reg [9:0] redist0_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b_1_q;
    reg [17:0] redist1_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c_1_q;
    reg [17:0] redist2_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d_1_q;
    reg [17:0] redist3_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e_1_q;
    reg [0:0] redist4_valid_fanout_reg0_q_1_q;
    reg [0:0] redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist6_sync_together109_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist7_sync_together109_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together109_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist9_sync_together109_aunroll_x_in_i_valid_8_q;
    reg [31:0] redist10_bgTrunc_i_sub50_paeth34_sel_x_b_1_q;
    reg [0:0] redist11_i_xor_paeth4_q_1_q;
    reg [0:0] redist12_i_xor_paeth4_q_2_q;
    reg [0:0] redist13_i_xor_paeth4_q_8_q;
    reg [0:0] redist14_i_unnamed_paeth46_q_1_q;
    reg [0:0] redist15_i_unnamed_paeth44_q_1_q;
    reg [30:0] redist16_i_unnamed_paeth39_vt_select_30_b_1_q;
    reg [0:0] redist17_i_masked_paeth69_q_9_q;
    reg [31:0] redist18_i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out_9_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_2_q;
    reg [0:0] redist22_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_10_q;
    reg [15:0] redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_q;
    reg [15:0] redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_delay_0;
    reg [15:0] redist24_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_1_q;
    reg [15:0] redist25_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_2_q;
    reg [15:0] redist26_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_1_q;
    reg [15:0] redist27_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_2_q;
    wire redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_reset0;
    wire [62:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_ia;
    wire [2:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_aa;
    wire [2:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_ab;
    wire [62:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_iq;
    wire [62:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_q;
    wire [2:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_q;
    (* preserve *) reg [2:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i;
    (* preserve *) reg redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_eq;
    reg [2:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_wraddr_q;
    wire [2:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_last_q;
    wire [0:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmp_q;
    (* dont_merge *) reg [0:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmpReg_q;
    wire [0:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_notEnable_q;
    wire [0:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_nor_q;
    (* dont_merge *) reg [0:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_sticky_ena_q;
    wire [0:0] redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together109_aunroll_x_in_i_valid_1(DELAY,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together109_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together109_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid325_i_cleanups_shl_paeth0_shift_x(BITSELECT,324)@2
    assign leftShiftStage0Idx1Rng1_uid325_i_cleanups_shl_paeth0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid325_i_cleanups_shl_paeth0_shift_x_b = leftShiftStage0Idx1Rng1_uid325_i_cleanups_shl_paeth0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid326_i_cleanups_shl_paeth0_shift_x(BITJOIN,325)@2
    assign leftShiftStage0Idx1_uid326_i_cleanups_shl_paeth0_shift_x_q = {leftShiftStage0Idx1Rng1_uid325_i_cleanups_shl_paeth0_shift_x_b, GND_q};

    // leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x(MUX,327)@2
    assign leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out or leftShiftStage0Idx1_uid326_i_cleanups_shl_paeth0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_s)
            1'b0 : leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out;
            1'b1 : leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_q = leftShiftStage0Idx1_uid326_i_cleanups_shl_paeth0_shift_x_q;
            default : leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_paeth5_vt_select_1(BITSELECT,49)@2
    assign i_cleanups_shl_paeth5_vt_select_1_b = leftShiftStage0_uid328_i_cleanups_shl_paeth0_shift_x_q[1:1];

    // i_cleanups_shl_paeth5_vt_join(BITJOIN,48)@2
    assign i_cleanups_shl_paeth5_vt_join_q = {i_cleanups_shl_paeth5_vt_select_1_b, GND_q};

    // i_xor_paeth4(LOGICAL,127)@2
    assign i_xor_paeth4_q = i_first_cleanup_paeth3_sel_x_b ^ VCC_q;

    // i_notcmp_paeth62(LOGICAL,102)@2
    assign i_notcmp_paeth62_q = i_exitcond7_paeth60_cmp_nsign_q ^ VCC_q;

    // i_or12_paeth64(LOGICAL,103)@2
    assign i_or12_paeth64_q = i_notcmp_paeth62_q | i_xor_paeth4_q;

    // i_next_cleanups_paeth65(MUX,101)@2
    assign i_next_cleanups_paeth65_s = i_or12_paeth64_q;
    always @(i_next_cleanups_paeth65_s or i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out or i_cleanups_shl_paeth5_vt_join_q)
    begin
        unique case (i_next_cleanups_paeth65_s)
            1'b0 : i_next_cleanups_paeth65_q = i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out;
            1'b1 : i_next_cleanups_paeth65_q = i_cleanups_shl_paeth5_vt_join_q;
            default : i_next_cleanups_paeth65_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_paeth66(BLACKBOX,94)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    paeth_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_paeth66 (
        .in_data_in(i_next_cleanups_paeth65_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_feedback_stall_out_17),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together109_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_paeth66_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_paeth66_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_188(CONSTANT,24)
    assign c_i2_188_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_paeth2(BLACKBOX,88)@2
    // out out_feedback_stall_out_17@20000000
    paeth_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_paeth2 (
        .in_data_in(c_i2_188_q),
        .in_dir(redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_paeth66_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_paeth66_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together109_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_paeth3_sel_x(BITSELECT,204)@2
    assign i_first_cleanup_paeth3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_paeth2_out_data_out[0:0];

    // c_i11_194(CONSTANT,7)
    assign c_i11_194_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next6_paeth67(ADD,71)@2
    assign i_fpga_indvars_iv_next6_paeth67_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59_out_data_out};
    assign i_fpga_indvars_iv_next6_paeth67_b = {1'b0, c_i11_194_q};
    assign i_fpga_indvars_iv_next6_paeth67_o = $unsigned(i_fpga_indvars_iv_next6_paeth67_a) + $unsigned(i_fpga_indvars_iv_next6_paeth67_b);
    assign i_fpga_indvars_iv_next6_paeth67_q = i_fpga_indvars_iv_next6_paeth67_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next6_paeth67_sel_x(BITSELECT,140)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_paeth67_sel_x_b = i_fpga_indvars_iv_next6_paeth67_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68(BLACKBOX,90)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    paeth_i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_paeth67_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59_out_feedback_stall_out_15),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together109_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102292(CONSTANT,6)
    assign c_i11_102292_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59(BLACKBOX,86)@2
    // out out_feedback_stall_out_15@20000000
    paeth_i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59 (
        .in_data_in(c_i11_102292_q),
        .in_dir(redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_paeth68_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together109_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_paeth60_cmp_nsign(LOGICAL,248)@2
    assign i_exitcond7_paeth60_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_paeth59_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_paeth63(BLACKBOX,93)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    paeth_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_paeth63 (
        .in_data_in(i_exitcond7_paeth60_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_paeth6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_paeth3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together109_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_paeth63_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_paeth63_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,217)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_paeth7(BLACKBOX,91)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    paeth_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_paeth7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_paeth6_out_initeration_stall_out),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_paeth7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_paeth7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_paeth6(BLACKBOX,85)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    paeth_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_paeth6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_paeth7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_paeth7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_paeth63_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_paeth63_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_paeth6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_paeth6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_paeth6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_paeth6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_paeth6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,32)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_paeth6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_paeth6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_paeth6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_paeth6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,134)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_paeth6_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,219)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist7_sync_together109_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_i_xor_paeth4_q_1(DELAY,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_xor_paeth4_q_1_q <= '0;
        end
        else
        begin
            redist11_i_xor_paeth4_q_1_q <= $unsigned(i_xor_paeth4_q);
        end
    end

    // i_arrayidx215_paeth0_mult_multconst_x(CONSTANT,164)
    assign i_arrayidx215_paeth0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_090(CONSTANT,25)
    assign c_i32_090_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,218)@1 + 1
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

    // valid_fanout_reg7(REG,223)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist7_sync_together109_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist21_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_2(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_2_q <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q);
        end
    end

    // c_i32_191(CONSTANT,26)
    assign c_i32_191_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc82_paeth57(ADD,76)@3
    assign i_inc82_paeth57_a = {1'b0, redist18_i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out_1_q};
    assign i_inc82_paeth57_b = {1'b0, c_i32_191_q};
    assign i_inc82_paeth57_o = $unsigned(i_inc82_paeth57_a) + $unsigned(i_inc82_paeth57_b);
    assign i_inc82_paeth57_q = i_inc82_paeth57_o[32:0];

    // bgTrunc_i_inc82_paeth57_sel_x(BITSELECT,141)@3
    assign bgTrunc_i_inc82_paeth57_sel_x_b = i_inc82_paeth57_q[31:0];

    // i_llvm_fpga_push_i32_k15_039_push16_paeth58(BLACKBOX,95)@3
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    paeth_i_llvm_fpga_push_i32_k15_039_push16_0 thei_llvm_fpga_push_i32_k15_039_push16_paeth58 (
        .in_data_in(bgTrunc_i_inc82_paeth57_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_feedback_stall_out_16),
        .in_keep_going(redist21_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k15_039_push16_paeth58_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k15_039_push16_paeth58_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k15_039_pop16_paeth8(BLACKBOX,89)@2
    // out out_feedback_stall_out_16@20000000
    paeth_i_llvm_fpga_pop_i32_k15_039_pop16_0 thei_llvm_fpga_pop_i32_k15_039_pop16_paeth8 (
        .in_data_in(c_i32_090_q),
        .in_dir(redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k15_039_push16_paeth58_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k15_039_push16_paeth58_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out);
        end
    end

    // i_idxprom20_paeth9_sel_x(BITSELECT,205)@3
    assign i_idxprom20_paeth9_sel_x_b = {32'b00000000000000000000000000000000, redist18_i_llvm_fpga_pop_i32_k15_039_pop16_paeth8_out_data_out_1_q[31:0]};

    // i_idxprom20_paeth9_vt_select_31(BITSELECT,75)@3
    assign i_idxprom20_paeth9_vt_select_31_b = i_idxprom20_paeth9_sel_x_b[31:0];

    // i_idxprom20_paeth9_vt_join(BITJOIN,74)@3
    assign i_idxprom20_paeth9_vt_join_q = {c_i32_090_q, i_idxprom20_paeth9_vt_select_31_b};

    // i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select(BITSELECT,353)@3
    assign i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b = i_idxprom20_paeth9_vt_join_q[63:54];
    assign i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c = i_idxprom20_paeth9_vt_join_q[53:36];
    assign i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d = i_idxprom20_paeth9_vt_join_q[35:18];
    assign i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e = i_idxprom20_paeth9_vt_join_q[17:0];

    // i_arrayidx215_paeth0_mult_x_im0_shift0(BITSHIFT,337)@3
    assign i_arrayidx215_paeth0_mult_x_im0_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx215_paeth0_mult_x_im0_shift0_q = i_arrayidx215_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx215_paeth0_mult_x_sums_align_3(BITSHIFT,264)@3
    assign i_arrayidx215_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx215_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx215_paeth0_mult_x_sums_align_3_q = i_arrayidx215_paeth0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx215_paeth0_mult_x_im6_shift0(BITSHIFT,339)@3
    assign i_arrayidx215_paeth0_mult_x_im6_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx215_paeth0_mult_x_im6_shift0_q = i_arrayidx215_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx215_paeth0_mult_x_sums_align_2(BITSHIFT,263)@3
    assign i_arrayidx215_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx215_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx215_paeth0_mult_x_sums_align_2_q = i_arrayidx215_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx215_paeth0_mult_x_sums_join_4(BITJOIN,265)@3
    assign i_arrayidx215_paeth0_mult_x_sums_join_4_q = {i_arrayidx215_paeth0_mult_x_sums_align_3_q, i_arrayidx215_paeth0_mult_x_sums_align_2_q};

    // i_arrayidx215_paeth0_mult_x_im3_shift0(BITSHIFT,338)@3
    assign i_arrayidx215_paeth0_mult_x_im3_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx215_paeth0_mult_x_im3_shift0_q = i_arrayidx215_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx215_paeth0_mult_x_sums_align_0(BITSHIFT,261)@3
    assign i_arrayidx215_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx215_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx215_paeth0_mult_x_sums_align_0_q = i_arrayidx215_paeth0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx215_paeth0_mult_x_im9_shift0(BITSHIFT,340)@3
    assign i_arrayidx215_paeth0_mult_x_im9_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx215_paeth0_mult_x_im9_shift0_q = i_arrayidx215_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx215_paeth0_mult_x_sums_join_1(BITJOIN,262)@3
    assign i_arrayidx215_paeth0_mult_x_sums_join_1_q = {i_arrayidx215_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx215_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx215_paeth0_mult_x_sums_result_add_0_0(ADD,266)@3
    assign i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx215_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx215_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx215_paeth0_mult_extender_x(BITJOIN,163)@3
    assign i_arrayidx215_paeth0_mult_extender_x_q = {i_arrayidx215_paeth0_mult_multconst_x_q, i_arrayidx215_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx215_paeth0_trunc_sel_x(BITSELECT,165)@3
    assign i_arrayidx215_paeth0_trunc_sel_x_b = i_arrayidx215_paeth0_mult_extender_x_q[63:0];

    // c_paeth_b_pmem(CONSTANT,28)
    assign c_paeth_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx215_paeth0_add_x(ADD,157)@3
    assign i_arrayidx215_paeth0_add_x_a = {1'b0, c_paeth_b_pmem_q};
    assign i_arrayidx215_paeth0_add_x_b = {1'b0, i_arrayidx215_paeth0_trunc_sel_x_b};
    assign i_arrayidx215_paeth0_add_x_o = $unsigned(i_arrayidx215_paeth0_add_x_a) + $unsigned(i_arrayidx215_paeth0_add_x_b);
    assign i_arrayidx215_paeth0_add_x_q = i_arrayidx215_paeth0_add_x_o[64:0];

    // i_arrayidx215_paeth0_dupName_0_trunc_sel_x(BITSELECT,166)@3
    assign i_arrayidx215_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx215_paeth0_add_x_q[63:0];

    // i_arrayidx215_paeth10_vt_select_63(BITSELECT,37)@3
    assign i_arrayidx215_paeth10_vt_select_63_b = i_arrayidx215_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx215_paeth10_vt_join(BITJOIN,36)@3
    assign i_arrayidx215_paeth10_vt_join_q = {i_arrayidx215_paeth10_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_paeth7_paeth11(BLACKBOX,82)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_paeth7_paeth_avm_address@20000000
    // out out_unnamed_paeth7_paeth_avm_burstcount@20000000
    // out out_unnamed_paeth7_paeth_avm_byteenable@20000000
    // out out_unnamed_paeth7_paeth_avm_enable@20000000
    // out out_unnamed_paeth7_paeth_avm_read@20000000
    // out out_unnamed_paeth7_paeth_avm_write@20000000
    // out out_unnamed_paeth7_paeth_avm_writedata@20000000
    paeth_i_llvm_fpga_mem_unnamed_7_paeth0 thei_llvm_fpga_mem_unnamed_paeth7_paeth11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx215_paeth10_vt_join_q),
        .in_i_predicate(redist11_i_xor_paeth4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_paeth7_paeth_avm_readdata(in_unnamed_paeth7_paeth_avm_readdata),
        .in_unnamed_paeth7_paeth_avm_readdatavalid(in_unnamed_paeth7_paeth_avm_readdatavalid),
        .in_unnamed_paeth7_paeth_avm_waitrequest(in_unnamed_paeth7_paeth_avm_waitrequest),
        .in_unnamed_paeth7_paeth_avm_writeack(in_unnamed_paeth7_paeth_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_paeth7_paeth_avm_address(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_address),
        .out_unnamed_paeth7_paeth_avm_burstcount(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_burstcount),
        .out_unnamed_paeth7_paeth_avm_byteenable(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_byteenable),
        .out_unnamed_paeth7_paeth_avm_enable(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_enable),
        .out_unnamed_paeth7_paeth_avm_read(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_read),
        .out_unnamed_paeth7_paeth_avm_write(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_write),
        .out_unnamed_paeth7_paeth_avm_writedata(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,148)
    assign out_unnamed_paeth7_paeth_avm_address = i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_address;
    assign out_unnamed_paeth7_paeth_avm_enable = i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_enable;
    assign out_unnamed_paeth7_paeth_avm_read = i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_read;
    assign out_unnamed_paeth7_paeth_avm_write = i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_write;
    assign out_unnamed_paeth7_paeth_avm_writedata = i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_writedata;
    assign out_unnamed_paeth7_paeth_avm_byteenable = i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_byteenable;
    assign out_unnamed_paeth7_paeth_avm_burstcount = i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_unnamed_paeth7_paeth_avm_burstcount;

    // valid_fanout_reg4(REG,220)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist7_sync_together109_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx246_paeth0_mult_x_im0_shift0(BITSHIFT,341)@3
    assign i_arrayidx246_paeth0_mult_x_im0_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx246_paeth0_mult_x_im0_shift0_q = i_arrayidx246_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx246_paeth0_mult_x_sums_align_3(BITSHIFT,282)@3
    assign i_arrayidx246_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx246_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx246_paeth0_mult_x_sums_align_3_q = i_arrayidx246_paeth0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx246_paeth0_mult_x_im6_shift0(BITSHIFT,343)@3
    assign i_arrayidx246_paeth0_mult_x_im6_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx246_paeth0_mult_x_im6_shift0_q = i_arrayidx246_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx246_paeth0_mult_x_sums_align_2(BITSHIFT,281)@3
    assign i_arrayidx246_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx246_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx246_paeth0_mult_x_sums_align_2_q = i_arrayidx246_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx246_paeth0_mult_x_sums_join_4(BITJOIN,283)@3
    assign i_arrayidx246_paeth0_mult_x_sums_join_4_q = {i_arrayidx246_paeth0_mult_x_sums_align_3_q, i_arrayidx246_paeth0_mult_x_sums_align_2_q};

    // i_arrayidx246_paeth0_mult_x_im3_shift0(BITSHIFT,342)@3
    assign i_arrayidx246_paeth0_mult_x_im3_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx246_paeth0_mult_x_im3_shift0_q = i_arrayidx246_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx246_paeth0_mult_x_sums_align_0(BITSHIFT,279)@3
    assign i_arrayidx246_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx246_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx246_paeth0_mult_x_sums_align_0_q = i_arrayidx246_paeth0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx246_paeth0_mult_x_im9_shift0(BITSHIFT,344)@3
    assign i_arrayidx246_paeth0_mult_x_im9_shift0_qint = { i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx246_paeth0_mult_x_im9_shift0_q = i_arrayidx246_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx246_paeth0_mult_x_sums_join_1(BITJOIN,280)@3
    assign i_arrayidx246_paeth0_mult_x_sums_join_1_q = {i_arrayidx246_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx246_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx246_paeth0_mult_x_sums_result_add_0_0(ADD,284)@3
    assign i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx246_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx246_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx246_paeth0_mult_extender_x(BITJOIN,173)@3
    assign i_arrayidx246_paeth0_mult_extender_x_q = {i_arrayidx215_paeth0_mult_multconst_x_q, i_arrayidx246_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx246_paeth0_trunc_sel_x(BITSELECT,175)@3
    assign i_arrayidx246_paeth0_trunc_sel_x_b = i_arrayidx246_paeth0_mult_extender_x_q[63:0];

    // c_paeth_c_pmem(CONSTANT,29)
    assign c_paeth_c_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx246_paeth0_add_x(ADD,167)@3
    assign i_arrayidx246_paeth0_add_x_a = {1'b0, c_paeth_c_pmem_q};
    assign i_arrayidx246_paeth0_add_x_b = {1'b0, i_arrayidx246_paeth0_trunc_sel_x_b};
    assign i_arrayidx246_paeth0_add_x_o = $unsigned(i_arrayidx246_paeth0_add_x_a) + $unsigned(i_arrayidx246_paeth0_add_x_b);
    assign i_arrayidx246_paeth0_add_x_q = i_arrayidx246_paeth0_add_x_o[64:0];

    // i_arrayidx246_paeth0_dupName_0_trunc_sel_x(BITSELECT,176)@3
    assign i_arrayidx246_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx246_paeth0_add_x_q[63:0];

    // i_arrayidx246_paeth13_vt_select_63(BITSELECT,40)@3
    assign i_arrayidx246_paeth13_vt_select_63_b = i_arrayidx246_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx246_paeth13_vt_join(BITJOIN,39)@3
    assign i_arrayidx246_paeth13_vt_join_q = {i_arrayidx246_paeth13_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_paeth8_paeth14(BLACKBOX,83)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_paeth8_paeth_avm_address@20000000
    // out out_unnamed_paeth8_paeth_avm_burstcount@20000000
    // out out_unnamed_paeth8_paeth_avm_byteenable@20000000
    // out out_unnamed_paeth8_paeth_avm_enable@20000000
    // out out_unnamed_paeth8_paeth_avm_read@20000000
    // out out_unnamed_paeth8_paeth_avm_write@20000000
    // out out_unnamed_paeth8_paeth_avm_writedata@20000000
    paeth_i_llvm_fpga_mem_unnamed_8_paeth0 thei_llvm_fpga_mem_unnamed_paeth8_paeth14 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx246_paeth13_vt_join_q),
        .in_i_predicate(redist11_i_xor_paeth4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_paeth8_paeth_avm_readdata(in_unnamed_paeth8_paeth_avm_readdata),
        .in_unnamed_paeth8_paeth_avm_readdatavalid(in_unnamed_paeth8_paeth_avm_readdatavalid),
        .in_unnamed_paeth8_paeth_avm_waitrequest(in_unnamed_paeth8_paeth_avm_waitrequest),
        .in_unnamed_paeth8_paeth_avm_writeack(in_unnamed_paeth8_paeth_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_paeth8_paeth_avm_address(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_address),
        .out_unnamed_paeth8_paeth_avm_burstcount(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_burstcount),
        .out_unnamed_paeth8_paeth_avm_byteenable(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_byteenable),
        .out_unnamed_paeth8_paeth_avm_enable(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_enable),
        .out_unnamed_paeth8_paeth_avm_read(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_read),
        .out_unnamed_paeth8_paeth_avm_write(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_write),
        .out_unnamed_paeth8_paeth_avm_writedata(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,152)
    assign out_unnamed_paeth8_paeth_avm_address = i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_address;
    assign out_unnamed_paeth8_paeth_avm_enable = i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_enable;
    assign out_unnamed_paeth8_paeth_avm_read = i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_read;
    assign out_unnamed_paeth8_paeth_avm_write = i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_write;
    assign out_unnamed_paeth8_paeth_avm_writedata = i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_writedata;
    assign out_unnamed_paeth8_paeth_avm_byteenable = i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_byteenable;
    assign out_unnamed_paeth8_paeth_avm_burstcount = i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_unnamed_paeth8_paeth_avm_burstcount;

    // redist8_sync_together109_aunroll_x_in_i_valid_2(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together109_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist8_sync_together109_aunroll_x_in_i_valid_2_q <= $unsigned(redist7_sync_together109_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg5(REG,221)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist8_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist12_i_xor_paeth4_q_2(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_xor_paeth4_q_2_q <= '0;
        end
        else
        begin
            redist12_i_xor_paeth4_q_2_q <= $unsigned(redist11_i_xor_paeth4_q_1_q);
        end
    end

    // redist0_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b_1(DELAY,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b_1_q <= $unsigned(i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b);
        end
    end

    // i_arrayidx297_paeth0_mult_x_im0_shift0(BITSHIFT,345)@4
    assign i_arrayidx297_paeth0_mult_x_im0_shift0_qint = { redist0_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b_1_q, 1'b0 };
    assign i_arrayidx297_paeth0_mult_x_im0_shift0_q = i_arrayidx297_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx297_paeth0_mult_x_sums_align_3(BITSHIFT,300)@4
    assign i_arrayidx297_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx297_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx297_paeth0_mult_x_sums_align_3_q = i_arrayidx297_paeth0_mult_x_sums_align_3_qint[27:0];

    // redist2_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d_1(DELAY,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d_1_q <= $unsigned(i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d);
        end
    end

    // i_arrayidx297_paeth0_mult_x_im6_shift0(BITSHIFT,347)@4
    assign i_arrayidx297_paeth0_mult_x_im6_shift0_qint = { redist2_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d_1_q, 1'b0 };
    assign i_arrayidx297_paeth0_mult_x_im6_shift0_q = i_arrayidx297_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx297_paeth0_mult_x_sums_align_2(BITSHIFT,299)@4
    assign i_arrayidx297_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx297_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx297_paeth0_mult_x_sums_align_2_q = i_arrayidx297_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx297_paeth0_mult_x_sums_join_4(BITJOIN,301)@4
    assign i_arrayidx297_paeth0_mult_x_sums_join_4_q = {i_arrayidx297_paeth0_mult_x_sums_align_3_q, i_arrayidx297_paeth0_mult_x_sums_align_2_q};

    // redist1_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c_1(DELAY,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c_1_q <= $unsigned(i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c);
        end
    end

    // i_arrayidx297_paeth0_mult_x_im3_shift0(BITSHIFT,346)@4
    assign i_arrayidx297_paeth0_mult_x_im3_shift0_qint = { redist1_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c_1_q, 1'b0 };
    assign i_arrayidx297_paeth0_mult_x_im3_shift0_q = i_arrayidx297_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx297_paeth0_mult_x_sums_align_0(BITSHIFT,297)@4
    assign i_arrayidx297_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx297_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx297_paeth0_mult_x_sums_align_0_q = i_arrayidx297_paeth0_mult_x_sums_align_0_qint[35:0];

    // redist3_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e_1(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e_1_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e_1_q <= $unsigned(i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e);
        end
    end

    // i_arrayidx297_paeth0_mult_x_im9_shift0(BITSHIFT,348)@4
    assign i_arrayidx297_paeth0_mult_x_im9_shift0_qint = { redist3_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e_1_q, 1'b0 };
    assign i_arrayidx297_paeth0_mult_x_im9_shift0_q = i_arrayidx297_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx297_paeth0_mult_x_sums_join_1(BITJOIN,298)@4
    assign i_arrayidx297_paeth0_mult_x_sums_join_1_q = {i_arrayidx297_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx297_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx297_paeth0_mult_x_sums_result_add_0_0(ADD,302)@4
    assign i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx297_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx297_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx297_paeth0_mult_extender_x(BITJOIN,183)@4
    assign i_arrayidx297_paeth0_mult_extender_x_q = {i_arrayidx215_paeth0_mult_multconst_x_q, i_arrayidx297_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx297_paeth0_trunc_sel_x(BITSELECT,185)@4
    assign i_arrayidx297_paeth0_trunc_sel_x_b = i_arrayidx297_paeth0_mult_extender_x_q[63:0];

    // c_paeth_a_pmem(CONSTANT,27)
    assign c_paeth_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx297_paeth0_add_x(ADD,177)@4
    assign i_arrayidx297_paeth0_add_x_a = {1'b0, c_paeth_a_pmem_q};
    assign i_arrayidx297_paeth0_add_x_b = {1'b0, i_arrayidx297_paeth0_trunc_sel_x_b};
    assign i_arrayidx297_paeth0_add_x_o = $unsigned(i_arrayidx297_paeth0_add_x_a) + $unsigned(i_arrayidx297_paeth0_add_x_b);
    assign i_arrayidx297_paeth0_add_x_q = i_arrayidx297_paeth0_add_x_o[64:0];

    // i_arrayidx297_paeth0_dupName_0_trunc_sel_x(BITSELECT,186)@4
    assign i_arrayidx297_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx297_paeth0_add_x_q[63:0];

    // i_arrayidx297_paeth23_vt_select_63(BITSELECT,43)@4
    assign i_arrayidx297_paeth23_vt_select_63_b = i_arrayidx297_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx297_paeth23_vt_join(BITJOIN,42)@4
    assign i_arrayidx297_paeth23_vt_join_q = {i_arrayidx297_paeth23_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_paeth9_paeth24(BLACKBOX,84)@4
    // in in_i_stall@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    // out out_unnamed_paeth9_paeth_avm_address@20000000
    // out out_unnamed_paeth9_paeth_avm_burstcount@20000000
    // out out_unnamed_paeth9_paeth_avm_byteenable@20000000
    // out out_unnamed_paeth9_paeth_avm_enable@20000000
    // out out_unnamed_paeth9_paeth_avm_read@20000000
    // out out_unnamed_paeth9_paeth_avm_write@20000000
    // out out_unnamed_paeth9_paeth_avm_writedata@20000000
    paeth_i_llvm_fpga_mem_unnamed_9_paeth0 thei_llvm_fpga_mem_unnamed_paeth9_paeth24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx297_paeth23_vt_join_q),
        .in_i_predicate(redist12_i_xor_paeth4_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_paeth9_paeth_avm_readdata(in_unnamed_paeth9_paeth_avm_readdata),
        .in_unnamed_paeth9_paeth_avm_readdatavalid(in_unnamed_paeth9_paeth_avm_readdatavalid),
        .in_unnamed_paeth9_paeth_avm_waitrequest(in_unnamed_paeth9_paeth_avm_waitrequest),
        .in_unnamed_paeth9_paeth_avm_writeack(in_unnamed_paeth9_paeth_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_paeth9_paeth_avm_address(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_address),
        .out_unnamed_paeth9_paeth_avm_burstcount(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_burstcount),
        .out_unnamed_paeth9_paeth_avm_byteenable(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_byteenable),
        .out_unnamed_paeth9_paeth_avm_enable(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_enable),
        .out_unnamed_paeth9_paeth_avm_read(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_read),
        .out_unnamed_paeth9_paeth_avm_write(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_write),
        .out_unnamed_paeth9_paeth_avm_writedata(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,155)
    assign out_unnamed_paeth9_paeth_avm_address = i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_address;
    assign out_unnamed_paeth9_paeth_avm_enable = i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_enable;
    assign out_unnamed_paeth9_paeth_avm_read = i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_read;
    assign out_unnamed_paeth9_paeth_avm_write = i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_write;
    assign out_unnamed_paeth9_paeth_avm_writedata = i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_writedata;
    assign out_unnamed_paeth9_paeth_avm_byteenable = i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_byteenable;
    assign out_unnamed_paeth9_paeth_avm_burstcount = i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_unnamed_paeth9_paeth_avm_burstcount;

    // redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_delay_0 <= '0;
            redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_delay_0 <= $unsigned(i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata);
            redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_q <= redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_delay_0;
        end
    end

    // redist24_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_1(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_1_q <= $unsigned(i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata);
        end
    end

    // redist25_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_2(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_2_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_2_q <= $unsigned(redist24_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_1_q);
        end
    end

    // redist26_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_1(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_1_q <= $unsigned(i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata);
        end
    end

    // redist27_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_2(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_2_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_2_q <= $unsigned(redist26_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_1_q);
        end
    end

    // i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16(SUB,78)@8
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_a = {1'b0, redist26_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_1_q};
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_b = {1'b0, redist24_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_1_q};
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_o = $unsigned(i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_a) - $unsigned(i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_b);
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_q = i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_o[16:0];

    // i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20(SUB,79)@8
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_a = $unsigned({{17{GND_q[0]}}, GND_q});
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_b = $unsigned({{1{i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_q[16]}}, i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_q});
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_o = $unsigned($signed(i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_a) - $signed(i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_b));
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_q = i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_o[17:0];

    // i_sub27_sext_paeth21_sel_x(BITSELECT,210)@8
    assign i_sub27_sext_paeth21_sel_x_b = $unsigned({{14{i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_q[17]}}, i_llvm_fpga_int_sub_i18_i1_i17_sub27_i_paeth20_q[17:0]});

    // i_sub_sext_paeth17_sel_x(BITSELECT,213)@8
    assign i_sub_sext_paeth17_sel_x_b = $unsigned({{15{i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_q[16]}}, i_llvm_fpga_int_sub_i17_i16_i16_sub_i_paeth16_q[16:0]});

    // i_cmp26_paeth18_cmp_sign(LOGICAL,241)@8
    assign i_cmp26_paeth18_cmp_sign_q = $unsigned(i_sub_sext_paeth17_sel_x_b[31:31]);

    // i_unnamed_paeth22(MUX,117)@8 + 1
    assign i_unnamed_paeth22_s = i_cmp26_paeth18_cmp_sign_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_paeth22_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_paeth22_s)
                1'b0 : i_unnamed_paeth22_q <= i_sub_sext_paeth17_sel_x_b;
                1'b1 : i_unnamed_paeth22_q <= i_sub27_sext_paeth21_sel_x_b;
                default : i_unnamed_paeth22_q <= 32'b0;
            endcase
        end
    end

    // i_sub53_paeth38(SUB,114)@8
    assign i_sub53_paeth38_a = {1'b0, c_i32_090_q};
    assign i_sub53_paeth38_b = {1'b0, i_or_paeth35_q};
    assign i_sub53_paeth38_o = $unsigned(i_sub53_paeth38_a) - $unsigned(i_sub53_paeth38_b);
    assign i_sub53_paeth38_q = i_sub53_paeth38_o[32:0];

    // bgTrunc_i_sub53_paeth38_sel_x(BITSELECT,143)@8
    assign bgTrunc_i_sub53_paeth38_sel_x_b = $unsigned(i_sub53_paeth38_q[31:0]);

    // i_conv22_paeth12_vt_const_31(CONSTANT,57)
    assign i_conv22_paeth12_vt_const_31_q = $unsigned(16'b0000000000000000);

    // i_conv30_paeth25_sel_x(BITSELECT,203)@8
    assign i_conv30_paeth25_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata[15:0]};

    // i_conv30_paeth25_vt_select_15(BITSELECT,67)@8
    assign i_conv30_paeth25_vt_select_15_b = i_conv30_paeth25_sel_x_b[15:0];

    // i_conv30_paeth25_vt_join(BITJOIN,66)@8
    assign i_conv30_paeth25_vt_join_q = {i_conv22_paeth12_vt_const_31_q, i_conv30_paeth25_vt_select_15_b};

    // i_mul_paeth33_vt_const_31(CONSTANT,98)
    assign i_mul_paeth33_vt_const_31_q = $unsigned(15'b000000000000000);

    // leftShiftStage0Idx1Rng1_uid333_i_mul_paeth0_shift_x(BITSELECT,332)@7
    assign leftShiftStage0Idx1Rng1_uid333_i_mul_paeth0_shift_x_in = i_conv25_paeth15_vt_join_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid333_i_mul_paeth0_shift_x_b = leftShiftStage0Idx1Rng1_uid333_i_mul_paeth0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid334_i_mul_paeth0_shift_x(BITJOIN,333)@7
    assign leftShiftStage0Idx1_uid334_i_mul_paeth0_shift_x_q = {leftShiftStage0Idx1Rng1_uid333_i_mul_paeth0_shift_x_b, GND_q};

    // i_conv25_paeth15_sel_x(BITSELECT,202)@7
    assign i_conv25_paeth15_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata[15:0]};

    // i_conv25_paeth15_vt_select_15(BITSELECT,63)@7
    assign i_conv25_paeth15_vt_select_15_b = i_conv25_paeth15_sel_x_b[15:0];

    // i_conv25_paeth15_vt_join(BITJOIN,62)@7
    assign i_conv25_paeth15_vt_join_q = {i_conv22_paeth12_vt_const_31_q, i_conv25_paeth15_vt_select_15_b};

    // leftShiftStage0_uid336_i_mul_paeth0_shift_x(MUX,335)@7
    assign leftShiftStage0_uid336_i_mul_paeth0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid336_i_mul_paeth0_shift_x_s or i_conv25_paeth15_vt_join_q or leftShiftStage0Idx1_uid334_i_mul_paeth0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid336_i_mul_paeth0_shift_x_s)
            1'b0 : leftShiftStage0_uid336_i_mul_paeth0_shift_x_q = i_conv25_paeth15_vt_join_q;
            1'b1 : leftShiftStage0_uid336_i_mul_paeth0_shift_x_q = leftShiftStage0Idx1_uid334_i_mul_paeth0_shift_x_q;
            default : leftShiftStage0_uid336_i_mul_paeth0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_paeth33_vt_select_16(BITSELECT,100)@7
    assign i_mul_paeth33_vt_select_16_b = leftShiftStage0_uid336_i_mul_paeth0_shift_x_q[16:1];

    // i_mul_paeth33_vt_join(BITJOIN,99)@7
    assign i_mul_paeth33_vt_join_q = {i_mul_paeth33_vt_const_31_q, i_mul_paeth33_vt_select_16_b, GND_q};

    // i_conv22_paeth12_sel_x(BITSELECT,201)@7
    assign i_conv22_paeth12_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata[15:0]};

    // i_conv22_paeth12_vt_select_15(BITSELECT,59)@7
    assign i_conv22_paeth12_vt_select_15_b = i_conv22_paeth12_sel_x_b[15:0];

    // i_conv22_paeth12_vt_join(BITJOIN,58)@7
    assign i_conv22_paeth12_vt_join_q = {i_conv22_paeth12_vt_const_31_q, i_conv22_paeth12_vt_select_15_b};

    // i_sub50_paeth34(SUB,113)@7
    assign i_sub50_paeth34_a = {1'b0, i_conv22_paeth12_vt_join_q};
    assign i_sub50_paeth34_b = {1'b0, i_mul_paeth33_vt_join_q};
    assign i_sub50_paeth34_o = $unsigned(i_sub50_paeth34_a) - $unsigned(i_sub50_paeth34_b);
    assign i_sub50_paeth34_q = i_sub50_paeth34_o[32:0];

    // bgTrunc_i_sub50_paeth34_sel_x(BITSELECT,142)@7
    assign bgTrunc_i_sub50_paeth34_sel_x_b = $unsigned(i_sub50_paeth34_q[31:0]);

    // redist10_bgTrunc_i_sub50_paeth34_sel_x_b_1(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_sub50_paeth34_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist10_bgTrunc_i_sub50_paeth34_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub50_paeth34_sel_x_b);
        end
    end

    // i_or_paeth35(LOGICAL,104)@8
    assign i_or_paeth35_q = redist10_bgTrunc_i_sub50_paeth34_sel_x_b_1_q | i_conv30_paeth25_vt_join_q;

    // i_cmp51_paeth36_cmp_sign(LOGICAL,245)@8
    assign i_cmp51_paeth36_cmp_sign_q = $unsigned(i_or_paeth35_q[31:31]);

    // i_unnamed_paeth39(MUX,119)@8
    assign i_unnamed_paeth39_s = i_cmp51_paeth36_cmp_sign_q;
    always @(i_unnamed_paeth39_s or i_or_paeth35_q or bgTrunc_i_sub53_paeth38_sel_x_b)
    begin
        unique case (i_unnamed_paeth39_s)
            1'b0 : i_unnamed_paeth39_q = i_or_paeth35_q;
            1'b1 : i_unnamed_paeth39_q = bgTrunc_i_sub53_paeth38_sel_x_b;
            default : i_unnamed_paeth39_q = 32'b0;
        endcase
    end

    // i_unnamed_paeth39_vt_select_30(BITSELECT,122)@8
    assign i_unnamed_paeth39_vt_select_30_b = i_unnamed_paeth39_q[30:0];

    // redist16_i_unnamed_paeth39_vt_select_30_b_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_unnamed_paeth39_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist16_i_unnamed_paeth39_vt_select_30_b_1_q <= $unsigned(i_unnamed_paeth39_vt_select_30_b);
        end
    end

    // i_unnamed_paeth39_vt_join(BITJOIN,121)@9
    assign i_unnamed_paeth39_vt_join_q = {GND_q, redist16_i_unnamed_paeth39_vt_select_30_b_1_q};

    // i_cmp58_paeth42(COMPARE,54)@9
    assign i_cmp58_paeth42_a = $unsigned({{2{i_unnamed_paeth39_vt_join_q[31]}}, i_unnamed_paeth39_vt_join_q});
    assign i_cmp58_paeth42_b = $unsigned({{2{i_unnamed_paeth22_q[31]}}, i_unnamed_paeth22_q});
    assign i_cmp58_paeth42_o = $unsigned($signed(i_cmp58_paeth42_a) - $signed(i_cmp58_paeth42_b));
    assign i_cmp58_paeth42_n[0] = ~ (i_cmp58_paeth42_o[33]);

    // i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26(SUB,77)@8
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_a = {1'b0, i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata};
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_b = {1'b0, redist24_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_1_q};
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_o = $unsigned(i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_a) - $unsigned(i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_b);
    assign i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_q = i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_o[16:0];

    // i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30(SUB,80)@8
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_a = $unsigned({{17{GND_q[0]}}, GND_q});
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_b = $unsigned({{1{i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_q[16]}}, i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_q});
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_o = $unsigned($signed(i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_a) - $signed(i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_b));
    assign i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_q = i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_o[17:0];

    // i_sub37_sext_paeth31_sel_x(BITSELECT,212)@8
    assign i_sub37_sext_paeth31_sel_x_b = $unsigned({{14{i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_q[17]}}, i_llvm_fpga_int_sub_i18_i1_i17_sub37_i_paeth30_q[17:0]});

    // i_sub34_sext_paeth27_sel_x(BITSELECT,211)@8
    assign i_sub34_sext_paeth27_sel_x_b = $unsigned({{15{i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_q[16]}}, i_llvm_fpga_int_sub_i17_i16_i16_sub34_i_paeth26_q[16:0]});

    // i_cmp35_paeth28_cmp_sign(LOGICAL,243)@8
    assign i_cmp35_paeth28_cmp_sign_q = $unsigned(i_sub34_sext_paeth27_sel_x_b[31:31]);

    // i_unnamed_paeth32(MUX,118)@8 + 1
    assign i_unnamed_paeth32_s = i_cmp35_paeth28_cmp_sign_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_paeth32_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_paeth32_s)
                1'b0 : i_unnamed_paeth32_q <= i_sub34_sext_paeth27_sel_x_b;
                1'b1 : i_unnamed_paeth32_q <= i_sub37_sext_paeth31_sel_x_b;
                default : i_unnamed_paeth32_q <= 32'b0;
            endcase
        end
    end

    // i_cmp57_paeth40(COMPARE,53)@9
    assign i_cmp57_paeth40_a = $unsigned({{2{i_unnamed_paeth32_q[31]}}, i_unnamed_paeth32_q});
    assign i_cmp57_paeth40_b = $unsigned({{2{i_unnamed_paeth22_q[31]}}, i_unnamed_paeth22_q});
    assign i_cmp57_paeth40_o = $unsigned($signed(i_cmp57_paeth40_a) - $signed(i_cmp57_paeth40_b));
    assign i_cmp57_paeth40_n[0] = ~ (i_cmp57_paeth40_o[33]);

    // i_unnamed_paeth44(LOGICAL,123)@9
    assign i_unnamed_paeth44_q = i_cmp57_paeth40_n & i_cmp58_paeth42_n;

    // i_unnamed_paeth46(LOGICAL,124)@9
    assign i_unnamed_paeth46_q = i_unnamed_paeth44_q ^ VCC_q;

    // i_cmp60_paeth47(COMPARE,55)@9
    assign i_cmp60_paeth47_a = $unsigned({{2{i_unnamed_paeth39_vt_join_q[31]}}, i_unnamed_paeth39_vt_join_q});
    assign i_cmp60_paeth47_b = $unsigned({{2{i_unnamed_paeth32_q[31]}}, i_unnamed_paeth32_q});
    assign i_cmp60_paeth47_o = $unsigned($signed(i_cmp60_paeth47_a) - $signed(i_cmp60_paeth47_b));
    assign i_cmp60_paeth47_c[0] = i_cmp60_paeth47_o[33];

    // i_acl_paeth49(LOGICAL,34)@9
    assign i_acl_paeth49_q = i_cmp60_paeth47_c & i_unnamed_paeth46_q;

    // i_val_paeth52(MUX,126)@9 + 1
    assign i_val_paeth52_s = i_acl_paeth49_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_val_paeth52_q <= 16'b0;
        end
        else
        begin
            unique case (i_val_paeth52_s)
                1'b0 : i_val_paeth52_q <= redist27_i_llvm_fpga_mem_unnamed_paeth7_paeth11_out_o_readdata_2_q;
                1'b1 : i_val_paeth52_q <= redist25_i_llvm_fpga_mem_unnamed_paeth8_paeth14_out_o_readdata_2_q;
                default : i_val_paeth52_q <= 16'b0;
            endcase
        end
    end

    // redist15_i_unnamed_paeth44_q_1(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_unnamed_paeth44_q_1_q <= '0;
        end
        else
        begin
            redist15_i_unnamed_paeth44_q_1_q <= $unsigned(i_unnamed_paeth44_q);
        end
    end

    // i_val16_paeth54(MUX,125)@10
    assign i_val16_paeth54_s = redist15_i_unnamed_paeth44_q_1_q;
    always @(i_val16_paeth54_s or i_val_paeth52_q or redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_q)
    begin
        unique case (i_val16_paeth54_s)
            1'b0 : i_val16_paeth54_q = i_val_paeth52_q;
            1'b1 : i_val16_paeth54_q = redist23_i_llvm_fpga_mem_unnamed_paeth9_paeth24_out_o_readdata_2_q;
            default : i_val16_paeth54_q = 16'b0;
        endcase
    end

    // redist9_sync_together109_aunroll_x_in_i_valid_8(DELAY,363)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together109_aunroll_x_in_i_valid_8 ( .xin(redist8_sync_together109_aunroll_x_in_i_valid_2_q), .xout(redist9_sync_together109_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,222)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist9_sync_together109_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist13_i_xor_paeth4_q_8(DELAY,367)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_xor_paeth4_q_8 ( .xin(redist12_i_xor_paeth4_q_2_q), .xout(redist13_i_xor_paeth4_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_i_unnamed_paeth46_q_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_unnamed_paeth46_q_1_q <= '0;
        end
        else
        begin
            redist14_i_unnamed_paeth46_q_1_q <= $unsigned(i_unnamed_paeth46_q);
        end
    end

    // i_acl_12_demorgan_paeth50(LOGICAL,33)@9
    assign i_acl_12_demorgan_paeth50_q = i_unnamed_paeth44_q | i_cmp60_paeth47_c;

    // i_pred_sel_paeth51(LOGICAL,106)@9 + 1
    assign i_pred_sel_paeth51_qi = i_acl_paeth49_q ^ i_acl_12_demorgan_paeth50_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_pred_sel_paeth51_delay ( .xin(i_pred_sel_paeth51_qi), .xout(i_pred_sel_paeth51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_pred_sel14_paeth53(MUX,105)@10
    assign i_pred_sel14_paeth53_s = redist15_i_unnamed_paeth44_q_1_q;
    always @(i_pred_sel14_paeth53_s or i_pred_sel_paeth51_q or redist14_i_unnamed_paeth46_q_1_q)
    begin
        unique case (i_pred_sel14_paeth53_s)
            1'b0 : i_pred_sel14_paeth53_q = i_pred_sel_paeth51_q;
            1'b1 : i_pred_sel14_paeth53_q = redist14_i_unnamed_paeth46_q_1_q;
            default : i_pred_sel14_paeth53_q = 1'b0;
        endcase
    end

    // i_first_cleanup_xor15_or_paeth55(LOGICAL,70)@10
    assign i_first_cleanup_xor15_or_paeth55_q = i_pred_sel14_paeth53_q | redist13_i_xor_paeth4_q_8_q;

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_notEnable(LOGICAL,389)
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_nor(LOGICAL,390)
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_nor_q = ~ (redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_notEnable_q | redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_sticky_ena_q);

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_last(CONSTANT,386)
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_last_q = $unsigned(3'b011);

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmp(LOGICAL,387)
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmp_q = $unsigned(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_last_q == redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmpReg(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmpReg_q <= $unsigned(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmp_q);
        end
    end

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_sticky_ena(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_nor_q == 1'b1)
        begin
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_sticky_ena_q <= $unsigned(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_cmpReg_q);
        end
    end

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_enaAnd(LOGICAL,392)
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_enaAnd_q = redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_sticky_ena_q & VCC_q;

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt(COUNTER,384)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i <= 3'd0;
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i == 3'd3)
            begin
                redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_eq <= 1'b0;
            end
            if (redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_eq == 1'b1)
            begin
                redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i <= $unsigned(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i <= $unsigned(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_q = redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_i[2:0];

    // i_arrayidx6810_paeth0_mult_x_im0_shift0(BITSHIFT,349)@4
    assign i_arrayidx6810_paeth0_mult_x_im0_shift0_qint = { redist0_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_b_1_q, 1'b0 };
    assign i_arrayidx6810_paeth0_mult_x_im0_shift0_q = i_arrayidx6810_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx6810_paeth0_mult_x_sums_align_3(BITSHIFT,318)@4
    assign i_arrayidx6810_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx6810_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx6810_paeth0_mult_x_sums_align_3_q = i_arrayidx6810_paeth0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx6810_paeth0_mult_x_im6_shift0(BITSHIFT,351)@4
    assign i_arrayidx6810_paeth0_mult_x_im6_shift0_qint = { redist2_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_d_1_q, 1'b0 };
    assign i_arrayidx6810_paeth0_mult_x_im6_shift0_q = i_arrayidx6810_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx6810_paeth0_mult_x_sums_align_2(BITSHIFT,317)@4
    assign i_arrayidx6810_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx6810_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx6810_paeth0_mult_x_sums_align_2_q = i_arrayidx6810_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx6810_paeth0_mult_x_sums_join_4(BITJOIN,319)@4
    assign i_arrayidx6810_paeth0_mult_x_sums_join_4_q = {i_arrayidx6810_paeth0_mult_x_sums_align_3_q, i_arrayidx6810_paeth0_mult_x_sums_align_2_q};

    // i_arrayidx6810_paeth0_mult_x_im3_shift0(BITSHIFT,350)@4
    assign i_arrayidx6810_paeth0_mult_x_im3_shift0_qint = { redist1_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_c_1_q, 1'b0 };
    assign i_arrayidx6810_paeth0_mult_x_im3_shift0_q = i_arrayidx6810_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx6810_paeth0_mult_x_sums_align_0(BITSHIFT,315)@4
    assign i_arrayidx6810_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx6810_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx6810_paeth0_mult_x_sums_align_0_q = i_arrayidx6810_paeth0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx6810_paeth0_mult_x_im9_shift0(BITSHIFT,352)@4
    assign i_arrayidx6810_paeth0_mult_x_im9_shift0_qint = { redist3_i_arrayidx215_paeth0_mult_x_bs1_merged_bit_select_e_1_q, 1'b0 };
    assign i_arrayidx6810_paeth0_mult_x_im9_shift0_q = i_arrayidx6810_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx6810_paeth0_mult_x_sums_join_1(BITJOIN,316)@4
    assign i_arrayidx6810_paeth0_mult_x_sums_join_1_q = {i_arrayidx6810_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx6810_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0(ADD,320)@4
    assign i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx6810_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx6810_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx6810_paeth0_mult_extender_x(BITJOIN,193)@4
    assign i_arrayidx6810_paeth0_mult_extender_x_q = {i_arrayidx215_paeth0_mult_multconst_x_q, i_arrayidx6810_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx6810_paeth0_trunc_sel_x(BITSELECT,195)@4
    assign i_arrayidx6810_paeth0_trunc_sel_x_b = i_arrayidx6810_paeth0_mult_extender_x_q[63:0];

    // c_paeth_out_pmem(CONSTANT,30)
    assign c_paeth_out_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx6810_paeth0_add_x(ADD,187)@4
    assign i_arrayidx6810_paeth0_add_x_a = {1'b0, c_paeth_out_pmem_q};
    assign i_arrayidx6810_paeth0_add_x_b = {1'b0, i_arrayidx6810_paeth0_trunc_sel_x_b};
    assign i_arrayidx6810_paeth0_add_x_o = $unsigned(i_arrayidx6810_paeth0_add_x_a) + $unsigned(i_arrayidx6810_paeth0_add_x_b);
    assign i_arrayidx6810_paeth0_add_x_q = i_arrayidx6810_paeth0_add_x_o[64:0];

    // i_arrayidx6810_paeth0_dupName_0_trunc_sel_x(BITSELECT,196)@4
    assign i_arrayidx6810_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx6810_paeth0_add_x_q[63:0];

    // i_arrayidx6810_paeth45_vt_select_63(BITSELECT,46)@4
    assign i_arrayidx6810_paeth45_vt_select_63_b = i_arrayidx6810_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_wraddr(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_wraddr_q <= $unsigned(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_q);
        end
    end

    // redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem(DUALMEM,383)
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_ia = $unsigned(i_arrayidx6810_paeth45_vt_select_63_b);
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_aa = redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_wraddr_q;
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_ab = redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_rdcnt_q;
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(63),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(63),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_dmem (
        .clocken1(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_reset0),
        .clock1(clock),
        .address_a(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_aa),
        .data_a(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_ab),
        .q_b(redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_iq),
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
    assign redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_q = redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_iq[62:0];

    // i_arrayidx6810_paeth45_vt_join(BITJOIN,45)@10
    assign i_arrayidx6810_paeth45_vt_join_q = {redist28_i_arrayidx6810_paeth45_vt_select_63_b_6_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_4_paeth56(BLACKBOX,81)@10
    // out out_memdep_4_paeth_avm_address@20000000
    // out out_memdep_4_paeth_avm_burstcount@20000000
    // out out_memdep_4_paeth_avm_byteenable@20000000
    // out out_memdep_4_paeth_avm_enable@20000000
    // out out_memdep_4_paeth_avm_read@20000000
    // out out_memdep_4_paeth_avm_write@20000000
    // out out_memdep_4_paeth_avm_writedata@20000000
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_o_writeack@11
    paeth_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_paeth56 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx6810_paeth45_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor15_or_paeth55_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_val16_paeth54_q),
        .in_memdep_4_paeth_avm_readdata(in_memdep_4_paeth_avm_readdata),
        .in_memdep_4_paeth_avm_readdatavalid(in_memdep_4_paeth_avm_readdatavalid),
        .in_memdep_4_paeth_avm_waitrequest(in_memdep_4_paeth_avm_waitrequest),
        .in_memdep_4_paeth_avm_writeack(in_memdep_4_paeth_avm_writeack),
        .out_memdep_4_paeth_avm_address(i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_address),
        .out_memdep_4_paeth_avm_burstcount(i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_burstcount),
        .out_memdep_4_paeth_avm_byteenable(i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_byteenable),
        .out_memdep_4_paeth_avm_enable(i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_enable),
        .out_memdep_4_paeth_avm_read(i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_read),
        .out_memdep_4_paeth_avm_write(i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_write),
        .out_memdep_4_paeth_avm_writedata(i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,156)
    assign out_memdep_4_paeth_avm_address = i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_address;
    assign out_memdep_4_paeth_avm_enable = i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_enable;
    assign out_memdep_4_paeth_avm_read = i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_read;
    assign out_memdep_4_paeth_avm_write = i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_write;
    assign out_memdep_4_paeth_avm_writedata = i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_writedata;
    assign out_memdep_4_paeth_avm_byteenable = i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_byteenable;
    assign out_memdep_4_paeth_avm_burstcount = i_llvm_fpga_mem_memdep_4_paeth56_out_memdep_4_paeth_avm_burstcount;

    // valid_fanout_reg0(REG,216)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together109_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist4_valid_fanout_reg0_q_1(DELAY,358)
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

    // valid_fanout_reg8(REG,224)@1 + 1
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

    // valid_fanout_reg9(REG,225)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1645_push18_paeth71(BLACKBOX,92)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    paeth_i_llvm_fpga_push_i1_notcmp1645_push18_0 thei_llvm_fpga_push_i1_notcmp1645_push18_paeth71 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_feedback_stall_out_18),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp1645_push18_paeth71_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp1645_push18_paeth71_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together109_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together109_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together109_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70(BLACKBOX,87)@2
    // out out_feedback_stall_out_18@20000000
    paeth_i_llvm_fpga_pop_i1_notcmp1645_pop18_0 thei_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70 (
        .in_data_in(redist6_sync_together109_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist5_sync_together109_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp1645_push18_paeth71_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp1645_push18_paeth71_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out_9(DELAY,373)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out), .xout(redist19_i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_paeth69(LOGICAL,96)@2 + 1
    assign i_masked_paeth69_qi = i_notcmp_paeth62_q & i_first_cleanup_paeth3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_paeth69_delay ( .xin(i_masked_paeth69_qi), .xout(i_masked_paeth69_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_masked_paeth69_q_9(DELAY,371)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_i_masked_paeth69_q_9 ( .xin(i_masked_paeth69_q), .xout(redist17_i_masked_paeth69_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_10(DELAY,376)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_10 ( .xin(redist21_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_2_q), .xout(redist22_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,214)@11
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist22_i_llvm_fpga_pipeline_keep_going_paeth6_out_data_out_10_q;
    assign out_c0_exi3_2_tpl = redist17_i_masked_paeth69_q_9_q;
    assign out_c0_exi3_3_tpl = redist19_i_llvm_fpga_pop_i1_notcmp1645_pop18_paeth70_out_data_out_9_q;
    assign out_o_valid = redist4_valid_fanout_reg0_q_1_q;
    assign out_unnamed_paeth1 = GND_q;

endmodule
