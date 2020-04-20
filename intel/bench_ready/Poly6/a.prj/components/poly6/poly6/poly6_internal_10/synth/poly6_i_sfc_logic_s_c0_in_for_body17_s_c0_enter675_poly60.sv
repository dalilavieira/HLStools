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

// SystemVerilog created from poly6_i_sfc_logic_s_c0_in_for_body17_s_c0_enter675_poly60
// SystemVerilog created on Sun Apr 19 21:29:31 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly6_i_sfc_logic_s_c0_in_for_body17_s_c0_enter675_poly60 (
    input wire [15:0] in_unnamed_poly67_poly6_avm_readdata,
    input wire [0:0] in_unnamed_poly67_poly6_avm_writeack,
    input wire [0:0] in_unnamed_poly67_poly6_avm_waitrequest,
    input wire [0:0] in_unnamed_poly67_poly6_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly66_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly66_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_unnamed_poly68_poly6_avm_readdata,
    input wire [0:0] in_unnamed_poly68_poly6_avm_writeack,
    input wire [0:0] in_unnamed_poly68_poly6_avm_waitrequest,
    input wire [0:0] in_unnamed_poly68_poly6_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly67_poly6_avm_address,
    output wire [0:0] out_unnamed_poly67_poly6_avm_enable,
    output wire [0:0] out_unnamed_poly67_poly6_avm_read,
    output wire [0:0] out_unnamed_poly67_poly6_avm_write,
    output wire [15:0] out_unnamed_poly67_poly6_avm_writedata,
    output wire [1:0] out_unnamed_poly67_poly6_avm_byteenable,
    output wire [0:0] out_unnamed_poly67_poly6_avm_burstcount,
    input wire [15:0] in_unnamed_poly69_poly6_avm_readdata,
    input wire [0:0] in_unnamed_poly69_poly6_avm_writeack,
    input wire [0:0] in_unnamed_poly69_poly6_avm_waitrequest,
    input wire [0:0] in_unnamed_poly69_poly6_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly68_poly6_avm_address,
    output wire [0:0] out_unnamed_poly68_poly6_avm_enable,
    output wire [0:0] out_unnamed_poly68_poly6_avm_read,
    output wire [0:0] out_unnamed_poly68_poly6_avm_write,
    output wire [15:0] out_unnamed_poly68_poly6_avm_writedata,
    output wire [1:0] out_unnamed_poly68_poly6_avm_byteenable,
    output wire [0:0] out_unnamed_poly68_poly6_avm_burstcount,
    input wire [15:0] in_memdep_4_poly6_avm_readdata,
    input wire [0:0] in_memdep_4_poly6_avm_writeack,
    input wire [0:0] in_memdep_4_poly6_avm_waitrequest,
    input wire [0:0] in_memdep_4_poly6_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly69_poly6_avm_address,
    output wire [0:0] out_unnamed_poly69_poly6_avm_enable,
    output wire [0:0] out_unnamed_poly69_poly6_avm_read,
    output wire [0:0] out_unnamed_poly69_poly6_avm_write,
    output wire [15:0] out_unnamed_poly69_poly6_avm_writedata,
    output wire [1:0] out_unnamed_poly69_poly6_avm_byteenable,
    output wire [0:0] out_unnamed_poly69_poly6_avm_burstcount,
    output wire [31:0] out_memdep_4_poly6_avm_address,
    output wire [0:0] out_memdep_4_poly6_avm_enable,
    output wire [0:0] out_memdep_4_poly6_avm_read,
    output wire [0:0] out_memdep_4_poly6_avm_write,
    output wire [15:0] out_memdep_4_poly6_avm_writedata,
    output wire [1:0] out_memdep_4_poly6_avm_byteenable,
    output wire [0:0] out_memdep_4_poly6_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_poly61,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102299_q;
    wire [10:0] c_i11_1101_q;
    wire [1:0] c_i2_184_q;
    wire [31:0] c_i32_086_q;
    wire [31:0] c_i32_12614488_q;
    wire [31:0] c_i32_151372897_q;
    wire [31:0] c_i32_189_q;
    wire [31:0] c_i32_18921694_q;
    wire [31:0] c_i32_298598498_q;
    wire [31:0] c_i32_3291_q;
    wire [31:0] c_i32_43290_q;
    wire [31:0] c_i32_7292_q;
    wire [31:0] c_i32_95193_q;
    wire [63:0] c_poly6_a_pmem_q;
    wire [63:0] c_poly6_b_pmem_q;
    wire [63:0] c_poly6_c_pmem_q;
    wire [63:0] c_poly6_out_pmem_q;
    wire [32:0] i_add109_poly632_a;
    wire [32:0] i_add109_poly632_b;
    logic [32:0] i_add109_poly632_o;
    wire [32:0] i_add109_poly632_q;
    wire [32:0] i_add134_poly638_a;
    wire [32:0] i_add134_poly638_b;
    logic [32:0] i_add134_poly638_o;
    wire [32:0] i_add134_poly638_q;
    wire [32:0] i_add61_add12_poly625_a;
    wire [32:0] i_add61_add12_poly625_b;
    logic [32:0] i_add61_add12_poly625_o;
    wire [32:0] i_add61_add12_poly625_q;
    wire [11:0] i_add61_add12_poly625_vt_const_31_q;
    wire [31:0] i_add61_add12_poly625_vt_join_q;
    wire [18:0] i_add61_add12_poly625_vt_select_19_b;
    wire [2:0] i_add_poly616_vt_const_2_q;
    wire [12:0] i_add_poly616_vt_const_31_q;
    wire [31:0] i_add_poly616_vt_join_q;
    wire [15:0] i_add_poly616_vt_select_18_b;
    wire [63:0] i_arrayidx1418_poly651_vt_join_q;
    wire [62:0] i_arrayidx1418_poly651_vt_select_63_b;
    wire [63:0] i_arrayidx195_poly610_vt_join_q;
    wire [62:0] i_arrayidx195_poly610_vt_select_63_b;
    wire [63:0] i_arrayidx226_poly613_vt_join_q;
    wire [62:0] i_arrayidx226_poly613_vt_select_63_b;
    wire [63:0] i_arrayidx407_poly619_vt_join_q;
    wire [62:0] i_arrayidx407_poly619_vt_select_63_b;
    wire [1:0] i_cleanups_shl_poly65_vt_join_q;
    wire [0:0] i_cleanups_shl_poly65_vt_select_1_b;
    wire [15:0] i_conv20_poly612_vt_const_31_q;
    wire [31:0] i_conv20_poly612_vt_join_q;
    wire [15:0] i_conv20_poly612_vt_select_15_b;
    wire [31:0] i_conv23_poly615_vt_join_q;
    wire [15:0] i_conv23_poly615_vt_select_15_b;
    wire [31:0] i_conv41_poly621_vt_join_q;
    wire [15:0] i_conv41_poly621_vt_select_15_b;
    wire [32:0] i_dot_prod_add_poly642_a;
    wire [32:0] i_dot_prod_add_poly642_b;
    logic [32:0] i_dot_prod_add_poly642_o;
    wire [32:0] i_dot_prod_add_poly642_q;
    wire [11:0] i_fpga_indvars_iv_next6_poly663_a;
    wire [11:0] i_fpga_indvars_iv_next6_poly663_b;
    logic [11:0] i_fpga_indvars_iv_next6_poly663_o;
    wire [11:0] i_fpga_indvars_iv_next6_poly663_q;
    wire [63:0] i_idxprom18_poly69_vt_join_q;
    wire [31:0] i_idxprom18_poly69_vt_select_31_b;
    wire [32:0] i_inc143_poly653_a;
    wire [32:0] i_inc143_poly653_b;
    logic [32:0] i_inc143_poly653_o;
    wire [32:0] i_inc143_poly653_q;
    wire [31:0] i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_poly67_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_poly67_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1746_push18_poly667_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1746_push18_poly667_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_poly659_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_poly659_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_poly662_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_poly662_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k13_049_push16_poly654_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k13_049_push16_poly654_out_feedback_valid_out_16;
    wire [0:0] i_masked_poly665_qi;
    reg [0:0] i_masked_poly665_q;
    wire [32:0] i_mul13153_poly634_a;
    wire [32:0] i_mul13153_poly634_b;
    logic [32:0] i_mul13153_poly634_o;
    wire [32:0] i_mul13153_poly634_q;
    wire [31:0] i_mul33_poly618_vt_join_q;
    wire [28:0] i_mul33_poly618_vt_select_31_b;
    wire [31:0] i_mul62_poly627_vt_join_q;
    wire [30:0] i_mul62_poly627_vt_select_31_b;
    wire [0:0] i_next_cleanups_poly661_s;
    reg [1:0] i_next_cleanups_poly661_q;
    wire [0:0] i_notcmp_poly658_q;
    wire [0:0] i_or_poly660_q;
    wire [32:0] i_reass_add43_poly647_a;
    wire [32:0] i_reass_add43_poly647_b;
    logic [32:0] i_reass_add43_poly647_o;
    wire [32:0] i_reass_add43_poly647_q;
    wire [31:0] i_reass_add43_poly647_vt_join_q;
    wire [28:0] i_reass_add43_poly647_vt_select_31_b;
    wire [32:0] i_reass_add45_poly636_a;
    wire [32:0] i_reass_add45_poly636_b;
    logic [32:0] i_reass_add45_poly636_o;
    wire [32:0] i_reass_add45_poly636_q;
    wire [32:0] i_reass_add47_poly644_a;
    wire [32:0] i_reass_add47_poly644_b;
    logic [32:0] i_reass_add47_poly644_o;
    wire [32:0] i_reass_add47_poly644_q;
    wire [32:0] i_reass_add_poly617_a;
    wire [32:0] i_reass_add_poly617_b;
    logic [32:0] i_reass_add_poly617_o;
    wire [32:0] i_reass_add_poly617_q;
    wire [19:0] i_reass_add_poly617_vt_join_q;
    wire [16:0] i_reass_add_poly617_vt_select_19_b;
    wire [31:0] i_reass_mul44_poly648_vt_join_q;
    wire [28:0] i_reass_mul44_poly648_vt_select_31_b;
    wire [32:0] i_sub107_poly630_a;
    wire [32:0] i_sub107_poly630_b;
    logic [32:0] i_sub107_poly630_o;
    wire [32:0] i_sub107_poly630_q;
    wire [32:0] i_sub136_poly645_a;
    wire [32:0] i_sub136_poly645_b;
    logic [32:0] i_sub136_poly645_o;
    wire [32:0] i_sub136_poly645_q;
    wire [32:0] i_sub138_poly649_a;
    wire [32:0] i_sub138_poly649_b;
    logic [32:0] i_sub138_poly649_o;
    wire [32:0] i_sub138_poly649_q;
    wire [32:0] i_sub99_poly628_a;
    wire [32:0] i_sub99_poly628_b;
    logic [32:0] i_sub99_poly628_o;
    wire [32:0] i_sub99_poly628_q;
    wire [32:0] i_sub_poly626_a;
    wire [32:0] i_sub_poly626_b;
    logic [32:0] i_sub_poly626_o;
    wire [32:0] i_sub_poly626_q;
    wire [31:0] i_sub_poly626_vt_join_q;
    wire [30:0] i_sub_poly626_vt_select_31_b;
    wire [14:0] i_unnamed_poly624_vt_const_31_q;
    wire [31:0] i_unnamed_poly624_vt_join_q;
    wire [15:0] i_unnamed_poly624_vt_select_16_b;
    wire [0:0] i_xor_poly64_q;
    wire [31:0] bgTrunc_i_add109_poly632_sel_x_b;
    wire [31:0] bgTrunc_i_add134_poly638_sel_x_b;
    wire [31:0] bgTrunc_i_add61_add12_poly625_sel_x_b;
    wire [31:0] bgTrunc_i_dot_prod_add_poly642_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next6_poly663_sel_x_b;
    wire [31:0] bgTrunc_i_inc143_poly653_sel_x_b;
    wire [31:0] bgTrunc_i_mul100_poly629_sel_x_b;
    wire [31:0] bgTrunc_i_mul108_poly631_sel_x_b;
    wire [63:0] bgTrunc_i_mul110_poly633_sel_x_in;
    wire [31:0] bgTrunc_i_mul110_poly633_sel_x_b;
    wire [31:0] bgTrunc_i_mul119_neg_poly635_sel_x_b;
    wire [31:0] bgTrunc_i_mul13153_poly634_sel_x_b;
    wire [31:0] bgTrunc_i_mul135_neg_poly639_sel_x_b;
    wire [31:0] bgTrunc_i_mul137_poly646_sel_x_b;
    wire [31:0] bgTrunc_i_mul33_poly618_sel_x_b;
    wire [31:0] bgTrunc_i_mul52_poly623_sel_x_b;
    wire [63:0] bgTrunc_i_mul62_poly627_sel_x_in;
    wire [31:0] bgTrunc_i_mul62_poly627_sel_x_b;
    wire [31:0] bgTrunc_i_reass_add43_poly647_sel_x_b;
    wire [31:0] bgTrunc_i_reass_add45_poly636_sel_x_b;
    wire [31:0] bgTrunc_i_reass_add46_poly643_sel_x_b;
    wire [31:0] bgTrunc_i_reass_add47_poly644_sel_x_b;
    wire [31:0] bgTrunc_i_reass_add_poly617_sel_x_b;
    wire [31:0] bgTrunc_i_reass_mul44_poly648_sel_x_b;
    wire [31:0] bgTrunc_i_reass_mul_poly637_sel_x_b;
    wire [31:0] bgTrunc_i_sub107_poly630_sel_x_b;
    wire [31:0] bgTrunc_i_sub136_poly645_sel_x_b;
    wire [31:0] bgTrunc_i_sub138_poly649_sel_x_b;
    wire [31:0] bgTrunc_i_sub99_poly628_sel_x_b;
    wire [31:0] bgTrunc_i_sub_poly626_sel_x_b;
    wire [15:0] dupName_0_i_conv20_poly612_vt_join_narrowed_x_b;
    wire [15:0] dupName_0_i_conv23_poly615_vt_join_narrowed_x_b;
    wire [15:0] dupName_0_i_conv41_poly621_vt_join_narrowed_x_b;
    wire [64:0] i_arrayidx1418_poly60_add_x_a;
    wire [64:0] i_arrayidx1418_poly60_add_x_b;
    logic [64:0] i_arrayidx1418_poly60_add_x_o;
    wire [64:0] i_arrayidx1418_poly60_add_x_q;
    wire [127:0] i_arrayidx1418_poly60_mult_extender_x_q;
    wire [61:0] i_arrayidx1418_poly60_mult_multconst_x_q;
    wire [63:0] i_arrayidx1418_poly60_trunc_sel_x_b;
    wire [63:0] i_arrayidx1418_poly60_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx195_poly60_add_x_a;
    wire [64:0] i_arrayidx195_poly60_add_x_b;
    logic [64:0] i_arrayidx195_poly60_add_x_o;
    wire [64:0] i_arrayidx195_poly60_add_x_q;
    wire [127:0] i_arrayidx195_poly60_mult_extender_x_q;
    wire [63:0] i_arrayidx195_poly60_trunc_sel_x_b;
    wire [63:0] i_arrayidx195_poly60_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx226_poly60_add_x_a;
    wire [64:0] i_arrayidx226_poly60_add_x_b;
    logic [64:0] i_arrayidx226_poly60_add_x_o;
    wire [64:0] i_arrayidx226_poly60_add_x_q;
    wire [127:0] i_arrayidx226_poly60_mult_extender_x_q;
    wire [63:0] i_arrayidx226_poly60_trunc_sel_x_b;
    wire [63:0] i_arrayidx226_poly60_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx407_poly60_add_x_a;
    wire [64:0] i_arrayidx407_poly60_add_x_b;
    logic [64:0] i_arrayidx407_poly60_add_x_o;
    wire [64:0] i_arrayidx407_poly60_add_x_q;
    wire [127:0] i_arrayidx407_poly60_mult_extender_x_q;
    wire [63:0] i_arrayidx407_poly60_trunc_sel_x_b;
    wire [63:0] i_arrayidx407_poly60_dupName_0_trunc_sel_x_b;
    wire [15:0] i_conv139_poly650_sel_x_b;
    wire [31:0] i_conv20_poly612_sel_x_b;
    wire [31:0] i_conv23_poly615_sel_x_b;
    wire [31:0] i_conv41_poly621_sel_x_b;
    wire [0:0] i_first_cleanup_poly63_sel_x_b;
    wire [63:0] i_idxprom18_poly69_sel_x_b;
    wire [63:0] i_mul100_poly629_extender_x_q;
    wire [63:0] i_mul108_poly631_extender_x_q;
    wire [63:0] i_mul119_neg_poly635_extender_x_q;
    wire [63:0] i_mul135_neg_poly639_extender_x_q;
    wire [63:0] i_mul137_poly646_extender_x_q;
    wire [63:0] i_mul33_poly618_extender_x_q;
    wire [27:0] i_mul33_poly618_multconst_x_q;
    wire [63:0] i_mul52_poly623_extender_x_q;
    wire [63:0] i_reass_add46_poly643_extender_x_q;
    wire [63:0] i_reass_mul44_poly648_extender_x_q;
    wire [63:0] i_reass_mul_poly637_extender_x_q;
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
    wire i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [2:0] i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire [0:0] i_exitcond7_poly656_cmp_nsign_q;
    wire [47:0] i_mul100_poly629_sums_align_1_q;
    wire [47:0] i_mul100_poly629_sums_align_1_qint;
    wire [48:0] i_mul100_poly629_sums_result_add_0_0_a;
    wire [48:0] i_mul100_poly629_sums_result_add_0_0_b;
    logic [48:0] i_mul100_poly629_sums_result_add_0_0_o;
    wire [48:0] i_mul100_poly629_sums_result_add_0_0_q;
    wire [47:0] i_mul108_poly631_sums_align_1_q;
    wire [47:0] i_mul108_poly631_sums_align_1_qint;
    wire [48:0] i_mul108_poly631_sums_result_add_0_0_a;
    wire [48:0] i_mul108_poly631_sums_result_add_0_0_b;
    logic [48:0] i_mul108_poly631_sums_result_add_0_0_o;
    wire [48:0] i_mul108_poly631_sums_result_add_0_0_q;
    wire [63:0] i_mul110_poly633_sums_join_0_q;
    wire [50:0] i_mul110_poly633_sums_align_1_q;
    wire [50:0] i_mul110_poly633_sums_align_1_qint;
    wire [64:0] i_mul110_poly633_sums_result_add_0_0_a;
    wire [64:0] i_mul110_poly633_sums_result_add_0_0_b;
    logic [64:0] i_mul110_poly633_sums_result_add_0_0_o;
    wire [64:0] i_mul110_poly633_sums_result_add_0_0_q;
    wire [47:0] i_mul119_neg_poly635_sums_align_1_q;
    wire [47:0] i_mul119_neg_poly635_sums_align_1_qint;
    wire [48:0] i_mul119_neg_poly635_sums_result_add_0_0_a;
    wire [48:0] i_mul119_neg_poly635_sums_result_add_0_0_b;
    logic [48:0] i_mul119_neg_poly635_sums_result_add_0_0_o;
    wire [48:0] i_mul119_neg_poly635_sums_result_add_0_0_q;
    wire [47:0] i_mul135_neg_poly639_sums_align_1_q;
    wire [47:0] i_mul135_neg_poly639_sums_align_1_qint;
    wire [48:0] i_mul135_neg_poly639_sums_result_add_0_0_a;
    wire [48:0] i_mul135_neg_poly639_sums_result_add_0_0_b;
    logic [48:0] i_mul135_neg_poly639_sums_result_add_0_0_o;
    wire [48:0] i_mul135_neg_poly639_sums_result_add_0_0_q;
    wire [47:0] i_mul137_poly646_sums_align_1_q;
    wire [47:0] i_mul137_poly646_sums_align_1_qint;
    wire [48:0] i_mul137_poly646_sums_result_add_0_0_a;
    wire [48:0] i_mul137_poly646_sums_result_add_0_0_b;
    logic [48:0] i_mul137_poly646_sums_result_add_0_0_o;
    wire [48:0] i_mul137_poly646_sums_result_add_0_0_q;
    wire [47:0] i_mul52_poly623_sums_align_1_q;
    wire [47:0] i_mul52_poly623_sums_align_1_qint;
    wire [48:0] i_mul52_poly623_sums_result_add_0_0_a;
    wire [48:0] i_mul52_poly623_sums_result_add_0_0_b;
    logic [48:0] i_mul52_poly623_sums_result_add_0_0_o;
    wire [48:0] i_mul52_poly623_sums_result_add_0_0_q;
    wire [63:0] i_mul62_poly627_sums_join_0_q;
    wire [50:0] i_mul62_poly627_sums_align_1_q;
    wire [50:0] i_mul62_poly627_sums_align_1_qint;
    wire [64:0] i_mul62_poly627_sums_result_add_0_0_a;
    wire [64:0] i_mul62_poly627_sums_result_add_0_0_b;
    logic [64:0] i_mul62_poly627_sums_result_add_0_0_o;
    wire [64:0] i_mul62_poly627_sums_result_add_0_0_q;
    wire [47:0] i_reass_add46_poly643_sums_align_1_q;
    wire [47:0] i_reass_add46_poly643_sums_align_1_qint;
    wire [48:0] i_reass_add46_poly643_sums_result_add_0_0_a;
    wire [48:0] i_reass_add46_poly643_sums_result_add_0_0_b;
    logic [48:0] i_reass_add46_poly643_sums_result_add_0_0_o;
    wire [48:0] i_reass_add46_poly643_sums_result_add_0_0_q;
    wire [47:0] i_reass_mul44_poly648_sums_align_1_q;
    wire [47:0] i_reass_mul44_poly648_sums_align_1_qint;
    wire [48:0] i_reass_mul44_poly648_sums_result_add_0_0_a;
    wire [48:0] i_reass_mul44_poly648_sums_result_add_0_0_b;
    logic [48:0] i_reass_mul44_poly648_sums_result_add_0_0_o;
    wire [48:0] i_reass_mul44_poly648_sums_result_add_0_0_q;
    wire [47:0] i_reass_mul_poly637_sums_align_1_q;
    wire [47:0] i_reass_mul_poly637_sums_align_1_qint;
    wire [48:0] i_reass_mul_poly637_sums_result_add_0_0_a;
    wire [48:0] i_reass_mul_poly637_sums_result_add_0_0_b;
    logic [48:0] i_reass_mul_poly637_sums_result_add_0_0_o;
    wire [48:0] i_reass_mul_poly637_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid487_i_add_poly60_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid487_i_add_poly60_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid488_i_add_poly60_shift_x_q;
    wire [0:0] leftShiftStage0_uid490_i_add_poly60_shift_x_s;
    reg [31:0] leftShiftStage0_uid490_i_add_poly60_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid491_i_add_poly60_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid492_i_add_poly60_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid492_i_add_poly60_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid493_i_add_poly60_shift_x_q;
    wire [0:0] leftShiftStage1_uid495_i_add_poly60_shift_x_s;
    reg [31:0] leftShiftStage1_uid495_i_add_poly60_shift_x_q;
    wire [35:0] i_arrayidx1418_poly60_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx1418_poly60_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx1418_poly60_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx1418_poly60_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx1418_poly60_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx1418_poly60_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx1418_poly60_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx1418_poly60_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx195_poly60_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx195_poly60_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx195_poly60_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx195_poly60_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx195_poly60_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx195_poly60_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx195_poly60_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx195_poly60_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx195_poly60_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx195_poly60_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx195_poly60_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx195_poly60_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx226_poly60_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx226_poly60_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx226_poly60_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx226_poly60_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx226_poly60_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx226_poly60_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx226_poly60_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx226_poly60_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx226_poly60_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx226_poly60_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx226_poly60_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx226_poly60_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx407_poly60_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx407_poly60_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx407_poly60_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx407_poly60_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx407_poly60_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx407_poly60_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx407_poly60_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx407_poly60_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx407_poly60_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx407_poly60_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx407_poly60_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx407_poly60_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid572_i_cleanups_shl_poly60_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid572_i_cleanups_shl_poly60_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid573_i_cleanups_shl_poly60_shift_x_q;
    wire [0:0] leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_s;
    reg [1:0] leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_q;
    wire [10:0] i_arrayidx1418_poly60_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx1418_poly60_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx1418_poly60_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx1418_poly60_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx1418_poly60_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx1418_poly60_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx1418_poly60_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx1418_poly60_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx195_poly60_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx195_poly60_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx195_poly60_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx195_poly60_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx195_poly60_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx195_poly60_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx195_poly60_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx195_poly60_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx226_poly60_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx226_poly60_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx226_poly60_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx226_poly60_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx226_poly60_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx226_poly60_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx226_poly60_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx226_poly60_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx407_poly60_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx407_poly60_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx407_poly60_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx407_poly60_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx407_poly60_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx407_poly60_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx407_poly60_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx407_poly60_mult_x_im9_shift0_qint;
    wire i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_reset;
    wire [15:0] i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_a0;
    wire [15:0] i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_c0;
    wire [31:0] i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_s0;
    wire [31:0] i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_qq;
    wire [31:0] i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_q;
    wire i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena0;
    wire i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena1;
    wire i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena2;
    wire i_mul33_poly618_cma_reset;
    wire [19:0] i_mul33_poly618_cma_a0;
    wire [15:0] i_mul33_poly618_cma_c0;
    wire [35:0] i_mul33_poly618_cma_s0;
    wire [35:0] i_mul33_poly618_cma_qq;
    wire [35:0] i_mul33_poly618_cma_q;
    wire i_mul33_poly618_cma_ena0;
    wire i_mul33_poly618_cma_ena1;
    wire i_mul33_poly618_cma_ena2;
    wire i_mul100_poly629_im0_cma_reset;
    wire [15:0] i_mul100_poly629_im0_cma_a0;
    wire [13:0] i_mul100_poly629_im0_cma_c0;
    wire [29:0] i_mul100_poly629_im0_cma_s0;
    wire [29:0] i_mul100_poly629_im0_cma_qq;
    wire [29:0] i_mul100_poly629_im0_cma_q;
    wire i_mul100_poly629_im0_cma_ena0;
    wire i_mul100_poly629_im0_cma_ena1;
    wire i_mul100_poly629_im0_cma_ena2;
    wire i_mul100_poly629_im3_cma_reset;
    wire [17:0] i_mul100_poly629_im3_cma_a0;
    wire [15:0] i_mul100_poly629_im3_cma_c0;
    wire [33:0] i_mul100_poly629_im3_cma_s0;
    wire [33:0] i_mul100_poly629_im3_cma_qq;
    wire [33:0] i_mul100_poly629_im3_cma_q;
    wire i_mul100_poly629_im3_cma_ena0;
    wire i_mul100_poly629_im3_cma_ena1;
    wire i_mul100_poly629_im3_cma_ena2;
    wire i_mul108_poly631_im0_cma_reset;
    wire [15:0] i_mul108_poly631_im0_cma_a0;
    wire [13:0] i_mul108_poly631_im0_cma_c0;
    wire [29:0] i_mul108_poly631_im0_cma_s0;
    wire [29:0] i_mul108_poly631_im0_cma_qq;
    wire [29:0] i_mul108_poly631_im0_cma_q;
    wire i_mul108_poly631_im0_cma_ena0;
    wire i_mul108_poly631_im0_cma_ena1;
    wire i_mul108_poly631_im0_cma_ena2;
    wire i_mul108_poly631_im3_cma_reset;
    wire [17:0] i_mul108_poly631_im3_cma_a0;
    wire [15:0] i_mul108_poly631_im3_cma_c0;
    wire [33:0] i_mul108_poly631_im3_cma_s0;
    wire [33:0] i_mul108_poly631_im3_cma_qq;
    wire [33:0] i_mul108_poly631_im3_cma_q;
    wire i_mul108_poly631_im3_cma_ena0;
    wire i_mul108_poly631_im3_cma_ena1;
    wire i_mul108_poly631_im3_cma_ena2;
    wire i_mul110_poly633_im0_cma_reset;
    wire [13:0] i_mul110_poly633_im0_cma_a0;
    wire [13:0] i_mul110_poly633_im0_cma_c0;
    wire [27:0] i_mul110_poly633_im0_cma_s0;
    wire [27:0] i_mul110_poly633_im0_cma_qq;
    wire [27:0] i_mul110_poly633_im0_cma_q;
    wire i_mul110_poly633_im0_cma_ena0;
    wire i_mul110_poly633_im0_cma_ena1;
    wire i_mul110_poly633_im0_cma_ena2;
    wire i_mul110_poly633_im8_cma_reset;
    wire [17:0] i_mul110_poly633_im8_cma_a0;
    wire [17:0] i_mul110_poly633_im8_cma_c0;
    wire [35:0] i_mul110_poly633_im8_cma_s0;
    wire [35:0] i_mul110_poly633_im8_cma_qq;
    wire [35:0] i_mul110_poly633_im8_cma_q;
    wire i_mul110_poly633_im8_cma_ena0;
    wire i_mul110_poly633_im8_cma_ena1;
    wire i_mul110_poly633_im8_cma_ena2;
    wire i_mul119_neg_poly635_im0_cma_reset;
    wire [15:0] i_mul119_neg_poly635_im0_cma_a0;
    wire [13:0] i_mul119_neg_poly635_im0_cma_c0;
    wire [29:0] i_mul119_neg_poly635_im0_cma_s0;
    wire [29:0] i_mul119_neg_poly635_im0_cma_qq;
    wire [29:0] i_mul119_neg_poly635_im0_cma_q;
    wire i_mul119_neg_poly635_im0_cma_ena0;
    wire i_mul119_neg_poly635_im0_cma_ena1;
    wire i_mul119_neg_poly635_im0_cma_ena2;
    wire i_mul119_neg_poly635_im3_cma_reset;
    wire [17:0] i_mul119_neg_poly635_im3_cma_a0;
    wire [15:0] i_mul119_neg_poly635_im3_cma_c0;
    wire [33:0] i_mul119_neg_poly635_im3_cma_s0;
    wire [33:0] i_mul119_neg_poly635_im3_cma_qq;
    wire [33:0] i_mul119_neg_poly635_im3_cma_q;
    wire i_mul119_neg_poly635_im3_cma_ena0;
    wire i_mul119_neg_poly635_im3_cma_ena1;
    wire i_mul119_neg_poly635_im3_cma_ena2;
    wire i_mul135_neg_poly639_im0_cma_reset;
    wire [15:0] i_mul135_neg_poly639_im0_cma_a0;
    wire [13:0] i_mul135_neg_poly639_im0_cma_c0;
    wire [29:0] i_mul135_neg_poly639_im0_cma_s0;
    wire [29:0] i_mul135_neg_poly639_im0_cma_qq;
    wire [29:0] i_mul135_neg_poly639_im0_cma_q;
    wire i_mul135_neg_poly639_im0_cma_ena0;
    wire i_mul135_neg_poly639_im0_cma_ena1;
    wire i_mul135_neg_poly639_im0_cma_ena2;
    wire i_mul135_neg_poly639_im3_cma_reset;
    wire [17:0] i_mul135_neg_poly639_im3_cma_a0;
    wire [15:0] i_mul135_neg_poly639_im3_cma_c0;
    wire [33:0] i_mul135_neg_poly639_im3_cma_s0;
    wire [33:0] i_mul135_neg_poly639_im3_cma_qq;
    wire [33:0] i_mul135_neg_poly639_im3_cma_q;
    wire i_mul135_neg_poly639_im3_cma_ena0;
    wire i_mul135_neg_poly639_im3_cma_ena1;
    wire i_mul135_neg_poly639_im3_cma_ena2;
    wire i_mul137_poly646_im0_cma_reset;
    wire [15:0] i_mul137_poly646_im0_cma_a0;
    wire [13:0] i_mul137_poly646_im0_cma_c0;
    wire [29:0] i_mul137_poly646_im0_cma_s0;
    wire [29:0] i_mul137_poly646_im0_cma_qq;
    wire [29:0] i_mul137_poly646_im0_cma_q;
    wire i_mul137_poly646_im0_cma_ena0;
    wire i_mul137_poly646_im0_cma_ena1;
    wire i_mul137_poly646_im0_cma_ena2;
    wire i_mul137_poly646_im3_cma_reset;
    wire [17:0] i_mul137_poly646_im3_cma_a0;
    wire [15:0] i_mul137_poly646_im3_cma_c0;
    wire [33:0] i_mul137_poly646_im3_cma_s0;
    wire [33:0] i_mul137_poly646_im3_cma_qq;
    wire [33:0] i_mul137_poly646_im3_cma_q;
    wire i_mul137_poly646_im3_cma_ena0;
    wire i_mul137_poly646_im3_cma_ena1;
    wire i_mul137_poly646_im3_cma_ena2;
    wire i_mul52_poly623_im0_cma_reset;
    wire [15:0] i_mul52_poly623_im0_cma_a0;
    wire [13:0] i_mul52_poly623_im0_cma_c0;
    wire [29:0] i_mul52_poly623_im0_cma_s0;
    wire [29:0] i_mul52_poly623_im0_cma_qq;
    wire [29:0] i_mul52_poly623_im0_cma_q;
    wire i_mul52_poly623_im0_cma_ena0;
    wire i_mul52_poly623_im0_cma_ena1;
    wire i_mul52_poly623_im0_cma_ena2;
    wire i_mul52_poly623_im3_cma_reset;
    wire [17:0] i_mul52_poly623_im3_cma_a0;
    wire [15:0] i_mul52_poly623_im3_cma_c0;
    wire [33:0] i_mul52_poly623_im3_cma_s0;
    wire [33:0] i_mul52_poly623_im3_cma_qq;
    wire [33:0] i_mul52_poly623_im3_cma_q;
    wire i_mul52_poly623_im3_cma_ena0;
    wire i_mul52_poly623_im3_cma_ena1;
    wire i_mul52_poly623_im3_cma_ena2;
    wire i_mul62_poly627_im0_cma_reset;
    wire [13:0] i_mul62_poly627_im0_cma_a0;
    wire [13:0] i_mul62_poly627_im0_cma_c0;
    wire [27:0] i_mul62_poly627_im0_cma_s0;
    wire [27:0] i_mul62_poly627_im0_cma_qq;
    wire [27:0] i_mul62_poly627_im0_cma_q;
    wire i_mul62_poly627_im0_cma_ena0;
    wire i_mul62_poly627_im0_cma_ena1;
    wire i_mul62_poly627_im0_cma_ena2;
    wire i_mul62_poly627_im8_cma_reset;
    wire [17:0] i_mul62_poly627_im8_cma_a0;
    wire [17:0] i_mul62_poly627_im8_cma_c0;
    wire [35:0] i_mul62_poly627_im8_cma_s0;
    wire [35:0] i_mul62_poly627_im8_cma_qq;
    wire [35:0] i_mul62_poly627_im8_cma_q;
    wire i_mul62_poly627_im8_cma_ena0;
    wire i_mul62_poly627_im8_cma_ena1;
    wire i_mul62_poly627_im8_cma_ena2;
    wire i_reass_add46_poly643_im0_cma_reset;
    wire [15:0] i_reass_add46_poly643_im0_cma_a0;
    wire [13:0] i_reass_add46_poly643_im0_cma_c0;
    wire [29:0] i_reass_add46_poly643_im0_cma_s0;
    wire [29:0] i_reass_add46_poly643_im0_cma_qq;
    wire [29:0] i_reass_add46_poly643_im0_cma_q;
    wire i_reass_add46_poly643_im0_cma_ena0;
    wire i_reass_add46_poly643_im0_cma_ena1;
    wire i_reass_add46_poly643_im0_cma_ena2;
    wire i_reass_add46_poly643_im3_cma_reset;
    wire [17:0] i_reass_add46_poly643_im3_cma_a0;
    wire [15:0] i_reass_add46_poly643_im3_cma_c0;
    wire [33:0] i_reass_add46_poly643_im3_cma_s0;
    wire [33:0] i_reass_add46_poly643_im3_cma_qq;
    wire [33:0] i_reass_add46_poly643_im3_cma_q;
    wire i_reass_add46_poly643_im3_cma_ena0;
    wire i_reass_add46_poly643_im3_cma_ena1;
    wire i_reass_add46_poly643_im3_cma_ena2;
    wire i_reass_mul44_poly648_im0_cma_reset;
    wire [15:0] i_reass_mul44_poly648_im0_cma_a0;
    wire [13:0] i_reass_mul44_poly648_im0_cma_c0;
    wire [29:0] i_reass_mul44_poly648_im0_cma_s0;
    wire [29:0] i_reass_mul44_poly648_im0_cma_qq;
    wire [29:0] i_reass_mul44_poly648_im0_cma_q;
    wire i_reass_mul44_poly648_im0_cma_ena0;
    wire i_reass_mul44_poly648_im0_cma_ena1;
    wire i_reass_mul44_poly648_im0_cma_ena2;
    wire i_reass_mul44_poly648_im3_cma_reset;
    wire [17:0] i_reass_mul44_poly648_im3_cma_a0;
    wire [15:0] i_reass_mul44_poly648_im3_cma_c0;
    wire [33:0] i_reass_mul44_poly648_im3_cma_s0;
    wire [33:0] i_reass_mul44_poly648_im3_cma_qq;
    wire [33:0] i_reass_mul44_poly648_im3_cma_q;
    wire i_reass_mul44_poly648_im3_cma_ena0;
    wire i_reass_mul44_poly648_im3_cma_ena1;
    wire i_reass_mul44_poly648_im3_cma_ena2;
    wire i_reass_mul_poly637_im0_cma_reset;
    wire [15:0] i_reass_mul_poly637_im0_cma_a0;
    wire [13:0] i_reass_mul_poly637_im0_cma_c0;
    wire [29:0] i_reass_mul_poly637_im0_cma_s0;
    wire [29:0] i_reass_mul_poly637_im0_cma_qq;
    wire [29:0] i_reass_mul_poly637_im0_cma_q;
    wire i_reass_mul_poly637_im0_cma_ena0;
    wire i_reass_mul_poly637_im0_cma_ena1;
    wire i_reass_mul_poly637_im0_cma_ena2;
    wire i_reass_mul_poly637_im3_cma_reset;
    wire [17:0] i_reass_mul_poly637_im3_cma_a0;
    wire [15:0] i_reass_mul_poly637_im3_cma_c0;
    wire [33:0] i_reass_mul_poly637_im3_cma_s0;
    wire [33:0] i_reass_mul_poly637_im3_cma_qq;
    wire [33:0] i_reass_mul_poly637_im3_cma_q;
    wire i_reass_mul_poly637_im3_cma_ena0;
    wire i_reass_mul_poly637_im3_cma_ena1;
    wire i_reass_mul_poly637_im3_cma_ena2;
    wire i_mul110_poly633_ma3_cma_reset;
    wire [13:0] i_mul110_poly633_ma3_cma_a0;
    wire [17:0] i_mul110_poly633_ma3_cma_c0;
    wire [13:0] i_mul110_poly633_ma3_cma_a1;
    wire [17:0] i_mul110_poly633_ma3_cma_c1;
    wire [32:0] i_mul110_poly633_ma3_cma_s0;
    wire [32:0] i_mul110_poly633_ma3_cma_qq;
    wire [32:0] i_mul110_poly633_ma3_cma_q;
    wire i_mul110_poly633_ma3_cma_ena0;
    wire i_mul110_poly633_ma3_cma_ena1;
    wire i_mul110_poly633_ma3_cma_ena2;
    wire i_mul62_poly627_ma3_cma_reset;
    wire [13:0] i_mul62_poly627_ma3_cma_a0;
    wire [17:0] i_mul62_poly627_ma3_cma_c0;
    wire [13:0] i_mul62_poly627_ma3_cma_a1;
    wire [17:0] i_mul62_poly627_ma3_cma_c1;
    wire [32:0] i_mul62_poly627_ma3_cma_s0;
    wire [32:0] i_mul62_poly627_ma3_cma_qq;
    wire [32:0] i_mul62_poly627_ma3_cma_q;
    wire i_mul62_poly627_ma3_cma_ena0;
    wire i_mul62_poly627_ma3_cma_ena1;
    wire i_mul62_poly627_ma3_cma_ena2;
    wire [9:0] i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e;
    wire [13:0] i_reass_mul44_poly648_bs1_merged_bit_select_b;
    wire [17:0] i_reass_mul44_poly648_bs1_merged_bit_select_c;
    wire [13:0] i_mul62_poly627_bs2_merged_bit_select_b;
    wire [17:0] i_mul62_poly627_bs2_merged_bit_select_c;
    wire [13:0] i_mul110_poly633_bs1_merged_bit_select_b;
    wire [17:0] i_mul110_poly633_bs1_merged_bit_select_c;
    wire [13:0] i_mul135_neg_poly639_bs1_merged_bit_select_b;
    wire [17:0] i_mul135_neg_poly639_bs1_merged_bit_select_c;
    wire [13:0] i_reass_add46_poly643_bs1_merged_bit_select_b;
    wire [17:0] i_reass_add46_poly643_bs1_merged_bit_select_c;
    wire [13:0] i_mul119_neg_poly635_bs1_merged_bit_select_b;
    wire [17:0] i_mul119_neg_poly635_bs1_merged_bit_select_c;
    wire [13:0] i_mul62_poly627_bs1_merged_bit_select_b;
    wire [17:0] i_mul62_poly627_bs1_merged_bit_select_c;
    wire [13:0] i_reass_mul_poly637_bs1_merged_bit_select_b;
    wire [17:0] i_reass_mul_poly637_bs1_merged_bit_select_c;
    wire [13:0] i_mul108_poly631_bs1_merged_bit_select_b;
    wire [17:0] i_mul108_poly631_bs1_merged_bit_select_c;
    wire [13:0] i_mul137_poly646_bs1_merged_bit_select_b;
    wire [17:0] i_mul137_poly646_bs1_merged_bit_select_c;
    wire [13:0] i_mul100_poly629_bs1_merged_bit_select_b;
    wire [17:0] i_mul100_poly629_bs1_merged_bit_select_c;
    wire [13:0] i_mul110_poly633_bs2_merged_bit_select_b;
    wire [17:0] i_mul110_poly633_bs2_merged_bit_select_c;
    reg [0:0] redist4_valid_fanout_reg0_q_1_q;
    reg [0:0] redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist6_sync_together116_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist7_sync_together116_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together116_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist9_sync_together116_aunroll_x_in_i_valid_21_q;
    reg [15:0] redist12_dupName_0_i_conv20_poly612_vt_join_narrowed_x_b_1_q;
    reg [31:0] redist13_bgTrunc_i_reass_mul_poly637_sel_x_b_1_q;
    reg [31:0] redist15_bgTrunc_i_mul137_poly646_sel_x_b_1_q;
    reg [31:0] redist16_bgTrunc_i_mul135_neg_poly639_sel_x_b_1_q;
    reg [31:0] redist17_bgTrunc_i_mul119_neg_poly635_sel_x_b_1_q;
    reg [31:0] redist18_bgTrunc_i_mul110_poly633_sel_x_b_1_q;
    reg [31:0] redist19_bgTrunc_i_mul108_poly631_sel_x_b_1_q;
    reg [31:0] redist20_bgTrunc_i_mul100_poly629_sel_x_b_1_q;
    reg [0:0] redist21_i_xor_poly64_q_1_q;
    reg [0:0] redist22_i_xor_poly64_q_9_q;
    reg [0:0] redist23_i_xor_poly64_q_21_q;
    reg [30:0] redist25_i_mul62_poly627_vt_select_31_b_2_q;
    reg [30:0] redist25_i_mul62_poly627_vt_select_31_b_2_delay_0;
    reg [0:0] redist26_i_masked_poly665_q_22_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out_1_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_1_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_22_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_2_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_23_q;
    reg [15:0] redist33_i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata_1_q;
    reg [15:0] redist34_i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata_1_q;
    reg [9:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_outputreg0_q;
    wire redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_reset0;
    wire [9:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_ia;
    wire [2:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_aa;
    wire [2:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_ab;
    wire [9:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_iq;
    wire [9:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_q;
    wire [2:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_q;
    (* preserve *) reg [2:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i;
    (* preserve *) reg redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_eq;
    reg [2:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_wraddr_q;
    wire [3:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_last_q;
    wire [3:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmp_b;
    wire [0:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmp_q;
    (* dont_merge *) reg [0:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmpReg_q;
    wire [0:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_notEnable_q;
    wire [0:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_nor_q;
    (* dont_merge *) reg [0:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_sticky_ena_q;
    wire [0:0] redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_enaAnd_q;
    reg [17:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_outputreg0_q;
    wire redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_reset0;
    wire [17:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_ia;
    wire [2:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_aa;
    wire [2:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_ab;
    wire [17:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_iq;
    wire [17:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_q;
    wire [2:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_q;
    (* preserve *) reg [2:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i;
    (* preserve *) reg redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_eq;
    reg [2:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_wraddr_q;
    wire [3:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_last_q;
    wire [3:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmp_b;
    wire [0:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmp_q;
    (* dont_merge *) reg [0:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmpReg_q;
    wire [0:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_notEnable_q;
    wire [0:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_nor_q;
    (* dont_merge *) reg [0:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_sticky_ena_q;
    wire [0:0] redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_enaAnd_q;
    reg [17:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_outputreg0_q;
    wire redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_reset0;
    wire [17:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_ia;
    wire [2:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_aa;
    wire [2:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_ab;
    wire [17:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_iq;
    wire [17:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_q;
    wire [2:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_q;
    (* preserve *) reg [2:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i;
    (* preserve *) reg redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_eq;
    reg [2:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_wraddr_q;
    wire [3:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_last_q;
    wire [3:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmp_b;
    wire [0:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmp_q;
    (* dont_merge *) reg [0:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmpReg_q;
    wire [0:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_notEnable_q;
    wire [0:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_nor_q;
    (* dont_merge *) reg [0:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_sticky_ena_q;
    wire [0:0] redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_enaAnd_q;
    reg [17:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_outputreg0_q;
    wire redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_reset0;
    wire [17:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_ia;
    wire [2:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_aa;
    wire [2:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_ab;
    wire [17:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_iq;
    wire [17:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_q;
    wire [2:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_q;
    (* preserve *) reg [2:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i;
    (* preserve *) reg redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_eq;
    reg [2:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_wraddr_q;
    wire [3:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_last_q;
    wire [3:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmp_b;
    wire [0:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmp_q;
    (* dont_merge *) reg [0:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmpReg_q;
    wire [0:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_notEnable_q;
    wire [0:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_nor_q;
    (* dont_merge *) reg [0:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_sticky_ena_q;
    wire [0:0] redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_enaAnd_q;
    reg [15:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_inputreg0_q;
    wire redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_reset0;
    wire [15:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_ia;
    wire [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_aa;
    wire [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_ab;
    wire [15:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_iq;
    wire [15:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_q;
    wire [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_i;
    reg [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_cmpReg_q;
    wire [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_notEnable_q;
    wire [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_sticky_ena_q;
    wire [0:0] redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_enaAnd_q;
    wire redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_reset0;
    wire [15:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_ia;
    wire [1:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_aa;
    wire [1:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_ab;
    wire [15:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_iq;
    wire [15:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    wire [1:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_q;
    (* preserve *) reg [1:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i;
    (* preserve *) reg redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_eq;
    reg [1:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_wraddr_q;
    wire [1:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_last_q;
    wire [0:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmp_q;
    (* dont_merge *) reg [0:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmpReg_q;
    wire [0:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_notEnable_q;
    wire [0:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_sticky_ena_q;
    wire [0:0] redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_enaAnd_q;
    reg [31:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_inputreg0_q;
    reg [31:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_outputreg0_q;
    wire redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_reset0;
    wire [31:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_ia;
    wire [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_aa;
    wire [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_ab;
    wire [31:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_iq;
    wire [31:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_q;
    wire [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_q;
    (* preserve *) reg [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_i;
    reg [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_cmpReg_q;
    wire [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_notEnable_q;
    wire [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_nor_q;
    (* dont_merge *) reg [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_sticky_ena_q;
    wire [0:0] redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_enaAnd_q;
    reg [28:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_inputreg0_q;
    reg [28:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_outputreg0_q;
    wire redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_reset0;
    wire [28:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_ia;
    wire [2:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_aa;
    wire [2:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_ab;
    wire [28:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_iq;
    wire [28:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_q;
    wire [2:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_q;
    (* preserve *) reg [2:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i;
    (* preserve *) reg redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_eq;
    reg [2:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_wraddr_q;
    wire [3:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_last_q;
    wire [3:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmp_b;
    wire [0:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmp_q;
    (* dont_merge *) reg [0:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmpReg_q;
    wire [0:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_notEnable_q;
    wire [0:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_nor_q;
    (* dont_merge *) reg [0:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_sticky_ena_q;
    wire [0:0] redist24_i_reass_mul44_poly648_vt_select_31_b_9_enaAnd_q;
    reg [62:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_inputreg0_q;
    wire redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_reset0;
    wire [62:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_ia;
    wire [3:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_aa;
    wire [3:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_ab;
    wire [62:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_iq;
    wire [62:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_q;
    wire [3:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_q;
    (* preserve *) reg [3:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i;
    (* preserve *) reg redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_eq;
    reg [3:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_wraddr_q;
    wire [4:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_last_q;
    wire [4:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmp_b;
    wire [0:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmp_q;
    (* dont_merge *) reg [0:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmpReg_q;
    wire [0:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_notEnable_q;
    wire [0:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_nor_q;
    (* dont_merge *) reg [0:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_sticky_ena_q;
    wire [0:0] redist35_i_arrayidx1418_poly651_vt_select_63_b_12_enaAnd_q;
    reg [18:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_outputreg0_q;
    wire redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_reset0;
    wire [18:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_ia;
    wire [1:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_aa;
    wire [1:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_ab;
    wire [18:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_iq;
    wire [18:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_q;
    wire [1:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_q;
    (* preserve *) reg [1:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_i;
    reg [1:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_wraddr_q;
    wire [2:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_last_q;
    wire [2:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_cmp_b;
    wire [0:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_cmp_q;
    (* dont_merge *) reg [0:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_cmpReg_q;
    wire [0:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_notEnable_q;
    wire [0:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_nor_q;
    (* dont_merge *) reg [0:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_sticky_ena_q;
    wire [0:0] redist36_i_add61_add12_poly625_vt_select_19_b_6_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together116_aunroll_x_in_i_valid_1(DELAY,646)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together116_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together116_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1(DELAY,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_poly66_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid572_i_cleanups_shl_poly60_shift_x(BITSELECT,571)@2
    assign leftShiftStage0Idx1Rng1_uid572_i_cleanups_shl_poly60_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid572_i_cleanups_shl_poly60_shift_x_b = leftShiftStage0Idx1Rng1_uid572_i_cleanups_shl_poly60_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid573_i_cleanups_shl_poly60_shift_x(BITJOIN,572)@2
    assign leftShiftStage0Idx1_uid573_i_cleanups_shl_poly60_shift_x_q = {leftShiftStage0Idx1Rng1_uid572_i_cleanups_shl_poly60_shift_x_b, GND_q};

    // leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x(MUX,574)@2
    assign leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out or leftShiftStage0Idx1_uid573_i_cleanups_shl_poly60_shift_x_q)
    begin
        unique case (leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_s)
            1'b0 : leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out;
            1'b1 : leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_q = leftShiftStage0Idx1_uid573_i_cleanups_shl_poly60_shift_x_q;
            default : leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_poly65_vt_select_1(BITSELECT,92)@2
    assign i_cleanups_shl_poly65_vt_select_1_b = leftShiftStage0_uid575_i_cleanups_shl_poly60_shift_x_q[1:1];

    // i_cleanups_shl_poly65_vt_join(BITJOIN,91)@2
    assign i_cleanups_shl_poly65_vt_join_q = {i_cleanups_shl_poly65_vt_select_1_b, GND_q};

    // i_xor_poly64(LOGICAL,180)@2
    assign i_xor_poly64_q = i_first_cleanup_poly63_sel_x_b ^ VCC_q;

    // i_notcmp_poly658(LOGICAL,149)@2
    assign i_notcmp_poly658_q = i_exitcond7_poly656_cmp_nsign_q ^ VCC_q;

    // i_or_poly660(LOGICAL,150)@2
    assign i_or_poly660_q = i_notcmp_poly658_q | i_xor_poly64_q;

    // i_next_cleanups_poly661(MUX,148)@2
    assign i_next_cleanups_poly661_s = i_or_poly660_q;
    always @(i_next_cleanups_poly661_s or i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out or i_cleanups_shl_poly65_vt_join_q)
    begin
        unique case (i_next_cleanups_poly661_s)
            1'b0 : i_next_cleanups_poly661_q = i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out;
            1'b1 : i_next_cleanups_poly661_q = i_cleanups_shl_poly65_vt_join_q;
            default : i_next_cleanups_poly661_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_poly662(BLACKBOX,129)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    poly6_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_poly662 (
        .in_data_in(i_next_cleanups_poly661_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_feedback_stall_out_17),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together116_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_poly662_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_poly662_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_184(CONSTANT,49)
    assign c_i2_184_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_poly62(BLACKBOX,123)@2
    // out out_feedback_stall_out_17@20000000
    poly6_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_poly62 (
        .in_data_in(c_i2_184_q),
        .in_dir(redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_poly662_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_poly662_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together116_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_poly63_sel_x(BITSELECT,284)@2
    assign i_first_cleanup_poly63_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_poly62_out_data_out[0:0];

    // c_i11_1101(CONSTANT,31)
    assign c_i11_1101_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next6_poly663(ADD,109)@2
    assign i_fpga_indvars_iv_next6_poly663_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655_out_data_out};
    assign i_fpga_indvars_iv_next6_poly663_b = {1'b0, c_i11_1101_q};
    assign i_fpga_indvars_iv_next6_poly663_o = $unsigned(i_fpga_indvars_iv_next6_poly663_a) + $unsigned(i_fpga_indvars_iv_next6_poly663_b);
    assign i_fpga_indvars_iv_next6_poly663_q = i_fpga_indvars_iv_next6_poly663_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next6_poly663_sel_x(BITSELECT,190)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_poly663_sel_x_b = i_fpga_indvars_iv_next6_poly663_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664(BLACKBOX,125)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    poly6_i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_poly663_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655_out_feedback_stall_out_15),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together116_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102299(CONSTANT,30)
    assign c_i11_102299_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655(BLACKBOX,121)@2
    // out out_feedback_stall_out_15@20000000
    poly6_i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655 (
        .in_data_in(c_i11_102299_q),
        .in_dir(redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly664_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together116_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_poly656_cmp_nsign(LOGICAL,362)@2
    assign i_exitcond7_poly656_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly655_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_poly659(BLACKBOX,128)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    poly6_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_poly659 (
        .in_data_in(i_exitcond7_poly656_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_poly66_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_poly63_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together116_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_poly659_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_poly659_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,314)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_poly67(BLACKBOX,126)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    poly6_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_poly67 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_poly66_out_initeration_stall_out),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_poly67_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_poly67_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_poly66(BLACKBOX,120)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    poly6_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_poly66 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_poly67_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_poly67_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_poly659_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_poly659_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_poly66_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_poly66_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_poly66_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_poly66_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_poly66_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_poly66_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,66)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly66_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_poly66_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly66_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_poly66_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,183)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_poly66_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,316)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist7_sync_together116_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist21_i_xor_poly64_q_1(DELAY,660)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_xor_poly64_q_1_q <= '0;
        end
        else
        begin
            redist21_i_xor_poly64_q_1_q <= $unsigned(i_xor_poly64_q);
        end
    end

    // i_arrayidx1418_poly60_mult_multconst_x(CONSTANT,240)
    assign i_arrayidx1418_poly60_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_086(CONSTANT,50)
    assign c_i32_086_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,315)@1 + 1
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

    // valid_fanout_reg7(REG,320)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist7_sync_together116_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist31_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_2(DELAY,670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_2_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_2_q <= $unsigned(redist30_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_1_q);
        end
    end

    // c_i32_189(CONSTANT,53)
    assign c_i32_189_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc143_poly653(ADD,114)@3
    assign i_inc143_poly653_a = {1'b0, redist27_i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out_1_q};
    assign i_inc143_poly653_b = {1'b0, c_i32_189_q};
    assign i_inc143_poly653_o = $unsigned(i_inc143_poly653_a) + $unsigned(i_inc143_poly653_b);
    assign i_inc143_poly653_q = i_inc143_poly653_o[32:0];

    // bgTrunc_i_inc143_poly653_sel_x(BITSELECT,191)@3
    assign bgTrunc_i_inc143_poly653_sel_x_b = i_inc143_poly653_q[31:0];

    // i_llvm_fpga_push_i32_k13_049_push16_poly654(BLACKBOX,130)@3
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    poly6_i_llvm_fpga_push_i32_k13_049_push16_0 thei_llvm_fpga_push_i32_k13_049_push16_poly654 (
        .in_data_in(bgTrunc_i_inc143_poly653_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_feedback_stall_out_16),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k13_049_push16_poly654_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k13_049_push16_poly654_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k13_049_pop16_poly68(BLACKBOX,124)@2
    // out out_feedback_stall_out_16@20000000
    poly6_i_llvm_fpga_pop_i32_k13_049_pop16_0 thei_llvm_fpga_pop_i32_k13_049_pop16_poly68 (
        .in_data_in(c_i32_086_q),
        .in_dir(redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k13_049_push16_poly654_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k13_049_push16_poly654_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out_1(DELAY,666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out);
        end
    end

    // i_idxprom18_poly69_sel_x(BITSELECT,285)@3
    assign i_idxprom18_poly69_sel_x_b = {32'b00000000000000000000000000000000, redist27_i_llvm_fpga_pop_i32_k13_049_pop16_poly68_out_data_out_1_q[31:0]};

    // i_idxprom18_poly69_vt_select_31(BITSELECT,113)@3
    assign i_idxprom18_poly69_vt_select_31_b = i_idxprom18_poly69_sel_x_b[31:0];

    // i_idxprom18_poly69_vt_join(BITJOIN,112)@3
    assign i_idxprom18_poly69_vt_join_q = {c_i32_086_q, i_idxprom18_poly69_vt_select_31_b};

    // i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select(BITSELECT,626)@3
    assign i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b = i_idxprom18_poly69_vt_join_q[63:54];
    assign i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c = i_idxprom18_poly69_vt_join_q[53:36];
    assign i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d = i_idxprom18_poly69_vt_join_q[35:18];
    assign i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e = i_idxprom18_poly69_vt_join_q[17:0];

    // i_arrayidx195_poly60_mult_x_im0_shift0(BITSHIFT,588)@3
    assign i_arrayidx195_poly60_mult_x_im0_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx195_poly60_mult_x_im0_shift0_q = i_arrayidx195_poly60_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx195_poly60_mult_x_sums_align_3(BITSHIFT,529)@3
    assign i_arrayidx195_poly60_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx195_poly60_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_poly60_mult_x_sums_align_3_q = i_arrayidx195_poly60_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx195_poly60_mult_x_im6_shift0(BITSHIFT,590)@3
    assign i_arrayidx195_poly60_mult_x_im6_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx195_poly60_mult_x_im6_shift0_q = i_arrayidx195_poly60_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx195_poly60_mult_x_sums_align_2(BITSHIFT,528)@3
    assign i_arrayidx195_poly60_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx195_poly60_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx195_poly60_mult_x_sums_align_2_q = i_arrayidx195_poly60_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx195_poly60_mult_x_sums_join_4(BITJOIN,530)@3
    assign i_arrayidx195_poly60_mult_x_sums_join_4_q = {i_arrayidx195_poly60_mult_x_sums_align_3_q, i_arrayidx195_poly60_mult_x_sums_align_2_q};

    // i_arrayidx195_poly60_mult_x_im3_shift0(BITSHIFT,589)@3
    assign i_arrayidx195_poly60_mult_x_im3_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx195_poly60_mult_x_im3_shift0_q = i_arrayidx195_poly60_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx195_poly60_mult_x_sums_align_0(BITSHIFT,526)@3
    assign i_arrayidx195_poly60_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx195_poly60_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_poly60_mult_x_sums_align_0_q = i_arrayidx195_poly60_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx195_poly60_mult_x_im9_shift0(BITSHIFT,591)@3
    assign i_arrayidx195_poly60_mult_x_im9_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx195_poly60_mult_x_im9_shift0_q = i_arrayidx195_poly60_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx195_poly60_mult_x_sums_join_1(BITJOIN,527)@3
    assign i_arrayidx195_poly60_mult_x_sums_join_1_q = {i_arrayidx195_poly60_mult_x_sums_align_0_q, {1'b0, i_arrayidx195_poly60_mult_x_im9_shift0_q}};

    // i_arrayidx195_poly60_mult_x_sums_result_add_0_0(ADD,531)@3
    assign i_arrayidx195_poly60_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx195_poly60_mult_x_sums_join_1_q};
    assign i_arrayidx195_poly60_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx195_poly60_mult_x_sums_join_4_q};
    assign i_arrayidx195_poly60_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx195_poly60_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx195_poly60_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx195_poly60_mult_x_sums_result_add_0_0_q = i_arrayidx195_poly60_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx195_poly60_mult_extender_x(BITJOIN,249)@3
    assign i_arrayidx195_poly60_mult_extender_x_q = {i_arrayidx1418_poly60_mult_multconst_x_q, i_arrayidx195_poly60_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx195_poly60_trunc_sel_x(BITSELECT,251)@3
    assign i_arrayidx195_poly60_trunc_sel_x_b = i_arrayidx195_poly60_mult_extender_x_q[63:0];

    // c_poly6_b_pmem(CONSTANT,62)
    assign c_poly6_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx195_poly60_add_x(ADD,243)@3
    assign i_arrayidx195_poly60_add_x_a = {1'b0, c_poly6_b_pmem_q};
    assign i_arrayidx195_poly60_add_x_b = {1'b0, i_arrayidx195_poly60_trunc_sel_x_b};
    assign i_arrayidx195_poly60_add_x_o = $unsigned(i_arrayidx195_poly60_add_x_a) + $unsigned(i_arrayidx195_poly60_add_x_b);
    assign i_arrayidx195_poly60_add_x_q = i_arrayidx195_poly60_add_x_o[64:0];

    // i_arrayidx195_poly60_dupName_0_trunc_sel_x(BITSELECT,252)@3
    assign i_arrayidx195_poly60_dupName_0_trunc_sel_x_b = i_arrayidx195_poly60_add_x_q[63:0];

    // i_arrayidx195_poly610_vt_select_63(BITSELECT,83)@3
    assign i_arrayidx195_poly610_vt_select_63_b = i_arrayidx195_poly60_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx195_poly610_vt_join(BITJOIN,82)@3
    assign i_arrayidx195_poly610_vt_join_q = {i_arrayidx195_poly610_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly67_poly611(BLACKBOX,117)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_poly67_poly6_avm_address@20000000
    // out out_unnamed_poly67_poly6_avm_burstcount@20000000
    // out out_unnamed_poly67_poly6_avm_byteenable@20000000
    // out out_unnamed_poly67_poly6_avm_enable@20000000
    // out out_unnamed_poly67_poly6_avm_read@20000000
    // out out_unnamed_poly67_poly6_avm_write@20000000
    // out out_unnamed_poly67_poly6_avm_writedata@20000000
    poly6_i_llvm_fpga_mem_unnamed_7_poly60 thei_llvm_fpga_mem_unnamed_poly67_poly611 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx195_poly610_vt_join_q),
        .in_i_predicate(redist21_i_xor_poly64_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_poly67_poly6_avm_readdata(in_unnamed_poly67_poly6_avm_readdata),
        .in_unnamed_poly67_poly6_avm_readdatavalid(in_unnamed_poly67_poly6_avm_readdatavalid),
        .in_unnamed_poly67_poly6_avm_waitrequest(in_unnamed_poly67_poly6_avm_waitrequest),
        .in_unnamed_poly67_poly6_avm_writeack(in_unnamed_poly67_poly6_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly67_poly6_avm_address(i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_address),
        .out_unnamed_poly67_poly6_avm_burstcount(i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_burstcount),
        .out_unnamed_poly67_poly6_avm_byteenable(i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_byteenable),
        .out_unnamed_poly67_poly6_avm_enable(i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_enable),
        .out_unnamed_poly67_poly6_avm_read(i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_read),
        .out_unnamed_poly67_poly6_avm_write(i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_write),
        .out_unnamed_poly67_poly6_avm_writedata(i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,216)
    assign out_unnamed_poly67_poly6_avm_address = i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_address;
    assign out_unnamed_poly67_poly6_avm_enable = i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_enable;
    assign out_unnamed_poly67_poly6_avm_read = i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_read;
    assign out_unnamed_poly67_poly6_avm_write = i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_write;
    assign out_unnamed_poly67_poly6_avm_writedata = i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_writedata;
    assign out_unnamed_poly67_poly6_avm_byteenable = i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_byteenable;
    assign out_unnamed_poly67_poly6_avm_burstcount = i_llvm_fpga_mem_unnamed_poly67_poly611_out_unnamed_poly67_poly6_avm_burstcount;

    // valid_fanout_reg4(REG,317)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist7_sync_together116_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx226_poly60_mult_x_im0_shift0(BITSHIFT,592)@3
    assign i_arrayidx226_poly60_mult_x_im0_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx226_poly60_mult_x_im0_shift0_q = i_arrayidx226_poly60_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx226_poly60_mult_x_sums_align_3(BITSHIFT,547)@3
    assign i_arrayidx226_poly60_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx226_poly60_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx226_poly60_mult_x_sums_align_3_q = i_arrayidx226_poly60_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx226_poly60_mult_x_im6_shift0(BITSHIFT,594)@3
    assign i_arrayidx226_poly60_mult_x_im6_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx226_poly60_mult_x_im6_shift0_q = i_arrayidx226_poly60_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx226_poly60_mult_x_sums_align_2(BITSHIFT,546)@3
    assign i_arrayidx226_poly60_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx226_poly60_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx226_poly60_mult_x_sums_align_2_q = i_arrayidx226_poly60_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx226_poly60_mult_x_sums_join_4(BITJOIN,548)@3
    assign i_arrayidx226_poly60_mult_x_sums_join_4_q = {i_arrayidx226_poly60_mult_x_sums_align_3_q, i_arrayidx226_poly60_mult_x_sums_align_2_q};

    // i_arrayidx226_poly60_mult_x_im3_shift0(BITSHIFT,593)@3
    assign i_arrayidx226_poly60_mult_x_im3_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx226_poly60_mult_x_im3_shift0_q = i_arrayidx226_poly60_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx226_poly60_mult_x_sums_align_0(BITSHIFT,544)@3
    assign i_arrayidx226_poly60_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx226_poly60_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx226_poly60_mult_x_sums_align_0_q = i_arrayidx226_poly60_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx226_poly60_mult_x_im9_shift0(BITSHIFT,595)@3
    assign i_arrayidx226_poly60_mult_x_im9_shift0_qint = { i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx226_poly60_mult_x_im9_shift0_q = i_arrayidx226_poly60_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx226_poly60_mult_x_sums_join_1(BITJOIN,545)@3
    assign i_arrayidx226_poly60_mult_x_sums_join_1_q = {i_arrayidx226_poly60_mult_x_sums_align_0_q, {1'b0, i_arrayidx226_poly60_mult_x_im9_shift0_q}};

    // i_arrayidx226_poly60_mult_x_sums_result_add_0_0(ADD,549)@3
    assign i_arrayidx226_poly60_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx226_poly60_mult_x_sums_join_1_q};
    assign i_arrayidx226_poly60_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx226_poly60_mult_x_sums_join_4_q};
    assign i_arrayidx226_poly60_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx226_poly60_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx226_poly60_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx226_poly60_mult_x_sums_result_add_0_0_q = i_arrayidx226_poly60_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx226_poly60_mult_extender_x(BITJOIN,259)@3
    assign i_arrayidx226_poly60_mult_extender_x_q = {i_arrayidx1418_poly60_mult_multconst_x_q, i_arrayidx226_poly60_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx226_poly60_trunc_sel_x(BITSELECT,261)@3
    assign i_arrayidx226_poly60_trunc_sel_x_b = i_arrayidx226_poly60_mult_extender_x_q[63:0];

    // c_poly6_c_pmem(CONSTANT,63)
    assign c_poly6_c_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx226_poly60_add_x(ADD,253)@3
    assign i_arrayidx226_poly60_add_x_a = {1'b0, c_poly6_c_pmem_q};
    assign i_arrayidx226_poly60_add_x_b = {1'b0, i_arrayidx226_poly60_trunc_sel_x_b};
    assign i_arrayidx226_poly60_add_x_o = $unsigned(i_arrayidx226_poly60_add_x_a) + $unsigned(i_arrayidx226_poly60_add_x_b);
    assign i_arrayidx226_poly60_add_x_q = i_arrayidx226_poly60_add_x_o[64:0];

    // i_arrayidx226_poly60_dupName_0_trunc_sel_x(BITSELECT,262)@3
    assign i_arrayidx226_poly60_dupName_0_trunc_sel_x_b = i_arrayidx226_poly60_add_x_q[63:0];

    // i_arrayidx226_poly613_vt_select_63(BITSELECT,86)@3
    assign i_arrayidx226_poly613_vt_select_63_b = i_arrayidx226_poly60_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx226_poly613_vt_join(BITJOIN,85)@3
    assign i_arrayidx226_poly613_vt_join_q = {i_arrayidx226_poly613_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly68_poly614(BLACKBOX,118)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_poly68_poly6_avm_address@20000000
    // out out_unnamed_poly68_poly6_avm_burstcount@20000000
    // out out_unnamed_poly68_poly6_avm_byteenable@20000000
    // out out_unnamed_poly68_poly6_avm_enable@20000000
    // out out_unnamed_poly68_poly6_avm_read@20000000
    // out out_unnamed_poly68_poly6_avm_write@20000000
    // out out_unnamed_poly68_poly6_avm_writedata@20000000
    poly6_i_llvm_fpga_mem_unnamed_8_poly60 thei_llvm_fpga_mem_unnamed_poly68_poly614 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx226_poly613_vt_join_q),
        .in_i_predicate(redist21_i_xor_poly64_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_poly68_poly6_avm_readdata(in_unnamed_poly68_poly6_avm_readdata),
        .in_unnamed_poly68_poly6_avm_readdatavalid(in_unnamed_poly68_poly6_avm_readdatavalid),
        .in_unnamed_poly68_poly6_avm_waitrequest(in_unnamed_poly68_poly6_avm_waitrequest),
        .in_unnamed_poly68_poly6_avm_writeack(in_unnamed_poly68_poly6_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly68_poly6_avm_address(i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_address),
        .out_unnamed_poly68_poly6_avm_burstcount(i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_burstcount),
        .out_unnamed_poly68_poly6_avm_byteenable(i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_byteenable),
        .out_unnamed_poly68_poly6_avm_enable(i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_enable),
        .out_unnamed_poly68_poly6_avm_read(i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_read),
        .out_unnamed_poly68_poly6_avm_write(i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_write),
        .out_unnamed_poly68_poly6_avm_writedata(i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,221)
    assign out_unnamed_poly68_poly6_avm_address = i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_address;
    assign out_unnamed_poly68_poly6_avm_enable = i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_enable;
    assign out_unnamed_poly68_poly6_avm_read = i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_read;
    assign out_unnamed_poly68_poly6_avm_write = i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_write;
    assign out_unnamed_poly68_poly6_avm_writedata = i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_writedata;
    assign out_unnamed_poly68_poly6_avm_byteenable = i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_byteenable;
    assign out_unnamed_poly68_poly6_avm_burstcount = i_llvm_fpga_mem_unnamed_poly68_poly614_out_unnamed_poly68_poly6_avm_burstcount;

    // redist8_sync_together116_aunroll_x_in_i_valid_9(DELAY,647)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together116_aunroll_x_in_i_valid_9 ( .xin(redist7_sync_together116_aunroll_x_in_i_valid_1_q), .xout(redist8_sync_together116_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,318)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist8_sync_together116_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist22_i_xor_poly64_q_9(DELAY,661)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_xor_poly64_q_9 ( .xin(redist21_i_xor_poly64_q_1_q), .xout(redist22_i_xor_poly64_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_notEnable(LOGICAL,683)
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_nor(LOGICAL,684)
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_nor_q = ~ (redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_notEnable_q | redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_sticky_ena_q);

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_last(CONSTANT,680)
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_last_q = $unsigned(4'b0100);

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmp(LOGICAL,681)
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmp_b = {1'b0, redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_q};
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmp_q = $unsigned(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_last_q == redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmp_b ? 1'b1 : 1'b0);

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmpReg(REG,682)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmpReg_q <= $unsigned(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmp_q);
        end
    end

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_sticky_ena(REG,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_nor_q == 1'b1)
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_sticky_ena_q <= $unsigned(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_cmpReg_q);
        end
    end

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_enaAnd(LOGICAL,686)
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_enaAnd_q = redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_sticky_ena_q & VCC_q;

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt(COUNTER,678)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i <= 3'd0;
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i == 3'd4)
            begin
                redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_eq <= 1'b0;
            end
            if (redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_eq == 1'b1)
            begin
                redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i <= $unsigned(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i <= $unsigned(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_q = redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_i[2:0];

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_wraddr(REG,679)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_wraddr_q <= $unsigned(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_q);
        end
    end

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem(DUALMEM,677)
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_ia = $unsigned(i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b);
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_aa = redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_wraddr_q;
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_ab = redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_rdcnt_q;
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(10),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(10),
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
    ) redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_dmem (
        .clocken1(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_reset0),
        .clock1(clock),
        .address_a(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_aa),
        .data_a(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_ab),
        .q_b(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_iq),
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
    assign redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_q = redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_iq[9:0];

    // redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_outputreg0(DELAY,676)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_outputreg0_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_outputreg0_q <= $unsigned(redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_mem_q);
        end
    end

    // i_arrayidx407_poly60_mult_x_im0_shift0(BITSHIFT,596)@11
    assign i_arrayidx407_poly60_mult_x_im0_shift0_qint = { redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_outputreg0_q, 1'b0 };
    assign i_arrayidx407_poly60_mult_x_im0_shift0_q = i_arrayidx407_poly60_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx407_poly60_mult_x_sums_align_3(BITSHIFT,565)@11
    assign i_arrayidx407_poly60_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx407_poly60_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx407_poly60_mult_x_sums_align_3_q = i_arrayidx407_poly60_mult_x_sums_align_3_qint[27:0];

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_notEnable(LOGICAL,705)
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_nor(LOGICAL,706)
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_nor_q = ~ (redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_notEnable_q | redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_sticky_ena_q);

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_last(CONSTANT,702)
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_last_q = $unsigned(4'b0100);

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmp(LOGICAL,703)
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmp_b = {1'b0, redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_q};
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmp_q = $unsigned(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_last_q == redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmp_b ? 1'b1 : 1'b0);

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmpReg(REG,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmpReg_q <= $unsigned(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmp_q);
        end
    end

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_sticky_ena(REG,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_nor_q == 1'b1)
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_sticky_ena_q <= $unsigned(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_cmpReg_q);
        end
    end

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_enaAnd(LOGICAL,708)
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_enaAnd_q = redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_sticky_ena_q & VCC_q;

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt(COUNTER,700)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i <= 3'd0;
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i == 3'd4)
            begin
                redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_eq <= 1'b0;
            end
            if (redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_eq == 1'b1)
            begin
                redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i <= $unsigned(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i <= $unsigned(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_q = redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_i[2:0];

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_wraddr(REG,701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_wraddr_q <= $unsigned(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_q);
        end
    end

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem(DUALMEM,699)
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_ia = $unsigned(i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d);
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_aa = redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_wraddr_q;
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_ab = redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_rdcnt_q;
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(18),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(18),
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
    ) redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_dmem (
        .clocken1(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_reset0),
        .clock1(clock),
        .address_a(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_aa),
        .data_a(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_ab),
        .q_b(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_iq),
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
    assign redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_q = redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_iq[17:0];

    // redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_outputreg0(DELAY,698)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_outputreg0_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_outputreg0_q <= $unsigned(redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_mem_q);
        end
    end

    // i_arrayidx407_poly60_mult_x_im6_shift0(BITSHIFT,598)@11
    assign i_arrayidx407_poly60_mult_x_im6_shift0_qint = { redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_outputreg0_q, 1'b0 };
    assign i_arrayidx407_poly60_mult_x_im6_shift0_q = i_arrayidx407_poly60_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx407_poly60_mult_x_sums_align_2(BITSHIFT,564)@11
    assign i_arrayidx407_poly60_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx407_poly60_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx407_poly60_mult_x_sums_align_2_q = i_arrayidx407_poly60_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx407_poly60_mult_x_sums_join_4(BITJOIN,566)@11
    assign i_arrayidx407_poly60_mult_x_sums_join_4_q = {i_arrayidx407_poly60_mult_x_sums_align_3_q, i_arrayidx407_poly60_mult_x_sums_align_2_q};

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_notEnable(LOGICAL,694)
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_nor(LOGICAL,695)
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_nor_q = ~ (redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_notEnable_q | redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_sticky_ena_q);

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_last(CONSTANT,691)
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_last_q = $unsigned(4'b0100);

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmp(LOGICAL,692)
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmp_b = {1'b0, redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_q};
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmp_q = $unsigned(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_last_q == redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmp_b ? 1'b1 : 1'b0);

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmpReg(REG,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmpReg_q <= $unsigned(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmp_q);
        end
    end

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_sticky_ena(REG,696)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_nor_q == 1'b1)
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_sticky_ena_q <= $unsigned(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_cmpReg_q);
        end
    end

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_enaAnd(LOGICAL,697)
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_enaAnd_q = redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_sticky_ena_q & VCC_q;

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt(COUNTER,689)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i <= 3'd0;
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i == 3'd4)
            begin
                redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_eq <= 1'b0;
            end
            if (redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_eq == 1'b1)
            begin
                redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i <= $unsigned(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i <= $unsigned(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_q = redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_i[2:0];

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_wraddr(REG,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_wraddr_q <= $unsigned(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_q);
        end
    end

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem(DUALMEM,688)
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_ia = $unsigned(i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c);
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_aa = redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_wraddr_q;
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_ab = redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_rdcnt_q;
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(18),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(18),
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
    ) redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_dmem (
        .clocken1(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_reset0),
        .clock1(clock),
        .address_a(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_aa),
        .data_a(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_ab),
        .q_b(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_iq),
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
    assign redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_q = redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_iq[17:0];

    // redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_outputreg0(DELAY,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_outputreg0_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_outputreg0_q <= $unsigned(redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_mem_q);
        end
    end

    // i_arrayidx407_poly60_mult_x_im3_shift0(BITSHIFT,597)@11
    assign i_arrayidx407_poly60_mult_x_im3_shift0_qint = { redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_outputreg0_q, 1'b0 };
    assign i_arrayidx407_poly60_mult_x_im3_shift0_q = i_arrayidx407_poly60_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx407_poly60_mult_x_sums_align_0(BITSHIFT,562)@11
    assign i_arrayidx407_poly60_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx407_poly60_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx407_poly60_mult_x_sums_align_0_q = i_arrayidx407_poly60_mult_x_sums_align_0_qint[35:0];

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_notEnable(LOGICAL,716)
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_nor(LOGICAL,717)
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_nor_q = ~ (redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_notEnable_q | redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_sticky_ena_q);

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_last(CONSTANT,713)
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_last_q = $unsigned(4'b0100);

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmp(LOGICAL,714)
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmp_b = {1'b0, redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_q};
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmp_q = $unsigned(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_last_q == redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmp_b ? 1'b1 : 1'b0);

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmpReg(REG,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmpReg_q <= $unsigned(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmp_q);
        end
    end

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_sticky_ena(REG,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_nor_q == 1'b1)
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_sticky_ena_q <= $unsigned(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_cmpReg_q);
        end
    end

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_enaAnd(LOGICAL,719)
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_enaAnd_q = redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_sticky_ena_q & VCC_q;

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt(COUNTER,711)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i <= 3'd0;
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i == 3'd4)
            begin
                redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_eq <= 1'b0;
            end
            if (redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_eq == 1'b1)
            begin
                redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i <= $unsigned(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i <= $unsigned(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_q = redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_i[2:0];

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_wraddr(REG,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_wraddr_q <= $unsigned(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_q);
        end
    end

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem(DUALMEM,710)
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_ia = $unsigned(i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e);
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_aa = redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_wraddr_q;
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_ab = redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_rdcnt_q;
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(18),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(18),
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
    ) redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_dmem (
        .clocken1(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_reset0),
        .clock1(clock),
        .address_a(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_aa),
        .data_a(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_ab),
        .q_b(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_iq),
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
    assign redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_q = redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_iq[17:0];

    // redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_outputreg0(DELAY,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_outputreg0_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_outputreg0_q <= $unsigned(redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_mem_q);
        end
    end

    // i_arrayidx407_poly60_mult_x_im9_shift0(BITSHIFT,599)@11
    assign i_arrayidx407_poly60_mult_x_im9_shift0_qint = { redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_outputreg0_q, 1'b0 };
    assign i_arrayidx407_poly60_mult_x_im9_shift0_q = i_arrayidx407_poly60_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx407_poly60_mult_x_sums_join_1(BITJOIN,563)@11
    assign i_arrayidx407_poly60_mult_x_sums_join_1_q = {i_arrayidx407_poly60_mult_x_sums_align_0_q, {1'b0, i_arrayidx407_poly60_mult_x_im9_shift0_q}};

    // i_arrayidx407_poly60_mult_x_sums_result_add_0_0(ADD,567)@11
    assign i_arrayidx407_poly60_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx407_poly60_mult_x_sums_join_1_q};
    assign i_arrayidx407_poly60_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx407_poly60_mult_x_sums_join_4_q};
    assign i_arrayidx407_poly60_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx407_poly60_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx407_poly60_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx407_poly60_mult_x_sums_result_add_0_0_q = i_arrayidx407_poly60_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx407_poly60_mult_extender_x(BITJOIN,269)@11
    assign i_arrayidx407_poly60_mult_extender_x_q = {i_arrayidx1418_poly60_mult_multconst_x_q, i_arrayidx407_poly60_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx407_poly60_trunc_sel_x(BITSELECT,271)@11
    assign i_arrayidx407_poly60_trunc_sel_x_b = i_arrayidx407_poly60_mult_extender_x_q[63:0];

    // c_poly6_a_pmem(CONSTANT,61)
    assign c_poly6_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx407_poly60_add_x(ADD,263)@11
    assign i_arrayidx407_poly60_add_x_a = {1'b0, c_poly6_a_pmem_q};
    assign i_arrayidx407_poly60_add_x_b = {1'b0, i_arrayidx407_poly60_trunc_sel_x_b};
    assign i_arrayidx407_poly60_add_x_o = $unsigned(i_arrayidx407_poly60_add_x_a) + $unsigned(i_arrayidx407_poly60_add_x_b);
    assign i_arrayidx407_poly60_add_x_q = i_arrayidx407_poly60_add_x_o[64:0];

    // i_arrayidx407_poly60_dupName_0_trunc_sel_x(BITSELECT,272)@11
    assign i_arrayidx407_poly60_dupName_0_trunc_sel_x_b = i_arrayidx407_poly60_add_x_q[63:0];

    // i_arrayidx407_poly619_vt_select_63(BITSELECT,89)@11
    assign i_arrayidx407_poly619_vt_select_63_b = i_arrayidx407_poly60_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx407_poly619_vt_join(BITJOIN,88)@11
    assign i_arrayidx407_poly619_vt_join_q = {i_arrayidx407_poly619_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly69_poly620(BLACKBOX,119)@11
    // in in_i_stall@20000000
    // out out_o_readdata@15
    // out out_o_stall@14
    // out out_o_valid@15
    // out out_unnamed_poly69_poly6_avm_address@20000000
    // out out_unnamed_poly69_poly6_avm_burstcount@20000000
    // out out_unnamed_poly69_poly6_avm_byteenable@20000000
    // out out_unnamed_poly69_poly6_avm_enable@20000000
    // out out_unnamed_poly69_poly6_avm_read@20000000
    // out out_unnamed_poly69_poly6_avm_write@20000000
    // out out_unnamed_poly69_poly6_avm_writedata@20000000
    poly6_i_llvm_fpga_mem_unnamed_9_poly60 thei_llvm_fpga_mem_unnamed_poly69_poly620 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx407_poly619_vt_join_q),
        .in_i_predicate(redist22_i_xor_poly64_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_poly69_poly6_avm_readdata(in_unnamed_poly69_poly6_avm_readdata),
        .in_unnamed_poly69_poly6_avm_readdatavalid(in_unnamed_poly69_poly6_avm_readdatavalid),
        .in_unnamed_poly69_poly6_avm_waitrequest(in_unnamed_poly69_poly6_avm_waitrequest),
        .in_unnamed_poly69_poly6_avm_writeack(in_unnamed_poly69_poly6_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly69_poly620_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly69_poly6_avm_address(i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_address),
        .out_unnamed_poly69_poly6_avm_burstcount(i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_burstcount),
        .out_unnamed_poly69_poly6_avm_byteenable(i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_byteenable),
        .out_unnamed_poly69_poly6_avm_enable(i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_enable),
        .out_unnamed_poly69_poly6_avm_read(i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_read),
        .out_unnamed_poly69_poly6_avm_write(i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_write),
        .out_unnamed_poly69_poly6_avm_writedata(i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,224)
    assign out_unnamed_poly69_poly6_avm_address = i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_address;
    assign out_unnamed_poly69_poly6_avm_enable = i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_enable;
    assign out_unnamed_poly69_poly6_avm_read = i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_read;
    assign out_unnamed_poly69_poly6_avm_write = i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_write;
    assign out_unnamed_poly69_poly6_avm_writedata = i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_writedata;
    assign out_unnamed_poly69_poly6_avm_byteenable = i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_byteenable;
    assign out_unnamed_poly69_poly6_avm_burstcount = i_llvm_fpga_mem_unnamed_poly69_poly620_out_unnamed_poly69_poly6_avm_burstcount;

    // i_conv20_poly612_vt_const_31(CONSTANT,95)
    assign i_conv20_poly612_vt_const_31_q = $unsigned(16'b0000000000000000);

    // redist34_i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata_1(DELAY,673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata_1_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata_1_q <= $unsigned(i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata);
        end
    end

    // i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma(CHAINMULTADD,600)@8 + 3
    assign i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_reset = ~ (resetn);
    assign i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena0 = 1'b1;
    assign i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena1 = i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena0;
    assign i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena2 = i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena0;

    assign i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_a0 = redist34_i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata_1_q;
    assign i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_c0 = redist34_i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata_1_q;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena2, i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena1, i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_ena0 }),
        .aclr({ i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_reset, i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_reset }),
        .ay(i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_a0),
        .ax(i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_c0),
        .resulta(i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_s0),
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
    i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_delay ( .xin(i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_s0), .xout(i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_q = $unsigned(i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_qq[31:0]);

    // i_mul110_poly633_bs2_merged_bit_select(BITSELECT,638)@11
    assign i_mul110_poly633_bs2_merged_bit_select_b = i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_q[31:18];
    assign i_mul110_poly633_bs2_merged_bit_select_c = i_llvm_fpga_int_mul_i32_i16_i16_mul48_i_poly622_cma_q[17:0];

    // c_i32_7292(CONSTANT,59)
    assign c_i32_7292_q = $unsigned(32'b11111111111111111111111110111000);

    // i_conv23_poly615_sel_x(BITSELECT,280)@7
    assign i_conv23_poly615_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata[15:0]};

    // i_conv23_poly615_vt_select_15(BITSELECT,101)@7
    assign i_conv23_poly615_vt_select_15_b = i_conv23_poly615_sel_x_b[15:0];

    // i_conv23_poly615_vt_join(BITJOIN,100)@7
    assign i_conv23_poly615_vt_join_q = {i_conv20_poly612_vt_const_31_q, i_conv23_poly615_vt_select_15_b};

    // i_sub107_poly630(ADD,168)@7
    assign i_sub107_poly630_a = {1'b0, i_conv23_poly615_vt_join_q};
    assign i_sub107_poly630_b = {1'b0, c_i32_7292_q};
    assign i_sub107_poly630_o = $unsigned(i_sub107_poly630_a) + $unsigned(i_sub107_poly630_b);
    assign i_sub107_poly630_q = i_sub107_poly630_o[32:0];

    // bgTrunc_i_sub107_poly630_sel_x(BITSELECT,209)@7
    assign bgTrunc_i_sub107_poly630_sel_x_b = i_sub107_poly630_q[31:0];

    // i_mul108_poly631_bs1_merged_bit_select(BITSELECT,635)@7
    assign i_mul108_poly631_bs1_merged_bit_select_b = bgTrunc_i_sub107_poly630_sel_x_b[31:18];
    assign i_mul108_poly631_bs1_merged_bit_select_c = bgTrunc_i_sub107_poly630_sel_x_b[17:0];

    // dupName_0_i_conv23_poly615_vt_join_narrowed_x(BITSELECT,218)@7
    assign dupName_0_i_conv23_poly615_vt_join_narrowed_x_b = i_conv23_poly615_vt_join_q[15:0];

    // i_mul108_poly631_im0_cma(CHAINMULTADD,604)@7 + 3
    assign i_mul108_poly631_im0_cma_reset = ~ (resetn);
    assign i_mul108_poly631_im0_cma_ena0 = 1'b1;
    assign i_mul108_poly631_im0_cma_ena1 = i_mul108_poly631_im0_cma_ena0;
    assign i_mul108_poly631_im0_cma_ena2 = i_mul108_poly631_im0_cma_ena0;

    assign i_mul108_poly631_im0_cma_a0 = dupName_0_i_conv23_poly615_vt_join_narrowed_x_b;
    assign i_mul108_poly631_im0_cma_c0 = i_mul108_poly631_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul108_poly631_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul108_poly631_im0_cma_ena2, i_mul108_poly631_im0_cma_ena1, i_mul108_poly631_im0_cma_ena0 }),
        .aclr({ i_mul108_poly631_im0_cma_reset, i_mul108_poly631_im0_cma_reset }),
        .ay(i_mul108_poly631_im0_cma_a0),
        .ax(i_mul108_poly631_im0_cma_c0),
        .resulta(i_mul108_poly631_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul108_poly631_im0_cma_delay ( .xin(i_mul108_poly631_im0_cma_s0), .xout(i_mul108_poly631_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul108_poly631_im0_cma_q = $unsigned(i_mul108_poly631_im0_cma_qq[29:0]);

    // i_mul108_poly631_sums_align_1(BITSHIFT,380)@10
    assign i_mul108_poly631_sums_align_1_qint = { i_mul108_poly631_im0_cma_q, 18'b000000000000000000 };
    assign i_mul108_poly631_sums_align_1_q = i_mul108_poly631_sums_align_1_qint[47:0];

    // i_mul108_poly631_im3_cma(CHAINMULTADD,605)@7 + 3
    assign i_mul108_poly631_im3_cma_reset = ~ (resetn);
    assign i_mul108_poly631_im3_cma_ena0 = 1'b1;
    assign i_mul108_poly631_im3_cma_ena1 = i_mul108_poly631_im3_cma_ena0;
    assign i_mul108_poly631_im3_cma_ena2 = i_mul108_poly631_im3_cma_ena0;

    assign i_mul108_poly631_im3_cma_a0 = i_mul108_poly631_bs1_merged_bit_select_c;
    assign i_mul108_poly631_im3_cma_c0 = dupName_0_i_conv23_poly615_vt_join_narrowed_x_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_mul108_poly631_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul108_poly631_im3_cma_ena2, i_mul108_poly631_im3_cma_ena1, i_mul108_poly631_im3_cma_ena0 }),
        .aclr({ i_mul108_poly631_im3_cma_reset, i_mul108_poly631_im3_cma_reset }),
        .ay(i_mul108_poly631_im3_cma_a0),
        .ax(i_mul108_poly631_im3_cma_c0),
        .resulta(i_mul108_poly631_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul108_poly631_im3_cma_delay ( .xin(i_mul108_poly631_im3_cma_s0), .xout(i_mul108_poly631_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul108_poly631_im3_cma_q = $unsigned(i_mul108_poly631_im3_cma_qq[33:0]);

    // i_mul108_poly631_sums_result_add_0_0(ADD,382)@10
    assign i_mul108_poly631_sums_result_add_0_0_a = {15'b000000000000000, i_mul108_poly631_im3_cma_q};
    assign i_mul108_poly631_sums_result_add_0_0_b = {1'b0, i_mul108_poly631_sums_align_1_q};
    assign i_mul108_poly631_sums_result_add_0_0_o = $unsigned(i_mul108_poly631_sums_result_add_0_0_a) + $unsigned(i_mul108_poly631_sums_result_add_0_0_b);
    assign i_mul108_poly631_sums_result_add_0_0_q = i_mul108_poly631_sums_result_add_0_0_o[48:0];

    // i_mul108_poly631_extender_x(BITJOIN,289)@10
    assign i_mul108_poly631_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_mul108_poly631_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_mul108_poly631_sel_x(BITSELECT,193)@10
    assign bgTrunc_i_mul108_poly631_sel_x_b = i_mul108_poly631_extender_x_q[31:0];

    // redist19_bgTrunc_i_mul108_poly631_sel_x_b_1(DELAY,658)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_mul108_poly631_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_mul108_poly631_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul108_poly631_sel_x_b);
        end
    end

    // c_i32_3291(CONSTANT,56)
    assign c_i32_3291_q = $unsigned(32'b11111111111111111111111111100000);

    // i_sub99_poly628(ADD,171)@7
    assign i_sub99_poly628_a = {1'b0, i_conv23_poly615_vt_join_q};
    assign i_sub99_poly628_b = {1'b0, c_i32_3291_q};
    assign i_sub99_poly628_o = $unsigned(i_sub99_poly628_a) + $unsigned(i_sub99_poly628_b);
    assign i_sub99_poly628_q = i_sub99_poly628_o[32:0];

    // bgTrunc_i_sub99_poly628_sel_x(BITSELECT,212)@7
    assign bgTrunc_i_sub99_poly628_sel_x_b = i_sub99_poly628_q[31:0];

    // i_mul100_poly629_bs1_merged_bit_select(BITSELECT,637)@7
    assign i_mul100_poly629_bs1_merged_bit_select_b = bgTrunc_i_sub99_poly628_sel_x_b[31:18];
    assign i_mul100_poly629_bs1_merged_bit_select_c = bgTrunc_i_sub99_poly628_sel_x_b[17:0];

    // i_conv20_poly612_sel_x(BITSELECT,278)@7
    assign i_conv20_poly612_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_poly67_poly611_out_o_readdata[15:0]};

    // i_conv20_poly612_vt_select_15(BITSELECT,97)@7
    assign i_conv20_poly612_vt_select_15_b = i_conv20_poly612_sel_x_b[15:0];

    // i_conv20_poly612_vt_join(BITJOIN,96)@7
    assign i_conv20_poly612_vt_join_q = {i_conv20_poly612_vt_const_31_q, i_conv20_poly612_vt_select_15_b};

    // dupName_0_i_conv20_poly612_vt_join_narrowed_x(BITSELECT,217)@7
    assign dupName_0_i_conv20_poly612_vt_join_narrowed_x_b = i_conv20_poly612_vt_join_q[15:0];

    // i_mul100_poly629_im0_cma(CHAINMULTADD,602)@7 + 3
    assign i_mul100_poly629_im0_cma_reset = ~ (resetn);
    assign i_mul100_poly629_im0_cma_ena0 = 1'b1;
    assign i_mul100_poly629_im0_cma_ena1 = i_mul100_poly629_im0_cma_ena0;
    assign i_mul100_poly629_im0_cma_ena2 = i_mul100_poly629_im0_cma_ena0;

    assign i_mul100_poly629_im0_cma_a0 = dupName_0_i_conv20_poly612_vt_join_narrowed_x_b;
    assign i_mul100_poly629_im0_cma_c0 = i_mul100_poly629_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul100_poly629_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul100_poly629_im0_cma_ena2, i_mul100_poly629_im0_cma_ena1, i_mul100_poly629_im0_cma_ena0 }),
        .aclr({ i_mul100_poly629_im0_cma_reset, i_mul100_poly629_im0_cma_reset }),
        .ay(i_mul100_poly629_im0_cma_a0),
        .ax(i_mul100_poly629_im0_cma_c0),
        .resulta(i_mul100_poly629_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul100_poly629_im0_cma_delay ( .xin(i_mul100_poly629_im0_cma_s0), .xout(i_mul100_poly629_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul100_poly629_im0_cma_q = $unsigned(i_mul100_poly629_im0_cma_qq[29:0]);

    // i_mul100_poly629_sums_align_1(BITSHIFT,370)@10
    assign i_mul100_poly629_sums_align_1_qint = { i_mul100_poly629_im0_cma_q, 18'b000000000000000000 };
    assign i_mul100_poly629_sums_align_1_q = i_mul100_poly629_sums_align_1_qint[47:0];

    // i_mul100_poly629_im3_cma(CHAINMULTADD,603)@7 + 3
    assign i_mul100_poly629_im3_cma_reset = ~ (resetn);
    assign i_mul100_poly629_im3_cma_ena0 = 1'b1;
    assign i_mul100_poly629_im3_cma_ena1 = i_mul100_poly629_im3_cma_ena0;
    assign i_mul100_poly629_im3_cma_ena2 = i_mul100_poly629_im3_cma_ena0;

    assign i_mul100_poly629_im3_cma_a0 = i_mul100_poly629_bs1_merged_bit_select_c;
    assign i_mul100_poly629_im3_cma_c0 = dupName_0_i_conv20_poly612_vt_join_narrowed_x_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_mul100_poly629_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul100_poly629_im3_cma_ena2, i_mul100_poly629_im3_cma_ena1, i_mul100_poly629_im3_cma_ena0 }),
        .aclr({ i_mul100_poly629_im3_cma_reset, i_mul100_poly629_im3_cma_reset }),
        .ay(i_mul100_poly629_im3_cma_a0),
        .ax(i_mul100_poly629_im3_cma_c0),
        .resulta(i_mul100_poly629_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul100_poly629_im3_cma_delay ( .xin(i_mul100_poly629_im3_cma_s0), .xout(i_mul100_poly629_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul100_poly629_im3_cma_q = $unsigned(i_mul100_poly629_im3_cma_qq[33:0]);

    // i_mul100_poly629_sums_result_add_0_0(ADD,372)@10
    assign i_mul100_poly629_sums_result_add_0_0_a = {15'b000000000000000, i_mul100_poly629_im3_cma_q};
    assign i_mul100_poly629_sums_result_add_0_0_b = {1'b0, i_mul100_poly629_sums_align_1_q};
    assign i_mul100_poly629_sums_result_add_0_0_o = $unsigned(i_mul100_poly629_sums_result_add_0_0_a) + $unsigned(i_mul100_poly629_sums_result_add_0_0_b);
    assign i_mul100_poly629_sums_result_add_0_0_q = i_mul100_poly629_sums_result_add_0_0_o[48:0];

    // i_mul100_poly629_extender_x(BITJOIN,287)@10
    assign i_mul100_poly629_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_mul100_poly629_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_mul100_poly629_sel_x(BITSELECT,192)@10
    assign bgTrunc_i_mul100_poly629_sel_x_b = i_mul100_poly629_extender_x_q[31:0];

    // redist20_bgTrunc_i_mul100_poly629_sel_x_b_1(DELAY,659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_mul100_poly629_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_mul100_poly629_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul100_poly629_sel_x_b);
        end
    end

    // i_add109_poly632(ADD,67)@11
    assign i_add109_poly632_a = {1'b0, redist20_bgTrunc_i_mul100_poly629_sel_x_b_1_q};
    assign i_add109_poly632_b = {1'b0, redist19_bgTrunc_i_mul108_poly631_sel_x_b_1_q};
    assign i_add109_poly632_o = $unsigned(i_add109_poly632_a) + $unsigned(i_add109_poly632_b);
    assign i_add109_poly632_q = i_add109_poly632_o[32:0];

    // bgTrunc_i_add109_poly632_sel_x(BITSELECT,186)@11
    assign bgTrunc_i_add109_poly632_sel_x_b = i_add109_poly632_q[31:0];

    // i_mul110_poly633_bs1_merged_bit_select(BITSELECT,629)@11
    assign i_mul110_poly633_bs1_merged_bit_select_b = bgTrunc_i_add109_poly632_sel_x_b[31:18];
    assign i_mul110_poly633_bs1_merged_bit_select_c = bgTrunc_i_add109_poly632_sel_x_b[17:0];

    // i_mul110_poly633_ma3_cma(CHAINMULTADD,624)@11 + 3
    assign i_mul110_poly633_ma3_cma_reset = ~ (resetn);
    assign i_mul110_poly633_ma3_cma_ena0 = 1'b1;
    assign i_mul110_poly633_ma3_cma_ena1 = i_mul110_poly633_ma3_cma_ena0;
    assign i_mul110_poly633_ma3_cma_ena2 = i_mul110_poly633_ma3_cma_ena0;

    assign i_mul110_poly633_ma3_cma_a0 = i_mul110_poly633_bs1_merged_bit_select_b;
    assign i_mul110_poly633_ma3_cma_c0 = i_mul110_poly633_bs2_merged_bit_select_c;
    assign i_mul110_poly633_ma3_cma_a1 = i_mul110_poly633_bs2_merged_bit_select_b;
    assign i_mul110_poly633_ma3_cma_c1 = i_mul110_poly633_bs1_merged_bit_select_c;
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
    ) i_mul110_poly633_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul110_poly633_ma3_cma_ena2, i_mul110_poly633_ma3_cma_ena1, i_mul110_poly633_ma3_cma_ena0 }),
        .aclr({ i_mul110_poly633_ma3_cma_reset, i_mul110_poly633_ma3_cma_reset }),
        .ay(i_mul110_poly633_ma3_cma_a1),
        .by(i_mul110_poly633_ma3_cma_a0),
        .ax(i_mul110_poly633_ma3_cma_c1),
        .bx(i_mul110_poly633_ma3_cma_c0),
        .resulta(i_mul110_poly633_ma3_cma_s0),
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
    i_mul110_poly633_ma3_cma_delay ( .xin(i_mul110_poly633_ma3_cma_s0), .xout(i_mul110_poly633_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul110_poly633_ma3_cma_q = $unsigned(i_mul110_poly633_ma3_cma_qq[32:0]);

    // i_mul110_poly633_sums_align_1(BITSHIFT,395)@14
    assign i_mul110_poly633_sums_align_1_qint = { i_mul110_poly633_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul110_poly633_sums_align_1_q = i_mul110_poly633_sums_align_1_qint[50:0];

    // i_mul110_poly633_im0_cma(CHAINMULTADD,606)@11 + 3
    assign i_mul110_poly633_im0_cma_reset = ~ (resetn);
    assign i_mul110_poly633_im0_cma_ena0 = 1'b1;
    assign i_mul110_poly633_im0_cma_ena1 = i_mul110_poly633_im0_cma_ena0;
    assign i_mul110_poly633_im0_cma_ena2 = i_mul110_poly633_im0_cma_ena0;

    assign i_mul110_poly633_im0_cma_a0 = i_mul110_poly633_bs1_merged_bit_select_b;
    assign i_mul110_poly633_im0_cma_c0 = i_mul110_poly633_bs2_merged_bit_select_b;
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
    ) i_mul110_poly633_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul110_poly633_im0_cma_ena2, i_mul110_poly633_im0_cma_ena1, i_mul110_poly633_im0_cma_ena0 }),
        .aclr({ i_mul110_poly633_im0_cma_reset, i_mul110_poly633_im0_cma_reset }),
        .ay(i_mul110_poly633_im0_cma_a0),
        .ax(i_mul110_poly633_im0_cma_c0),
        .resulta(i_mul110_poly633_im0_cma_s0),
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
    i_mul110_poly633_im0_cma_delay ( .xin(i_mul110_poly633_im0_cma_s0), .xout(i_mul110_poly633_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul110_poly633_im0_cma_q = $unsigned(i_mul110_poly633_im0_cma_qq[27:0]);

    // i_mul110_poly633_im8_cma(CHAINMULTADD,607)@11 + 3
    assign i_mul110_poly633_im8_cma_reset = ~ (resetn);
    assign i_mul110_poly633_im8_cma_ena0 = 1'b1;
    assign i_mul110_poly633_im8_cma_ena1 = i_mul110_poly633_im8_cma_ena0;
    assign i_mul110_poly633_im8_cma_ena2 = i_mul110_poly633_im8_cma_ena0;

    assign i_mul110_poly633_im8_cma_a0 = i_mul110_poly633_bs1_merged_bit_select_c;
    assign i_mul110_poly633_im8_cma_c0 = i_mul110_poly633_bs2_merged_bit_select_c;
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
    ) i_mul110_poly633_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul110_poly633_im8_cma_ena2, i_mul110_poly633_im8_cma_ena1, i_mul110_poly633_im8_cma_ena0 }),
        .aclr({ i_mul110_poly633_im8_cma_reset, i_mul110_poly633_im8_cma_reset }),
        .ay(i_mul110_poly633_im8_cma_a0),
        .ax(i_mul110_poly633_im8_cma_c0),
        .resulta(i_mul110_poly633_im8_cma_s0),
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
    i_mul110_poly633_im8_cma_delay ( .xin(i_mul110_poly633_im8_cma_s0), .xout(i_mul110_poly633_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul110_poly633_im8_cma_q = $unsigned(i_mul110_poly633_im8_cma_qq[35:0]);

    // i_mul110_poly633_sums_join_0(BITJOIN,394)@14
    assign i_mul110_poly633_sums_join_0_q = {i_mul110_poly633_im0_cma_q, i_mul110_poly633_im8_cma_q};

    // i_mul110_poly633_sums_result_add_0_0(ADD,397)@14
    assign i_mul110_poly633_sums_result_add_0_0_a = {1'b0, i_mul110_poly633_sums_join_0_q};
    assign i_mul110_poly633_sums_result_add_0_0_b = {14'b00000000000000, i_mul110_poly633_sums_align_1_q};
    assign i_mul110_poly633_sums_result_add_0_0_o = $unsigned(i_mul110_poly633_sums_result_add_0_0_a) + $unsigned(i_mul110_poly633_sums_result_add_0_0_b);
    assign i_mul110_poly633_sums_result_add_0_0_q = i_mul110_poly633_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul110_poly633_sel_x(BITSELECT,194)@14
    assign bgTrunc_i_mul110_poly633_sel_x_in = i_mul110_poly633_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul110_poly633_sel_x_b = bgTrunc_i_mul110_poly633_sel_x_in[31:0];

    // redist18_bgTrunc_i_mul110_poly633_sel_x_b_1(DELAY,657)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_mul110_poly633_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_mul110_poly633_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul110_poly633_sel_x_b);
        end
    end

    // c_i32_18921694(CONSTANT,54)
    assign c_i32_18921694_q = $unsigned(32'b11111111111111010001110011100000);

    // c_i32_95193(CONSTANT,60)
    assign c_i32_95193_q = $unsigned(32'b11111111111111111111110001001001);

    // i_mul13153_poly634(ADD,136)@7
    assign i_mul13153_poly634_a = {1'b0, i_conv23_poly615_vt_join_q};
    assign i_mul13153_poly634_b = {1'b0, c_i32_95193_q};
    assign i_mul13153_poly634_o = $unsigned(i_mul13153_poly634_a) + $unsigned(i_mul13153_poly634_b);
    assign i_mul13153_poly634_q = i_mul13153_poly634_o[32:0];

    // bgTrunc_i_mul13153_poly634_sel_x(BITSELECT,196)@7
    assign bgTrunc_i_mul13153_poly634_sel_x_b = i_mul13153_poly634_q[31:0];

    // i_mul119_neg_poly635_bs1_merged_bit_select(BITSELECT,632)@7
    assign i_mul119_neg_poly635_bs1_merged_bit_select_b = bgTrunc_i_mul13153_poly634_sel_x_b[31:18];
    assign i_mul119_neg_poly635_bs1_merged_bit_select_c = bgTrunc_i_mul13153_poly634_sel_x_b[17:0];

    // i_mul119_neg_poly635_im0_cma(CHAINMULTADD,608)@7 + 3
    assign i_mul119_neg_poly635_im0_cma_reset = ~ (resetn);
    assign i_mul119_neg_poly635_im0_cma_ena0 = 1'b1;
    assign i_mul119_neg_poly635_im0_cma_ena1 = i_mul119_neg_poly635_im0_cma_ena0;
    assign i_mul119_neg_poly635_im0_cma_ena2 = i_mul119_neg_poly635_im0_cma_ena0;

    assign i_mul119_neg_poly635_im0_cma_a0 = dupName_0_i_conv23_poly615_vt_join_narrowed_x_b;
    assign i_mul119_neg_poly635_im0_cma_c0 = i_mul119_neg_poly635_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul119_neg_poly635_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul119_neg_poly635_im0_cma_ena2, i_mul119_neg_poly635_im0_cma_ena1, i_mul119_neg_poly635_im0_cma_ena0 }),
        .aclr({ i_mul119_neg_poly635_im0_cma_reset, i_mul119_neg_poly635_im0_cma_reset }),
        .ay(i_mul119_neg_poly635_im0_cma_a0),
        .ax(i_mul119_neg_poly635_im0_cma_c0),
        .resulta(i_mul119_neg_poly635_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul119_neg_poly635_im0_cma_delay ( .xin(i_mul119_neg_poly635_im0_cma_s0), .xout(i_mul119_neg_poly635_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul119_neg_poly635_im0_cma_q = $unsigned(i_mul119_neg_poly635_im0_cma_qq[29:0]);

    // i_mul119_neg_poly635_sums_align_1(BITSHIFT,405)@10
    assign i_mul119_neg_poly635_sums_align_1_qint = { i_mul119_neg_poly635_im0_cma_q, 18'b000000000000000000 };
    assign i_mul119_neg_poly635_sums_align_1_q = i_mul119_neg_poly635_sums_align_1_qint[47:0];

    // i_mul119_neg_poly635_im3_cma(CHAINMULTADD,609)@7 + 3
    assign i_mul119_neg_poly635_im3_cma_reset = ~ (resetn);
    assign i_mul119_neg_poly635_im3_cma_ena0 = 1'b1;
    assign i_mul119_neg_poly635_im3_cma_ena1 = i_mul119_neg_poly635_im3_cma_ena0;
    assign i_mul119_neg_poly635_im3_cma_ena2 = i_mul119_neg_poly635_im3_cma_ena0;

    assign i_mul119_neg_poly635_im3_cma_a0 = i_mul119_neg_poly635_bs1_merged_bit_select_c;
    assign i_mul119_neg_poly635_im3_cma_c0 = dupName_0_i_conv23_poly615_vt_join_narrowed_x_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_mul119_neg_poly635_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul119_neg_poly635_im3_cma_ena2, i_mul119_neg_poly635_im3_cma_ena1, i_mul119_neg_poly635_im3_cma_ena0 }),
        .aclr({ i_mul119_neg_poly635_im3_cma_reset, i_mul119_neg_poly635_im3_cma_reset }),
        .ay(i_mul119_neg_poly635_im3_cma_a0),
        .ax(i_mul119_neg_poly635_im3_cma_c0),
        .resulta(i_mul119_neg_poly635_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul119_neg_poly635_im3_cma_delay ( .xin(i_mul119_neg_poly635_im3_cma_s0), .xout(i_mul119_neg_poly635_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul119_neg_poly635_im3_cma_q = $unsigned(i_mul119_neg_poly635_im3_cma_qq[33:0]);

    // i_mul119_neg_poly635_sums_result_add_0_0(ADD,407)@10
    assign i_mul119_neg_poly635_sums_result_add_0_0_a = {15'b000000000000000, i_mul119_neg_poly635_im3_cma_q};
    assign i_mul119_neg_poly635_sums_result_add_0_0_b = {1'b0, i_mul119_neg_poly635_sums_align_1_q};
    assign i_mul119_neg_poly635_sums_result_add_0_0_o = $unsigned(i_mul119_neg_poly635_sums_result_add_0_0_a) + $unsigned(i_mul119_neg_poly635_sums_result_add_0_0_b);
    assign i_mul119_neg_poly635_sums_result_add_0_0_q = i_mul119_neg_poly635_sums_result_add_0_0_o[48:0];

    // i_mul119_neg_poly635_extender_x(BITJOIN,291)@10
    assign i_mul119_neg_poly635_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_mul119_neg_poly635_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_mul119_neg_poly635_sel_x(BITSELECT,195)@10
    assign bgTrunc_i_mul119_neg_poly635_sel_x_b = i_mul119_neg_poly635_extender_x_q[31:0];

    // redist17_bgTrunc_i_mul119_neg_poly635_sel_x_b_1(DELAY,656)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_mul119_neg_poly635_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_mul119_neg_poly635_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul119_neg_poly635_sel_x_b);
        end
    end

    // i_reass_add45_poly636(ADD,155)@11
    assign i_reass_add45_poly636_a = {1'b0, redist17_bgTrunc_i_mul119_neg_poly635_sel_x_b_1_q};
    assign i_reass_add45_poly636_b = {1'b0, c_i32_18921694_q};
    assign i_reass_add45_poly636_o = $unsigned(i_reass_add45_poly636_a) + $unsigned(i_reass_add45_poly636_b);
    assign i_reass_add45_poly636_q = i_reass_add45_poly636_o[32:0];

    // bgTrunc_i_reass_add45_poly636_sel_x(BITSELECT,203)@11
    assign bgTrunc_i_reass_add45_poly636_sel_x_b = i_reass_add45_poly636_q[31:0];

    // i_reass_mul_poly637_bs1_merged_bit_select(BITSELECT,634)@11
    assign i_reass_mul_poly637_bs1_merged_bit_select_b = bgTrunc_i_reass_add45_poly636_sel_x_b[31:18];
    assign i_reass_mul_poly637_bs1_merged_bit_select_c = bgTrunc_i_reass_add45_poly636_sel_x_b[17:0];

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_notEnable(LOGICAL,735)
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_nor(LOGICAL,736)
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_nor_q = ~ (redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_notEnable_q | redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_sticky_ena_q);

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_last(CONSTANT,732)
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_last_q = $unsigned(2'b01);

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmp(LOGICAL,733)
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmp_q = $unsigned(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_last_q == redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmpReg(REG,734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmpReg_q <= $unsigned(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmp_q);
        end
    end

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_sticky_ena(REG,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_nor_q == 1'b1)
        begin
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_sticky_ena_q <= $unsigned(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_cmpReg_q);
        end
    end

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_enaAnd(LOGICAL,738)
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_enaAnd_q = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_sticky_ena_q & VCC_q;

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt(COUNTER,730)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i <= 2'd0;
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i == 2'd1)
            begin
                redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_eq <= 1'b0;
            end
            if (redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_eq == 1'b1)
            begin
                redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i <= $unsigned(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i <= $unsigned(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_q = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_i[1:0];

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_wraddr(REG,731)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_wraddr_q <= $unsigned(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_q);
        end
    end

    // redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem(DUALMEM,729)
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_ia = $unsigned(dupName_0_i_conv23_poly615_vt_join_narrowed_x_b);
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_aa = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_wraddr_q;
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_ab = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_rdcnt_q;
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(16),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_dmem (
        .clocken1(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_aa),
        .data_a(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_ab),
        .q_b(redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_iq),
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
    assign redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_iq[15:0];

    // i_reass_mul_poly637_im0_cma(CHAINMULTADD,622)@11 + 3
    assign i_reass_mul_poly637_im0_cma_reset = ~ (resetn);
    assign i_reass_mul_poly637_im0_cma_ena0 = 1'b1;
    assign i_reass_mul_poly637_im0_cma_ena1 = i_reass_mul_poly637_im0_cma_ena0;
    assign i_reass_mul_poly637_im0_cma_ena2 = i_reass_mul_poly637_im0_cma_ena0;

    assign i_reass_mul_poly637_im0_cma_a0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    assign i_reass_mul_poly637_im0_cma_c0 = i_reass_mul_poly637_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_reass_mul_poly637_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_mul_poly637_im0_cma_ena2, i_reass_mul_poly637_im0_cma_ena1, i_reass_mul_poly637_im0_cma_ena0 }),
        .aclr({ i_reass_mul_poly637_im0_cma_reset, i_reass_mul_poly637_im0_cma_reset }),
        .ay(i_reass_mul_poly637_im0_cma_a0),
        .ax(i_reass_mul_poly637_im0_cma_c0),
        .resulta(i_reass_mul_poly637_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reass_mul_poly637_im0_cma_delay ( .xin(i_reass_mul_poly637_im0_cma_s0), .xout(i_reass_mul_poly637_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_mul_poly637_im0_cma_q = $unsigned(i_reass_mul_poly637_im0_cma_qq[29:0]);

    // i_reass_mul_poly637_sums_align_1(BITSHIFT,480)@14
    assign i_reass_mul_poly637_sums_align_1_qint = { i_reass_mul_poly637_im0_cma_q, 18'b000000000000000000 };
    assign i_reass_mul_poly637_sums_align_1_q = i_reass_mul_poly637_sums_align_1_qint[47:0];

    // i_reass_mul_poly637_im3_cma(CHAINMULTADD,623)@11 + 3
    assign i_reass_mul_poly637_im3_cma_reset = ~ (resetn);
    assign i_reass_mul_poly637_im3_cma_ena0 = 1'b1;
    assign i_reass_mul_poly637_im3_cma_ena1 = i_reass_mul_poly637_im3_cma_ena0;
    assign i_reass_mul_poly637_im3_cma_ena2 = i_reass_mul_poly637_im3_cma_ena0;

    assign i_reass_mul_poly637_im3_cma_a0 = i_reass_mul_poly637_bs1_merged_bit_select_c;
    assign i_reass_mul_poly637_im3_cma_c0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_reass_mul_poly637_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_mul_poly637_im3_cma_ena2, i_reass_mul_poly637_im3_cma_ena1, i_reass_mul_poly637_im3_cma_ena0 }),
        .aclr({ i_reass_mul_poly637_im3_cma_reset, i_reass_mul_poly637_im3_cma_reset }),
        .ay(i_reass_mul_poly637_im3_cma_a0),
        .ax(i_reass_mul_poly637_im3_cma_c0),
        .resulta(i_reass_mul_poly637_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reass_mul_poly637_im3_cma_delay ( .xin(i_reass_mul_poly637_im3_cma_s0), .xout(i_reass_mul_poly637_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_mul_poly637_im3_cma_q = $unsigned(i_reass_mul_poly637_im3_cma_qq[33:0]);

    // i_reass_mul_poly637_sums_result_add_0_0(ADD,482)@14
    assign i_reass_mul_poly637_sums_result_add_0_0_a = {15'b000000000000000, i_reass_mul_poly637_im3_cma_q};
    assign i_reass_mul_poly637_sums_result_add_0_0_b = {1'b0, i_reass_mul_poly637_sums_align_1_q};
    assign i_reass_mul_poly637_sums_result_add_0_0_o = $unsigned(i_reass_mul_poly637_sums_result_add_0_0_a) + $unsigned(i_reass_mul_poly637_sums_result_add_0_0_b);
    assign i_reass_mul_poly637_sums_result_add_0_0_q = i_reass_mul_poly637_sums_result_add_0_0_o[48:0];

    // i_reass_mul_poly637_extender_x(BITJOIN,305)@14
    assign i_reass_mul_poly637_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_reass_mul_poly637_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_reass_mul_poly637_sel_x(BITSELECT,208)@14
    assign bgTrunc_i_reass_mul_poly637_sel_x_b = i_reass_mul_poly637_extender_x_q[31:0];

    // redist13_bgTrunc_i_reass_mul_poly637_sel_x_b_1(DELAY,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_bgTrunc_i_reass_mul_poly637_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist13_bgTrunc_i_reass_mul_poly637_sel_x_b_1_q <= $unsigned(bgTrunc_i_reass_mul_poly637_sel_x_b);
        end
    end

    // i_add134_poly638(ADD,68)@15
    assign i_add134_poly638_a = {1'b0, redist13_bgTrunc_i_reass_mul_poly637_sel_x_b_1_q};
    assign i_add134_poly638_b = {1'b0, redist18_bgTrunc_i_mul110_poly633_sel_x_b_1_q};
    assign i_add134_poly638_o = $unsigned(i_add134_poly638_a) + $unsigned(i_add134_poly638_b);
    assign i_add134_poly638_q = i_add134_poly638_o[32:0];

    // bgTrunc_i_add134_poly638_sel_x(BITSELECT,187)@15
    assign bgTrunc_i_add134_poly638_sel_x_b = i_add134_poly638_q[31:0];

    // i_mul135_neg_poly639_bs1_merged_bit_select(BITSELECT,630)@15
    assign i_mul135_neg_poly639_bs1_merged_bit_select_b = bgTrunc_i_add134_poly638_sel_x_b[31:18];
    assign i_mul135_neg_poly639_bs1_merged_bit_select_c = bgTrunc_i_add134_poly638_sel_x_b[17:0];

    // i_conv41_poly621_sel_x(BITSELECT,282)@15
    assign i_conv41_poly621_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_poly69_poly620_out_o_readdata[15:0]};

    // i_conv41_poly621_vt_select_15(BITSELECT,105)@15
    assign i_conv41_poly621_vt_select_15_b = i_conv41_poly621_sel_x_b[15:0];

    // i_conv41_poly621_vt_join(BITJOIN,104)@15
    assign i_conv41_poly621_vt_join_q = {i_conv20_poly612_vt_const_31_q, i_conv41_poly621_vt_select_15_b};

    // dupName_0_i_conv41_poly621_vt_join_narrowed_x(BITSELECT,219)@15
    assign dupName_0_i_conv41_poly621_vt_join_narrowed_x_b = i_conv41_poly621_vt_join_q[15:0];

    // i_mul135_neg_poly639_im0_cma(CHAINMULTADD,610)@15 + 3
    assign i_mul135_neg_poly639_im0_cma_reset = ~ (resetn);
    assign i_mul135_neg_poly639_im0_cma_ena0 = 1'b1;
    assign i_mul135_neg_poly639_im0_cma_ena1 = i_mul135_neg_poly639_im0_cma_ena0;
    assign i_mul135_neg_poly639_im0_cma_ena2 = i_mul135_neg_poly639_im0_cma_ena0;

    assign i_mul135_neg_poly639_im0_cma_a0 = dupName_0_i_conv41_poly621_vt_join_narrowed_x_b;
    assign i_mul135_neg_poly639_im0_cma_c0 = i_mul135_neg_poly639_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul135_neg_poly639_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul135_neg_poly639_im0_cma_ena2, i_mul135_neg_poly639_im0_cma_ena1, i_mul135_neg_poly639_im0_cma_ena0 }),
        .aclr({ i_mul135_neg_poly639_im0_cma_reset, i_mul135_neg_poly639_im0_cma_reset }),
        .ay(i_mul135_neg_poly639_im0_cma_a0),
        .ax(i_mul135_neg_poly639_im0_cma_c0),
        .resulta(i_mul135_neg_poly639_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul135_neg_poly639_im0_cma_delay ( .xin(i_mul135_neg_poly639_im0_cma_s0), .xout(i_mul135_neg_poly639_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul135_neg_poly639_im0_cma_q = $unsigned(i_mul135_neg_poly639_im0_cma_qq[29:0]);

    // i_mul135_neg_poly639_sums_align_1(BITSHIFT,415)@18
    assign i_mul135_neg_poly639_sums_align_1_qint = { i_mul135_neg_poly639_im0_cma_q, 18'b000000000000000000 };
    assign i_mul135_neg_poly639_sums_align_1_q = i_mul135_neg_poly639_sums_align_1_qint[47:0];

    // i_mul135_neg_poly639_im3_cma(CHAINMULTADD,611)@15 + 3
    assign i_mul135_neg_poly639_im3_cma_reset = ~ (resetn);
    assign i_mul135_neg_poly639_im3_cma_ena0 = 1'b1;
    assign i_mul135_neg_poly639_im3_cma_ena1 = i_mul135_neg_poly639_im3_cma_ena0;
    assign i_mul135_neg_poly639_im3_cma_ena2 = i_mul135_neg_poly639_im3_cma_ena0;

    assign i_mul135_neg_poly639_im3_cma_a0 = i_mul135_neg_poly639_bs1_merged_bit_select_c;
    assign i_mul135_neg_poly639_im3_cma_c0 = dupName_0_i_conv41_poly621_vt_join_narrowed_x_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_mul135_neg_poly639_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul135_neg_poly639_im3_cma_ena2, i_mul135_neg_poly639_im3_cma_ena1, i_mul135_neg_poly639_im3_cma_ena0 }),
        .aclr({ i_mul135_neg_poly639_im3_cma_reset, i_mul135_neg_poly639_im3_cma_reset }),
        .ay(i_mul135_neg_poly639_im3_cma_a0),
        .ax(i_mul135_neg_poly639_im3_cma_c0),
        .resulta(i_mul135_neg_poly639_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul135_neg_poly639_im3_cma_delay ( .xin(i_mul135_neg_poly639_im3_cma_s0), .xout(i_mul135_neg_poly639_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul135_neg_poly639_im3_cma_q = $unsigned(i_mul135_neg_poly639_im3_cma_qq[33:0]);

    // i_mul135_neg_poly639_sums_result_add_0_0(ADD,417)@18
    assign i_mul135_neg_poly639_sums_result_add_0_0_a = {15'b000000000000000, i_mul135_neg_poly639_im3_cma_q};
    assign i_mul135_neg_poly639_sums_result_add_0_0_b = {1'b0, i_mul135_neg_poly639_sums_align_1_q};
    assign i_mul135_neg_poly639_sums_result_add_0_0_o = $unsigned(i_mul135_neg_poly639_sums_result_add_0_0_a) + $unsigned(i_mul135_neg_poly639_sums_result_add_0_0_b);
    assign i_mul135_neg_poly639_sums_result_add_0_0_q = i_mul135_neg_poly639_sums_result_add_0_0_o[48:0];

    // i_mul135_neg_poly639_extender_x(BITJOIN,293)@18
    assign i_mul135_neg_poly639_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_mul135_neg_poly639_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_mul135_neg_poly639_sel_x(BITSELECT,197)@18
    assign bgTrunc_i_mul135_neg_poly639_sel_x_b = i_mul135_neg_poly639_extender_x_q[31:0];

    // redist16_bgTrunc_i_mul135_neg_poly639_sel_x_b_1(DELAY,655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_mul135_neg_poly639_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_mul135_neg_poly639_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul135_neg_poly639_sel_x_b);
        end
    end

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_notEnable(LOGICAL,745)
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_nor(LOGICAL,746)
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_nor_q = ~ (redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_notEnable_q | redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_sticky_ena_q);

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_cmpReg(REG,744)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_sticky_ena(REG,747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_nor_q == 1'b1)
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_sticky_ena_q <= $unsigned(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_cmpReg_q);
        end
    end

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_enaAnd(LOGICAL,748)
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_enaAnd_q = redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_sticky_ena_q & VCC_q;

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt(COUNTER,742)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_i <= $unsigned(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_q = redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_i[0:0];

    // c_i32_151372897(CONSTANT,52)
    assign c_i32_151372897_q = $unsigned(32'b11111111111010001110011100000000);

    // redist33_i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata_1(DELAY,672)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata_1_q <= $unsigned(i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata);
        end
    end

    // i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,323)@8 + 3
    assign i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_a0 = redist33_i_llvm_fpga_mem_unnamed_poly68_poly614_out_o_readdata_1_q;
    assign i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_c0 = {2'b00, GND_q[0:0]};
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .operand_source_max("coef"),
        .coef_sel_a_clock("0"),
        .coef_a_0(3870),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_a0),
        .coefsela(i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .ax(),
        .az(),
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
    i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add_poly642(ADD,106)@11
    assign i_dot_prod_add_poly642_a = {1'b0, i_llvm_fpga_udot_product_i32_i32_v1i16_dot_prod_poly60_dspb_native_dot_product_vunroll_x_cma0_q};
    assign i_dot_prod_add_poly642_b = {1'b0, c_i32_151372897_q};
    assign i_dot_prod_add_poly642_o = $unsigned(i_dot_prod_add_poly642_a) + $unsigned(i_dot_prod_add_poly642_b);
    assign i_dot_prod_add_poly642_q = i_dot_prod_add_poly642_o[32:0];

    // bgTrunc_i_dot_prod_add_poly642_sel_x(BITSELECT,189)@11
    assign bgTrunc_i_dot_prod_add_poly642_sel_x_b = i_dot_prod_add_poly642_q[31:0];

    // i_reass_add46_poly643_bs1_merged_bit_select(BITSELECT,631)@11
    assign i_reass_add46_poly643_bs1_merged_bit_select_b = bgTrunc_i_dot_prod_add_poly642_sel_x_b[31:18];
    assign i_reass_add46_poly643_bs1_merged_bit_select_c = bgTrunc_i_dot_prod_add_poly642_sel_x_b[17:0];

    // i_reass_add46_poly643_im0_cma(CHAINMULTADD,618)@11 + 3
    assign i_reass_add46_poly643_im0_cma_reset = ~ (resetn);
    assign i_reass_add46_poly643_im0_cma_ena0 = 1'b1;
    assign i_reass_add46_poly643_im0_cma_ena1 = i_reass_add46_poly643_im0_cma_ena0;
    assign i_reass_add46_poly643_im0_cma_ena2 = i_reass_add46_poly643_im0_cma_ena0;

    assign i_reass_add46_poly643_im0_cma_a0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    assign i_reass_add46_poly643_im0_cma_c0 = i_reass_add46_poly643_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_reass_add46_poly643_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_add46_poly643_im0_cma_ena2, i_reass_add46_poly643_im0_cma_ena1, i_reass_add46_poly643_im0_cma_ena0 }),
        .aclr({ i_reass_add46_poly643_im0_cma_reset, i_reass_add46_poly643_im0_cma_reset }),
        .ay(i_reass_add46_poly643_im0_cma_a0),
        .ax(i_reass_add46_poly643_im0_cma_c0),
        .resulta(i_reass_add46_poly643_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reass_add46_poly643_im0_cma_delay ( .xin(i_reass_add46_poly643_im0_cma_s0), .xout(i_reass_add46_poly643_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_add46_poly643_im0_cma_q = $unsigned(i_reass_add46_poly643_im0_cma_qq[29:0]);

    // i_reass_add46_poly643_sums_align_1(BITSHIFT,460)@14
    assign i_reass_add46_poly643_sums_align_1_qint = { i_reass_add46_poly643_im0_cma_q, 18'b000000000000000000 };
    assign i_reass_add46_poly643_sums_align_1_q = i_reass_add46_poly643_sums_align_1_qint[47:0];

    // i_reass_add46_poly643_im3_cma(CHAINMULTADD,619)@11 + 3
    assign i_reass_add46_poly643_im3_cma_reset = ~ (resetn);
    assign i_reass_add46_poly643_im3_cma_ena0 = 1'b1;
    assign i_reass_add46_poly643_im3_cma_ena1 = i_reass_add46_poly643_im3_cma_ena0;
    assign i_reass_add46_poly643_im3_cma_ena2 = i_reass_add46_poly643_im3_cma_ena0;

    assign i_reass_add46_poly643_im3_cma_a0 = i_reass_add46_poly643_bs1_merged_bit_select_c;
    assign i_reass_add46_poly643_im3_cma_c0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_reass_add46_poly643_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_add46_poly643_im3_cma_ena2, i_reass_add46_poly643_im3_cma_ena1, i_reass_add46_poly643_im3_cma_ena0 }),
        .aclr({ i_reass_add46_poly643_im3_cma_reset, i_reass_add46_poly643_im3_cma_reset }),
        .ay(i_reass_add46_poly643_im3_cma_a0),
        .ax(i_reass_add46_poly643_im3_cma_c0),
        .resulta(i_reass_add46_poly643_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reass_add46_poly643_im3_cma_delay ( .xin(i_reass_add46_poly643_im3_cma_s0), .xout(i_reass_add46_poly643_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_add46_poly643_im3_cma_q = $unsigned(i_reass_add46_poly643_im3_cma_qq[33:0]);

    // i_reass_add46_poly643_sums_result_add_0_0(ADD,462)@14
    assign i_reass_add46_poly643_sums_result_add_0_0_a = {15'b000000000000000, i_reass_add46_poly643_im3_cma_q};
    assign i_reass_add46_poly643_sums_result_add_0_0_b = {1'b0, i_reass_add46_poly643_sums_align_1_q};
    assign i_reass_add46_poly643_sums_result_add_0_0_o = $unsigned(i_reass_add46_poly643_sums_result_add_0_0_a) + $unsigned(i_reass_add46_poly643_sums_result_add_0_0_b);
    assign i_reass_add46_poly643_sums_result_add_0_0_q = i_reass_add46_poly643_sums_result_add_0_0_o[48:0];

    // i_reass_add46_poly643_extender_x(BITJOIN,301)@14
    assign i_reass_add46_poly643_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_reass_add46_poly643_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_reass_add46_poly643_sel_x(BITSELECT,204)@14
    assign bgTrunc_i_reass_add46_poly643_sel_x_b = i_reass_add46_poly643_extender_x_q[31:0];

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_inputreg0(DELAY,739)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_inputreg0_q <= $unsigned(bgTrunc_i_reass_add46_poly643_sel_x_b);
        end
    end

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_wraddr(REG,743)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_wraddr_q <= $unsigned(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_q);
        end
    end

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem(DUALMEM,741)
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_ia = $unsigned(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_inputreg0_q);
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_aa = redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_wraddr_q;
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_ab = redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_rdcnt_q;
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
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
    ) redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_dmem (
        .clocken1(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_reset0),
        .clock1(clock),
        .address_a(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_aa),
        .data_a(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_ab),
        .q_b(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_iq),
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
    assign redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_q = redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_iq[31:0];

    // redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_outputreg0(DELAY,740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_outputreg0_q <= '0;
        end
        else
        begin
            redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_outputreg0_q <= $unsigned(redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_mem_q);
        end
    end

    // i_reass_add47_poly644(ADD,157)@19
    assign i_reass_add47_poly644_a = {1'b0, redist14_bgTrunc_i_reass_add46_poly643_sel_x_b_5_outputreg0_q};
    assign i_reass_add47_poly644_b = {1'b0, redist16_bgTrunc_i_mul135_neg_poly639_sel_x_b_1_q};
    assign i_reass_add47_poly644_o = $unsigned(i_reass_add47_poly644_a) + $unsigned(i_reass_add47_poly644_b);
    assign i_reass_add47_poly644_q = i_reass_add47_poly644_o[32:0];

    // bgTrunc_i_reass_add47_poly644_sel_x(BITSELECT,205)@19
    assign bgTrunc_i_reass_add47_poly644_sel_x_b = i_reass_add47_poly644_q[31:0];

    // c_i32_43290(CONSTANT,58)
    assign c_i32_43290_q = $unsigned(32'b11111111111111111111111001010000);

    // i_add61_add12_poly625_vt_const_31(CONSTANT,71)
    assign i_add61_add12_poly625_vt_const_31_q = $unsigned(12'b000000000000);

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_notEnable(LOGICAL,779)
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_nor(LOGICAL,780)
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_nor_q = ~ (redist36_i_add61_add12_poly625_vt_select_19_b_6_notEnable_q | redist36_i_add61_add12_poly625_vt_select_19_b_6_sticky_ena_q);

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_last(CONSTANT,776)
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_last_q = $unsigned(3'b010);

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_cmp(LOGICAL,777)
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_cmp_b = {1'b0, redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_q};
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_cmp_q = $unsigned(redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_last_q == redist36_i_add61_add12_poly625_vt_select_19_b_6_cmp_b ? 1'b1 : 1'b0);

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_cmpReg(REG,778)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_cmpReg_q <= $unsigned(redist36_i_add61_add12_poly625_vt_select_19_b_6_cmp_q);
        end
    end

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_sticky_ena(REG,781)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_i_add61_add12_poly625_vt_select_19_b_6_nor_q == 1'b1)
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_sticky_ena_q <= $unsigned(redist36_i_add61_add12_poly625_vt_select_19_b_6_cmpReg_q);
        end
    end

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_enaAnd(LOGICAL,782)
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_enaAnd_q = redist36_i_add61_add12_poly625_vt_select_19_b_6_sticky_ena_q & VCC_q;

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt(COUNTER,774)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_i <= $unsigned(redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_q = redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_i[1:0];

    // i_add_poly616_vt_const_31(CONSTANT,75)
    assign i_add_poly616_vt_const_31_q = $unsigned(13'b0000000000000);

    // leftShiftStage1Idx1Rng2_uid492_i_add_poly60_shift_x(BITSELECT,491)@8
    assign leftShiftStage1Idx1Rng2_uid492_i_add_poly60_shift_x_in = leftShiftStage0_uid490_i_add_poly60_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid492_i_add_poly60_shift_x_b = leftShiftStage1Idx1Rng2_uid492_i_add_poly60_shift_x_in[29:0];

    // leftShiftStage1Idx1Pad2_uid491_i_add_poly60_shift_x(CONSTANT,490)
    assign leftShiftStage1Idx1Pad2_uid491_i_add_poly60_shift_x_q = $unsigned(2'b00);

    // leftShiftStage1Idx1_uid493_i_add_poly60_shift_x(BITJOIN,492)@8
    assign leftShiftStage1Idx1_uid493_i_add_poly60_shift_x_q = {leftShiftStage1Idx1Rng2_uid492_i_add_poly60_shift_x_b, leftShiftStage1Idx1Pad2_uid491_i_add_poly60_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid487_i_add_poly60_shift_x(BITSELECT,486)@7
    assign leftShiftStage0Idx1Rng1_uid487_i_add_poly60_shift_x_in = i_conv20_poly612_vt_join_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid487_i_add_poly60_shift_x_b = leftShiftStage0Idx1Rng1_uid487_i_add_poly60_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid488_i_add_poly60_shift_x(BITJOIN,487)@7
    assign leftShiftStage0Idx1_uid488_i_add_poly60_shift_x_q = {leftShiftStage0Idx1Rng1_uid487_i_add_poly60_shift_x_b, GND_q};

    // leftShiftStage0_uid490_i_add_poly60_shift_x(MUX,489)@7 + 1
    assign leftShiftStage0_uid490_i_add_poly60_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid490_i_add_poly60_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid490_i_add_poly60_shift_x_s)
                1'b0 : leftShiftStage0_uid490_i_add_poly60_shift_x_q <= i_conv20_poly612_vt_join_q;
                1'b1 : leftShiftStage0_uid490_i_add_poly60_shift_x_q <= leftShiftStage0Idx1_uid488_i_add_poly60_shift_x_q;
                default : leftShiftStage0_uid490_i_add_poly60_shift_x_q <= 32'b0;
            endcase
        end
    end

    // leftShiftStage1_uid495_i_add_poly60_shift_x(MUX,494)@8
    assign leftShiftStage1_uid495_i_add_poly60_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid495_i_add_poly60_shift_x_s or leftShiftStage0_uid490_i_add_poly60_shift_x_q or leftShiftStage1Idx1_uid493_i_add_poly60_shift_x_q)
    begin
        unique case (leftShiftStage1_uid495_i_add_poly60_shift_x_s)
            1'b0 : leftShiftStage1_uid495_i_add_poly60_shift_x_q = leftShiftStage0_uid490_i_add_poly60_shift_x_q;
            1'b1 : leftShiftStage1_uid495_i_add_poly60_shift_x_q = leftShiftStage1Idx1_uid493_i_add_poly60_shift_x_q;
            default : leftShiftStage1_uid495_i_add_poly60_shift_x_q = 32'b0;
        endcase
    end

    // i_add_poly616_vt_select_18(BITSELECT,77)@8
    assign i_add_poly616_vt_select_18_b = leftShiftStage1_uid495_i_add_poly60_shift_x_q[18:3];

    // i_add_poly616_vt_const_2(CONSTANT,74)
    assign i_add_poly616_vt_const_2_q = $unsigned(3'b000);

    // i_add_poly616_vt_join(BITJOIN,76)@8
    assign i_add_poly616_vt_join_q = {i_add_poly616_vt_const_31_q, i_add_poly616_vt_select_18_b, i_add_poly616_vt_const_2_q};

    // i_unnamed_poly624_vt_const_31(CONSTANT,177)
    assign i_unnamed_poly624_vt_const_31_q = $unsigned(15'b000000000000000);

    // i_unnamed_poly624_vt_select_16(BITSELECT,179)@8
    assign i_unnamed_poly624_vt_select_16_b = leftShiftStage0_uid490_i_add_poly60_shift_x_q[16:1];

    // i_unnamed_poly624_vt_join(BITJOIN,178)@8
    assign i_unnamed_poly624_vt_join_q = {i_unnamed_poly624_vt_const_31_q, i_unnamed_poly624_vt_select_16_b, GND_q};

    // i_add61_add12_poly625(ADD,69)@8
    assign i_add61_add12_poly625_a = {1'b0, i_unnamed_poly624_vt_join_q};
    assign i_add61_add12_poly625_b = {1'b0, i_add_poly616_vt_join_q};
    assign i_add61_add12_poly625_o = $unsigned(i_add61_add12_poly625_a) + $unsigned(i_add61_add12_poly625_b);
    assign i_add61_add12_poly625_q = i_add61_add12_poly625_o[32:0];

    // bgTrunc_i_add61_add12_poly625_sel_x(BITSELECT,188)@8
    assign bgTrunc_i_add61_add12_poly625_sel_x_b = i_add61_add12_poly625_q[31:0];

    // i_add61_add12_poly625_vt_select_19(BITSELECT,73)@8
    assign i_add61_add12_poly625_vt_select_19_b = bgTrunc_i_add61_add12_poly625_sel_x_b[19:1];

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_wraddr(REG,775)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_wraddr_q <= $unsigned(redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_q);
        end
    end

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_mem(DUALMEM,773)
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_ia = $unsigned(i_add61_add12_poly625_vt_select_19_b);
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_aa = redist36_i_add61_add12_poly625_vt_select_19_b_6_wraddr_q;
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_ab = redist36_i_add61_add12_poly625_vt_select_19_b_6_rdcnt_q;
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(19),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(19),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_dmem (
        .clocken1(redist36_i_add61_add12_poly625_vt_select_19_b_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_reset0),
        .clock1(clock),
        .address_a(redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_aa),
        .data_a(redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_ab),
        .q_b(redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_iq),
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
    assign redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_q = redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_iq[18:0];

    // redist36_i_add61_add12_poly625_vt_select_19_b_6_outputreg0(DELAY,772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_outputreg0_q <= '0;
        end
        else
        begin
            redist36_i_add61_add12_poly625_vt_select_19_b_6_outputreg0_q <= $unsigned(redist36_i_add61_add12_poly625_vt_select_19_b_6_mem_q);
        end
    end

    // i_add61_add12_poly625_vt_join(BITJOIN,72)@14
    assign i_add61_add12_poly625_vt_join_q = {i_add61_add12_poly625_vt_const_31_q, redist36_i_add61_add12_poly625_vt_select_19_b_6_outputreg0_q, GND_q};

    // i_sub_poly626(ADD,172)@14
    assign i_sub_poly626_a = {1'b0, i_add61_add12_poly625_vt_join_q};
    assign i_sub_poly626_b = {1'b0, c_i32_43290_q};
    assign i_sub_poly626_o = $unsigned(i_sub_poly626_a) + $unsigned(i_sub_poly626_b);
    assign i_sub_poly626_q = i_sub_poly626_o[32:0];

    // bgTrunc_i_sub_poly626_sel_x(BITSELECT,213)@14
    assign bgTrunc_i_sub_poly626_sel_x_b = i_sub_poly626_q[31:0];

    // i_sub_poly626_vt_select_31(BITSELECT,175)@14
    assign i_sub_poly626_vt_select_31_b = bgTrunc_i_sub_poly626_sel_x_b[31:1];

    // i_sub_poly626_vt_join(BITJOIN,174)@14
    assign i_sub_poly626_vt_join_q = {i_sub_poly626_vt_select_31_b, GND_q};

    // i_mul62_poly627_bs2_merged_bit_select(BITSELECT,628)@14
    assign i_mul62_poly627_bs2_merged_bit_select_b = i_sub_poly626_vt_join_q[31:18];
    assign i_mul62_poly627_bs2_merged_bit_select_c = i_sub_poly626_vt_join_q[17:0];

    // i_mul52_poly623_im0_cma(CHAINMULTADD,614)@11 + 3
    assign i_mul52_poly623_im0_cma_reset = ~ (resetn);
    assign i_mul52_poly623_im0_cma_ena0 = 1'b1;
    assign i_mul52_poly623_im0_cma_ena1 = i_mul52_poly623_im0_cma_ena0;
    assign i_mul52_poly623_im0_cma_ena2 = i_mul52_poly623_im0_cma_ena0;

    assign i_mul52_poly623_im0_cma_a0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    assign i_mul52_poly623_im0_cma_c0 = i_mul110_poly633_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul52_poly623_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul52_poly623_im0_cma_ena2, i_mul52_poly623_im0_cma_ena1, i_mul52_poly623_im0_cma_ena0 }),
        .aclr({ i_mul52_poly623_im0_cma_reset, i_mul52_poly623_im0_cma_reset }),
        .ay(i_mul52_poly623_im0_cma_a0),
        .ax(i_mul52_poly623_im0_cma_c0),
        .resulta(i_mul52_poly623_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul52_poly623_im0_cma_delay ( .xin(i_mul52_poly623_im0_cma_s0), .xout(i_mul52_poly623_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul52_poly623_im0_cma_q = $unsigned(i_mul52_poly623_im0_cma_qq[29:0]);

    // i_mul52_poly623_sums_align_1(BITSHIFT,435)@14
    assign i_mul52_poly623_sums_align_1_qint = { i_mul52_poly623_im0_cma_q, 18'b000000000000000000 };
    assign i_mul52_poly623_sums_align_1_q = i_mul52_poly623_sums_align_1_qint[47:0];

    // i_mul52_poly623_im3_cma(CHAINMULTADD,615)@11 + 3
    assign i_mul52_poly623_im3_cma_reset = ~ (resetn);
    assign i_mul52_poly623_im3_cma_ena0 = 1'b1;
    assign i_mul52_poly623_im3_cma_ena1 = i_mul52_poly623_im3_cma_ena0;
    assign i_mul52_poly623_im3_cma_ena2 = i_mul52_poly623_im3_cma_ena0;

    assign i_mul52_poly623_im3_cma_a0 = i_mul110_poly633_bs2_merged_bit_select_c;
    assign i_mul52_poly623_im3_cma_c0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_mul52_poly623_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul52_poly623_im3_cma_ena2, i_mul52_poly623_im3_cma_ena1, i_mul52_poly623_im3_cma_ena0 }),
        .aclr({ i_mul52_poly623_im3_cma_reset, i_mul52_poly623_im3_cma_reset }),
        .ay(i_mul52_poly623_im3_cma_a0),
        .ax(i_mul52_poly623_im3_cma_c0),
        .resulta(i_mul52_poly623_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul52_poly623_im3_cma_delay ( .xin(i_mul52_poly623_im3_cma_s0), .xout(i_mul52_poly623_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul52_poly623_im3_cma_q = $unsigned(i_mul52_poly623_im3_cma_qq[33:0]);

    // i_mul52_poly623_sums_result_add_0_0(ADD,437)@14
    assign i_mul52_poly623_sums_result_add_0_0_a = {15'b000000000000000, i_mul52_poly623_im3_cma_q};
    assign i_mul52_poly623_sums_result_add_0_0_b = {1'b0, i_mul52_poly623_sums_align_1_q};
    assign i_mul52_poly623_sums_result_add_0_0_o = $unsigned(i_mul52_poly623_sums_result_add_0_0_a) + $unsigned(i_mul52_poly623_sums_result_add_0_0_b);
    assign i_mul52_poly623_sums_result_add_0_0_q = i_mul52_poly623_sums_result_add_0_0_o[48:0];

    // i_mul52_poly623_extender_x(BITJOIN,299)@14
    assign i_mul52_poly623_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_mul52_poly623_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_mul52_poly623_sel_x(BITSELECT,200)@14
    assign bgTrunc_i_mul52_poly623_sel_x_b = i_mul52_poly623_extender_x_q[31:0];

    // i_mul62_poly627_bs1_merged_bit_select(BITSELECT,633)@14
    assign i_mul62_poly627_bs1_merged_bit_select_b = bgTrunc_i_mul52_poly623_sel_x_b[31:18];
    assign i_mul62_poly627_bs1_merged_bit_select_c = bgTrunc_i_mul52_poly623_sel_x_b[17:0];

    // i_mul62_poly627_ma3_cma(CHAINMULTADD,625)@14 + 3
    assign i_mul62_poly627_ma3_cma_reset = ~ (resetn);
    assign i_mul62_poly627_ma3_cma_ena0 = 1'b1;
    assign i_mul62_poly627_ma3_cma_ena1 = i_mul62_poly627_ma3_cma_ena0;
    assign i_mul62_poly627_ma3_cma_ena2 = i_mul62_poly627_ma3_cma_ena0;

    assign i_mul62_poly627_ma3_cma_a0 = i_mul62_poly627_bs1_merged_bit_select_b;
    assign i_mul62_poly627_ma3_cma_c0 = i_mul62_poly627_bs2_merged_bit_select_c;
    assign i_mul62_poly627_ma3_cma_a1 = i_mul62_poly627_bs2_merged_bit_select_b;
    assign i_mul62_poly627_ma3_cma_c1 = i_mul62_poly627_bs1_merged_bit_select_c;
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
    ) i_mul62_poly627_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_poly627_ma3_cma_ena2, i_mul62_poly627_ma3_cma_ena1, i_mul62_poly627_ma3_cma_ena0 }),
        .aclr({ i_mul62_poly627_ma3_cma_reset, i_mul62_poly627_ma3_cma_reset }),
        .ay(i_mul62_poly627_ma3_cma_a1),
        .by(i_mul62_poly627_ma3_cma_a0),
        .ax(i_mul62_poly627_ma3_cma_c1),
        .bx(i_mul62_poly627_ma3_cma_c0),
        .resulta(i_mul62_poly627_ma3_cma_s0),
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
    i_mul62_poly627_ma3_cma_delay ( .xin(i_mul62_poly627_ma3_cma_s0), .xout(i_mul62_poly627_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_poly627_ma3_cma_q = $unsigned(i_mul62_poly627_ma3_cma_qq[32:0]);

    // i_mul62_poly627_sums_align_1(BITSHIFT,450)@17
    assign i_mul62_poly627_sums_align_1_qint = { i_mul62_poly627_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul62_poly627_sums_align_1_q = i_mul62_poly627_sums_align_1_qint[50:0];

    // i_mul62_poly627_im0_cma(CHAINMULTADD,616)@14 + 3
    assign i_mul62_poly627_im0_cma_reset = ~ (resetn);
    assign i_mul62_poly627_im0_cma_ena0 = 1'b1;
    assign i_mul62_poly627_im0_cma_ena1 = i_mul62_poly627_im0_cma_ena0;
    assign i_mul62_poly627_im0_cma_ena2 = i_mul62_poly627_im0_cma_ena0;

    assign i_mul62_poly627_im0_cma_a0 = i_mul62_poly627_bs1_merged_bit_select_b;
    assign i_mul62_poly627_im0_cma_c0 = i_mul62_poly627_bs2_merged_bit_select_b;
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
    ) i_mul62_poly627_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_poly627_im0_cma_ena2, i_mul62_poly627_im0_cma_ena1, i_mul62_poly627_im0_cma_ena0 }),
        .aclr({ i_mul62_poly627_im0_cma_reset, i_mul62_poly627_im0_cma_reset }),
        .ay(i_mul62_poly627_im0_cma_a0),
        .ax(i_mul62_poly627_im0_cma_c0),
        .resulta(i_mul62_poly627_im0_cma_s0),
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
    i_mul62_poly627_im0_cma_delay ( .xin(i_mul62_poly627_im0_cma_s0), .xout(i_mul62_poly627_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_poly627_im0_cma_q = $unsigned(i_mul62_poly627_im0_cma_qq[27:0]);

    // i_mul62_poly627_im8_cma(CHAINMULTADD,617)@14 + 3
    assign i_mul62_poly627_im8_cma_reset = ~ (resetn);
    assign i_mul62_poly627_im8_cma_ena0 = 1'b1;
    assign i_mul62_poly627_im8_cma_ena1 = i_mul62_poly627_im8_cma_ena0;
    assign i_mul62_poly627_im8_cma_ena2 = i_mul62_poly627_im8_cma_ena0;

    assign i_mul62_poly627_im8_cma_a0 = i_mul62_poly627_bs1_merged_bit_select_c;
    assign i_mul62_poly627_im8_cma_c0 = i_mul62_poly627_bs2_merged_bit_select_c;
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
    ) i_mul62_poly627_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_poly627_im8_cma_ena2, i_mul62_poly627_im8_cma_ena1, i_mul62_poly627_im8_cma_ena0 }),
        .aclr({ i_mul62_poly627_im8_cma_reset, i_mul62_poly627_im8_cma_reset }),
        .ay(i_mul62_poly627_im8_cma_a0),
        .ax(i_mul62_poly627_im8_cma_c0),
        .resulta(i_mul62_poly627_im8_cma_s0),
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
    i_mul62_poly627_im8_cma_delay ( .xin(i_mul62_poly627_im8_cma_s0), .xout(i_mul62_poly627_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_poly627_im8_cma_q = $unsigned(i_mul62_poly627_im8_cma_qq[35:0]);

    // i_mul62_poly627_sums_join_0(BITJOIN,449)@17
    assign i_mul62_poly627_sums_join_0_q = {i_mul62_poly627_im0_cma_q, i_mul62_poly627_im8_cma_q};

    // i_mul62_poly627_sums_result_add_0_0(ADD,452)@17
    assign i_mul62_poly627_sums_result_add_0_0_a = {1'b0, i_mul62_poly627_sums_join_0_q};
    assign i_mul62_poly627_sums_result_add_0_0_b = {14'b00000000000000, i_mul62_poly627_sums_align_1_q};
    assign i_mul62_poly627_sums_result_add_0_0_o = $unsigned(i_mul62_poly627_sums_result_add_0_0_a) + $unsigned(i_mul62_poly627_sums_result_add_0_0_b);
    assign i_mul62_poly627_sums_result_add_0_0_q = i_mul62_poly627_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul62_poly627_sel_x(BITSELECT,201)@17
    assign bgTrunc_i_mul62_poly627_sel_x_in = i_mul62_poly627_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul62_poly627_sel_x_b = bgTrunc_i_mul62_poly627_sel_x_in[31:0];

    // i_mul62_poly627_vt_select_31(BITSELECT,147)@17
    assign i_mul62_poly627_vt_select_31_b = bgTrunc_i_mul62_poly627_sel_x_b[31:1];

    // redist25_i_mul62_poly627_vt_select_31_b_2(DELAY,664)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_mul62_poly627_vt_select_31_b_2_delay_0 <= '0;
            redist25_i_mul62_poly627_vt_select_31_b_2_q <= '0;
        end
        else
        begin
            redist25_i_mul62_poly627_vt_select_31_b_2_delay_0 <= $unsigned(i_mul62_poly627_vt_select_31_b);
            redist25_i_mul62_poly627_vt_select_31_b_2_q <= redist25_i_mul62_poly627_vt_select_31_b_2_delay_0;
        end
    end

    // i_mul62_poly627_vt_join(BITJOIN,146)@19
    assign i_mul62_poly627_vt_join_q = {redist25_i_mul62_poly627_vt_select_31_b_2_q, GND_q};

    // i_sub136_poly645(SUB,169)@19
    assign i_sub136_poly645_a = {1'b0, i_mul62_poly627_vt_join_q};
    assign i_sub136_poly645_b = {1'b0, bgTrunc_i_reass_add47_poly644_sel_x_b};
    assign i_sub136_poly645_o = $unsigned(i_sub136_poly645_a) - $unsigned(i_sub136_poly645_b);
    assign i_sub136_poly645_q = i_sub136_poly645_o[32:0];

    // bgTrunc_i_sub136_poly645_sel_x(BITSELECT,210)@19
    assign bgTrunc_i_sub136_poly645_sel_x_b = $unsigned(i_sub136_poly645_q[31:0]);

    // i_mul137_poly646_bs1_merged_bit_select(BITSELECT,636)@19
    assign i_mul137_poly646_bs1_merged_bit_select_b = bgTrunc_i_sub136_poly645_sel_x_b[31:18];
    assign i_mul137_poly646_bs1_merged_bit_select_c = bgTrunc_i_sub136_poly645_sel_x_b[17:0];

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_notEnable(LOGICAL,725)
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_nor(LOGICAL,726)
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_nor_q = ~ (redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_notEnable_q | redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_sticky_ena_q);

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_cmpReg(REG,724)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_sticky_ena(REG,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_nor_q == 1'b1)
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_sticky_ena_q <= $unsigned(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_cmpReg_q);
        end
    end

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_enaAnd(LOGICAL,728)
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_enaAnd_q = redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_sticky_ena_q & VCC_q;

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt(COUNTER,722)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_i <= $unsigned(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_q = redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_i[0:0];

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_inputreg0(DELAY,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_inputreg0_q <= $unsigned(dupName_0_i_conv41_poly621_vt_join_narrowed_x_b);
        end
    end

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_wraddr(REG,723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_wraddr_q <= $unsigned(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_q);
        end
    end

    // redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem(DUALMEM,721)
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_ia = $unsigned(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_inputreg0_q);
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_aa = redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_wraddr_q;
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_ab = redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_rdcnt_q;
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_dmem (
        .clocken1(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_aa),
        .data_a(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_ab),
        .q_b(redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_iq),
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
    assign redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_q = redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_iq[15:0];

    // i_mul137_poly646_im0_cma(CHAINMULTADD,612)@19 + 3
    assign i_mul137_poly646_im0_cma_reset = ~ (resetn);
    assign i_mul137_poly646_im0_cma_ena0 = 1'b1;
    assign i_mul137_poly646_im0_cma_ena1 = i_mul137_poly646_im0_cma_ena0;
    assign i_mul137_poly646_im0_cma_ena2 = i_mul137_poly646_im0_cma_ena0;

    assign i_mul137_poly646_im0_cma_a0 = redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_q;
    assign i_mul137_poly646_im0_cma_c0 = i_mul137_poly646_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul137_poly646_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul137_poly646_im0_cma_ena2, i_mul137_poly646_im0_cma_ena1, i_mul137_poly646_im0_cma_ena0 }),
        .aclr({ i_mul137_poly646_im0_cma_reset, i_mul137_poly646_im0_cma_reset }),
        .ay(i_mul137_poly646_im0_cma_a0),
        .ax(i_mul137_poly646_im0_cma_c0),
        .resulta(i_mul137_poly646_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul137_poly646_im0_cma_delay ( .xin(i_mul137_poly646_im0_cma_s0), .xout(i_mul137_poly646_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul137_poly646_im0_cma_q = $unsigned(i_mul137_poly646_im0_cma_qq[29:0]);

    // i_mul137_poly646_sums_align_1(BITSHIFT,425)@22
    assign i_mul137_poly646_sums_align_1_qint = { i_mul137_poly646_im0_cma_q, 18'b000000000000000000 };
    assign i_mul137_poly646_sums_align_1_q = i_mul137_poly646_sums_align_1_qint[47:0];

    // i_mul137_poly646_im3_cma(CHAINMULTADD,613)@19 + 3
    assign i_mul137_poly646_im3_cma_reset = ~ (resetn);
    assign i_mul137_poly646_im3_cma_ena0 = 1'b1;
    assign i_mul137_poly646_im3_cma_ena1 = i_mul137_poly646_im3_cma_ena0;
    assign i_mul137_poly646_im3_cma_ena2 = i_mul137_poly646_im3_cma_ena0;

    assign i_mul137_poly646_im3_cma_a0 = i_mul137_poly646_bs1_merged_bit_select_c;
    assign i_mul137_poly646_im3_cma_c0 = redist10_dupName_0_i_conv41_poly621_vt_join_narrowed_x_b_4_mem_q;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_mul137_poly646_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul137_poly646_im3_cma_ena2, i_mul137_poly646_im3_cma_ena1, i_mul137_poly646_im3_cma_ena0 }),
        .aclr({ i_mul137_poly646_im3_cma_reset, i_mul137_poly646_im3_cma_reset }),
        .ay(i_mul137_poly646_im3_cma_a0),
        .ax(i_mul137_poly646_im3_cma_c0),
        .resulta(i_mul137_poly646_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul137_poly646_im3_cma_delay ( .xin(i_mul137_poly646_im3_cma_s0), .xout(i_mul137_poly646_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul137_poly646_im3_cma_q = $unsigned(i_mul137_poly646_im3_cma_qq[33:0]);

    // i_mul137_poly646_sums_result_add_0_0(ADD,427)@22
    assign i_mul137_poly646_sums_result_add_0_0_a = {15'b000000000000000, i_mul137_poly646_im3_cma_q};
    assign i_mul137_poly646_sums_result_add_0_0_b = {1'b0, i_mul137_poly646_sums_align_1_q};
    assign i_mul137_poly646_sums_result_add_0_0_o = $unsigned(i_mul137_poly646_sums_result_add_0_0_a) + $unsigned(i_mul137_poly646_sums_result_add_0_0_b);
    assign i_mul137_poly646_sums_result_add_0_0_q = i_mul137_poly646_sums_result_add_0_0_o[48:0];

    // i_mul137_poly646_extender_x(BITJOIN,295)@22
    assign i_mul137_poly646_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_mul137_poly646_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_mul137_poly646_sel_x(BITSELECT,198)@22
    assign bgTrunc_i_mul137_poly646_sel_x_b = i_mul137_poly646_extender_x_q[31:0];

    // redist15_bgTrunc_i_mul137_poly646_sel_x_b_1(DELAY,654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_bgTrunc_i_mul137_poly646_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_bgTrunc_i_mul137_poly646_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul137_poly646_sel_x_b);
        end
    end

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_notEnable(LOGICAL,757)
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_nor(LOGICAL,758)
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_nor_q = ~ (redist24_i_reass_mul44_poly648_vt_select_31_b_9_notEnable_q | redist24_i_reass_mul44_poly648_vt_select_31_b_9_sticky_ena_q);

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_last(CONSTANT,754)
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_last_q = $unsigned(4'b0100);

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmp(LOGICAL,755)
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmp_b = {1'b0, redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_q};
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmp_q = $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_last_q == redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmp_b ? 1'b1 : 1'b0);

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmpReg(REG,756)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmpReg_q <= $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmp_q);
        end
    end

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_sticky_ena(REG,759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_i_reass_mul44_poly648_vt_select_31_b_9_nor_q == 1'b1)
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_sticky_ena_q <= $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_cmpReg_q);
        end
    end

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_enaAnd(LOGICAL,760)
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_enaAnd_q = redist24_i_reass_mul44_poly648_vt_select_31_b_9_sticky_ena_q & VCC_q;

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt(COUNTER,752)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i <= 3'd0;
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i == 3'd4)
            begin
                redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_eq <= 1'b0;
            end
            if (redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_eq == 1'b1)
            begin
                redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i <= $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i <= $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_q = redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_i[2:0];

    // c_i32_298598498(CONSTANT,55)
    assign c_i32_298598498_q = $unsigned(32'b00000000001011011001000000000000);

    // i_mul33_poly618_multconst_x(CONSTANT,298)
    assign i_mul33_poly618_multconst_x_q = $unsigned(28'b0000000000000000000000000000);

    // redist12_dupName_0_i_conv20_poly612_vt_join_narrowed_x_b_1(DELAY,651)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_dupName_0_i_conv20_poly612_vt_join_narrowed_x_b_1_q <= '0;
        end
        else
        begin
            redist12_dupName_0_i_conv20_poly612_vt_join_narrowed_x_b_1_q <= $unsigned(dupName_0_i_conv20_poly612_vt_join_narrowed_x_b);
        end
    end

    // c_i32_12614488(CONSTANT,51)
    assign c_i32_12614488_q = $unsigned(32'b00000000000000011110110011000000);

    // i_reass_add_poly617(ADD,158)@8
    assign i_reass_add_poly617_a = {1'b0, i_add_poly616_vt_join_q};
    assign i_reass_add_poly617_b = {1'b0, c_i32_12614488_q};
    assign i_reass_add_poly617_o = $unsigned(i_reass_add_poly617_a) + $unsigned(i_reass_add_poly617_b);
    assign i_reass_add_poly617_q = i_reass_add_poly617_o[32:0];

    // bgTrunc_i_reass_add_poly617_sel_x(BITSELECT,206)@8
    assign bgTrunc_i_reass_add_poly617_sel_x_b = i_reass_add_poly617_q[31:0];

    // i_reass_add_poly617_vt_select_19(BITSELECT,162)@8
    assign i_reass_add_poly617_vt_select_19_b = bgTrunc_i_reass_add_poly617_sel_x_b[19:3];

    // i_reass_add_poly617_vt_join(BITJOIN,161)@8
    assign i_reass_add_poly617_vt_join_q = {i_reass_add_poly617_vt_select_19_b, i_add_poly616_vt_const_2_q};

    // i_mul33_poly618_cma(CHAINMULTADD,601)@8 + 3
    assign i_mul33_poly618_cma_reset = ~ (resetn);
    assign i_mul33_poly618_cma_ena0 = 1'b1;
    assign i_mul33_poly618_cma_ena1 = i_mul33_poly618_cma_ena0;
    assign i_mul33_poly618_cma_ena2 = i_mul33_poly618_cma_ena0;

    assign i_mul33_poly618_cma_a0 = i_reass_add_poly617_vt_join_q;
    assign i_mul33_poly618_cma_c0 = redist12_dupName_0_i_conv20_poly612_vt_join_narrowed_x_b_1_q;
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(20),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul33_poly618_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul33_poly618_cma_ena2, i_mul33_poly618_cma_ena1, i_mul33_poly618_cma_ena0 }),
        .aclr({ i_mul33_poly618_cma_reset, i_mul33_poly618_cma_reset }),
        .ay(i_mul33_poly618_cma_a0),
        .ax(i_mul33_poly618_cma_c0),
        .resulta(i_mul33_poly618_cma_s0),
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
    i_mul33_poly618_cma_delay ( .xin(i_mul33_poly618_cma_s0), .xout(i_mul33_poly618_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul33_poly618_cma_q = $unsigned(i_mul33_poly618_cma_qq[35:0]);

    // i_mul33_poly618_extender_x(BITJOIN,297)@11
    assign i_mul33_poly618_extender_x_q = {i_mul33_poly618_multconst_x_q, i_mul33_poly618_cma_q};

    // bgTrunc_i_mul33_poly618_sel_x(BITSELECT,199)@11
    assign bgTrunc_i_mul33_poly618_sel_x_b = i_mul33_poly618_extender_x_q[31:0];

    // i_mul33_poly618_vt_select_31(BITSELECT,142)@11
    assign i_mul33_poly618_vt_select_31_b = bgTrunc_i_mul33_poly618_sel_x_b[31:3];

    // i_mul33_poly618_vt_join(BITJOIN,141)@11
    assign i_mul33_poly618_vt_join_q = {i_mul33_poly618_vt_select_31_b, i_add_poly616_vt_const_2_q};

    // i_reass_add43_poly647(ADD,151)@11
    assign i_reass_add43_poly647_a = {1'b0, i_mul33_poly618_vt_join_q};
    assign i_reass_add43_poly647_b = {1'b0, c_i32_298598498_q};
    assign i_reass_add43_poly647_o = $unsigned(i_reass_add43_poly647_a) + $unsigned(i_reass_add43_poly647_b);
    assign i_reass_add43_poly647_q = i_reass_add43_poly647_o[32:0];

    // bgTrunc_i_reass_add43_poly647_sel_x(BITSELECT,202)@11
    assign bgTrunc_i_reass_add43_poly647_sel_x_b = i_reass_add43_poly647_q[31:0];

    // i_reass_add43_poly647_vt_select_31(BITSELECT,154)@11
    assign i_reass_add43_poly647_vt_select_31_b = bgTrunc_i_reass_add43_poly647_sel_x_b[31:3];

    // i_reass_add43_poly647_vt_join(BITJOIN,153)@11
    assign i_reass_add43_poly647_vt_join_q = {i_reass_add43_poly647_vt_select_31_b, i_add_poly616_vt_const_2_q};

    // i_reass_mul44_poly648_bs1_merged_bit_select(BITSELECT,627)@11
    assign i_reass_mul44_poly648_bs1_merged_bit_select_b = i_reass_add43_poly647_vt_join_q[31:18];
    assign i_reass_mul44_poly648_bs1_merged_bit_select_c = i_reass_add43_poly647_vt_join_q[17:0];

    // i_reass_mul44_poly648_im0_cma(CHAINMULTADD,620)@11 + 3
    assign i_reass_mul44_poly648_im0_cma_reset = ~ (resetn);
    assign i_reass_mul44_poly648_im0_cma_ena0 = 1'b1;
    assign i_reass_mul44_poly648_im0_cma_ena1 = i_reass_mul44_poly648_im0_cma_ena0;
    assign i_reass_mul44_poly648_im0_cma_ena2 = i_reass_mul44_poly648_im0_cma_ena0;

    assign i_reass_mul44_poly648_im0_cma_a0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    assign i_reass_mul44_poly648_im0_cma_c0 = i_reass_mul44_poly648_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_reass_mul44_poly648_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_mul44_poly648_im0_cma_ena2, i_reass_mul44_poly648_im0_cma_ena1, i_reass_mul44_poly648_im0_cma_ena0 }),
        .aclr({ i_reass_mul44_poly648_im0_cma_reset, i_reass_mul44_poly648_im0_cma_reset }),
        .ay(i_reass_mul44_poly648_im0_cma_a0),
        .ax(i_reass_mul44_poly648_im0_cma_c0),
        .resulta(i_reass_mul44_poly648_im0_cma_s0),
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
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reass_mul44_poly648_im0_cma_delay ( .xin(i_reass_mul44_poly648_im0_cma_s0), .xout(i_reass_mul44_poly648_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_mul44_poly648_im0_cma_q = $unsigned(i_reass_mul44_poly648_im0_cma_qq[29:0]);

    // i_reass_mul44_poly648_sums_align_1(BITSHIFT,470)@14
    assign i_reass_mul44_poly648_sums_align_1_qint = { i_reass_mul44_poly648_im0_cma_q, 18'b000000000000000000 };
    assign i_reass_mul44_poly648_sums_align_1_q = i_reass_mul44_poly648_sums_align_1_qint[47:0];

    // i_reass_mul44_poly648_im3_cma(CHAINMULTADD,621)@11 + 3
    assign i_reass_mul44_poly648_im3_cma_reset = ~ (resetn);
    assign i_reass_mul44_poly648_im3_cma_ena0 = 1'b1;
    assign i_reass_mul44_poly648_im3_cma_ena1 = i_reass_mul44_poly648_im3_cma_ena0;
    assign i_reass_mul44_poly648_im3_cma_ena2 = i_reass_mul44_poly648_im3_cma_ena0;

    assign i_reass_mul44_poly648_im3_cma_a0 = i_reass_mul44_poly648_bs1_merged_bit_select_c;
    assign i_reass_mul44_poly648_im3_cma_c0 = redist11_dupName_0_i_conv23_poly615_vt_join_narrowed_x_b_4_mem_q;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(34)
    ) i_reass_mul44_poly648_im3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_mul44_poly648_im3_cma_ena2, i_reass_mul44_poly648_im3_cma_ena1, i_reass_mul44_poly648_im3_cma_ena0 }),
        .aclr({ i_reass_mul44_poly648_im3_cma_reset, i_reass_mul44_poly648_im3_cma_reset }),
        .ay(i_reass_mul44_poly648_im3_cma_a0),
        .ax(i_reass_mul44_poly648_im3_cma_c0),
        .resulta(i_reass_mul44_poly648_im3_cma_s0),
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
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reass_mul44_poly648_im3_cma_delay ( .xin(i_reass_mul44_poly648_im3_cma_s0), .xout(i_reass_mul44_poly648_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_mul44_poly648_im3_cma_q = $unsigned(i_reass_mul44_poly648_im3_cma_qq[33:0]);

    // i_reass_mul44_poly648_sums_result_add_0_0(ADD,472)@14
    assign i_reass_mul44_poly648_sums_result_add_0_0_a = {15'b000000000000000, i_reass_mul44_poly648_im3_cma_q};
    assign i_reass_mul44_poly648_sums_result_add_0_0_b = {1'b0, i_reass_mul44_poly648_sums_align_1_q};
    assign i_reass_mul44_poly648_sums_result_add_0_0_o = $unsigned(i_reass_mul44_poly648_sums_result_add_0_0_a) + $unsigned(i_reass_mul44_poly648_sums_result_add_0_0_b);
    assign i_reass_mul44_poly648_sums_result_add_0_0_q = i_reass_mul44_poly648_sums_result_add_0_0_o[48:0];

    // i_reass_mul44_poly648_extender_x(BITJOIN,303)@14
    assign i_reass_mul44_poly648_extender_x_q = {i_conv20_poly612_vt_const_31_q, i_reass_mul44_poly648_sums_result_add_0_0_q[47:0]};

    // bgTrunc_i_reass_mul44_poly648_sel_x(BITSELECT,207)@14
    assign bgTrunc_i_reass_mul44_poly648_sel_x_b = i_reass_mul44_poly648_extender_x_q[31:0];

    // i_reass_mul44_poly648_vt_select_31(BITSELECT,166)@14
    assign i_reass_mul44_poly648_vt_select_31_b = bgTrunc_i_reass_mul44_poly648_sel_x_b[31:3];

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_inputreg0(DELAY,749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_inputreg0_q <= '0;
        end
        else
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_inputreg0_q <= $unsigned(i_reass_mul44_poly648_vt_select_31_b);
        end
    end

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_wraddr(REG,753)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_wraddr_q <= $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_q);
        end
    end

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem(DUALMEM,751)
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_ia = $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_inputreg0_q);
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_aa = redist24_i_reass_mul44_poly648_vt_select_31_b_9_wraddr_q;
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_ab = redist24_i_reass_mul44_poly648_vt_select_31_b_9_rdcnt_q;
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(29),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(29),
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
    ) redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_dmem (
        .clocken1(redist24_i_reass_mul44_poly648_vt_select_31_b_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_reset0),
        .clock1(clock),
        .address_a(redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_aa),
        .data_a(redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_ab),
        .q_b(redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_iq),
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
    assign redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_q = redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_iq[28:0];

    // redist24_i_reass_mul44_poly648_vt_select_31_b_9_outputreg0(DELAY,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_outputreg0_q <= '0;
        end
        else
        begin
            redist24_i_reass_mul44_poly648_vt_select_31_b_9_outputreg0_q <= $unsigned(redist24_i_reass_mul44_poly648_vt_select_31_b_9_mem_q);
        end
    end

    // i_reass_mul44_poly648_vt_join(BITJOIN,165)@23
    assign i_reass_mul44_poly648_vt_join_q = {redist24_i_reass_mul44_poly648_vt_select_31_b_9_outputreg0_q, i_add_poly616_vt_const_2_q};

    // i_sub138_poly649(SUB,170)@23
    assign i_sub138_poly649_a = {1'b0, i_reass_mul44_poly648_vt_join_q};
    assign i_sub138_poly649_b = {1'b0, redist15_bgTrunc_i_mul137_poly646_sel_x_b_1_q};
    assign i_sub138_poly649_o = $unsigned(i_sub138_poly649_a) - $unsigned(i_sub138_poly649_b);
    assign i_sub138_poly649_q = i_sub138_poly649_o[32:0];

    // bgTrunc_i_sub138_poly649_sel_x(BITSELECT,211)@23
    assign bgTrunc_i_sub138_poly649_sel_x_b = $unsigned(i_sub138_poly649_q[31:0]);

    // i_conv139_poly650_sel_x(BITSELECT,277)@23
    assign i_conv139_poly650_sel_x_b = bgTrunc_i_sub138_poly649_sel_x_b[15:0];

    // redist9_sync_together116_aunroll_x_in_i_valid_21(DELAY,648)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together116_aunroll_x_in_i_valid_21 ( .xin(redist8_sync_together116_aunroll_x_in_i_valid_9_q), .xout(redist9_sync_together116_aunroll_x_in_i_valid_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,319)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist9_sync_together116_aunroll_x_in_i_valid_21_q);
        end
    end

    // redist23_i_xor_poly64_q_21(DELAY,662)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_i_xor_poly64_q_21 ( .xin(redist22_i_xor_poly64_q_9_q), .xout(redist23_i_xor_poly64_q_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_notEnable(LOGICAL,768)
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_nor(LOGICAL,769)
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_nor_q = ~ (redist35_i_arrayidx1418_poly651_vt_select_63_b_12_notEnable_q | redist35_i_arrayidx1418_poly651_vt_select_63_b_12_sticky_ena_q);

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_last(CONSTANT,765)
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_last_q = $unsigned(5'b01000);

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmp(LOGICAL,766)
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmp_b = {1'b0, redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_q};
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmp_q = $unsigned(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_last_q == redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmp_b ? 1'b1 : 1'b0);

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmpReg(REG,767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmpReg_q <= $unsigned(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmp_q);
        end
    end

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_sticky_ena(REG,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_i_arrayidx1418_poly651_vt_select_63_b_12_nor_q == 1'b1)
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_sticky_ena_q <= $unsigned(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_cmpReg_q);
        end
    end

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_enaAnd(LOGICAL,771)
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_enaAnd_q = redist35_i_arrayidx1418_poly651_vt_select_63_b_12_sticky_ena_q & VCC_q;

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt(COUNTER,763)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i <= 4'd0;
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i == 4'd8)
            begin
                redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_eq <= 1'b0;
            end
            if (redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_eq == 1'b1)
            begin
                redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i <= $unsigned(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i <= $unsigned(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_q = redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_i[3:0];

    // i_arrayidx1418_poly60_mult_x_im0_shift0(BITSHIFT,584)@11
    assign i_arrayidx1418_poly60_mult_x_im0_shift0_qint = { redist0_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_b_8_outputreg0_q, 1'b0 };
    assign i_arrayidx1418_poly60_mult_x_im0_shift0_q = i_arrayidx1418_poly60_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx1418_poly60_mult_x_sums_align_3(BITSHIFT,511)@11
    assign i_arrayidx1418_poly60_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx1418_poly60_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1418_poly60_mult_x_sums_align_3_q = i_arrayidx1418_poly60_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx1418_poly60_mult_x_im6_shift0(BITSHIFT,586)@11
    assign i_arrayidx1418_poly60_mult_x_im6_shift0_qint = { redist2_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_d_8_outputreg0_q, 1'b0 };
    assign i_arrayidx1418_poly60_mult_x_im6_shift0_q = i_arrayidx1418_poly60_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx1418_poly60_mult_x_sums_align_2(BITSHIFT,510)@11
    assign i_arrayidx1418_poly60_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx1418_poly60_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx1418_poly60_mult_x_sums_align_2_q = i_arrayidx1418_poly60_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx1418_poly60_mult_x_sums_join_4(BITJOIN,512)@11
    assign i_arrayidx1418_poly60_mult_x_sums_join_4_q = {i_arrayidx1418_poly60_mult_x_sums_align_3_q, i_arrayidx1418_poly60_mult_x_sums_align_2_q};

    // i_arrayidx1418_poly60_mult_x_im3_shift0(BITSHIFT,585)@11
    assign i_arrayidx1418_poly60_mult_x_im3_shift0_qint = { redist1_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_c_8_outputreg0_q, 1'b0 };
    assign i_arrayidx1418_poly60_mult_x_im3_shift0_q = i_arrayidx1418_poly60_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx1418_poly60_mult_x_sums_align_0(BITSHIFT,508)@11
    assign i_arrayidx1418_poly60_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx1418_poly60_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1418_poly60_mult_x_sums_align_0_q = i_arrayidx1418_poly60_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx1418_poly60_mult_x_im9_shift0(BITSHIFT,587)@11
    assign i_arrayidx1418_poly60_mult_x_im9_shift0_qint = { redist3_i_arrayidx1418_poly60_mult_x_bs1_merged_bit_select_e_8_outputreg0_q, 1'b0 };
    assign i_arrayidx1418_poly60_mult_x_im9_shift0_q = i_arrayidx1418_poly60_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx1418_poly60_mult_x_sums_join_1(BITJOIN,509)@11
    assign i_arrayidx1418_poly60_mult_x_sums_join_1_q = {i_arrayidx1418_poly60_mult_x_sums_align_0_q, {1'b0, i_arrayidx1418_poly60_mult_x_im9_shift0_q}};

    // i_arrayidx1418_poly60_mult_x_sums_result_add_0_0(ADD,513)@11
    assign i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx1418_poly60_mult_x_sums_join_1_q};
    assign i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx1418_poly60_mult_x_sums_join_4_q};
    assign i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_q = i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx1418_poly60_mult_extender_x(BITJOIN,239)@11
    assign i_arrayidx1418_poly60_mult_extender_x_q = {i_arrayidx1418_poly60_mult_multconst_x_q, i_arrayidx1418_poly60_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx1418_poly60_trunc_sel_x(BITSELECT,241)@11
    assign i_arrayidx1418_poly60_trunc_sel_x_b = i_arrayidx1418_poly60_mult_extender_x_q[63:0];

    // c_poly6_out_pmem(CONSTANT,64)
    assign c_poly6_out_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx1418_poly60_add_x(ADD,233)@11
    assign i_arrayidx1418_poly60_add_x_a = {1'b0, c_poly6_out_pmem_q};
    assign i_arrayidx1418_poly60_add_x_b = {1'b0, i_arrayidx1418_poly60_trunc_sel_x_b};
    assign i_arrayidx1418_poly60_add_x_o = $unsigned(i_arrayidx1418_poly60_add_x_a) + $unsigned(i_arrayidx1418_poly60_add_x_b);
    assign i_arrayidx1418_poly60_add_x_q = i_arrayidx1418_poly60_add_x_o[64:0];

    // i_arrayidx1418_poly60_dupName_0_trunc_sel_x(BITSELECT,242)@11
    assign i_arrayidx1418_poly60_dupName_0_trunc_sel_x_b = i_arrayidx1418_poly60_add_x_q[63:0];

    // i_arrayidx1418_poly651_vt_select_63(BITSELECT,80)@11
    assign i_arrayidx1418_poly651_vt_select_63_b = i_arrayidx1418_poly60_dupName_0_trunc_sel_x_b[63:1];

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_inputreg0(DELAY,761)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_inputreg0_q <= '0;
        end
        else
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_inputreg0_q <= $unsigned(i_arrayidx1418_poly651_vt_select_63_b);
        end
    end

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_wraddr(REG,764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist35_i_arrayidx1418_poly651_vt_select_63_b_12_wraddr_q <= $unsigned(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_q);
        end
    end

    // redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem(DUALMEM,762)
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_ia = $unsigned(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_inputreg0_q);
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_aa = redist35_i_arrayidx1418_poly651_vt_select_63_b_12_wraddr_q;
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_ab = redist35_i_arrayidx1418_poly651_vt_select_63_b_12_rdcnt_q;
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_reset0 = ~ (resetn);
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
    ) redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_dmem (
        .clocken1(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_reset0),
        .clock1(clock),
        .address_a(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_aa),
        .data_a(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_ab),
        .q_b(redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_iq),
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
    assign redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_q = redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_iq[62:0];

    // i_arrayidx1418_poly651_vt_join(BITJOIN,79)@23
    assign i_arrayidx1418_poly651_vt_join_q = {redist35_i_arrayidx1418_poly651_vt_select_63_b_12_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_4_poly652(BLACKBOX,116)@23
    // out out_memdep_4_poly6_avm_address@20000000
    // out out_memdep_4_poly6_avm_burstcount@20000000
    // out out_memdep_4_poly6_avm_byteenable@20000000
    // out out_memdep_4_poly6_avm_enable@20000000
    // out out_memdep_4_poly6_avm_read@20000000
    // out out_memdep_4_poly6_avm_write@20000000
    // out out_memdep_4_poly6_avm_writedata@20000000
    // out out_o_stall@24
    // out out_o_valid@24
    // out out_o_writeack@24
    poly6_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_poly652 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1418_poly651_vt_join_q),
        .in_i_predicate(redist23_i_xor_poly64_q_21_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_conv139_poly650_sel_x_b),
        .in_memdep_4_poly6_avm_readdata(in_memdep_4_poly6_avm_readdata),
        .in_memdep_4_poly6_avm_readdatavalid(in_memdep_4_poly6_avm_readdatavalid),
        .in_memdep_4_poly6_avm_waitrequest(in_memdep_4_poly6_avm_waitrequest),
        .in_memdep_4_poly6_avm_writeack(in_memdep_4_poly6_avm_writeack),
        .out_memdep_4_poly6_avm_address(i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_address),
        .out_memdep_4_poly6_avm_burstcount(i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_burstcount),
        .out_memdep_4_poly6_avm_byteenable(i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_byteenable),
        .out_memdep_4_poly6_avm_enable(i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_enable),
        .out_memdep_4_poly6_avm_read(i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_read),
        .out_memdep_4_poly6_avm_write(i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_write),
        .out_memdep_4_poly6_avm_writedata(i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,226)
    assign out_memdep_4_poly6_avm_address = i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_address;
    assign out_memdep_4_poly6_avm_enable = i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_enable;
    assign out_memdep_4_poly6_avm_read = i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_read;
    assign out_memdep_4_poly6_avm_write = i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_write;
    assign out_memdep_4_poly6_avm_writedata = i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_writedata;
    assign out_memdep_4_poly6_avm_byteenable = i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_byteenable;
    assign out_memdep_4_poly6_avm_burstcount = i_llvm_fpga_mem_memdep_4_poly652_out_memdep_4_poly6_avm_burstcount;

    // valid_fanout_reg0(REG,313)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together116_aunroll_x_in_i_valid_21_q);
        end
    end

    // redist4_valid_fanout_reg0_q_1(DELAY,643)
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

    // valid_fanout_reg8(REG,321)@1 + 1
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

    // valid_fanout_reg9(REG,322)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist7_sync_together116_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1746_push18_poly667(BLACKBOX,127)@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    poly6_i_llvm_fpga_push_i1_notcmp1746_push18_0 thei_llvm_fpga_push_i1_notcmp1746_push18_poly667 (
        .in_data_in(redist28_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_feedback_stall_out_18),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly667_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly667_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together116_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together116_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together116_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666(BLACKBOX,122)@2
    // out out_feedback_stall_out_18@20000000
    poly6_i_llvm_fpga_pop_i1_notcmp1746_pop18_0 thei_llvm_fpga_pop_i1_notcmp1746_pop18_poly666 (
        .in_data_in(redist6_sync_together116_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist5_sync_together116_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly667_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly667_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_1(DELAY,667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out);
        end
    end

    // redist29_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_22(DELAY,668)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_22 ( .xin(redist28_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_1_q), .xout(redist29_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_poly665(LOGICAL,131)@2 + 1
    assign i_masked_poly665_qi = i_notcmp_poly658_q & i_first_cleanup_poly63_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_poly665_delay ( .xin(i_masked_poly665_qi), .xout(i_masked_poly665_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_i_masked_poly665_q_22(DELAY,665)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_i_masked_poly665_q_22 ( .xin(i_masked_poly665_q), .xout(redist26_i_masked_poly665_q_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_23(DELAY,671)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_23 ( .xin(redist31_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_2_q), .xout(redist32_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,311)@24
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist32_i_llvm_fpga_pipeline_keep_going_poly66_out_data_out_23_q;
    assign out_c0_exi3_2_tpl = redist26_i_masked_poly665_q_22_q;
    assign out_c0_exi3_3_tpl = redist29_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly666_out_data_out_22_q;
    assign out_o_valid = redist4_valid_fanout_reg0_q_1_q;
    assign out_unnamed_poly61 = GND_q;

endmodule
