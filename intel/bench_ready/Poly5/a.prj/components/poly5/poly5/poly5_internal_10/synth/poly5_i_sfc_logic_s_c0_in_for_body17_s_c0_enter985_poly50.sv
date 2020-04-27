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

// SystemVerilog created from poly5_i_sfc_logic_s_c0_in_for_body17_s_c0_enter985_poly50
// SystemVerilog created on Mon Apr 27 09:51:13 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly5_i_sfc_logic_s_c0_in_for_body17_s_c0_enter985_poly50 (
    input wire [15:0] in_unnamed_poly57_poly5_avm_readdata,
    input wire [0:0] in_unnamed_poly57_poly5_avm_writeack,
    input wire [0:0] in_unnamed_poly57_poly5_avm_waitrequest,
    input wire [0:0] in_unnamed_poly57_poly5_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly56_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly56_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_unnamed_poly58_poly5_avm_readdata,
    input wire [0:0] in_unnamed_poly58_poly5_avm_writeack,
    input wire [0:0] in_unnamed_poly58_poly5_avm_waitrequest,
    input wire [0:0] in_unnamed_poly58_poly5_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly57_poly5_avm_address,
    output wire [0:0] out_unnamed_poly57_poly5_avm_enable,
    output wire [0:0] out_unnamed_poly57_poly5_avm_read,
    output wire [0:0] out_unnamed_poly57_poly5_avm_write,
    output wire [15:0] out_unnamed_poly57_poly5_avm_writedata,
    output wire [1:0] out_unnamed_poly57_poly5_avm_byteenable,
    output wire [0:0] out_unnamed_poly57_poly5_avm_burstcount,
    input wire [15:0] in_unnamed_poly59_poly5_avm_readdata,
    input wire [0:0] in_unnamed_poly59_poly5_avm_writeack,
    input wire [0:0] in_unnamed_poly59_poly5_avm_waitrequest,
    input wire [0:0] in_unnamed_poly59_poly5_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly58_poly5_avm_address,
    output wire [0:0] out_unnamed_poly58_poly5_avm_enable,
    output wire [0:0] out_unnamed_poly58_poly5_avm_read,
    output wire [0:0] out_unnamed_poly58_poly5_avm_write,
    output wire [15:0] out_unnamed_poly58_poly5_avm_writedata,
    output wire [1:0] out_unnamed_poly58_poly5_avm_byteenable,
    output wire [0:0] out_unnamed_poly58_poly5_avm_burstcount,
    input wire [15:0] in_unnamed_poly510_poly5_avm_readdata,
    input wire [0:0] in_unnamed_poly510_poly5_avm_writeack,
    input wire [0:0] in_unnamed_poly510_poly5_avm_waitrequest,
    input wire [0:0] in_unnamed_poly510_poly5_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly59_poly5_avm_address,
    output wire [0:0] out_unnamed_poly59_poly5_avm_enable,
    output wire [0:0] out_unnamed_poly59_poly5_avm_read,
    output wire [0:0] out_unnamed_poly59_poly5_avm_write,
    output wire [15:0] out_unnamed_poly59_poly5_avm_writedata,
    output wire [1:0] out_unnamed_poly59_poly5_avm_byteenable,
    output wire [0:0] out_unnamed_poly59_poly5_avm_burstcount,
    input wire [15:0] in_memdep_4_poly5_avm_readdata,
    input wire [0:0] in_memdep_4_poly5_avm_writeack,
    input wire [0:0] in_memdep_4_poly5_avm_waitrequest,
    input wire [0:0] in_memdep_4_poly5_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly510_poly5_avm_address,
    output wire [0:0] out_unnamed_poly510_poly5_avm_enable,
    output wire [0:0] out_unnamed_poly510_poly5_avm_read,
    output wire [0:0] out_unnamed_poly510_poly5_avm_write,
    output wire [15:0] out_unnamed_poly510_poly5_avm_writedata,
    output wire [1:0] out_unnamed_poly510_poly5_avm_byteenable,
    output wire [0:0] out_unnamed_poly510_poly5_avm_burstcount,
    output wire [31:0] out_memdep_4_poly5_avm_address,
    output wire [0:0] out_memdep_4_poly5_avm_enable,
    output wire [0:0] out_memdep_4_poly5_avm_read,
    output wire [0:0] out_memdep_4_poly5_avm_write,
    output wire [15:0] out_memdep_4_poly5_avm_writedata,
    output wire [1:0] out_memdep_4_poly5_avm_byteenable,
    output wire [0:0] out_memdep_4_poly5_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_poly51,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_1022124_q;
    wire [10:0] c_i11_1126_q;
    wire [15:0] c_i16_067_q;
    wire [15:0] c_i16_144121_q;
    wire [15:0] c_i16_207119_q;
    wire [15:0] c_i16_28672112_q;
    wire [15:0] c_i16_3328111_q;
    wire [15:0] c_i16_3456122_q;
    wire [15:0] c_i16_5184118_q;
    wire [15:0] c_i16_78114_q;
    wire [15:0] c_i16_9504115_q;
    wire [1:0] c_i2_1107_q;
    wire [31:0] c_i32_0109_q;
    wire [31:0] c_i32_1123_q;
    wire [31:0] c_i32_432110_q;
    wire [63:0] c_poly5_a_pmem_q;
    wire [63:0] c_poly5_b_pmem_q;
    wire [63:0] c_poly5_c_pmem_q;
    wire [63:0] c_poly5_out_pmem_q;
    wire [16:0] i_add_red67_neg_poly555_a;
    wire [16:0] i_add_red67_neg_poly555_b;
    logic [16:0] i_add_red67_neg_poly555_o;
    wire [16:0] i_add_red67_neg_poly555_q;
    wire [63:0] i_arrayidx195_poly510_vt_join_q;
    wire [62:0] i_arrayidx195_poly510_vt_select_63_b;
    wire [63:0] i_arrayidx256_poly514_vt_join_q;
    wire [62:0] i_arrayidx256_poly514_vt_select_63_b;
    wire [63:0] i_arrayidx307_poly524_vt_join_q;
    wire [62:0] i_arrayidx307_poly524_vt_select_63_b;
    wire [63:0] i_arrayidx548_poly544_vt_join_q;
    wire [62:0] i_arrayidx548_poly544_vt_select_63_b;
    wire [63:0] i_arrayidx919_poly573_vt_join_q;
    wire [62:0] i_arrayidx919_poly573_vt_select_63_b;
    wire [1:0] i_cleanups_shl_poly55_vt_join_q;
    wire [0:0] i_cleanups_shl_poly55_vt_select_1_b;
    wire [16:0] i_dot_prod_add52_poly523_a;
    wire [16:0] i_dot_prod_add52_poly523_b;
    logic [16:0] i_dot_prod_add52_poly523_o;
    wire [16:0] i_dot_prod_add52_poly523_q;
    wire [16:0] i_dot_prod_add56_poly528_a;
    wire [16:0] i_dot_prod_add56_poly528_b;
    logic [16:0] i_dot_prod_add56_poly528_o;
    wire [16:0] i_dot_prod_add56_poly528_q;
    wire [16:0] i_dot_prod_add73_poly563_a;
    wire [16:0] i_dot_prod_add73_poly563_b;
    logic [16:0] i_dot_prod_add73_poly563_o;
    wire [16:0] i_dot_prod_add73_poly563_q;
    wire [16:0] i_dot_prod_add_poly519_a;
    wire [16:0] i_dot_prod_add_poly519_b;
    logic [16:0] i_dot_prod_add_poly519_o;
    wire [16:0] i_dot_prod_add_poly519_q;
    wire [11:0] i_fpga_indvars_iv_next6_poly585_a;
    wire [11:0] i_fpga_indvars_iv_next6_poly585_b;
    logic [11:0] i_fpga_indvars_iv_next6_poly585_o;
    wire [11:0] i_fpga_indvars_iv_next6_poly585_q;
    wire [63:0] i_idxprom18_poly59_vt_join_q;
    wire [31:0] i_idxprom18_poly59_vt_select_31_b;
    wire [32:0] i_inc93_poly575_a;
    wire [32:0] i_inc93_poly575_b;
    logic [32:0] i_inc93_poly575_o;
    wire [32:0] i_inc93_poly575_q;
    wire [31:0] i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly56_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly56_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly56_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly56_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly56_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly56_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_poly57_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_poly57_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1847_push18_poly589_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1847_push18_poly589_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_poly581_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_poly581_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_poly584_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_poly584_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k13_032_push16_poly576_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k13_032_push16_poly576_out_feedback_valid_out_16;
    wire [0:0] i_masked_poly587_qi;
    reg [0:0] i_masked_poly587_q;
    wire [15:0] i_mul75_poly547_vt_join_q;
    wire [14:0] i_mul75_poly547_vt_select_15_b;
    wire [16:0] i_neg_poly548_a;
    wire [16:0] i_neg_poly548_b;
    logic [16:0] i_neg_poly548_o;
    wire [16:0] i_neg_poly548_q;
    wire [0:0] i_next_cleanups_poly583_s;
    reg [1:0] i_next_cleanups_poly583_q;
    wire [0:0] i_notcmp_poly580_q;
    wire [0:0] i_or_poly582_q;
    wire [16:0] i_sub66_poly546_a;
    wire [16:0] i_sub66_poly546_b;
    logic [16:0] i_sub66_poly546_o;
    wire [16:0] i_sub66_poly546_q;
    wire [32:0] i_sub_poly512_a;
    wire [32:0] i_sub_poly512_b;
    logic [32:0] i_sub_poly512_o;
    wire [32:0] i_sub_poly512_q;
    wire [4:0] i_unnamed_poly529_vt_const_4_q;
    wire [15:0] i_unnamed_poly529_vt_join_q;
    wire [10:0] i_unnamed_poly529_vt_select_15_b;
    wire [7:0] i_unnamed_poly530_vt_const_7_q;
    wire [15:0] i_unnamed_poly530_vt_join_q;
    wire [7:0] i_unnamed_poly530_vt_select_15_b;
    wire [0:0] i_xor_poly54_q;
    wire [15:0] bgTrunc_i_add_red67_neg_poly555_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add52_poly523_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add56_poly528_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add73_poly563_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add_poly519_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next6_poly585_sel_x_b;
    wire [31:0] bgTrunc_i_inc93_poly575_sel_x_b;
    wire [15:0] bgTrunc_i_mul88_poly572_sel_x_b;
    wire [15:0] bgTrunc_i_neg_poly548_sel_x_b;
    wire [15:0] bgTrunc_i_reass_mul_poly571_sel_x_b;
    wire [15:0] bgTrunc_i_sub66_poly546_sel_x_b;
    wire [31:0] bgTrunc_i_sub_poly512_sel_x_b;
    wire [64:0] i_arrayidx195_poly50_add_x_a;
    wire [64:0] i_arrayidx195_poly50_add_x_b;
    logic [64:0] i_arrayidx195_poly50_add_x_o;
    wire [64:0] i_arrayidx195_poly50_add_x_q;
    wire [127:0] i_arrayidx195_poly50_mult_extender_x_q;
    wire [61:0] i_arrayidx195_poly50_mult_multconst_x_q;
    wire [63:0] i_arrayidx195_poly50_trunc_sel_x_b;
    wire [63:0] i_arrayidx195_poly50_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx256_poly50_add_x_a;
    wire [64:0] i_arrayidx256_poly50_add_x_b;
    logic [64:0] i_arrayidx256_poly50_add_x_o;
    wire [64:0] i_arrayidx256_poly50_add_x_q;
    wire [127:0] i_arrayidx256_poly50_mult_extender_x_q;
    wire [63:0] i_arrayidx256_poly50_trunc_sel_x_b;
    wire [63:0] i_arrayidx256_poly50_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx307_poly50_add_x_a;
    wire [64:0] i_arrayidx307_poly50_add_x_b;
    logic [64:0] i_arrayidx307_poly50_add_x_o;
    wire [64:0] i_arrayidx307_poly50_add_x_q;
    wire [127:0] i_arrayidx307_poly50_mult_extender_x_q;
    wire [63:0] i_arrayidx307_poly50_trunc_sel_x_b;
    wire [63:0] i_arrayidx307_poly50_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx548_poly50_add_x_a;
    wire [64:0] i_arrayidx548_poly50_add_x_b;
    logic [64:0] i_arrayidx548_poly50_add_x_o;
    wire [64:0] i_arrayidx548_poly50_add_x_q;
    wire [127:0] i_arrayidx548_poly50_mult_extender_x_q;
    wire [63:0] i_arrayidx548_poly50_trunc_sel_x_b;
    wire [63:0] i_arrayidx548_poly50_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx919_poly50_add_x_a;
    wire [64:0] i_arrayidx919_poly50_add_x_b;
    logic [64:0] i_arrayidx919_poly50_add_x_o;
    wire [64:0] i_arrayidx919_poly50_add_x_q;
    wire [127:0] i_arrayidx919_poly50_mult_extender_x_q;
    wire [63:0] i_arrayidx919_poly50_trunc_sel_x_b;
    wire [63:0] i_arrayidx919_poly50_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_poly53_sel_x_b;
    wire [63:0] i_idxprom18_poly59_sel_x_b;
    wire [63:0] i_idxprom24_poly513_sel_x_b;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_castb1_x_in;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_castb1_x_b;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_q;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_a;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_b;
    logic [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_o;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_q;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_q;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_a;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_b;
    logic [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_o;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_q;
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
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire [0:0] i_exitcond7_poly578_cmp_nsign_q;
    wire [35:0] i_arrayidx195_poly50_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx195_poly50_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx195_poly50_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx195_poly50_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx195_poly50_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx195_poly50_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx195_poly50_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx195_poly50_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx195_poly50_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx195_poly50_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx195_poly50_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx195_poly50_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx256_poly50_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx256_poly50_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx256_poly50_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx256_poly50_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx256_poly50_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx256_poly50_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx256_poly50_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx256_poly50_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx256_poly50_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx256_poly50_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx256_poly50_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx256_poly50_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx307_poly50_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx307_poly50_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx307_poly50_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx307_poly50_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx307_poly50_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx307_poly50_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx307_poly50_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx307_poly50_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx307_poly50_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx307_poly50_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx307_poly50_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx307_poly50_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx548_poly50_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx548_poly50_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx548_poly50_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx548_poly50_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx548_poly50_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx548_poly50_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx548_poly50_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx548_poly50_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx548_poly50_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx548_poly50_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx548_poly50_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx548_poly50_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx919_poly50_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx919_poly50_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx919_poly50_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx919_poly50_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx919_poly50_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx919_poly50_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx919_poly50_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx919_poly50_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx919_poly50_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx919_poly50_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx919_poly50_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx919_poly50_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid384_i_cleanups_shl_poly50_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid384_i_cleanups_shl_poly50_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid385_i_cleanups_shl_poly50_shift_x_q;
    wire [0:0] leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_s;
    reg [1:0] leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_q;
    wire [14:0] leftShiftStage0Idx1Rng1_uid392_i_mul75_poly50_shift_x_in;
    wire [14:0] leftShiftStage0Idx1Rng1_uid392_i_mul75_poly50_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid393_i_mul75_poly50_shift_x_q;
    wire [0:0] leftShiftStage0_uid395_i_mul75_poly50_shift_x_s;
    reg [15:0] leftShiftStage0_uid395_i_mul75_poly50_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid404_i_unnamed_poly50_shift_x_q;
    wire [11:0] leftShiftStage1Idx1Rng4_uid405_i_unnamed_poly50_shift_x_in;
    wire [11:0] leftShiftStage1Idx1Rng4_uid405_i_unnamed_poly50_shift_x_b;
    wire [15:0] leftShiftStage1Idx1_uid406_i_unnamed_poly50_shift_x_q;
    wire [0:0] leftShiftStage1_uid408_i_unnamed_poly50_shift_x_s;
    reg [15:0] leftShiftStage1_uid408_i_unnamed_poly50_shift_x_q;
    wire [7:0] leftShiftStage0Idx1Rng8_uid413_dupName_0_i_unnamed_poly50_shift_x_in;
    wire [7:0] leftShiftStage0Idx1Rng8_uid413_dupName_0_i_unnamed_poly50_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid414_dupName_0_i_unnamed_poly50_shift_x_q;
    wire [0:0] leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_s;
    reg [15:0] leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_q;
    wire [10:0] i_arrayidx195_poly50_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx195_poly50_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx195_poly50_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx195_poly50_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx195_poly50_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx195_poly50_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx195_poly50_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx195_poly50_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx256_poly50_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx256_poly50_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx256_poly50_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx256_poly50_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx256_poly50_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx256_poly50_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx256_poly50_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx256_poly50_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx307_poly50_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx307_poly50_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx307_poly50_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx307_poly50_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx307_poly50_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx307_poly50_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx307_poly50_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx307_poly50_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx548_poly50_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx548_poly50_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx548_poly50_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx548_poly50_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx548_poly50_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx548_poly50_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx548_poly50_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx548_poly50_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx919_poly50_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx919_poly50_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx919_poly50_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx919_poly50_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx919_poly50_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx919_poly50_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx919_poly50_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx919_poly50_mult_x_im9_shift0_qint;
    wire i_mul88_poly572_cma_reset;
    wire [15:0] i_mul88_poly572_cma_a0;
    wire [15:0] i_mul88_poly572_cma_c0;
    wire [31:0] i_mul88_poly572_cma_s0;
    wire [31:0] i_mul88_poly572_cma_qq;
    wire [31:0] i_mul88_poly572_cma_q;
    wire i_mul88_poly572_cma_ena0;
    wire i_mul88_poly572_cma_ena1;
    wire i_mul88_poly572_cma_ena2;
    wire i_reass_mul_poly571_cma_reset;
    wire [15:0] i_reass_mul_poly571_cma_a0;
    wire [15:0] i_reass_mul_poly571_cma_c0;
    wire [31:0] i_reass_mul_poly571_cma_s0;
    wire [31:0] i_reass_mul_poly571_cma_qq;
    wire [31:0] i_reass_mul_poly571_cma_q;
    wire i_reass_mul_poly571_cma_ena0;
    wire i_reass_mul_poly571_cma_ena1;
    wire i_reass_mul_poly571_cma_ena2;
    wire [9:0] i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_e;
    reg [9:0] redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_q;
    reg [9:0] redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_delay_0;
    reg [9:0] redist1_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_3_q;
    reg [17:0] redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_q;
    reg [17:0] redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_delay_0;
    reg [17:0] redist3_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_3_q;
    reg [17:0] redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_q;
    reg [17:0] redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_delay_0;
    reg [17:0] redist5_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_3_q;
    reg [17:0] redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_q;
    reg [17:0] redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_delay_0;
    reg [17:0] redist7_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_3_q;
    reg [0:0] redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist9_sync_together141_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist10_sync_together141_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist11_sync_together141_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist11_sync_together141_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist12_sync_together141_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist13_sync_together141_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist14_sync_together141_aunroll_x_in_i_valid_18_q;
    reg [31:0] redist15_bgTrunc_i_sub_poly512_sel_x_b_1_q;
    reg [0:0] redist16_i_xor_poly54_q_1_q;
    reg [0:0] redist17_i_xor_poly54_q_3_q;
    reg [0:0] redist17_i_xor_poly54_q_3_delay_0;
    reg [0:0] redist18_i_xor_poly54_q_4_q;
    reg [0:0] redist19_i_xor_poly54_q_17_q;
    reg [10:0] redist20_i_unnamed_poly529_vt_select_15_b_1_q;
    reg [0:0] redist21_i_masked_poly587_q_18_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out_18_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_19_q;
    reg [15:0] redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_q;
    reg [15:0] redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_delay_0;
    reg [15:0] redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q;
    reg [31:0] redist29_i_idxprom18_poly59_vt_select_31_b_1_q;
    wire redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_reset0;
    wire [15:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_ia;
    wire [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_aa;
    wire [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_ab;
    wire [15:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_iq;
    wire [15:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_q;
    wire [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_q;
    (* preserve *) reg [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_i;
    reg [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_cmpReg_q;
    wire [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_notEnable_q;
    wire [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_sticky_ena_q;
    wire [0:0] redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_enaAnd_q;
    wire redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_reset0;
    wire [15:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_ia;
    wire [1:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_aa;
    wire [1:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_ab;
    wire [15:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_iq;
    wire [15:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_q;
    wire [1:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_q;
    (* preserve *) reg [1:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i;
    (* preserve *) reg redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_eq;
    reg [1:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_wraddr_q;
    wire [1:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_last_q;
    wire [0:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmp_q;
    (* dont_merge *) reg [0:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmpReg_q;
    wire [0:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_notEnable_q;
    wire [0:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_nor_q;
    (* dont_merge *) reg [0:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_sticky_ena_q;
    wire [0:0] redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_enaAnd_q;
    wire redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_reset0;
    wire [62:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_ia;
    wire [3:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_aa;
    wire [3:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_ab;
    wire [62:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_iq;
    wire [62:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_q;
    wire [3:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i;
    (* preserve *) reg redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_eq;
    reg [3:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_wraddr_q;
    wire [4:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_last_q;
    wire [4:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmp_b;
    wire [0:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmpReg_q;
    wire [0:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_notEnable_q;
    wire [0:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_sticky_ena_q;
    wire [0:0] redist30_i_arrayidx919_poly573_vt_select_63_b_13_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together141_aunroll_x_in_i_valid_1(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together141_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist10_sync_together141_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_poly56_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid384_i_cleanups_shl_poly50_shift_x(BITSELECT,383)@2
    assign leftShiftStage0Idx1Rng1_uid384_i_cleanups_shl_poly50_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid384_i_cleanups_shl_poly50_shift_x_b = leftShiftStage0Idx1Rng1_uid384_i_cleanups_shl_poly50_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid385_i_cleanups_shl_poly50_shift_x(BITJOIN,384)@2
    assign leftShiftStage0Idx1_uid385_i_cleanups_shl_poly50_shift_x_q = {leftShiftStage0Idx1Rng1_uid384_i_cleanups_shl_poly50_shift_x_b, GND_q};

    // leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x(MUX,386)@2
    assign leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out or leftShiftStage0Idx1_uid385_i_cleanups_shl_poly50_shift_x_q)
    begin
        unique case (leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_s)
            1'b0 : leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out;
            1'b1 : leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_q = leftShiftStage0Idx1_uid385_i_cleanups_shl_poly50_shift_x_q;
            default : leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_poly55_vt_select_1(BITSELECT,73)@2
    assign i_cleanups_shl_poly55_vt_select_1_b = leftShiftStage0_uid387_i_cleanups_shl_poly50_shift_x_q[1:1];

    // i_cleanups_shl_poly55_vt_join(BITJOIN,72)@2
    assign i_cleanups_shl_poly55_vt_join_q = {i_cleanups_shl_poly55_vt_select_1_b, GND_q};

    // i_xor_poly54(LOGICAL,124)@2
    assign i_xor_poly54_q = i_first_cleanup_poly53_sel_x_b ^ VCC_q;

    // i_notcmp_poly580(LOGICAL,113)@2
    assign i_notcmp_poly580_q = i_exitcond7_poly578_cmp_nsign_q ^ VCC_q;

    // i_or_poly582(LOGICAL,114)@2
    assign i_or_poly582_q = i_notcmp_poly580_q | i_xor_poly54_q;

    // i_next_cleanups_poly583(MUX,112)@2
    assign i_next_cleanups_poly583_s = i_or_poly582_q;
    always @(i_next_cleanups_poly583_s or i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out or i_cleanups_shl_poly55_vt_join_q)
    begin
        unique case (i_next_cleanups_poly583_s)
            1'b0 : i_next_cleanups_poly583_q = i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out;
            1'b1 : i_next_cleanups_poly583_q = i_cleanups_shl_poly55_vt_join_q;
            default : i_next_cleanups_poly583_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_poly584(BLACKBOX,104)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    poly5_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_poly584 (
        .in_data_in(i_next_cleanups_poly583_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_feedback_stall_out_17),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_poly584_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_poly584_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_1107(CONSTANT,45)
    assign c_i2_1107_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_poly52(BLACKBOX,98)@2
    // out out_feedback_stall_out_17@20000000
    poly5_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_poly52 (
        .in_data_in(c_i2_1107_q),
        .in_dir(redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_poly584_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_poly584_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_poly53_sel_x(BITSELECT,207)@2
    assign i_first_cleanup_poly53_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_poly52_out_data_out[0:0];

    // c_i11_1126(CONSTANT,15)
    assign c_i11_1126_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next6_poly585(ADD,80)@2
    assign i_fpga_indvars_iv_next6_poly585_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577_out_data_out};
    assign i_fpga_indvars_iv_next6_poly585_b = {1'b0, c_i11_1126_q};
    assign i_fpga_indvars_iv_next6_poly585_o = $unsigned(i_fpga_indvars_iv_next6_poly585_a) + $unsigned(i_fpga_indvars_iv_next6_poly585_b);
    assign i_fpga_indvars_iv_next6_poly585_q = i_fpga_indvars_iv_next6_poly585_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next6_poly585_sel_x(BITSELECT,136)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_poly585_sel_x_b = i_fpga_indvars_iv_next6_poly585_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586(BLACKBOX,100)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    poly5_i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_poly585_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577_out_feedback_stall_out_15),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_1022124(CONSTANT,14)
    assign c_i11_1022124_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577(BLACKBOX,96)@2
    // out out_feedback_stall_out_15@20000000
    poly5_i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577 (
        .in_data_in(c_i11_1022124_q),
        .in_dir(redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly586_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_poly578_cmp_nsign(LOGICAL,289)@2
    assign i_exitcond7_poly578_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly577_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_poly581(BLACKBOX,103)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    poly5_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_poly581 (
        .in_data_in(i_exitcond7_poly578_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_poly56_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_poly53_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_poly581_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_poly581_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,253)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_poly57(BLACKBOX,101)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    poly5_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_poly57 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_poly56_out_initeration_stall_out),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_poly57_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_poly57_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_poly56(BLACKBOX,95)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    poly5_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_poly56 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_poly57_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_poly57_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_poly581_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_poly581_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_poly56_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_poly56_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_poly56_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_poly56_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_poly56_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_poly56_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,54)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly56_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_poly56_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly56_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_poly56_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,128)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_poly56_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,255)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist16_i_xor_poly54_q_1(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_xor_poly54_q_1_q <= '0;
        end
        else
        begin
            redist16_i_xor_poly54_q_1_q <= $unsigned(i_xor_poly54_q);
        end
    end

    // i_arrayidx195_poly50_mult_multconst_x(CONSTANT,160)
    assign i_arrayidx195_poly50_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_0109(CONSTANT,46)
    assign c_i32_0109_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,254)@1 + 1
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

    // valid_fanout_reg8(REG,260)@1 + 1
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

    // c_i32_1123(CONSTANT,47)
    assign c_i32_1123_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc93_poly575(ADD,87)@2
    assign i_inc93_poly575_a = {1'b0, i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_data_out};
    assign i_inc93_poly575_b = {1'b0, c_i32_1123_q};
    assign i_inc93_poly575_o = $unsigned(i_inc93_poly575_a) + $unsigned(i_inc93_poly575_b);
    assign i_inc93_poly575_q = i_inc93_poly575_o[32:0];

    // bgTrunc_i_inc93_poly575_sel_x(BITSELECT,137)@2
    assign bgTrunc_i_inc93_poly575_sel_x_b = i_inc93_poly575_q[31:0];

    // i_llvm_fpga_push_i32_k13_032_push16_poly576(BLACKBOX,105)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    poly5_i_llvm_fpga_push_i32_k13_032_push16_0 thei_llvm_fpga_push_i32_k13_032_push16_poly576 (
        .in_data_in(bgTrunc_i_inc93_poly575_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_feedback_stall_out_16),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k13_032_push16_poly576_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k13_032_push16_poly576_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k13_032_pop16_poly58(BLACKBOX,99)@2
    // out out_feedback_stall_out_16@20000000
    poly5_i_llvm_fpga_pop_i32_k13_032_pop16_0 thei_llvm_fpga_pop_i32_k13_032_pop16_poly58 (
        .in_data_in(c_i32_0109_q),
        .in_dir(redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k13_032_push16_poly576_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k13_032_push16_poly576_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom18_poly59_sel_x(BITSELECT,208)@2
    assign i_idxprom18_poly59_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_data_out[31:0]};

    // i_idxprom18_poly59_vt_select_31(BITSELECT,84)@2
    assign i_idxprom18_poly59_vt_select_31_b = i_idxprom18_poly59_sel_x_b[31:0];

    // redist29_i_idxprom18_poly59_vt_select_31_b_1(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom18_poly59_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist29_i_idxprom18_poly59_vt_select_31_b_1_q <= $unsigned(i_idxprom18_poly59_vt_select_31_b);
        end
    end

    // i_idxprom18_poly59_vt_join(BITJOIN,83)@3
    assign i_idxprom18_poly59_vt_join_q = {c_i32_0109_q, redist29_i_idxprom18_poly59_vt_select_31_b_1_q};

    // i_arrayidx195_poly50_mult_x_bs1_merged_bit_select(BITSELECT,439)@3
    assign i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b = i_idxprom18_poly59_vt_join_q[63:54];
    assign i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c = i_idxprom18_poly59_vt_join_q[53:36];
    assign i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d = i_idxprom18_poly59_vt_join_q[35:18];
    assign i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e = i_idxprom18_poly59_vt_join_q[17:0];

    // i_arrayidx195_poly50_mult_x_im0_shift0(BITSHIFT,417)@3
    assign i_arrayidx195_poly50_mult_x_im0_shift0_qint = { i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx195_poly50_mult_x_im0_shift0_q = i_arrayidx195_poly50_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx195_poly50_mult_x_sums_align_3(BITSHIFT,305)@3
    assign i_arrayidx195_poly50_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx195_poly50_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_poly50_mult_x_sums_align_3_q = i_arrayidx195_poly50_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx195_poly50_mult_x_im6_shift0(BITSHIFT,419)@3
    assign i_arrayidx195_poly50_mult_x_im6_shift0_qint = { i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx195_poly50_mult_x_im6_shift0_q = i_arrayidx195_poly50_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx195_poly50_mult_x_sums_align_2(BITSHIFT,304)@3
    assign i_arrayidx195_poly50_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx195_poly50_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx195_poly50_mult_x_sums_align_2_q = i_arrayidx195_poly50_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx195_poly50_mult_x_sums_join_4(BITJOIN,306)@3
    assign i_arrayidx195_poly50_mult_x_sums_join_4_q = {i_arrayidx195_poly50_mult_x_sums_align_3_q, i_arrayidx195_poly50_mult_x_sums_align_2_q};

    // i_arrayidx195_poly50_mult_x_im3_shift0(BITSHIFT,418)@3
    assign i_arrayidx195_poly50_mult_x_im3_shift0_qint = { i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx195_poly50_mult_x_im3_shift0_q = i_arrayidx195_poly50_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx195_poly50_mult_x_sums_align_0(BITSHIFT,302)@3
    assign i_arrayidx195_poly50_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx195_poly50_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_poly50_mult_x_sums_align_0_q = i_arrayidx195_poly50_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx195_poly50_mult_x_im9_shift0(BITSHIFT,420)@3
    assign i_arrayidx195_poly50_mult_x_im9_shift0_qint = { i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx195_poly50_mult_x_im9_shift0_q = i_arrayidx195_poly50_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx195_poly50_mult_x_sums_join_1(BITJOIN,303)@3
    assign i_arrayidx195_poly50_mult_x_sums_join_1_q = {i_arrayidx195_poly50_mult_x_sums_align_0_q, {1'b0, i_arrayidx195_poly50_mult_x_im9_shift0_q}};

    // i_arrayidx195_poly50_mult_x_sums_result_add_0_0(ADD,307)@3
    assign i_arrayidx195_poly50_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx195_poly50_mult_x_sums_join_1_q};
    assign i_arrayidx195_poly50_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx195_poly50_mult_x_sums_join_4_q};
    assign i_arrayidx195_poly50_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx195_poly50_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx195_poly50_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx195_poly50_mult_x_sums_result_add_0_0_q = i_arrayidx195_poly50_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx195_poly50_mult_extender_x(BITJOIN,159)@3
    assign i_arrayidx195_poly50_mult_extender_x_q = {i_arrayidx195_poly50_mult_multconst_x_q, i_arrayidx195_poly50_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx195_poly50_trunc_sel_x(BITSELECT,161)@3
    assign i_arrayidx195_poly50_trunc_sel_x_b = i_arrayidx195_poly50_mult_extender_x_q[63:0];

    // c_poly5_a_pmem(CONSTANT,49)
    assign c_poly5_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx195_poly50_add_x(ADD,153)@3
    assign i_arrayidx195_poly50_add_x_a = {1'b0, c_poly5_a_pmem_q};
    assign i_arrayidx195_poly50_add_x_b = {1'b0, i_arrayidx195_poly50_trunc_sel_x_b};
    assign i_arrayidx195_poly50_add_x_o = $unsigned(i_arrayidx195_poly50_add_x_a) + $unsigned(i_arrayidx195_poly50_add_x_b);
    assign i_arrayidx195_poly50_add_x_q = i_arrayidx195_poly50_add_x_o[64:0];

    // i_arrayidx195_poly50_dupName_0_trunc_sel_x(BITSELECT,162)@3
    assign i_arrayidx195_poly50_dupName_0_trunc_sel_x_b = i_arrayidx195_poly50_add_x_q[63:0];

    // i_arrayidx195_poly510_vt_select_63(BITSELECT,58)@3
    assign i_arrayidx195_poly510_vt_select_63_b = i_arrayidx195_poly50_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx195_poly510_vt_join(BITJOIN,57)@3
    assign i_arrayidx195_poly510_vt_join_q = {i_arrayidx195_poly510_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly57_poly511(BLACKBOX,92)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_poly57_poly5_avm_address@20000000
    // out out_unnamed_poly57_poly5_avm_burstcount@20000000
    // out out_unnamed_poly57_poly5_avm_byteenable@20000000
    // out out_unnamed_poly57_poly5_avm_enable@20000000
    // out out_unnamed_poly57_poly5_avm_read@20000000
    // out out_unnamed_poly57_poly5_avm_write@20000000
    // out out_unnamed_poly57_poly5_avm_writedata@20000000
    poly5_i_llvm_fpga_mem_unnamed_7_poly50 thei_llvm_fpga_mem_unnamed_poly57_poly511 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx195_poly510_vt_join_q),
        .in_i_predicate(redist16_i_xor_poly54_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_poly57_poly5_avm_readdata(in_unnamed_poly57_poly5_avm_readdata),
        .in_unnamed_poly57_poly5_avm_readdatavalid(in_unnamed_poly57_poly5_avm_readdatavalid),
        .in_unnamed_poly57_poly5_avm_waitrequest(in_unnamed_poly57_poly5_avm_waitrequest),
        .in_unnamed_poly57_poly5_avm_writeack(in_unnamed_poly57_poly5_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly57_poly5_avm_address(i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_address),
        .out_unnamed_poly57_poly5_avm_burstcount(i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_burstcount),
        .out_unnamed_poly57_poly5_avm_byteenable(i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_byteenable),
        .out_unnamed_poly57_poly5_avm_enable(i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_enable),
        .out_unnamed_poly57_poly5_avm_read(i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_read),
        .out_unnamed_poly57_poly5_avm_write(i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_write),
        .out_unnamed_poly57_poly5_avm_writedata(i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,145)
    assign out_unnamed_poly57_poly5_avm_address = i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_address;
    assign out_unnamed_poly57_poly5_avm_enable = i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_enable;
    assign out_unnamed_poly57_poly5_avm_read = i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_read;
    assign out_unnamed_poly57_poly5_avm_write = i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_write;
    assign out_unnamed_poly57_poly5_avm_writedata = i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_writedata;
    assign out_unnamed_poly57_poly5_avm_byteenable = i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_byteenable;
    assign out_unnamed_poly57_poly5_avm_burstcount = i_llvm_fpga_mem_unnamed_poly57_poly511_out_unnamed_poly57_poly5_avm_burstcount;

    // valid_fanout_reg4(REG,256)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist10_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_432110(CONSTANT,48)
    assign c_i32_432110_q = $unsigned(32'b11111111111111111111111001010000);

    // i_sub_poly512(ADD,117)@2
    assign i_sub_poly512_a = {1'b0, i_llvm_fpga_pop_i32_k13_032_pop16_poly58_out_data_out};
    assign i_sub_poly512_b = {1'b0, c_i32_432110_q};
    assign i_sub_poly512_o = $unsigned(i_sub_poly512_a) + $unsigned(i_sub_poly512_b);
    assign i_sub_poly512_q = i_sub_poly512_o[32:0];

    // bgTrunc_i_sub_poly512_sel_x(BITSELECT,142)@2
    assign bgTrunc_i_sub_poly512_sel_x_b = i_sub_poly512_q[31:0];

    // redist15_bgTrunc_i_sub_poly512_sel_x_b_1(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_bgTrunc_i_sub_poly512_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_bgTrunc_i_sub_poly512_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_poly512_sel_x_b);
        end
    end

    // i_idxprom24_poly513_sel_x(BITSELECT,209)@3
    assign i_idxprom24_poly513_sel_x_b = $unsigned({{32{redist15_bgTrunc_i_sub_poly512_sel_x_b_1_q[31]}}, redist15_bgTrunc_i_sub_poly512_sel_x_b_1_q[31:0]});

    // i_arrayidx256_poly50_mult_x_bs1_merged_bit_select(BITSELECT,440)@3
    assign i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_b = i_idxprom24_poly513_sel_x_b[63:54];
    assign i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_c = i_idxprom24_poly513_sel_x_b[53:36];
    assign i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_d = i_idxprom24_poly513_sel_x_b[35:18];
    assign i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_e = i_idxprom24_poly513_sel_x_b[17:0];

    // i_arrayidx256_poly50_mult_x_im0_shift0(BITSHIFT,421)@3
    assign i_arrayidx256_poly50_mult_x_im0_shift0_qint = { i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx256_poly50_mult_x_im0_shift0_q = i_arrayidx256_poly50_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx256_poly50_mult_x_sums_align_3(BITSHIFT,323)@3
    assign i_arrayidx256_poly50_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx256_poly50_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx256_poly50_mult_x_sums_align_3_q = i_arrayidx256_poly50_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx256_poly50_mult_x_im6_shift0(BITSHIFT,423)@3
    assign i_arrayidx256_poly50_mult_x_im6_shift0_qint = { i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx256_poly50_mult_x_im6_shift0_q = i_arrayidx256_poly50_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx256_poly50_mult_x_sums_align_2(BITSHIFT,322)@3
    assign i_arrayidx256_poly50_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx256_poly50_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx256_poly50_mult_x_sums_align_2_q = i_arrayidx256_poly50_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx256_poly50_mult_x_sums_join_4(BITJOIN,324)@3
    assign i_arrayidx256_poly50_mult_x_sums_join_4_q = {i_arrayidx256_poly50_mult_x_sums_align_3_q, i_arrayidx256_poly50_mult_x_sums_align_2_q};

    // i_arrayidx256_poly50_mult_x_im3_shift0(BITSHIFT,422)@3
    assign i_arrayidx256_poly50_mult_x_im3_shift0_qint = { i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx256_poly50_mult_x_im3_shift0_q = i_arrayidx256_poly50_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx256_poly50_mult_x_sums_align_0(BITSHIFT,320)@3
    assign i_arrayidx256_poly50_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx256_poly50_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx256_poly50_mult_x_sums_align_0_q = i_arrayidx256_poly50_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx256_poly50_mult_x_im9_shift0(BITSHIFT,424)@3
    assign i_arrayidx256_poly50_mult_x_im9_shift0_qint = { i_arrayidx256_poly50_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx256_poly50_mult_x_im9_shift0_q = i_arrayidx256_poly50_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx256_poly50_mult_x_sums_join_1(BITJOIN,321)@3
    assign i_arrayidx256_poly50_mult_x_sums_join_1_q = {i_arrayidx256_poly50_mult_x_sums_align_0_q, {1'b0, i_arrayidx256_poly50_mult_x_im9_shift0_q}};

    // i_arrayidx256_poly50_mult_x_sums_result_add_0_0(ADD,325)@3
    assign i_arrayidx256_poly50_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx256_poly50_mult_x_sums_join_1_q};
    assign i_arrayidx256_poly50_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx256_poly50_mult_x_sums_join_4_q};
    assign i_arrayidx256_poly50_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx256_poly50_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx256_poly50_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx256_poly50_mult_x_sums_result_add_0_0_q = i_arrayidx256_poly50_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx256_poly50_mult_extender_x(BITJOIN,169)@3
    assign i_arrayidx256_poly50_mult_extender_x_q = {i_arrayidx195_poly50_mult_multconst_x_q, i_arrayidx256_poly50_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx256_poly50_trunc_sel_x(BITSELECT,171)@3
    assign i_arrayidx256_poly50_trunc_sel_x_b = i_arrayidx256_poly50_mult_extender_x_q[63:0];

    // i_arrayidx256_poly50_add_x(ADD,163)@3
    assign i_arrayidx256_poly50_add_x_a = {1'b0, c_poly5_a_pmem_q};
    assign i_arrayidx256_poly50_add_x_b = {1'b0, i_arrayidx256_poly50_trunc_sel_x_b};
    assign i_arrayidx256_poly50_add_x_o = $unsigned(i_arrayidx256_poly50_add_x_a) + $unsigned(i_arrayidx256_poly50_add_x_b);
    assign i_arrayidx256_poly50_add_x_q = i_arrayidx256_poly50_add_x_o[64:0];

    // i_arrayidx256_poly50_dupName_0_trunc_sel_x(BITSELECT,172)@3
    assign i_arrayidx256_poly50_dupName_0_trunc_sel_x_b = i_arrayidx256_poly50_add_x_q[63:0];

    // i_arrayidx256_poly514_vt_select_63(BITSELECT,61)@3
    assign i_arrayidx256_poly514_vt_select_63_b = i_arrayidx256_poly50_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx256_poly514_vt_join(BITJOIN,60)@3
    assign i_arrayidx256_poly514_vt_join_q = {i_arrayidx256_poly514_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly58_poly515(BLACKBOX,93)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_poly58_poly5_avm_address@20000000
    // out out_unnamed_poly58_poly5_avm_burstcount@20000000
    // out out_unnamed_poly58_poly5_avm_byteenable@20000000
    // out out_unnamed_poly58_poly5_avm_enable@20000000
    // out out_unnamed_poly58_poly5_avm_read@20000000
    // out out_unnamed_poly58_poly5_avm_write@20000000
    // out out_unnamed_poly58_poly5_avm_writedata@20000000
    poly5_i_llvm_fpga_mem_unnamed_8_poly50 thei_llvm_fpga_mem_unnamed_poly58_poly515 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx256_poly514_vt_join_q),
        .in_i_predicate(redist16_i_xor_poly54_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_poly58_poly5_avm_readdata(in_unnamed_poly58_poly5_avm_readdata),
        .in_unnamed_poly58_poly5_avm_readdatavalid(in_unnamed_poly58_poly5_avm_readdatavalid),
        .in_unnamed_poly58_poly5_avm_waitrequest(in_unnamed_poly58_poly5_avm_waitrequest),
        .in_unnamed_poly58_poly5_avm_writeack(in_unnamed_poly58_poly5_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly58_poly515_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly58_poly5_avm_address(i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_address),
        .out_unnamed_poly58_poly5_avm_burstcount(i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_burstcount),
        .out_unnamed_poly58_poly5_avm_byteenable(i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_byteenable),
        .out_unnamed_poly58_poly5_avm_enable(i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_enable),
        .out_unnamed_poly58_poly5_avm_read(i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_read),
        .out_unnamed_poly58_poly5_avm_write(i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_write),
        .out_unnamed_poly58_poly5_avm_writedata(i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,147)
    assign out_unnamed_poly58_poly5_avm_address = i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_address;
    assign out_unnamed_poly58_poly5_avm_enable = i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_enable;
    assign out_unnamed_poly58_poly5_avm_read = i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_read;
    assign out_unnamed_poly58_poly5_avm_write = i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_write;
    assign out_unnamed_poly58_poly5_avm_writedata = i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_writedata;
    assign out_unnamed_poly58_poly5_avm_byteenable = i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_byteenable;
    assign out_unnamed_poly58_poly5_avm_burstcount = i_llvm_fpga_mem_unnamed_poly58_poly515_out_unnamed_poly58_poly5_avm_burstcount;

    // redist11_sync_together141_aunroll_x_in_i_valid_3(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist11_sync_together141_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist11_sync_together141_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist10_sync_together141_aunroll_x_in_i_valid_1_q);
            redist11_sync_together141_aunroll_x_in_i_valid_3_q <= redist11_sync_together141_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // redist12_sync_together141_aunroll_x_in_i_valid_4(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist12_sync_together141_aunroll_x_in_i_valid_4_q <= $unsigned(redist11_sync_together141_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,257)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist12_sync_together141_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist17_i_xor_poly54_q_3(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_xor_poly54_q_3_delay_0 <= '0;
            redist17_i_xor_poly54_q_3_q <= '0;
        end
        else
        begin
            redist17_i_xor_poly54_q_3_delay_0 <= $unsigned(redist16_i_xor_poly54_q_1_q);
            redist17_i_xor_poly54_q_3_q <= redist17_i_xor_poly54_q_3_delay_0;
        end
    end

    // redist18_i_xor_poly54_q_4(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_xor_poly54_q_4_q <= '0;
        end
        else
        begin
            redist18_i_xor_poly54_q_4_q <= $unsigned(redist17_i_xor_poly54_q_3_q);
        end
    end

    // redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_delay_0 <= '0;
            redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_delay_0 <= $unsigned(i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b);
            redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_q <= redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_delay_0;
        end
    end

    // redist1_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_3(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_3_q <= $unsigned(redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_q);
        end
    end

    // i_arrayidx307_poly50_mult_x_im0_shift0(BITSHIFT,425)@6
    assign i_arrayidx307_poly50_mult_x_im0_shift0_qint = { redist1_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_3_q, 1'b0 };
    assign i_arrayidx307_poly50_mult_x_im0_shift0_q = i_arrayidx307_poly50_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx307_poly50_mult_x_sums_align_3(BITSHIFT,341)@6
    assign i_arrayidx307_poly50_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx307_poly50_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx307_poly50_mult_x_sums_align_3_q = i_arrayidx307_poly50_mult_x_sums_align_3_qint[27:0];

    // redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_delay_0 <= '0;
            redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_delay_0 <= $unsigned(i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d);
            redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_q <= redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_delay_0;
        end
    end

    // redist5_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_3(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_3_q <= '0;
        end
        else
        begin
            redist5_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_3_q <= $unsigned(redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_q);
        end
    end

    // i_arrayidx307_poly50_mult_x_im6_shift0(BITSHIFT,427)@6
    assign i_arrayidx307_poly50_mult_x_im6_shift0_qint = { redist5_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_3_q, 1'b0 };
    assign i_arrayidx307_poly50_mult_x_im6_shift0_q = i_arrayidx307_poly50_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx307_poly50_mult_x_sums_align_2(BITSHIFT,340)@6
    assign i_arrayidx307_poly50_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx307_poly50_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx307_poly50_mult_x_sums_align_2_q = i_arrayidx307_poly50_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx307_poly50_mult_x_sums_join_4(BITJOIN,342)@6
    assign i_arrayidx307_poly50_mult_x_sums_join_4_q = {i_arrayidx307_poly50_mult_x_sums_align_3_q, i_arrayidx307_poly50_mult_x_sums_align_2_q};

    // redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_delay_0 <= '0;
            redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_delay_0 <= $unsigned(i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c);
            redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_q <= redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_delay_0;
        end
    end

    // redist3_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_3(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_3_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_3_q <= $unsigned(redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_q);
        end
    end

    // i_arrayidx307_poly50_mult_x_im3_shift0(BITSHIFT,426)@6
    assign i_arrayidx307_poly50_mult_x_im3_shift0_qint = { redist3_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_3_q, 1'b0 };
    assign i_arrayidx307_poly50_mult_x_im3_shift0_q = i_arrayidx307_poly50_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx307_poly50_mult_x_sums_align_0(BITSHIFT,338)@6
    assign i_arrayidx307_poly50_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx307_poly50_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx307_poly50_mult_x_sums_align_0_q = i_arrayidx307_poly50_mult_x_sums_align_0_qint[35:0];

    // redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2(DELAY,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_delay_0 <= '0;
            redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_delay_0 <= $unsigned(i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e);
            redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_q <= redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_delay_0;
        end
    end

    // redist7_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_3(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_3_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_3_q <= $unsigned(redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_q);
        end
    end

    // i_arrayidx307_poly50_mult_x_im9_shift0(BITSHIFT,428)@6
    assign i_arrayidx307_poly50_mult_x_im9_shift0_qint = { redist7_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_3_q, 1'b0 };
    assign i_arrayidx307_poly50_mult_x_im9_shift0_q = i_arrayidx307_poly50_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx307_poly50_mult_x_sums_join_1(BITJOIN,339)@6
    assign i_arrayidx307_poly50_mult_x_sums_join_1_q = {i_arrayidx307_poly50_mult_x_sums_align_0_q, {1'b0, i_arrayidx307_poly50_mult_x_im9_shift0_q}};

    // i_arrayidx307_poly50_mult_x_sums_result_add_0_0(ADD,343)@6
    assign i_arrayidx307_poly50_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx307_poly50_mult_x_sums_join_1_q};
    assign i_arrayidx307_poly50_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx307_poly50_mult_x_sums_join_4_q};
    assign i_arrayidx307_poly50_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx307_poly50_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx307_poly50_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx307_poly50_mult_x_sums_result_add_0_0_q = i_arrayidx307_poly50_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx307_poly50_mult_extender_x(BITJOIN,179)@6
    assign i_arrayidx307_poly50_mult_extender_x_q = {i_arrayidx195_poly50_mult_multconst_x_q, i_arrayidx307_poly50_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx307_poly50_trunc_sel_x(BITSELECT,181)@6
    assign i_arrayidx307_poly50_trunc_sel_x_b = i_arrayidx307_poly50_mult_extender_x_q[63:0];

    // c_poly5_b_pmem(CONSTANT,50)
    assign c_poly5_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx307_poly50_add_x(ADD,173)@6
    assign i_arrayidx307_poly50_add_x_a = {1'b0, c_poly5_b_pmem_q};
    assign i_arrayidx307_poly50_add_x_b = {1'b0, i_arrayidx307_poly50_trunc_sel_x_b};
    assign i_arrayidx307_poly50_add_x_o = $unsigned(i_arrayidx307_poly50_add_x_a) + $unsigned(i_arrayidx307_poly50_add_x_b);
    assign i_arrayidx307_poly50_add_x_q = i_arrayidx307_poly50_add_x_o[64:0];

    // i_arrayidx307_poly50_dupName_0_trunc_sel_x(BITSELECT,182)@6
    assign i_arrayidx307_poly50_dupName_0_trunc_sel_x_b = i_arrayidx307_poly50_add_x_q[63:0];

    // i_arrayidx307_poly524_vt_select_63(BITSELECT,64)@6
    assign i_arrayidx307_poly524_vt_select_63_b = i_arrayidx307_poly50_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx307_poly524_vt_join(BITJOIN,63)@6
    assign i_arrayidx307_poly524_vt_join_q = {i_arrayidx307_poly524_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly59_poly525(BLACKBOX,94)@6
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    // out out_unnamed_poly59_poly5_avm_address@20000000
    // out out_unnamed_poly59_poly5_avm_burstcount@20000000
    // out out_unnamed_poly59_poly5_avm_byteenable@20000000
    // out out_unnamed_poly59_poly5_avm_enable@20000000
    // out out_unnamed_poly59_poly5_avm_read@20000000
    // out out_unnamed_poly59_poly5_avm_write@20000000
    // out out_unnamed_poly59_poly5_avm_writedata@20000000
    poly5_i_llvm_fpga_mem_unnamed_9_poly50 thei_llvm_fpga_mem_unnamed_poly59_poly525 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx307_poly524_vt_join_q),
        .in_i_predicate(redist18_i_xor_poly54_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_poly59_poly5_avm_readdata(in_unnamed_poly59_poly5_avm_readdata),
        .in_unnamed_poly59_poly5_avm_readdatavalid(in_unnamed_poly59_poly5_avm_readdatavalid),
        .in_unnamed_poly59_poly5_avm_waitrequest(in_unnamed_poly59_poly5_avm_waitrequest),
        .in_unnamed_poly59_poly5_avm_writeack(in_unnamed_poly59_poly5_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly59_poly5_avm_address(i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_address),
        .out_unnamed_poly59_poly5_avm_burstcount(i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_burstcount),
        .out_unnamed_poly59_poly5_avm_byteenable(i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_byteenable),
        .out_unnamed_poly59_poly5_avm_enable(i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_enable),
        .out_unnamed_poly59_poly5_avm_read(i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_read),
        .out_unnamed_poly59_poly5_avm_write(i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_write),
        .out_unnamed_poly59_poly5_avm_writedata(i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,149)
    assign out_unnamed_poly59_poly5_avm_address = i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_address;
    assign out_unnamed_poly59_poly5_avm_enable = i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_enable;
    assign out_unnamed_poly59_poly5_avm_read = i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_read;
    assign out_unnamed_poly59_poly5_avm_write = i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_write;
    assign out_unnamed_poly59_poly5_avm_writedata = i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_writedata;
    assign out_unnamed_poly59_poly5_avm_byteenable = i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_byteenable;
    assign out_unnamed_poly59_poly5_avm_burstcount = i_llvm_fpga_mem_unnamed_poly59_poly525_out_unnamed_poly59_poly5_avm_burstcount;

    // valid_fanout_reg6(REG,258)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist11_sync_together141_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_arrayidx548_poly50_mult_x_im0_shift0(BITSHIFT,429)@5
    assign i_arrayidx548_poly50_mult_x_im0_shift0_qint = { redist0_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_2_q, 1'b0 };
    assign i_arrayidx548_poly50_mult_x_im0_shift0_q = i_arrayidx548_poly50_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx548_poly50_mult_x_sums_align_3(BITSHIFT,359)@5
    assign i_arrayidx548_poly50_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx548_poly50_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx548_poly50_mult_x_sums_align_3_q = i_arrayidx548_poly50_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx548_poly50_mult_x_im6_shift0(BITSHIFT,431)@5
    assign i_arrayidx548_poly50_mult_x_im6_shift0_qint = { redist4_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_2_q, 1'b0 };
    assign i_arrayidx548_poly50_mult_x_im6_shift0_q = i_arrayidx548_poly50_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx548_poly50_mult_x_sums_align_2(BITSHIFT,358)@5
    assign i_arrayidx548_poly50_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx548_poly50_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx548_poly50_mult_x_sums_align_2_q = i_arrayidx548_poly50_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx548_poly50_mult_x_sums_join_4(BITJOIN,360)@5
    assign i_arrayidx548_poly50_mult_x_sums_join_4_q = {i_arrayidx548_poly50_mult_x_sums_align_3_q, i_arrayidx548_poly50_mult_x_sums_align_2_q};

    // i_arrayidx548_poly50_mult_x_im3_shift0(BITSHIFT,430)@5
    assign i_arrayidx548_poly50_mult_x_im3_shift0_qint = { redist2_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_2_q, 1'b0 };
    assign i_arrayidx548_poly50_mult_x_im3_shift0_q = i_arrayidx548_poly50_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx548_poly50_mult_x_sums_align_0(BITSHIFT,356)@5
    assign i_arrayidx548_poly50_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx548_poly50_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx548_poly50_mult_x_sums_align_0_q = i_arrayidx548_poly50_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx548_poly50_mult_x_im9_shift0(BITSHIFT,432)@5
    assign i_arrayidx548_poly50_mult_x_im9_shift0_qint = { redist6_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_2_q, 1'b0 };
    assign i_arrayidx548_poly50_mult_x_im9_shift0_q = i_arrayidx548_poly50_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx548_poly50_mult_x_sums_join_1(BITJOIN,357)@5
    assign i_arrayidx548_poly50_mult_x_sums_join_1_q = {i_arrayidx548_poly50_mult_x_sums_align_0_q, {1'b0, i_arrayidx548_poly50_mult_x_im9_shift0_q}};

    // i_arrayidx548_poly50_mult_x_sums_result_add_0_0(ADD,361)@5
    assign i_arrayidx548_poly50_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx548_poly50_mult_x_sums_join_1_q};
    assign i_arrayidx548_poly50_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx548_poly50_mult_x_sums_join_4_q};
    assign i_arrayidx548_poly50_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx548_poly50_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx548_poly50_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx548_poly50_mult_x_sums_result_add_0_0_q = i_arrayidx548_poly50_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx548_poly50_mult_extender_x(BITJOIN,189)@5
    assign i_arrayidx548_poly50_mult_extender_x_q = {i_arrayidx195_poly50_mult_multconst_x_q, i_arrayidx548_poly50_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx548_poly50_trunc_sel_x(BITSELECT,191)@5
    assign i_arrayidx548_poly50_trunc_sel_x_b = i_arrayidx548_poly50_mult_extender_x_q[63:0];

    // c_poly5_c_pmem(CONSTANT,51)
    assign c_poly5_c_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx548_poly50_add_x(ADD,183)@5
    assign i_arrayidx548_poly50_add_x_a = {1'b0, c_poly5_c_pmem_q};
    assign i_arrayidx548_poly50_add_x_b = {1'b0, i_arrayidx548_poly50_trunc_sel_x_b};
    assign i_arrayidx548_poly50_add_x_o = $unsigned(i_arrayidx548_poly50_add_x_a) + $unsigned(i_arrayidx548_poly50_add_x_b);
    assign i_arrayidx548_poly50_add_x_q = i_arrayidx548_poly50_add_x_o[64:0];

    // i_arrayidx548_poly50_dupName_0_trunc_sel_x(BITSELECT,192)@5
    assign i_arrayidx548_poly50_dupName_0_trunc_sel_x_b = i_arrayidx548_poly50_add_x_q[63:0];

    // i_arrayidx548_poly544_vt_select_63(BITSELECT,67)@5
    assign i_arrayidx548_poly544_vt_select_63_b = i_arrayidx548_poly50_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx548_poly544_vt_join(BITJOIN,66)@5
    assign i_arrayidx548_poly544_vt_join_q = {i_arrayidx548_poly544_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly510_poly545(BLACKBOX,91)@5
    // in in_i_stall@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    // out out_unnamed_poly510_poly5_avm_address@20000000
    // out out_unnamed_poly510_poly5_avm_burstcount@20000000
    // out out_unnamed_poly510_poly5_avm_byteenable@20000000
    // out out_unnamed_poly510_poly5_avm_enable@20000000
    // out out_unnamed_poly510_poly5_avm_read@20000000
    // out out_unnamed_poly510_poly5_avm_write@20000000
    // out out_unnamed_poly510_poly5_avm_writedata@20000000
    poly5_i_llvm_fpga_mem_unnamed_10_poly50 thei_llvm_fpga_mem_unnamed_poly510_poly545 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx548_poly544_vt_join_q),
        .in_i_predicate(redist17_i_xor_poly54_q_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_poly510_poly5_avm_readdata(in_unnamed_poly510_poly5_avm_readdata),
        .in_unnamed_poly510_poly5_avm_readdatavalid(in_unnamed_poly510_poly5_avm_readdatavalid),
        .in_unnamed_poly510_poly5_avm_waitrequest(in_unnamed_poly510_poly5_avm_waitrequest),
        .in_unnamed_poly510_poly5_avm_writeack(in_unnamed_poly510_poly5_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly510_poly5_avm_address(i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_address),
        .out_unnamed_poly510_poly5_avm_burstcount(i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_burstcount),
        .out_unnamed_poly510_poly5_avm_byteenable(i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_byteenable),
        .out_unnamed_poly510_poly5_avm_enable(i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_enable),
        .out_unnamed_poly510_poly5_avm_read(i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_read),
        .out_unnamed_poly510_poly5_avm_write(i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_write),
        .out_unnamed_poly510_poly5_avm_writedata(i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,151)
    assign out_unnamed_poly510_poly5_avm_address = i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_address;
    assign out_unnamed_poly510_poly5_avm_enable = i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_enable;
    assign out_unnamed_poly510_poly5_avm_read = i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_read;
    assign out_unnamed_poly510_poly5_avm_write = i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_write;
    assign out_unnamed_poly510_poly5_avm_writedata = i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_writedata;
    assign out_unnamed_poly510_poly5_avm_byteenable = i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_byteenable;
    assign out_unnamed_poly510_poly5_avm_burstcount = i_llvm_fpga_mem_unnamed_poly510_poly545_out_unnamed_poly510_poly5_avm_burstcount;

    // redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_delay_0 <= '0;
            redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_delay_0 <= $unsigned(i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata);
            redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_q <= redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_delay_0;
        end
    end

    // redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q <= $unsigned(redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_q);
        end
    end

    // c_i16_9504115(CONSTANT,27)
    assign c_i16_9504115_q = $unsigned(16'b1101101011100000);

    // c_i16_78114(CONSTANT,25)
    assign c_i16_78114_q = $unsigned(16'b0000000001001110);

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,264)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(c_i16_78114_q);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add56_poly528(ADD,75)@10
    assign i_dot_prod_add56_poly528_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod55_poly50_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add56_poly528_b = {1'b0, c_i16_9504115_q};
    assign i_dot_prod_add56_poly528_o = $unsigned(i_dot_prod_add56_poly528_a) + $unsigned(i_dot_prod_add56_poly528_b);
    assign i_dot_prod_add56_poly528_q = i_dot_prod_add56_poly528_o[16:0];

    // bgTrunc_i_dot_prod_add56_poly528_sel_x(BITSELECT,133)@10
    assign bgTrunc_i_dot_prod_add56_poly528_sel_x_b = i_dot_prod_add56_poly528_q[15:0];

    // leftShiftStage0Idx1Rng8_uid413_dupName_0_i_unnamed_poly50_shift_x(BITSELECT,412)@10
    assign leftShiftStage0Idx1Rng8_uid413_dupName_0_i_unnamed_poly50_shift_x_in = redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q[7:0];
    assign leftShiftStage0Idx1Rng8_uid413_dupName_0_i_unnamed_poly50_shift_x_b = leftShiftStage0Idx1Rng8_uid413_dupName_0_i_unnamed_poly50_shift_x_in[7:0];

    // leftShiftStage0Idx1_uid414_dupName_0_i_unnamed_poly50_shift_x(BITJOIN,413)@10
    assign leftShiftStage0Idx1_uid414_dupName_0_i_unnamed_poly50_shift_x_q = {leftShiftStage0Idx1Rng8_uid413_dupName_0_i_unnamed_poly50_shift_x_b, i_unnamed_poly530_vt_const_7_q};

    // leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x(MUX,415)@10
    assign leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_s or redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q or leftShiftStage0Idx1_uid414_dupName_0_i_unnamed_poly50_shift_x_q)
    begin
        unique case (leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_s)
            1'b0 : leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_q = redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q;
            1'b1 : leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_q = leftShiftStage0Idx1_uid414_dupName_0_i_unnamed_poly50_shift_x_q;
            default : leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_poly530_vt_select_15(BITSELECT,123)@10
    assign i_unnamed_poly530_vt_select_15_b = leftShiftStage0_uid416_dupName_0_i_unnamed_poly50_shift_x_q[15:8];

    // i_unnamed_poly530_vt_const_7(CONSTANT,121)
    assign i_unnamed_poly530_vt_const_7_q = $unsigned(8'b00000000);

    // i_unnamed_poly530_vt_join(BITJOIN,122)@10
    assign i_unnamed_poly530_vt_join_q = {i_unnamed_poly530_vt_select_15_b, i_unnamed_poly530_vt_const_7_q};

    // c_i16_5184118(CONSTANT,24)
    assign c_i16_5184118_q = $unsigned(16'b1110101111000000);

    // leftShiftStage1Idx1Rng4_uid405_i_unnamed_poly50_shift_x(BITSELECT,404)@9
    assign leftShiftStage1Idx1Rng4_uid405_i_unnamed_poly50_shift_x_in = leftShiftStage0_uid395_i_mul75_poly50_shift_x_q[11:0];
    assign leftShiftStage1Idx1Rng4_uid405_i_unnamed_poly50_shift_x_b = leftShiftStage1Idx1Rng4_uid405_i_unnamed_poly50_shift_x_in[11:0];

    // leftShiftStage1Idx1Pad4_uid404_i_unnamed_poly50_shift_x(CONSTANT,403)
    assign leftShiftStage1Idx1Pad4_uid404_i_unnamed_poly50_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid406_i_unnamed_poly50_shift_x(BITJOIN,405)@9
    assign leftShiftStage1Idx1_uid406_i_unnamed_poly50_shift_x_q = {leftShiftStage1Idx1Rng4_uid405_i_unnamed_poly50_shift_x_b, leftShiftStage1Idx1Pad4_uid404_i_unnamed_poly50_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid392_i_mul75_poly50_shift_x(BITSELECT,391)@9
    assign leftShiftStage0Idx1Rng1_uid392_i_mul75_poly50_shift_x_in = redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_q[14:0];
    assign leftShiftStage0Idx1Rng1_uid392_i_mul75_poly50_shift_x_b = leftShiftStage0Idx1Rng1_uid392_i_mul75_poly50_shift_x_in[14:0];

    // leftShiftStage0Idx1_uid393_i_mul75_poly50_shift_x(BITJOIN,392)@9
    assign leftShiftStage0Idx1_uid393_i_mul75_poly50_shift_x_q = {leftShiftStage0Idx1Rng1_uid392_i_mul75_poly50_shift_x_b, GND_q};

    // leftShiftStage0_uid395_i_mul75_poly50_shift_x(MUX,394)@9
    assign leftShiftStage0_uid395_i_mul75_poly50_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid395_i_mul75_poly50_shift_x_s or redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_q or leftShiftStage0Idx1_uid393_i_mul75_poly50_shift_x_q)
    begin
        unique case (leftShiftStage0_uid395_i_mul75_poly50_shift_x_s)
            1'b0 : leftShiftStage0_uid395_i_mul75_poly50_shift_x_q = redist26_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_2_q;
            1'b1 : leftShiftStage0_uid395_i_mul75_poly50_shift_x_q = leftShiftStage0Idx1_uid393_i_mul75_poly50_shift_x_q;
            default : leftShiftStage0_uid395_i_mul75_poly50_shift_x_q = 16'b0;
        endcase
    end

    // leftShiftStage1_uid408_i_unnamed_poly50_shift_x(MUX,407)@9
    assign leftShiftStage1_uid408_i_unnamed_poly50_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid408_i_unnamed_poly50_shift_x_s or leftShiftStage0_uid395_i_mul75_poly50_shift_x_q or leftShiftStage1Idx1_uid406_i_unnamed_poly50_shift_x_q)
    begin
        unique case (leftShiftStage1_uid408_i_unnamed_poly50_shift_x_s)
            1'b0 : leftShiftStage1_uid408_i_unnamed_poly50_shift_x_q = leftShiftStage0_uid395_i_mul75_poly50_shift_x_q;
            1'b1 : leftShiftStage1_uid408_i_unnamed_poly50_shift_x_q = leftShiftStage1Idx1_uid406_i_unnamed_poly50_shift_x_q;
            default : leftShiftStage1_uid408_i_unnamed_poly50_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_poly529_vt_select_15(BITSELECT,120)@9
    assign i_unnamed_poly529_vt_select_15_b = leftShiftStage1_uid408_i_unnamed_poly50_shift_x_q[15:5];

    // redist20_i_unnamed_poly529_vt_select_15_b_1(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_unnamed_poly529_vt_select_15_b_1_q <= '0;
        end
        else
        begin
            redist20_i_unnamed_poly529_vt_select_15_b_1_q <= $unsigned(i_unnamed_poly529_vt_select_15_b);
        end
    end

    // i_unnamed_poly529_vt_const_4(CONSTANT,118)
    assign i_unnamed_poly529_vt_const_4_q = $unsigned(5'b00000);

    // i_unnamed_poly529_vt_join(BITJOIN,119)@10
    assign i_unnamed_poly529_vt_join_q = {redist20_i_unnamed_poly529_vt_select_15_b_1_q, i_unnamed_poly529_vt_const_4_q};

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0(ADD,250)@10
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_a = {1'b0, i_unnamed_poly529_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_b = {1'b0, c_i16_5184118_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_o[16:0];

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0(ADD,251)@10
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_a = i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_0_0_q[15:0];
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_b = i_unnamed_poly530_vt_join_q;
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_o[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,266)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly536_vunroll_re_add_1_0_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(bgTrunc_i_dot_prod_add56_poly528_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q);
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
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_castb1_x(BITSELECT,232)@13
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_castb1_x_in = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod63_poly50_dspb_native_dot_product_vunroll_x_cma0_q[15:0];
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_castb1_x_b = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_castb1_x_in[15:0];

    // c_i16_28672112(CONSTANT,20)
    assign c_i16_28672112_q = $unsigned(16'b0111000000000000);

    // c_i16_3328111(CONSTANT,21)
    assign c_i16_3328111_q = $unsigned(16'b1111001100000000);

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,265)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_mem_unnamed_poly58_poly515_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add_poly519(ADD,77)@10
    assign i_dot_prod_add_poly519_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly50_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add_poly519_b = {1'b0, c_i16_3328111_q};
    assign i_dot_prod_add_poly519_o = $unsigned(i_dot_prod_add_poly519_a) + $unsigned(i_dot_prod_add_poly519_b);
    assign i_dot_prod_add_poly519_q = i_dot_prod_add_poly519_o[16:0];

    // bgTrunc_i_dot_prod_add_poly519_sel_x(BITSELECT,135)@10
    assign bgTrunc_i_dot_prod_add_poly519_sel_x_b = i_dot_prod_add_poly519_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,263)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_dot_prod_add_poly519_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add52_poly523(ADD,74)@13
    assign i_dot_prod_add52_poly523_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod51_poly50_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add52_poly523_b = {1'b0, c_i16_28672112_q};
    assign i_dot_prod_add52_poly523_o = $unsigned(i_dot_prod_add52_poly523_a) + $unsigned(i_dot_prod_add52_poly523_b);
    assign i_dot_prod_add52_poly523_q = i_dot_prod_add52_poly523_o[16:0];

    // bgTrunc_i_dot_prod_add52_poly523_sel_x(BITSELECT,132)@13
    assign bgTrunc_i_dot_prod_add52_poly523_sel_x_b = i_dot_prod_add52_poly523_q[15:0];

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_notEnable(LOGICAL,486)
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_nor(LOGICAL,487)
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_nor_q = ~ (redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_notEnable_q | redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_sticky_ena_q);

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_last(CONSTANT,483)
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_last_q = $unsigned(2'b01);

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmp(LOGICAL,484)
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmp_q = $unsigned(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_last_q == redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmpReg(REG,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmpReg_q <= $unsigned(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmp_q);
        end
    end

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_sticky_ena(REG,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_nor_q == 1'b1)
        begin
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_sticky_ena_q <= $unsigned(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_cmpReg_q);
        end
    end

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_enaAnd(LOGICAL,489)
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_enaAnd_q = redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_sticky_ena_q & VCC_q;

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt(COUNTER,481)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i <= 2'd0;
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i == 2'd1)
            begin
                redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_eq <= 1'b0;
            end
            if (redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_eq == 1'b1)
            begin
                redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i <= $unsigned(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i <= $unsigned(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_q = redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_i[1:0];

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_wraddr(REG,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_wraddr_q <= $unsigned(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_q);
        end
    end

    // redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem(DUALMEM,480)
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_ia = $unsigned(i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata);
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_aa = redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_wraddr_q;
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_ab = redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_rdcnt_q;
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_reset0 = ~ (resetn);
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
    ) redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_dmem (
        .clocken1(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_reset0),
        .clock1(clock),
        .address_a(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_aa),
        .data_a(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_ab),
        .q_b(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_iq),
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
    assign redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_q = redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_iq[15:0];

    // c_i16_3456122(CONSTANT,22)
    assign c_i16_3456122_q = $unsigned(16'b0000110110000000);

    // c_i16_207119(CONSTANT,19)
    assign c_i16_207119_q = $unsigned(16'b1111111100110001);

    // i_sub66_poly546(ADD,116)@10
    assign i_sub66_poly546_a = {1'b0, redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q};
    assign i_sub66_poly546_b = {1'b0, c_i16_207119_q};
    assign i_sub66_poly546_o = $unsigned(i_sub66_poly546_a) + $unsigned(i_sub66_poly546_b);
    assign i_sub66_poly546_q = i_sub66_poly546_o[16:0];

    // bgTrunc_i_sub66_poly546_sel_x(BITSELECT,141)@10
    assign bgTrunc_i_sub66_poly546_sel_x_b = i_sub66_poly546_q[15:0];

    // c_i16_144121(CONSTANT,18)
    assign c_i16_144121_q = $unsigned(16'b0000000010010000);

    // i_neg_poly548(SUB,111)@9
    assign i_neg_poly548_a = {1'b0, c_i16_067_q};
    assign i_neg_poly548_b = {1'b0, i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata};
    assign i_neg_poly548_o = $unsigned(i_neg_poly548_a) - $unsigned(i_neg_poly548_b);
    assign i_neg_poly548_q = i_neg_poly548_o[16:0];

    // bgTrunc_i_neg_poly548_sel_x(BITSELECT,139)@9
    assign bgTrunc_i_neg_poly548_sel_x_b = $unsigned(i_neg_poly548_q[15:0]);

    // i_mul75_poly547_vt_select_15(BITSELECT,109)@9
    assign i_mul75_poly547_vt_select_15_b = leftShiftStage0_uid395_i_mul75_poly50_shift_x_q[15:1];

    // i_mul75_poly547_vt_join(BITJOIN,108)@9
    assign i_mul75_poly547_vt_join_q = {i_mul75_poly547_vt_select_15_b, GND_q};

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0(ADD,248)@9 + 1
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_a = {1'b0, i_mul75_poly547_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_b = {1'b0, bgTrunc_i_neg_poly548_sel_x_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_o <= 17'b0;
        end
        else
        begin
            i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_o <= $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_b);
        end
    end
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_o[16:0];

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0(ADD,249)@10
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_a = i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_0_0_q[15:0];
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_b = c_i16_144121_q;
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_o[15:0];

    // c_i16_067(CONSTANT,16)
    assign c_i16_067_q = $unsigned(16'b0000000000000000);

    // i_add_red67_neg_poly555(SUB,55)@10
    assign i_add_red67_neg_poly555_a = {1'b0, c_i16_067_q};
    assign i_add_red67_neg_poly555_b = {1'b0, i_llvm_experimental_vector_reduce_add_v3i16_add_red67_poly554_vunroll_re_add_1_0_q};
    assign i_add_red67_neg_poly555_o = $unsigned(i_add_red67_neg_poly555_a) - $unsigned(i_add_red67_neg_poly555_b);
    assign i_add_red67_neg_poly555_q = i_add_red67_neg_poly555_o[16:0];

    // bgTrunc_i_add_red67_neg_poly555_sel_x(BITSELECT,131)@10
    assign bgTrunc_i_add_red67_neg_poly555_sel_x_b = $unsigned(i_add_red67_neg_poly555_q[15:0]);

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,267)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_add_red67_neg_poly555_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(bgTrunc_i_sub66_poly546_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(redist27_i_llvm_fpga_mem_unnamed_poly57_poly511_out_o_readdata_3_q);
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
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // i_dot_prod_add73_poly563(ADD,76)@13
    assign i_dot_prod_add73_poly563_a = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod72_poly50_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add73_poly563_b = {1'b0, c_i16_3456122_q};
    assign i_dot_prod_add73_poly563_o = $unsigned(i_dot_prod_add73_poly563_a) + $unsigned(i_dot_prod_add73_poly563_b);
    assign i_dot_prod_add73_poly563_q = i_dot_prod_add73_poly563_o[16:0];

    // bgTrunc_i_dot_prod_add73_poly563_sel_x(BITSELECT,134)@13
    assign bgTrunc_i_dot_prod_add73_poly563_sel_x_b = i_dot_prod_add73_poly563_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,268)@13 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_dot_prod_add73_poly563_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(bgTrunc_i_dot_prod_add52_poly523_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_castb1_x_b);
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
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_notEnable(LOGICAL,476)
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_nor(LOGICAL,477)
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_nor_q = ~ (redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_notEnable_q | redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_sticky_ena_q);

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_cmpReg(REG,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_sticky_ena(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_nor_q == 1'b1)
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_sticky_ena_q <= $unsigned(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_cmpReg_q);
        end
    end

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_enaAnd(LOGICAL,479)
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_enaAnd_q = redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_sticky_ena_q & VCC_q;

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt(COUNTER,473)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_i <= $unsigned(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_q = redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_i[0:0];

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_wraddr(REG,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_wraddr_q <= $unsigned(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_q);
        end
    end

    // redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem(DUALMEM,472)
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_ia = $unsigned(i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata);
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_aa = redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_wraddr_q;
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_ab = redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_rdcnt_q;
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_reset0 = ~ (resetn);
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
    ) redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_dmem (
        .clocken1(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_aa),
        .data_a(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_ab),
        .q_b(redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_iq),
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
    assign redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_q = redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_iq[15:0];

    // i_reass_mul_poly571_cma(CHAINMULTADD,438)@13 + 3
    assign i_reass_mul_poly571_cma_reset = ~ (resetn);
    assign i_reass_mul_poly571_cma_ena0 = 1'b1;
    assign i_reass_mul_poly571_cma_ena1 = i_reass_mul_poly571_cma_ena0;
    assign i_reass_mul_poly571_cma_ena2 = i_reass_mul_poly571_cma_ena0;

    assign i_reass_mul_poly571_cma_a0 = redist28_i_llvm_fpga_mem_unnamed_poly510_poly545_out_o_readdata_4_mem_q;
    assign i_reass_mul_poly571_cma_c0 = redist25_i_llvm_fpga_mem_unnamed_poly59_poly525_out_o_readdata_3_mem_q;
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
    ) i_reass_mul_poly571_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reass_mul_poly571_cma_ena2, i_reass_mul_poly571_cma_ena1, i_reass_mul_poly571_cma_ena0 }),
        .aclr({ i_reass_mul_poly571_cma_reset, i_reass_mul_poly571_cma_reset }),
        .ay(i_reass_mul_poly571_cma_a0),
        .ax(i_reass_mul_poly571_cma_c0),
        .resulta(i_reass_mul_poly571_cma_s0),
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
    i_reass_mul_poly571_cma_delay ( .xin(i_reass_mul_poly571_cma_s0), .xout(i_reass_mul_poly571_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reass_mul_poly571_cma_q = $unsigned(i_reass_mul_poly571_cma_qq[31:0]);

    // bgTrunc_i_reass_mul_poly571_sel_x(BITSELECT,140)@16
    assign bgTrunc_i_reass_mul_poly571_sel_x_b = i_reass_mul_poly571_cma_q[15:0];

    // i_mul88_poly572_cma(CHAINMULTADD,437)@16 + 3
    assign i_mul88_poly572_cma_reset = ~ (resetn);
    assign i_mul88_poly572_cma_ena0 = 1'b1;
    assign i_mul88_poly572_cma_ena1 = i_mul88_poly572_cma_ena0;
    assign i_mul88_poly572_cma_ena2 = i_mul88_poly572_cma_ena0;

    assign i_mul88_poly572_cma_a0 = bgTrunc_i_reass_mul_poly571_sel_x_b;
    assign i_mul88_poly572_cma_c0 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod78_poly50_dspb_native_dot_product_vunroll_x_cma0_q[15:0];
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
    ) i_mul88_poly572_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul88_poly572_cma_ena2, i_mul88_poly572_cma_ena1, i_mul88_poly572_cma_ena0 }),
        .aclr({ i_mul88_poly572_cma_reset, i_mul88_poly572_cma_reset }),
        .ay(i_mul88_poly572_cma_a0),
        .ax(i_mul88_poly572_cma_c0),
        .resulta(i_mul88_poly572_cma_s0),
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
    i_mul88_poly572_cma_delay ( .xin(i_mul88_poly572_cma_s0), .xout(i_mul88_poly572_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul88_poly572_cma_q = $unsigned(i_mul88_poly572_cma_qq[31:0]);

    // bgTrunc_i_mul88_poly572_sel_x(BITSELECT,138)@19
    assign bgTrunc_i_mul88_poly572_sel_x_b = i_mul88_poly572_cma_q[15:0];

    // redist13_sync_together141_aunroll_x_in_i_valid_17(DELAY,454)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together141_aunroll_x_in_i_valid_17 ( .xin(redist12_sync_together141_aunroll_x_in_i_valid_4_q), .xout(redist13_sync_together141_aunroll_x_in_i_valid_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg7(REG,259)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together141_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist19_i_xor_poly54_q_17(DELAY,460)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_i_xor_poly54_q_17 ( .xin(redist18_i_xor_poly54_q_4_q), .xout(redist19_i_xor_poly54_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_notEnable(LOGICAL,496)
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_nor(LOGICAL,497)
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_nor_q = ~ (redist30_i_arrayidx919_poly573_vt_select_63_b_13_notEnable_q | redist30_i_arrayidx919_poly573_vt_select_63_b_13_sticky_ena_q);

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_last(CONSTANT,493)
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_last_q = $unsigned(5'b01010);

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmp(LOGICAL,494)
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmp_b = {1'b0, redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_q};
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmp_q = $unsigned(redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_last_q == redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmp_b ? 1'b1 : 1'b0);

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmpReg(REG,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmpReg_q <= $unsigned(redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmp_q);
        end
    end

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_sticky_ena(REG,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_i_arrayidx919_poly573_vt_select_63_b_13_nor_q == 1'b1)
        begin
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_sticky_ena_q <= $unsigned(redist30_i_arrayidx919_poly573_vt_select_63_b_13_cmpReg_q);
        end
    end

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_enaAnd(LOGICAL,499)
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_enaAnd_q = redist30_i_arrayidx919_poly573_vt_select_63_b_13_sticky_ena_q & VCC_q;

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt(COUNTER,491)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i <= 4'd0;
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i == 4'd10)
            begin
                redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_eq == 1'b1)
            begin
                redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i <= $unsigned(redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i <= $unsigned(redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_q = redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_i[3:0];

    // i_arrayidx919_poly50_mult_x_im0_shift0(BITSHIFT,433)@6
    assign i_arrayidx919_poly50_mult_x_im0_shift0_qint = { redist1_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_b_3_q, 1'b0 };
    assign i_arrayidx919_poly50_mult_x_im0_shift0_q = i_arrayidx919_poly50_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx919_poly50_mult_x_sums_align_3(BITSHIFT,377)@6
    assign i_arrayidx919_poly50_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx919_poly50_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx919_poly50_mult_x_sums_align_3_q = i_arrayidx919_poly50_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx919_poly50_mult_x_im6_shift0(BITSHIFT,435)@6
    assign i_arrayidx919_poly50_mult_x_im6_shift0_qint = { redist5_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_d_3_q, 1'b0 };
    assign i_arrayidx919_poly50_mult_x_im6_shift0_q = i_arrayidx919_poly50_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx919_poly50_mult_x_sums_align_2(BITSHIFT,376)@6
    assign i_arrayidx919_poly50_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx919_poly50_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx919_poly50_mult_x_sums_align_2_q = i_arrayidx919_poly50_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx919_poly50_mult_x_sums_join_4(BITJOIN,378)@6
    assign i_arrayidx919_poly50_mult_x_sums_join_4_q = {i_arrayidx919_poly50_mult_x_sums_align_3_q, i_arrayidx919_poly50_mult_x_sums_align_2_q};

    // i_arrayidx919_poly50_mult_x_im3_shift0(BITSHIFT,434)@6
    assign i_arrayidx919_poly50_mult_x_im3_shift0_qint = { redist3_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_c_3_q, 1'b0 };
    assign i_arrayidx919_poly50_mult_x_im3_shift0_q = i_arrayidx919_poly50_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx919_poly50_mult_x_sums_align_0(BITSHIFT,374)@6
    assign i_arrayidx919_poly50_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx919_poly50_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx919_poly50_mult_x_sums_align_0_q = i_arrayidx919_poly50_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx919_poly50_mult_x_im9_shift0(BITSHIFT,436)@6
    assign i_arrayidx919_poly50_mult_x_im9_shift0_qint = { redist7_i_arrayidx195_poly50_mult_x_bs1_merged_bit_select_e_3_q, 1'b0 };
    assign i_arrayidx919_poly50_mult_x_im9_shift0_q = i_arrayidx919_poly50_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx919_poly50_mult_x_sums_join_1(BITJOIN,375)@6
    assign i_arrayidx919_poly50_mult_x_sums_join_1_q = {i_arrayidx919_poly50_mult_x_sums_align_0_q, {1'b0, i_arrayidx919_poly50_mult_x_im9_shift0_q}};

    // i_arrayidx919_poly50_mult_x_sums_result_add_0_0(ADD,379)@6
    assign i_arrayidx919_poly50_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx919_poly50_mult_x_sums_join_1_q};
    assign i_arrayidx919_poly50_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx919_poly50_mult_x_sums_join_4_q};
    assign i_arrayidx919_poly50_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx919_poly50_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx919_poly50_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx919_poly50_mult_x_sums_result_add_0_0_q = i_arrayidx919_poly50_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx919_poly50_mult_extender_x(BITJOIN,199)@6
    assign i_arrayidx919_poly50_mult_extender_x_q = {i_arrayidx195_poly50_mult_multconst_x_q, i_arrayidx919_poly50_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx919_poly50_trunc_sel_x(BITSELECT,201)@6
    assign i_arrayidx919_poly50_trunc_sel_x_b = i_arrayidx919_poly50_mult_extender_x_q[63:0];

    // c_poly5_out_pmem(CONSTANT,52)
    assign c_poly5_out_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx919_poly50_add_x(ADD,193)@6
    assign i_arrayidx919_poly50_add_x_a = {1'b0, c_poly5_out_pmem_q};
    assign i_arrayidx919_poly50_add_x_b = {1'b0, i_arrayidx919_poly50_trunc_sel_x_b};
    assign i_arrayidx919_poly50_add_x_o = $unsigned(i_arrayidx919_poly50_add_x_a) + $unsigned(i_arrayidx919_poly50_add_x_b);
    assign i_arrayidx919_poly50_add_x_q = i_arrayidx919_poly50_add_x_o[64:0];

    // i_arrayidx919_poly50_dupName_0_trunc_sel_x(BITSELECT,202)@6
    assign i_arrayidx919_poly50_dupName_0_trunc_sel_x_b = i_arrayidx919_poly50_add_x_q[63:0];

    // i_arrayidx919_poly573_vt_select_63(BITSELECT,70)@6
    assign i_arrayidx919_poly573_vt_select_63_b = i_arrayidx919_poly50_dupName_0_trunc_sel_x_b[63:1];

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_wraddr(REG,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist30_i_arrayidx919_poly573_vt_select_63_b_13_wraddr_q <= $unsigned(redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_q);
        end
    end

    // redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem(DUALMEM,490)
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_ia = $unsigned(i_arrayidx919_poly573_vt_select_63_b);
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_aa = redist30_i_arrayidx919_poly573_vt_select_63_b_13_wraddr_q;
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_ab = redist30_i_arrayidx919_poly573_vt_select_63_b_13_rdcnt_q;
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(63),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(63),
        .widthad_b(4),
        .numwords_b(12),
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
    ) redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_dmem (
        .clocken1(redist30_i_arrayidx919_poly573_vt_select_63_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_aa),
        .data_a(redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_ab),
        .q_b(redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_iq),
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
    assign redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_q = redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_iq[62:0];

    // i_arrayidx919_poly573_vt_join(BITJOIN,69)@19
    assign i_arrayidx919_poly573_vt_join_q = {redist30_i_arrayidx919_poly573_vt_select_63_b_13_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_4_poly574(BLACKBOX,90)@19
    // out out_memdep_4_poly5_avm_address@20000000
    // out out_memdep_4_poly5_avm_burstcount@20000000
    // out out_memdep_4_poly5_avm_byteenable@20000000
    // out out_memdep_4_poly5_avm_enable@20000000
    // out out_memdep_4_poly5_avm_read@20000000
    // out out_memdep_4_poly5_avm_write@20000000
    // out out_memdep_4_poly5_avm_writedata@20000000
    // out out_o_stall@20
    // out out_o_valid@20
    // out out_o_writeack@20
    poly5_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_poly574 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx919_poly573_vt_join_q),
        .in_i_predicate(redist19_i_xor_poly54_q_17_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(bgTrunc_i_mul88_poly572_sel_x_b),
        .in_memdep_4_poly5_avm_readdata(in_memdep_4_poly5_avm_readdata),
        .in_memdep_4_poly5_avm_readdatavalid(in_memdep_4_poly5_avm_readdatavalid),
        .in_memdep_4_poly5_avm_waitrequest(in_memdep_4_poly5_avm_waitrequest),
        .in_memdep_4_poly5_avm_writeack(in_memdep_4_poly5_avm_writeack),
        .out_memdep_4_poly5_avm_address(i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_address),
        .out_memdep_4_poly5_avm_burstcount(i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_burstcount),
        .out_memdep_4_poly5_avm_byteenable(i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_byteenable),
        .out_memdep_4_poly5_avm_enable(i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_enable),
        .out_memdep_4_poly5_avm_read(i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_read),
        .out_memdep_4_poly5_avm_write(i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_write),
        .out_memdep_4_poly5_avm_writedata(i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_ext_sig_sync_out_x(GPOUT,152)
    assign out_memdep_4_poly5_avm_address = i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_address;
    assign out_memdep_4_poly5_avm_enable = i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_enable;
    assign out_memdep_4_poly5_avm_read = i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_read;
    assign out_memdep_4_poly5_avm_write = i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_write;
    assign out_memdep_4_poly5_avm_writedata = i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_writedata;
    assign out_memdep_4_poly5_avm_byteenable = i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_byteenable;
    assign out_memdep_4_poly5_avm_burstcount = i_llvm_fpga_mem_memdep_4_poly574_out_memdep_4_poly5_avm_burstcount;

    // redist14_sync_together141_aunroll_x_in_i_valid_18(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together141_aunroll_x_in_i_valid_18_q <= '0;
        end
        else
        begin
            redist14_sync_together141_aunroll_x_in_i_valid_18_q <= $unsigned(redist13_sync_together141_aunroll_x_in_i_valid_17_q);
        end
    end

    // valid_fanout_reg0(REG,252)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together141_aunroll_x_in_i_valid_18_q);
        end
    end

    // valid_fanout_reg9(REG,261)@1 + 1
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

    // valid_fanout_reg10(REG,262)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1847_push18_poly589(BLACKBOX,102)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    poly5_i_llvm_fpga_push_i1_notcmp1847_push18_0 thei_llvm_fpga_push_i1_notcmp1847_push18_poly589 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_feedback_stall_out_18),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp1847_push18_poly589_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp1847_push18_poly589_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together141_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together141_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together141_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588(BLACKBOX,97)@2
    // out out_feedback_stall_out_18@20000000
    poly5_i_llvm_fpga_pop_i1_notcmp1847_pop18_0 thei_llvm_fpga_pop_i1_notcmp1847_pop18_poly588 (
        .in_data_in(redist9_sync_together141_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist8_sync_together141_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp1847_push18_poly589_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp1847_push18_poly589_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out_18(DELAY,463)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out_18 ( .xin(i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out), .xout(redist22_i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_poly587(LOGICAL,106)@2 + 1
    assign i_masked_poly587_qi = i_notcmp_poly580_q & i_first_cleanup_poly53_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_poly587_delay ( .xin(i_masked_poly587_qi), .xout(i_masked_poly587_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_masked_poly587_q_18(DELAY,462)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_masked_poly587_q_18 ( .xin(i_masked_poly587_q), .xout(redist21_i_masked_poly587_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_19(DELAY,465)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_19 ( .xin(redist23_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_1_q), .xout(redist24_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,242)@20
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist24_i_llvm_fpga_pipeline_keep_going_poly56_out_data_out_19_q;
    assign out_c0_exi3_2_tpl = redist21_i_masked_poly587_q_18_q;
    assign out_c0_exi3_3_tpl = redist22_i_llvm_fpga_pop_i1_notcmp1847_pop18_poly588_out_data_out_18_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_poly51 = GND_q;

endmodule
