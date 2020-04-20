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

// SystemVerilog created from poly8_i_sfc_logic_s_c0_in_for_body17_s_c0_enter825_poly80
// SystemVerilog created on Sun Apr 19 22:15:31 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly8_i_sfc_logic_s_c0_in_for_body17_s_c0_enter825_poly80 (
    input wire [15:0] in_unnamed_poly87_poly8_avm_readdata,
    input wire [0:0] in_unnamed_poly87_poly8_avm_writeack,
    input wire [0:0] in_unnamed_poly87_poly8_avm_waitrequest,
    input wire [0:0] in_unnamed_poly87_poly8_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_unnamed_poly88_poly8_avm_readdata,
    input wire [0:0] in_unnamed_poly88_poly8_avm_writeack,
    input wire [0:0] in_unnamed_poly88_poly8_avm_waitrequest,
    input wire [0:0] in_unnamed_poly88_poly8_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly87_poly8_avm_address,
    output wire [0:0] out_unnamed_poly87_poly8_avm_enable,
    output wire [0:0] out_unnamed_poly87_poly8_avm_read,
    output wire [0:0] out_unnamed_poly87_poly8_avm_write,
    output wire [15:0] out_unnamed_poly87_poly8_avm_writedata,
    output wire [1:0] out_unnamed_poly87_poly8_avm_byteenable,
    output wire [0:0] out_unnamed_poly87_poly8_avm_burstcount,
    input wire [15:0] in_unnamed_poly89_poly8_avm_readdata,
    input wire [0:0] in_unnamed_poly89_poly8_avm_writeack,
    input wire [0:0] in_unnamed_poly89_poly8_avm_waitrequest,
    input wire [0:0] in_unnamed_poly89_poly8_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly88_poly8_avm_address,
    output wire [0:0] out_unnamed_poly88_poly8_avm_enable,
    output wire [0:0] out_unnamed_poly88_poly8_avm_read,
    output wire [0:0] out_unnamed_poly88_poly8_avm_write,
    output wire [15:0] out_unnamed_poly88_poly8_avm_writedata,
    output wire [1:0] out_unnamed_poly88_poly8_avm_byteenable,
    output wire [0:0] out_unnamed_poly88_poly8_avm_burstcount,
    input wire [15:0] in_memdep_4_poly8_avm_readdata,
    input wire [0:0] in_memdep_4_poly8_avm_writeack,
    input wire [0:0] in_memdep_4_poly8_avm_waitrequest,
    input wire [0:0] in_memdep_4_poly8_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly89_poly8_avm_address,
    output wire [0:0] out_unnamed_poly89_poly8_avm_enable,
    output wire [0:0] out_unnamed_poly89_poly8_avm_read,
    output wire [0:0] out_unnamed_poly89_poly8_avm_write,
    output wire [15:0] out_unnamed_poly89_poly8_avm_writedata,
    output wire [1:0] out_unnamed_poly89_poly8_avm_byteenable,
    output wire [0:0] out_unnamed_poly89_poly8_avm_burstcount,
    output wire [31:0] out_memdep_4_poly8_avm_address,
    output wire [0:0] out_memdep_4_poly8_avm_enable,
    output wire [0:0] out_memdep_4_poly8_avm_read,
    output wire [0:0] out_memdep_4_poly8_avm_write,
    output wire [15:0] out_memdep_4_poly8_avm_writedata,
    output wire [1:0] out_memdep_4_poly8_avm_byteenable,
    output wire [0:0] out_memdep_4_poly8_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_poly81,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102287_q;
    wire [10:0] c_i11_189_q;
    wire [15:0] c_i16_1382481_q;
    wire [15:0] c_i16_358485_q;
    wire [15:0] c_i16_43280_q;
    wire [15:0] c_i16_477684_q;
    wire [1:0] c_i2_176_q;
    wire [31:0] c_i32_078_q;
    wire [31:0] c_i32_186_q;
    wire [63:0] c_poly8_a_pmem_q;
    wire [63:0] c_poly8_b_pmem_q;
    wire [63:0] c_poly8_c_pmem_q;
    wire [63:0] c_poly8_out_pmem_q;
    wire [63:0] i_arrayidx195_poly810_vt_join_q;
    wire [62:0] i_arrayidx195_poly810_vt_select_63_b;
    wire [63:0] i_arrayidx226_poly812_vt_join_q;
    wire [62:0] i_arrayidx226_poly812_vt_select_63_b;
    wire [63:0] i_arrayidx257_poly814_vt_join_q;
    wire [62:0] i_arrayidx257_poly814_vt_select_63_b;
    wire [63:0] i_arrayidx598_poly843_vt_join_q;
    wire [62:0] i_arrayidx598_poly843_vt_select_63_b;
    wire [1:0] i_cleanups_shl_poly85_vt_join_q;
    wire [0:0] i_cleanups_shl_poly85_vt_select_1_b;
    wire [16:0] i_dot_prod_add53_poly831_a;
    wire [16:0] i_dot_prod_add53_poly831_b;
    logic [16:0] i_dot_prod_add53_poly831_o;
    wire [16:0] i_dot_prod_add53_poly831_q;
    wire [16:0] i_dot_prod_add62_poly842_a;
    wire [16:0] i_dot_prod_add62_poly842_b;
    logic [16:0] i_dot_prod_add62_poly842_o;
    wire [16:0] i_dot_prod_add62_poly842_q;
    wire [16:0] i_dot_prod_add_poly818_a;
    wire [16:0] i_dot_prod_add_poly818_b;
    logic [16:0] i_dot_prod_add_poly818_o;
    wire [16:0] i_dot_prod_add_poly818_q;
    wire [11:0] i_fpga_indvars_iv_next6_poly855_a;
    wire [11:0] i_fpga_indvars_iv_next6_poly855_b;
    logic [11:0] i_fpga_indvars_iv_next6_poly855_o;
    wire [11:0] i_fpga_indvars_iv_next6_poly855_q;
    wire [63:0] i_idxprom18_poly89_vt_join_q;
    wire [31:0] i_idxprom18_poly89_vt_select_31_b;
    wire [32:0] i_inc61_poly845_a;
    wire [32:0] i_inc61_poly845_b;
    logic [32:0] i_inc61_poly845_o;
    wire [32:0] i_inc61_poly845_q;
    wire [31:0] i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly86_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly86_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly86_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly86_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly86_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly86_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k13_025_pop16_poly88_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k13_025_pop16_poly88_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_poly87_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_poly87_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1746_push18_poly859_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1746_push18_poly859_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_poly851_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_poly851_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_poly854_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_poly854_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k13_025_push16_poly846_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k13_025_push16_poly846_out_feedback_valid_out_16;
    wire [0:0] i_masked_poly857_qi;
    reg [0:0] i_masked_poly857_q;
    wire [0:0] i_next_cleanups_poly853_s;
    reg [1:0] i_next_cleanups_poly853_q;
    wire [0:0] i_notcmp_poly850_q;
    wire [0:0] i_or_poly852_q;
    wire [15:0] i_unnamed_poly820_vt_join_q;
    wire [14:0] i_unnamed_poly820_vt_select_15_b;
    wire [1:0] i_unnamed_poly821_vt_const_1_q;
    wire [15:0] i_unnamed_poly821_vt_join_q;
    wire [13:0] i_unnamed_poly821_vt_select_15_b;
    wire [0:0] i_xor_poly84_q;
    wire [15:0] bgTrunc_i_dot_prod_add53_poly831_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add62_poly842_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add_poly818_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next6_poly855_sel_x_b;
    wire [31:0] bgTrunc_i_inc61_poly845_sel_x_b;
    wire [15:0] bgTrunc_i_mul34_poly819_sel_x_b;
    wire [64:0] i_arrayidx195_poly80_add_x_a;
    wire [64:0] i_arrayidx195_poly80_add_x_b;
    logic [64:0] i_arrayidx195_poly80_add_x_o;
    wire [64:0] i_arrayidx195_poly80_add_x_q;
    wire [127:0] i_arrayidx195_poly80_mult_extender_x_q;
    wire [61:0] i_arrayidx195_poly80_mult_multconst_x_q;
    wire [63:0] i_arrayidx195_poly80_trunc_sel_x_b;
    wire [63:0] i_arrayidx195_poly80_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx226_poly80_add_x_a;
    wire [64:0] i_arrayidx226_poly80_add_x_b;
    logic [64:0] i_arrayidx226_poly80_add_x_o;
    wire [64:0] i_arrayidx226_poly80_add_x_q;
    wire [127:0] i_arrayidx226_poly80_mult_extender_x_q;
    wire [63:0] i_arrayidx226_poly80_trunc_sel_x_b;
    wire [63:0] i_arrayidx226_poly80_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx257_poly80_add_x_a;
    wire [64:0] i_arrayidx257_poly80_add_x_b;
    logic [64:0] i_arrayidx257_poly80_add_x_o;
    wire [64:0] i_arrayidx257_poly80_add_x_q;
    wire [127:0] i_arrayidx257_poly80_mult_extender_x_q;
    wire [63:0] i_arrayidx257_poly80_trunc_sel_x_b;
    wire [63:0] i_arrayidx257_poly80_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx598_poly80_add_x_a;
    wire [64:0] i_arrayidx598_poly80_add_x_b;
    logic [64:0] i_arrayidx598_poly80_add_x_o;
    wire [64:0] i_arrayidx598_poly80_add_x_q;
    wire [127:0] i_arrayidx598_poly80_mult_extender_x_q;
    wire [63:0] i_arrayidx598_poly80_trunc_sel_x_b;
    wire [63:0] i_arrayidx598_poly80_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_poly83_sel_x_b;
    wire [63:0] i_idxprom18_poly89_sel_x_b;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_casta0_x_in;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_casta0_x_b;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_q;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_a;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_b;
    logic [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_o;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_q;
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
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire [0:0] i_exitcond7_poly848_cmp_nsign_q;
    wire [35:0] i_arrayidx195_poly80_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx195_poly80_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx195_poly80_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx195_poly80_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx195_poly80_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx195_poly80_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx195_poly80_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx195_poly80_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx195_poly80_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx195_poly80_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx195_poly80_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx195_poly80_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx226_poly80_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx226_poly80_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx226_poly80_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx226_poly80_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx226_poly80_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx226_poly80_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx226_poly80_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx226_poly80_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx226_poly80_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx226_poly80_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx226_poly80_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx226_poly80_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx257_poly80_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx257_poly80_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx257_poly80_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx257_poly80_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx257_poly80_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx257_poly80_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx257_poly80_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx257_poly80_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx257_poly80_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx257_poly80_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx257_poly80_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx257_poly80_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx598_poly80_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx598_poly80_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx598_poly80_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx598_poly80_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx598_poly80_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx598_poly80_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx598_poly80_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx598_poly80_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx598_poly80_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx598_poly80_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx598_poly80_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx598_poly80_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid289_i_cleanups_shl_poly80_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid289_i_cleanups_shl_poly80_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid290_i_cleanups_shl_poly80_shift_x_q;
    wire [0:0] leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_s;
    reg [1:0] leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_q;
    wire [14:0] leftShiftStage0Idx1Rng1_uid297_i_unnamed_poly80_shift_x_in;
    wire [14:0] leftShiftStage0Idx1Rng1_uid297_i_unnamed_poly80_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid298_i_unnamed_poly80_shift_x_q;
    wire [0:0] leftShiftStage0_uid300_i_unnamed_poly80_shift_x_s;
    reg [15:0] leftShiftStage0_uid300_i_unnamed_poly80_shift_x_q;
    wire [13:0] leftShiftStage0Idx1Rng2_uid305_dupName_0_i_unnamed_poly80_shift_x_in;
    wire [13:0] leftShiftStage0Idx1Rng2_uid305_dupName_0_i_unnamed_poly80_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid306_dupName_0_i_unnamed_poly80_shift_x_q;
    wire [0:0] leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_s;
    reg [15:0] leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_q;
    wire [10:0] i_arrayidx195_poly80_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx195_poly80_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx195_poly80_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx195_poly80_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx195_poly80_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx195_poly80_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx195_poly80_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx195_poly80_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx226_poly80_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx226_poly80_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx226_poly80_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx226_poly80_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx226_poly80_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx226_poly80_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx226_poly80_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx226_poly80_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx257_poly80_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx257_poly80_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx257_poly80_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx257_poly80_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx257_poly80_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx257_poly80_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx257_poly80_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx257_poly80_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx598_poly80_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx598_poly80_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx598_poly80_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx598_poly80_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx598_poly80_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx598_poly80_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx598_poly80_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx598_poly80_mult_x_im9_shift0_qint;
    wire i_mul34_poly819_cma_reset;
    wire [15:0] i_mul34_poly819_cma_a0;
    wire [15:0] i_mul34_poly819_cma_c0;
    wire [31:0] i_mul34_poly819_cma_s0;
    wire [31:0] i_mul34_poly819_cma_qq;
    wire [31:0] i_mul34_poly819_cma_q;
    wire i_mul34_poly819_cma_ena0;
    wire i_mul34_poly819_cma_ena1;
    wire i_mul34_poly819_cma_ena2;
    wire [9:0] i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist2_sync_together104_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist3_sync_together104_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_together104_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist5_i_xor_poly84_q_1_q;
    reg [0:0] redist6_i_xor_poly84_q_14_q;
    reg [0:0] redist7_i_masked_poly857_q_15_q;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_15_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_2_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_16_q;
    reg [15:0] redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_q;
    reg [15:0] redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_delay_0;
    reg [15:0] redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_q;
    reg [15:0] redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_delay_0;
    reg [31:0] redist16_i_idxprom18_poly89_vt_select_31_b_1_q;
    reg [15:0] redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_inputreg0_q;
    reg [15:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_inputreg0_q;
    wire redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_reset0;
    wire [15:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_ia;
    wire [1:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_aa;
    wire [1:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_ab;
    wire [15:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_iq;
    wire [15:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_q;
    wire [1:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_q;
    (* preserve *) reg [1:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_i;
    reg [1:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_wraddr_q;
    wire [2:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_last_q;
    wire [2:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmp_b;
    wire [0:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmp_q;
    (* dont_merge *) reg [0:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmpReg_q;
    wire [0:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_notEnable_q;
    wire [0:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_nor_q;
    (* dont_merge *) reg [0:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_sticky_ena_q;
    wire [0:0] redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_enaAnd_q;
    reg [15:0] redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_outputreg0_q;
    reg [62:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_inputreg0_q;
    wire redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_reset0;
    wire [62:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_ia;
    wire [3:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_aa;
    wire [3:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_ab;
    wire [62:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_iq;
    wire [62:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_q;
    wire [3:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i;
    (* preserve *) reg redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_eq;
    reg [3:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_wraddr_q;
    wire [4:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_last_q;
    wire [4:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmp_b;
    wire [0:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmpReg_q;
    wire [0:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_notEnable_q;
    wire [0:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_sticky_ena_q;
    wire [0:0] redist17_i_arrayidx598_poly843_vt_select_63_b_13_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together104_aunroll_x_in_i_valid_1(DELAY,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together104_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together104_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1(DELAY,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_poly86_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid289_i_cleanups_shl_poly80_shift_x(BITSELECT,288)@2
    assign leftShiftStage0Idx1Rng1_uid289_i_cleanups_shl_poly80_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid289_i_cleanups_shl_poly80_shift_x_b = leftShiftStage0Idx1Rng1_uid289_i_cleanups_shl_poly80_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid290_i_cleanups_shl_poly80_shift_x(BITJOIN,289)@2
    assign leftShiftStage0Idx1_uid290_i_cleanups_shl_poly80_shift_x_q = {leftShiftStage0Idx1Rng1_uid289_i_cleanups_shl_poly80_shift_x_b, GND_q};

    // leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x(MUX,291)@2
    assign leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out or leftShiftStage0Idx1_uid290_i_cleanups_shl_poly80_shift_x_q)
    begin
        unique case (leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_s)
            1'b0 : leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out;
            1'b1 : leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_q = leftShiftStage0Idx1_uid290_i_cleanups_shl_poly80_shift_x_q;
            default : leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_poly85_vt_select_1(BITSELECT,55)@2
    assign i_cleanups_shl_poly85_vt_select_1_b = leftShiftStage0_uid292_i_cleanups_shl_poly80_shift_x_q[1:1];

    // i_cleanups_shl_poly85_vt_join(BITJOIN,54)@2
    assign i_cleanups_shl_poly85_vt_join_q = {i_cleanups_shl_poly85_vt_select_1_b, GND_q};

    // i_xor_poly84(LOGICAL,94)@2
    assign i_xor_poly84_q = i_first_cleanup_poly83_sel_x_b ^ VCC_q;

    // i_notcmp_poly850(LOGICAL,86)@2
    assign i_notcmp_poly850_q = i_exitcond7_poly848_cmp_nsign_q ^ VCC_q;

    // i_or_poly852(LOGICAL,87)@2
    assign i_or_poly852_q = i_notcmp_poly850_q | i_xor_poly84_q;

    // i_next_cleanups_poly853(MUX,85)@2
    assign i_next_cleanups_poly853_s = i_or_poly852_q;
    always @(i_next_cleanups_poly853_s or i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out or i_cleanups_shl_poly85_vt_join_q)
    begin
        unique case (i_next_cleanups_poly853_s)
            1'b0 : i_next_cleanups_poly853_q = i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out;
            1'b1 : i_next_cleanups_poly853_q = i_cleanups_shl_poly85_vt_join_q;
            default : i_next_cleanups_poly853_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_poly854(BLACKBOX,81)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    poly8_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_poly854 (
        .in_data_in(i_next_cleanups_poly853_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_feedback_stall_out_17),
        .in_keep_going(redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together104_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_poly854_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_poly854_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_176(CONSTANT,32)
    assign c_i2_176_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_poly82(BLACKBOX,75)@2
    // out out_feedback_stall_out_17@20000000
    poly8_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_poly82 (
        .in_data_in(c_i2_176_q),
        .in_dir(redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_poly854_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_poly854_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together104_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_poly83_sel_x(BITSELECT,158)@2
    assign i_first_cleanup_poly83_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_poly82_out_data_out[0:0];

    // c_i11_189(CONSTANT,9)
    assign c_i11_189_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next6_poly855(ADD,61)@2
    assign i_fpga_indvars_iv_next6_poly855_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847_out_data_out};
    assign i_fpga_indvars_iv_next6_poly855_b = {1'b0, c_i11_189_q};
    assign i_fpga_indvars_iv_next6_poly855_o = $unsigned(i_fpga_indvars_iv_next6_poly855_a) + $unsigned(i_fpga_indvars_iv_next6_poly855_b);
    assign i_fpga_indvars_iv_next6_poly855_q = i_fpga_indvars_iv_next6_poly855_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next6_poly855_sel_x(BITSELECT,103)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_poly855_sel_x_b = i_fpga_indvars_iv_next6_poly855_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856(BLACKBOX,77)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    poly8_i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_poly855_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847_out_feedback_stall_out_15),
        .in_keep_going(redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together104_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102287(CONSTANT,8)
    assign c_i11_102287_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847(BLACKBOX,73)@2
    // out out_feedback_stall_out_15@20000000
    poly8_i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847 (
        .in_data_in(c_i11_102287_q),
        .in_dir(redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv5_push15_poly856_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together104_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_poly848_cmp_nsign(LOGICAL,212)@2
    assign i_exitcond7_poly848_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv5_pop15_poly847_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_poly851(BLACKBOX,80)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    poly8_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_poly851 (
        .in_data_in(i_exitcond7_poly848_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_poly86_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_poly83_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together104_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_poly851_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_poly851_out_feedback_valid_out_3),
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

    // i_llvm_fpga_push_i1_lastiniteration_poly87(BLACKBOX,78)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    poly8_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_poly87 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_poly86_out_initeration_stall_out),
        .in_keep_going(redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_poly87_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_poly87_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_poly86(BLACKBOX,72)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    poly8_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_poly86 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_poly87_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_poly87_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_poly851_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_poly851_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_poly86_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_poly86_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_poly86_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_poly86_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_poly86_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_poly86_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,40)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_poly86_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_poly86_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,97)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_poly86_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,189)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together104_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_xor_poly84_q_1(DELAY,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_xor_poly84_q_1_q <= '0;
        end
        else
        begin
            redist5_i_xor_poly84_q_1_q <= $unsigned(i_xor_poly84_q);
        end
    end

    // i_arrayidx195_poly80_mult_multconst_x(CONSTANT,121)
    assign i_arrayidx195_poly80_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_078(CONSTANT,33)
    assign c_i32_078_q = $unsigned(32'b00000000000000000000000000000000);

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

    // c_i32_186(CONSTANT,34)
    assign c_i32_186_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc61_poly845(ADD,66)@2
    assign i_inc61_poly845_a = {1'b0, i_llvm_fpga_pop_i32_k13_025_pop16_poly88_out_data_out};
    assign i_inc61_poly845_b = {1'b0, c_i32_186_q};
    assign i_inc61_poly845_o = $unsigned(i_inc61_poly845_a) + $unsigned(i_inc61_poly845_b);
    assign i_inc61_poly845_q = i_inc61_poly845_o[32:0];

    // bgTrunc_i_inc61_poly845_sel_x(BITSELECT,104)@2
    assign bgTrunc_i_inc61_poly845_sel_x_b = i_inc61_poly845_q[31:0];

    // i_llvm_fpga_push_i32_k13_025_push16_poly846(BLACKBOX,82)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    poly8_i_llvm_fpga_push_i32_k13_025_push16_0 thei_llvm_fpga_push_i32_k13_025_push16_poly846 (
        .in_data_in(bgTrunc_i_inc61_poly845_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k13_025_pop16_poly88_out_feedback_stall_out_16),
        .in_keep_going(redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k13_025_push16_poly846_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k13_025_push16_poly846_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k13_025_pop16_poly88(BLACKBOX,76)@2
    // out out_feedback_stall_out_16@20000000
    poly8_i_llvm_fpga_pop_i32_k13_025_pop16_0 thei_llvm_fpga_pop_i32_k13_025_pop16_poly88 (
        .in_data_in(c_i32_078_q),
        .in_dir(redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k13_025_push16_poly846_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k13_025_push16_poly846_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k13_025_pop16_poly88_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k13_025_pop16_poly88_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom18_poly89_sel_x(BITSELECT,159)@2
    assign i_idxprom18_poly89_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k13_025_pop16_poly88_out_data_out[31:0]};

    // i_idxprom18_poly89_vt_select_31(BITSELECT,65)@2
    assign i_idxprom18_poly89_vt_select_31_b = i_idxprom18_poly89_sel_x_b[31:0];

    // redist16_i_idxprom18_poly89_vt_select_31_b_1(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_idxprom18_poly89_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist16_i_idxprom18_poly89_vt_select_31_b_1_q <= $unsigned(i_idxprom18_poly89_vt_select_31_b);
        end
    end

    // i_idxprom18_poly89_vt_join(BITJOIN,64)@3
    assign i_idxprom18_poly89_vt_join_q = {c_i32_078_q, redist16_i_idxprom18_poly89_vt_select_31_b_1_q};

    // i_arrayidx195_poly80_mult_x_bs1_merged_bit_select(BITSELECT,326)@3
    assign i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_b = i_idxprom18_poly89_vt_join_q[63:54];
    assign i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_c = i_idxprom18_poly89_vt_join_q[53:36];
    assign i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_d = i_idxprom18_poly89_vt_join_q[35:18];
    assign i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_e = i_idxprom18_poly89_vt_join_q[17:0];

    // i_arrayidx195_poly80_mult_x_im0_shift0(BITSHIFT,309)@3
    assign i_arrayidx195_poly80_mult_x_im0_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx195_poly80_mult_x_im0_shift0_q = i_arrayidx195_poly80_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx195_poly80_mult_x_sums_align_3(BITSHIFT,228)@3
    assign i_arrayidx195_poly80_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx195_poly80_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_poly80_mult_x_sums_align_3_q = i_arrayidx195_poly80_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx195_poly80_mult_x_im6_shift0(BITSHIFT,311)@3
    assign i_arrayidx195_poly80_mult_x_im6_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx195_poly80_mult_x_im6_shift0_q = i_arrayidx195_poly80_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx195_poly80_mult_x_sums_align_2(BITSHIFT,227)@3
    assign i_arrayidx195_poly80_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx195_poly80_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx195_poly80_mult_x_sums_align_2_q = i_arrayidx195_poly80_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx195_poly80_mult_x_sums_join_4(BITJOIN,229)@3
    assign i_arrayidx195_poly80_mult_x_sums_join_4_q = {i_arrayidx195_poly80_mult_x_sums_align_3_q, i_arrayidx195_poly80_mult_x_sums_align_2_q};

    // i_arrayidx195_poly80_mult_x_im3_shift0(BITSHIFT,310)@3
    assign i_arrayidx195_poly80_mult_x_im3_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx195_poly80_mult_x_im3_shift0_q = i_arrayidx195_poly80_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx195_poly80_mult_x_sums_align_0(BITSHIFT,225)@3
    assign i_arrayidx195_poly80_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx195_poly80_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx195_poly80_mult_x_sums_align_0_q = i_arrayidx195_poly80_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx195_poly80_mult_x_im9_shift0(BITSHIFT,312)@3
    assign i_arrayidx195_poly80_mult_x_im9_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx195_poly80_mult_x_im9_shift0_q = i_arrayidx195_poly80_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx195_poly80_mult_x_sums_join_1(BITJOIN,226)@3
    assign i_arrayidx195_poly80_mult_x_sums_join_1_q = {i_arrayidx195_poly80_mult_x_sums_align_0_q, {1'b0, i_arrayidx195_poly80_mult_x_im9_shift0_q}};

    // i_arrayidx195_poly80_mult_x_sums_result_add_0_0(ADD,230)@3
    assign i_arrayidx195_poly80_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx195_poly80_mult_x_sums_join_1_q};
    assign i_arrayidx195_poly80_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx195_poly80_mult_x_sums_join_4_q};
    assign i_arrayidx195_poly80_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx195_poly80_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx195_poly80_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx195_poly80_mult_x_sums_result_add_0_0_q = i_arrayidx195_poly80_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx195_poly80_mult_extender_x(BITJOIN,120)@3
    assign i_arrayidx195_poly80_mult_extender_x_q = {i_arrayidx195_poly80_mult_multconst_x_q, i_arrayidx195_poly80_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx195_poly80_trunc_sel_x(BITSELECT,122)@3
    assign i_arrayidx195_poly80_trunc_sel_x_b = i_arrayidx195_poly80_mult_extender_x_q[63:0];

    // c_poly8_a_pmem(CONSTANT,35)
    assign c_poly8_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx195_poly80_add_x(ADD,114)@3
    assign i_arrayidx195_poly80_add_x_a = {1'b0, c_poly8_a_pmem_q};
    assign i_arrayidx195_poly80_add_x_b = {1'b0, i_arrayidx195_poly80_trunc_sel_x_b};
    assign i_arrayidx195_poly80_add_x_o = $unsigned(i_arrayidx195_poly80_add_x_a) + $unsigned(i_arrayidx195_poly80_add_x_b);
    assign i_arrayidx195_poly80_add_x_q = i_arrayidx195_poly80_add_x_o[64:0];

    // i_arrayidx195_poly80_dupName_0_trunc_sel_x(BITSELECT,123)@3
    assign i_arrayidx195_poly80_dupName_0_trunc_sel_x_b = i_arrayidx195_poly80_add_x_q[63:0];

    // i_arrayidx195_poly810_vt_select_63(BITSELECT,43)@3
    assign i_arrayidx195_poly810_vt_select_63_b = i_arrayidx195_poly80_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx195_poly810_vt_join(BITJOIN,42)@3
    assign i_arrayidx195_poly810_vt_join_q = {i_arrayidx195_poly810_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly87_poly811(BLACKBOX,69)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_poly87_poly8_avm_address@20000000
    // out out_unnamed_poly87_poly8_avm_burstcount@20000000
    // out out_unnamed_poly87_poly8_avm_byteenable@20000000
    // out out_unnamed_poly87_poly8_avm_enable@20000000
    // out out_unnamed_poly87_poly8_avm_read@20000000
    // out out_unnamed_poly87_poly8_avm_write@20000000
    // out out_unnamed_poly87_poly8_avm_writedata@20000000
    poly8_i_llvm_fpga_mem_unnamed_7_poly80 thei_llvm_fpga_mem_unnamed_poly87_poly811 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx195_poly810_vt_join_q),
        .in_i_predicate(redist5_i_xor_poly84_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_poly87_poly8_avm_readdata(in_unnamed_poly87_poly8_avm_readdata),
        .in_unnamed_poly87_poly8_avm_readdatavalid(in_unnamed_poly87_poly8_avm_readdatavalid),
        .in_unnamed_poly87_poly8_avm_waitrequest(in_unnamed_poly87_poly8_avm_waitrequest),
        .in_unnamed_poly87_poly8_avm_writeack(in_unnamed_poly87_poly8_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly87_poly8_avm_address(i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_address),
        .out_unnamed_poly87_poly8_avm_burstcount(i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_burstcount),
        .out_unnamed_poly87_poly8_avm_byteenable(i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_byteenable),
        .out_unnamed_poly87_poly8_avm_enable(i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_enable),
        .out_unnamed_poly87_poly8_avm_read(i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_read),
        .out_unnamed_poly87_poly8_avm_write(i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_write),
        .out_unnamed_poly87_poly8_avm_writedata(i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,108)
    assign out_unnamed_poly87_poly8_avm_address = i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_address;
    assign out_unnamed_poly87_poly8_avm_enable = i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_enable;
    assign out_unnamed_poly87_poly8_avm_read = i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_read;
    assign out_unnamed_poly87_poly8_avm_write = i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_write;
    assign out_unnamed_poly87_poly8_avm_writedata = i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_writedata;
    assign out_unnamed_poly87_poly8_avm_byteenable = i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_byteenable;
    assign out_unnamed_poly87_poly8_avm_burstcount = i_llvm_fpga_mem_unnamed_poly87_poly811_out_unnamed_poly87_poly8_avm_burstcount;

    // valid_fanout_reg4(REG,190)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together104_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx226_poly80_mult_x_im0_shift0(BITSHIFT,313)@3
    assign i_arrayidx226_poly80_mult_x_im0_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx226_poly80_mult_x_im0_shift0_q = i_arrayidx226_poly80_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx226_poly80_mult_x_sums_align_3(BITSHIFT,246)@3
    assign i_arrayidx226_poly80_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx226_poly80_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx226_poly80_mult_x_sums_align_3_q = i_arrayidx226_poly80_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx226_poly80_mult_x_im6_shift0(BITSHIFT,315)@3
    assign i_arrayidx226_poly80_mult_x_im6_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx226_poly80_mult_x_im6_shift0_q = i_arrayidx226_poly80_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx226_poly80_mult_x_sums_align_2(BITSHIFT,245)@3
    assign i_arrayidx226_poly80_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx226_poly80_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx226_poly80_mult_x_sums_align_2_q = i_arrayidx226_poly80_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx226_poly80_mult_x_sums_join_4(BITJOIN,247)@3
    assign i_arrayidx226_poly80_mult_x_sums_join_4_q = {i_arrayidx226_poly80_mult_x_sums_align_3_q, i_arrayidx226_poly80_mult_x_sums_align_2_q};

    // i_arrayidx226_poly80_mult_x_im3_shift0(BITSHIFT,314)@3
    assign i_arrayidx226_poly80_mult_x_im3_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx226_poly80_mult_x_im3_shift0_q = i_arrayidx226_poly80_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx226_poly80_mult_x_sums_align_0(BITSHIFT,243)@3
    assign i_arrayidx226_poly80_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx226_poly80_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx226_poly80_mult_x_sums_align_0_q = i_arrayidx226_poly80_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx226_poly80_mult_x_im9_shift0(BITSHIFT,316)@3
    assign i_arrayidx226_poly80_mult_x_im9_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx226_poly80_mult_x_im9_shift0_q = i_arrayidx226_poly80_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx226_poly80_mult_x_sums_join_1(BITJOIN,244)@3
    assign i_arrayidx226_poly80_mult_x_sums_join_1_q = {i_arrayidx226_poly80_mult_x_sums_align_0_q, {1'b0, i_arrayidx226_poly80_mult_x_im9_shift0_q}};

    // i_arrayidx226_poly80_mult_x_sums_result_add_0_0(ADD,248)@3
    assign i_arrayidx226_poly80_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx226_poly80_mult_x_sums_join_1_q};
    assign i_arrayidx226_poly80_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx226_poly80_mult_x_sums_join_4_q};
    assign i_arrayidx226_poly80_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx226_poly80_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx226_poly80_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx226_poly80_mult_x_sums_result_add_0_0_q = i_arrayidx226_poly80_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx226_poly80_mult_extender_x(BITJOIN,130)@3
    assign i_arrayidx226_poly80_mult_extender_x_q = {i_arrayidx195_poly80_mult_multconst_x_q, i_arrayidx226_poly80_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx226_poly80_trunc_sel_x(BITSELECT,132)@3
    assign i_arrayidx226_poly80_trunc_sel_x_b = i_arrayidx226_poly80_mult_extender_x_q[63:0];

    // c_poly8_c_pmem(CONSTANT,37)
    assign c_poly8_c_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx226_poly80_add_x(ADD,124)@3
    assign i_arrayidx226_poly80_add_x_a = {1'b0, c_poly8_c_pmem_q};
    assign i_arrayidx226_poly80_add_x_b = {1'b0, i_arrayidx226_poly80_trunc_sel_x_b};
    assign i_arrayidx226_poly80_add_x_o = $unsigned(i_arrayidx226_poly80_add_x_a) + $unsigned(i_arrayidx226_poly80_add_x_b);
    assign i_arrayidx226_poly80_add_x_q = i_arrayidx226_poly80_add_x_o[64:0];

    // i_arrayidx226_poly80_dupName_0_trunc_sel_x(BITSELECT,133)@3
    assign i_arrayidx226_poly80_dupName_0_trunc_sel_x_b = i_arrayidx226_poly80_add_x_q[63:0];

    // i_arrayidx226_poly812_vt_select_63(BITSELECT,46)@3
    assign i_arrayidx226_poly812_vt_select_63_b = i_arrayidx226_poly80_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx226_poly812_vt_join(BITJOIN,45)@3
    assign i_arrayidx226_poly812_vt_join_q = {i_arrayidx226_poly812_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly88_poly813(BLACKBOX,70)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_poly88_poly8_avm_address@20000000
    // out out_unnamed_poly88_poly8_avm_burstcount@20000000
    // out out_unnamed_poly88_poly8_avm_byteenable@20000000
    // out out_unnamed_poly88_poly8_avm_enable@20000000
    // out out_unnamed_poly88_poly8_avm_read@20000000
    // out out_unnamed_poly88_poly8_avm_write@20000000
    // out out_unnamed_poly88_poly8_avm_writedata@20000000
    poly8_i_llvm_fpga_mem_unnamed_8_poly80 thei_llvm_fpga_mem_unnamed_poly88_poly813 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx226_poly812_vt_join_q),
        .in_i_predicate(redist5_i_xor_poly84_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_poly88_poly8_avm_readdata(in_unnamed_poly88_poly8_avm_readdata),
        .in_unnamed_poly88_poly8_avm_readdatavalid(in_unnamed_poly88_poly8_avm_readdatavalid),
        .in_unnamed_poly88_poly8_avm_waitrequest(in_unnamed_poly88_poly8_avm_waitrequest),
        .in_unnamed_poly88_poly8_avm_writeack(in_unnamed_poly88_poly8_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly88_poly8_avm_address(i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_address),
        .out_unnamed_poly88_poly8_avm_burstcount(i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_burstcount),
        .out_unnamed_poly88_poly8_avm_byteenable(i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_byteenable),
        .out_unnamed_poly88_poly8_avm_enable(i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_enable),
        .out_unnamed_poly88_poly8_avm_read(i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_read),
        .out_unnamed_poly88_poly8_avm_write(i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_write),
        .out_unnamed_poly88_poly8_avm_writedata(i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,110)
    assign out_unnamed_poly88_poly8_avm_address = i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_address;
    assign out_unnamed_poly88_poly8_avm_enable = i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_enable;
    assign out_unnamed_poly88_poly8_avm_read = i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_read;
    assign out_unnamed_poly88_poly8_avm_write = i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_write;
    assign out_unnamed_poly88_poly8_avm_writedata = i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_writedata;
    assign out_unnamed_poly88_poly8_avm_byteenable = i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_byteenable;
    assign out_unnamed_poly88_poly8_avm_burstcount = i_llvm_fpga_mem_unnamed_poly88_poly813_out_unnamed_poly88_poly8_avm_burstcount;

    // valid_fanout_reg5(REG,191)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together104_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx257_poly80_mult_x_im0_shift0(BITSHIFT,317)@3
    assign i_arrayidx257_poly80_mult_x_im0_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx257_poly80_mult_x_im0_shift0_q = i_arrayidx257_poly80_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx257_poly80_mult_x_sums_align_3(BITSHIFT,264)@3
    assign i_arrayidx257_poly80_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx257_poly80_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx257_poly80_mult_x_sums_align_3_q = i_arrayidx257_poly80_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx257_poly80_mult_x_im6_shift0(BITSHIFT,319)@3
    assign i_arrayidx257_poly80_mult_x_im6_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx257_poly80_mult_x_im6_shift0_q = i_arrayidx257_poly80_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx257_poly80_mult_x_sums_align_2(BITSHIFT,263)@3
    assign i_arrayidx257_poly80_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx257_poly80_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx257_poly80_mult_x_sums_align_2_q = i_arrayidx257_poly80_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx257_poly80_mult_x_sums_join_4(BITJOIN,265)@3
    assign i_arrayidx257_poly80_mult_x_sums_join_4_q = {i_arrayidx257_poly80_mult_x_sums_align_3_q, i_arrayidx257_poly80_mult_x_sums_align_2_q};

    // i_arrayidx257_poly80_mult_x_im3_shift0(BITSHIFT,318)@3
    assign i_arrayidx257_poly80_mult_x_im3_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx257_poly80_mult_x_im3_shift0_q = i_arrayidx257_poly80_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx257_poly80_mult_x_sums_align_0(BITSHIFT,261)@3
    assign i_arrayidx257_poly80_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx257_poly80_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx257_poly80_mult_x_sums_align_0_q = i_arrayidx257_poly80_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx257_poly80_mult_x_im9_shift0(BITSHIFT,320)@3
    assign i_arrayidx257_poly80_mult_x_im9_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx257_poly80_mult_x_im9_shift0_q = i_arrayidx257_poly80_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx257_poly80_mult_x_sums_join_1(BITJOIN,262)@3
    assign i_arrayidx257_poly80_mult_x_sums_join_1_q = {i_arrayidx257_poly80_mult_x_sums_align_0_q, {1'b0, i_arrayidx257_poly80_mult_x_im9_shift0_q}};

    // i_arrayidx257_poly80_mult_x_sums_result_add_0_0(ADD,266)@3
    assign i_arrayidx257_poly80_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx257_poly80_mult_x_sums_join_1_q};
    assign i_arrayidx257_poly80_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx257_poly80_mult_x_sums_join_4_q};
    assign i_arrayidx257_poly80_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx257_poly80_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx257_poly80_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx257_poly80_mult_x_sums_result_add_0_0_q = i_arrayidx257_poly80_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx257_poly80_mult_extender_x(BITJOIN,140)@3
    assign i_arrayidx257_poly80_mult_extender_x_q = {i_arrayidx195_poly80_mult_multconst_x_q, i_arrayidx257_poly80_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx257_poly80_trunc_sel_x(BITSELECT,142)@3
    assign i_arrayidx257_poly80_trunc_sel_x_b = i_arrayidx257_poly80_mult_extender_x_q[63:0];

    // c_poly8_b_pmem(CONSTANT,36)
    assign c_poly8_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx257_poly80_add_x(ADD,134)@3
    assign i_arrayidx257_poly80_add_x_a = {1'b0, c_poly8_b_pmem_q};
    assign i_arrayidx257_poly80_add_x_b = {1'b0, i_arrayidx257_poly80_trunc_sel_x_b};
    assign i_arrayidx257_poly80_add_x_o = $unsigned(i_arrayidx257_poly80_add_x_a) + $unsigned(i_arrayidx257_poly80_add_x_b);
    assign i_arrayidx257_poly80_add_x_q = i_arrayidx257_poly80_add_x_o[64:0];

    // i_arrayidx257_poly80_dupName_0_trunc_sel_x(BITSELECT,143)@3
    assign i_arrayidx257_poly80_dupName_0_trunc_sel_x_b = i_arrayidx257_poly80_add_x_q[63:0];

    // i_arrayidx257_poly814_vt_select_63(BITSELECT,49)@3
    assign i_arrayidx257_poly814_vt_select_63_b = i_arrayidx257_poly80_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx257_poly814_vt_join(BITJOIN,48)@3
    assign i_arrayidx257_poly814_vt_join_q = {i_arrayidx257_poly814_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_poly89_poly815(BLACKBOX,71)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_poly89_poly8_avm_address@20000000
    // out out_unnamed_poly89_poly8_avm_burstcount@20000000
    // out out_unnamed_poly89_poly8_avm_byteenable@20000000
    // out out_unnamed_poly89_poly8_avm_enable@20000000
    // out out_unnamed_poly89_poly8_avm_read@20000000
    // out out_unnamed_poly89_poly8_avm_write@20000000
    // out out_unnamed_poly89_poly8_avm_writedata@20000000
    poly8_i_llvm_fpga_mem_unnamed_9_poly80 thei_llvm_fpga_mem_unnamed_poly89_poly815 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx257_poly814_vt_join_q),
        .in_i_predicate(redist5_i_xor_poly84_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_poly89_poly8_avm_readdata(in_unnamed_poly89_poly8_avm_readdata),
        .in_unnamed_poly89_poly8_avm_readdatavalid(in_unnamed_poly89_poly8_avm_readdatavalid),
        .in_unnamed_poly89_poly8_avm_waitrequest(in_unnamed_poly89_poly8_avm_waitrequest),
        .in_unnamed_poly89_poly8_avm_writeack(in_unnamed_poly89_poly8_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_poly89_poly815_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_poly89_poly8_avm_address(i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_address),
        .out_unnamed_poly89_poly8_avm_burstcount(i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_burstcount),
        .out_unnamed_poly89_poly8_avm_byteenable(i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_byteenable),
        .out_unnamed_poly89_poly8_avm_enable(i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_enable),
        .out_unnamed_poly89_poly8_avm_read(i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_read),
        .out_unnamed_poly89_poly8_avm_write(i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_write),
        .out_unnamed_poly89_poly8_avm_writedata(i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,112)
    assign out_unnamed_poly89_poly8_avm_address = i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_address;
    assign out_unnamed_poly89_poly8_avm_enable = i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_enable;
    assign out_unnamed_poly89_poly8_avm_read = i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_read;
    assign out_unnamed_poly89_poly8_avm_write = i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_write;
    assign out_unnamed_poly89_poly8_avm_writedata = i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_writedata;
    assign out_unnamed_poly89_poly8_avm_byteenable = i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_byteenable;
    assign out_unnamed_poly89_poly8_avm_burstcount = i_llvm_fpga_mem_unnamed_poly89_poly815_out_unnamed_poly89_poly8_avm_burstcount;

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_notEnable(LOGICAL,353)
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_nor(LOGICAL,354)
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_nor_q = ~ (redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_notEnable_q | redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_sticky_ena_q);

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_last(CONSTANT,350)
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_last_q = $unsigned(3'b010);

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmp(LOGICAL,351)
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmp_b = {1'b0, redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_q};
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmp_q = $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_last_q == redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmp_b ? 1'b1 : 1'b0);

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmpReg(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmpReg_q <= $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmp_q);
        end
    end

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_sticky_ena(REG,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_nor_q == 1'b1)
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_sticky_ena_q <= $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_cmpReg_q);
        end
    end

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_enaAnd(LOGICAL,356)
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_enaAnd_q = redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_sticky_ena_q & VCC_q;

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt(COUNTER,348)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_i <= $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_q = redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_i[1:0];

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_inputreg0(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_inputreg0_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata);
        end
    end

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_wraddr(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_wraddr_q <= $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_q);
        end
    end

    // redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem(DUALMEM,347)
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_ia = $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_inputreg0_q);
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_aa = redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_wraddr_q;
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_ab = redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_rdcnt_q;
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(16),
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
    ) redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_dmem (
        .clocken1(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_reset0),
        .clock1(clock),
        .address_a(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_aa),
        .data_a(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_ab),
        .q_b(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_iq),
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
    assign redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_q = redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_iq[15:0];

    // redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9(DELAY,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_delay_0 <= '0;
            redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_delay_0 <= $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_q);
            redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_q <= redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_delay_0;
        end
    end

    // redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_outputreg0(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_outputreg0_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_outputreg0_q <= $unsigned(redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_q);
        end
    end

    // c_i16_358485(CONSTANT,13)
    assign c_i16_358485_q = $unsigned(16'b0000111000000000);

    // leftShiftStage0Idx1Rng2_uid305_dupName_0_i_unnamed_poly80_shift_x(BITSELECT,304)@7
    assign leftShiftStage0Idx1Rng2_uid305_dupName_0_i_unnamed_poly80_shift_x_in = i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata[13:0];
    assign leftShiftStage0Idx1Rng2_uid305_dupName_0_i_unnamed_poly80_shift_x_b = leftShiftStage0Idx1Rng2_uid305_dupName_0_i_unnamed_poly80_shift_x_in[13:0];

    // leftShiftStage0Idx1_uid306_dupName_0_i_unnamed_poly80_shift_x(BITJOIN,305)@7
    assign leftShiftStage0Idx1_uid306_dupName_0_i_unnamed_poly80_shift_x_q = {leftShiftStage0Idx1Rng2_uid305_dupName_0_i_unnamed_poly80_shift_x_b, i_unnamed_poly821_vt_const_1_q};

    // leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x(MUX,307)@7
    assign leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_s or i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata or leftShiftStage0Idx1_uid306_dupName_0_i_unnamed_poly80_shift_x_q)
    begin
        unique case (leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_s)
            1'b0 : leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_q = i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata;
            1'b1 : leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_q = leftShiftStage0Idx1_uid306_dupName_0_i_unnamed_poly80_shift_x_q;
            default : leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_poly821_vt_select_15(BITSELECT,93)@7
    assign i_unnamed_poly821_vt_select_15_b = leftShiftStage0_uid308_dupName_0_i_unnamed_poly80_shift_x_q[15:2];

    // i_unnamed_poly821_vt_const_1(CONSTANT,91)
    assign i_unnamed_poly821_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_poly821_vt_join(BITJOIN,92)@7
    assign i_unnamed_poly821_vt_join_q = {i_unnamed_poly821_vt_select_15_b, i_unnamed_poly821_vt_const_1_q};

    // c_i16_477684(CONSTANT,15)
    assign c_i16_477684_q = $unsigned(16'b1110110101011000);

    // leftShiftStage0Idx1Rng1_uid297_i_unnamed_poly80_shift_x(BITSELECT,296)@7
    assign leftShiftStage0Idx1Rng1_uid297_i_unnamed_poly80_shift_x_in = i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata[14:0];
    assign leftShiftStage0Idx1Rng1_uid297_i_unnamed_poly80_shift_x_b = leftShiftStage0Idx1Rng1_uid297_i_unnamed_poly80_shift_x_in[14:0];

    // leftShiftStage0Idx1_uid298_i_unnamed_poly80_shift_x(BITJOIN,297)@7
    assign leftShiftStage0Idx1_uid298_i_unnamed_poly80_shift_x_q = {leftShiftStage0Idx1Rng1_uid297_i_unnamed_poly80_shift_x_b, GND_q};

    // leftShiftStage0_uid300_i_unnamed_poly80_shift_x(MUX,299)@7
    assign leftShiftStage0_uid300_i_unnamed_poly80_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid300_i_unnamed_poly80_shift_x_s or i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata or leftShiftStage0Idx1_uid298_i_unnamed_poly80_shift_x_q)
    begin
        unique case (leftShiftStage0_uid300_i_unnamed_poly80_shift_x_s)
            1'b0 : leftShiftStage0_uid300_i_unnamed_poly80_shift_x_q = i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata;
            1'b1 : leftShiftStage0_uid300_i_unnamed_poly80_shift_x_q = leftShiftStage0Idx1_uid298_i_unnamed_poly80_shift_x_q;
            default : leftShiftStage0_uid300_i_unnamed_poly80_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_poly820_vt_select_15(BITSELECT,90)@7
    assign i_unnamed_poly820_vt_select_15_b = leftShiftStage0_uid300_i_unnamed_poly80_shift_x_q[15:1];

    // i_unnamed_poly820_vt_join(BITJOIN,89)@7
    assign i_unnamed_poly820_vt_join_q = {i_unnamed_poly820_vt_select_15_b, GND_q};

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0(ADD,184)@7
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_a = {1'b0, i_unnamed_poly820_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_b = {1'b0, c_i16_477684_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_o[16:0];

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0(ADD,185)@7
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_a = i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_0_0_q[15:0];
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_b = i_unnamed_poly821_vt_join_q;
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_o[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,196)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_poly827_vunroll_re_add_1_0_q);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add53_poly831(ADD,56)@10
    assign i_dot_prod_add53_poly831_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod52_poly80_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add53_poly831_b = {1'b0, c_i16_358485_q};
    assign i_dot_prod_add53_poly831_o = $unsigned(i_dot_prod_add53_poly831_a) + $unsigned(i_dot_prod_add53_poly831_b);
    assign i_dot_prod_add53_poly831_q = i_dot_prod_add53_poly831_o[16:0];

    // bgTrunc_i_dot_prod_add53_poly831_sel_x(BITSELECT,100)@10
    assign bgTrunc_i_dot_prod_add53_poly831_sel_x_b = i_dot_prod_add53_poly831_q[15:0];

    // i_mul34_poly819_cma(CHAINMULTADD,325)@7 + 3
    assign i_mul34_poly819_cma_reset = ~ (resetn);
    assign i_mul34_poly819_cma_ena0 = 1'b1;
    assign i_mul34_poly819_cma_ena1 = i_mul34_poly819_cma_ena0;
    assign i_mul34_poly819_cma_ena2 = i_mul34_poly819_cma_ena0;

    assign i_mul34_poly819_cma_a0 = i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata;
    assign i_mul34_poly819_cma_c0 = i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata;
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
    ) i_mul34_poly819_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul34_poly819_cma_ena2, i_mul34_poly819_cma_ena1, i_mul34_poly819_cma_ena0 }),
        .aclr({ i_mul34_poly819_cma_reset, i_mul34_poly819_cma_reset }),
        .ay(i_mul34_poly819_cma_a0),
        .ax(i_mul34_poly819_cma_c0),
        .resulta(i_mul34_poly819_cma_s0),
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
    i_mul34_poly819_cma_delay ( .xin(i_mul34_poly819_cma_s0), .xout(i_mul34_poly819_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul34_poly819_cma_q = $unsigned(i_mul34_poly819_cma_qq[31:0]);

    // bgTrunc_i_mul34_poly819_sel_x(BITSELECT,105)@10
    assign bgTrunc_i_mul34_poly819_sel_x_b = i_mul34_poly819_cma_q[15:0];

    // redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_inputreg0(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_inputreg0_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata);
        end
    end

    // redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3(DELAY,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_delay_0 <= '0;
            redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_delay_0 <= $unsigned(redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_inputreg0_q);
            redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_q <= redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_delay_0;
        end
    end

    // c_i16_1382481(CONSTANT,10)
    assign c_i16_1382481_q = $unsigned(16'b1100101000000000);

    // c_i16_43280(CONSTANT,14)
    assign c_i16_43280_q = $unsigned(16'b0000000110110000);

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,198)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_mem_unnamed_poly89_poly815_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(c_i16_43280_q);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add_poly818(ADD,58)@10
    assign i_dot_prod_add_poly818_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_poly80_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add_poly818_b = {1'b0, c_i16_1382481_q};
    assign i_dot_prod_add_poly818_o = $unsigned(i_dot_prod_add_poly818_a) + $unsigned(i_dot_prod_add_poly818_b);
    assign i_dot_prod_add_poly818_q = i_dot_prod_add_poly818_o[16:0];

    // bgTrunc_i_dot_prod_add_poly818_sel_x(BITSELECT,102)@10
    assign bgTrunc_i_dot_prod_add_poly818_sel_x_b = i_dot_prod_add_poly818_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,199)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_dot_prod_add_poly818_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist13_i_llvm_fpga_mem_unnamed_poly88_poly813_out_o_readdata_3_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(bgTrunc_i_mul34_poly819_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(bgTrunc_i_dot_prod_add53_poly831_sel_x_b);
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
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_casta0_x(BITSELECT,163)@13
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_casta0_x_in = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod58_poly80_dspb_native_dot_product_vunroll_x_cma0_q[15:0];
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_casta0_x_b = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_casta0_x_in[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,197)@13 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_casta0_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist14_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_6_mem_q);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add62_poly842(ADD,57)@16
    assign i_dot_prod_add62_poly842_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod61_poly80_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add62_poly842_b = {1'b0, redist15_i_llvm_fpga_mem_unnamed_poly87_poly811_out_o_readdata_9_outputreg0_q};
    assign i_dot_prod_add62_poly842_o = $unsigned(i_dot_prod_add62_poly842_a) + $unsigned(i_dot_prod_add62_poly842_b);
    assign i_dot_prod_add62_poly842_q = i_dot_prod_add62_poly842_o[16:0];

    // bgTrunc_i_dot_prod_add62_poly842_sel_x(BITSELECT,101)@16
    assign bgTrunc_i_dot_prod_add62_poly842_sel_x_b = i_dot_prod_add62_poly842_q[15:0];

    // redist4_sync_together104_aunroll_x_in_i_valid_14(DELAY,331)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together104_aunroll_x_in_i_valid_14 ( .xin(redist3_sync_together104_aunroll_x_in_i_valid_1_q), .xout(redist4_sync_together104_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,192)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together104_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist6_i_xor_poly84_q_14(DELAY,333)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_xor_poly84_q_14 ( .xin(redist5_i_xor_poly84_q_1_q), .xout(redist6_i_xor_poly84_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_notEnable(LOGICAL,365)
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_nor(LOGICAL,366)
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_nor_q = ~ (redist17_i_arrayidx598_poly843_vt_select_63_b_13_notEnable_q | redist17_i_arrayidx598_poly843_vt_select_63_b_13_sticky_ena_q);

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_last(CONSTANT,362)
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_last_q = $unsigned(5'b01001);

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmp(LOGICAL,363)
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmp_b = {1'b0, redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_q};
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmp_q = $unsigned(redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_last_q == redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmp_b ? 1'b1 : 1'b0);

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmpReg(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmpReg_q <= $unsigned(redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmp_q);
        end
    end

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_sticky_ena(REG,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_i_arrayidx598_poly843_vt_select_63_b_13_nor_q == 1'b1)
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_sticky_ena_q <= $unsigned(redist17_i_arrayidx598_poly843_vt_select_63_b_13_cmpReg_q);
        end
    end

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_enaAnd(LOGICAL,368)
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_enaAnd_q = redist17_i_arrayidx598_poly843_vt_select_63_b_13_sticky_ena_q & VCC_q;

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt(COUNTER,360)
    // low=0, high=10, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i <= 4'd0;
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i == 4'd9)
            begin
                redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_eq == 1'b1)
            begin
                redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i <= $unsigned(redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i) + $unsigned(4'd6);
            end
            else
            begin
                redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i <= $unsigned(redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_q = redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_i[3:0];

    // i_arrayidx598_poly80_mult_x_im0_shift0(BITSHIFT,321)@3
    assign i_arrayidx598_poly80_mult_x_im0_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx598_poly80_mult_x_im0_shift0_q = i_arrayidx598_poly80_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx598_poly80_mult_x_sums_align_3(BITSHIFT,282)@3
    assign i_arrayidx598_poly80_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx598_poly80_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx598_poly80_mult_x_sums_align_3_q = i_arrayidx598_poly80_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx598_poly80_mult_x_im6_shift0(BITSHIFT,323)@3
    assign i_arrayidx598_poly80_mult_x_im6_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx598_poly80_mult_x_im6_shift0_q = i_arrayidx598_poly80_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx598_poly80_mult_x_sums_align_2(BITSHIFT,281)@3
    assign i_arrayidx598_poly80_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx598_poly80_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx598_poly80_mult_x_sums_align_2_q = i_arrayidx598_poly80_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx598_poly80_mult_x_sums_join_4(BITJOIN,283)@3
    assign i_arrayidx598_poly80_mult_x_sums_join_4_q = {i_arrayidx598_poly80_mult_x_sums_align_3_q, i_arrayidx598_poly80_mult_x_sums_align_2_q};

    // i_arrayidx598_poly80_mult_x_im3_shift0(BITSHIFT,322)@3
    assign i_arrayidx598_poly80_mult_x_im3_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx598_poly80_mult_x_im3_shift0_q = i_arrayidx598_poly80_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx598_poly80_mult_x_sums_align_0(BITSHIFT,279)@3
    assign i_arrayidx598_poly80_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx598_poly80_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx598_poly80_mult_x_sums_align_0_q = i_arrayidx598_poly80_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx598_poly80_mult_x_im9_shift0(BITSHIFT,324)@3
    assign i_arrayidx598_poly80_mult_x_im9_shift0_qint = { i_arrayidx195_poly80_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx598_poly80_mult_x_im9_shift0_q = i_arrayidx598_poly80_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx598_poly80_mult_x_sums_join_1(BITJOIN,280)@3
    assign i_arrayidx598_poly80_mult_x_sums_join_1_q = {i_arrayidx598_poly80_mult_x_sums_align_0_q, {1'b0, i_arrayidx598_poly80_mult_x_im9_shift0_q}};

    // i_arrayidx598_poly80_mult_x_sums_result_add_0_0(ADD,284)@3
    assign i_arrayidx598_poly80_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx598_poly80_mult_x_sums_join_1_q};
    assign i_arrayidx598_poly80_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx598_poly80_mult_x_sums_join_4_q};
    assign i_arrayidx598_poly80_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx598_poly80_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx598_poly80_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx598_poly80_mult_x_sums_result_add_0_0_q = i_arrayidx598_poly80_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx598_poly80_mult_extender_x(BITJOIN,150)@3
    assign i_arrayidx598_poly80_mult_extender_x_q = {i_arrayidx195_poly80_mult_multconst_x_q, i_arrayidx598_poly80_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx598_poly80_trunc_sel_x(BITSELECT,152)@3
    assign i_arrayidx598_poly80_trunc_sel_x_b = i_arrayidx598_poly80_mult_extender_x_q[63:0];

    // c_poly8_out_pmem(CONSTANT,38)
    assign c_poly8_out_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx598_poly80_add_x(ADD,144)@3
    assign i_arrayidx598_poly80_add_x_a = {1'b0, c_poly8_out_pmem_q};
    assign i_arrayidx598_poly80_add_x_b = {1'b0, i_arrayidx598_poly80_trunc_sel_x_b};
    assign i_arrayidx598_poly80_add_x_o = $unsigned(i_arrayidx598_poly80_add_x_a) + $unsigned(i_arrayidx598_poly80_add_x_b);
    assign i_arrayidx598_poly80_add_x_q = i_arrayidx598_poly80_add_x_o[64:0];

    // i_arrayidx598_poly80_dupName_0_trunc_sel_x(BITSELECT,153)@3
    assign i_arrayidx598_poly80_dupName_0_trunc_sel_x_b = i_arrayidx598_poly80_add_x_q[63:0];

    // i_arrayidx598_poly843_vt_select_63(BITSELECT,52)@3
    assign i_arrayidx598_poly843_vt_select_63_b = i_arrayidx598_poly80_dupName_0_trunc_sel_x_b[63:1];

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_inputreg0(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_inputreg0_q <= $unsigned(i_arrayidx598_poly843_vt_select_63_b);
        end
    end

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_wraddr(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_wraddr_q <= $unsigned(4'b1010);
        end
        else
        begin
            redist17_i_arrayidx598_poly843_vt_select_63_b_13_wraddr_q <= $unsigned(redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_q);
        end
    end

    // redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem(DUALMEM,359)
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_ia = $unsigned(redist17_i_arrayidx598_poly843_vt_select_63_b_13_inputreg0_q);
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_aa = redist17_i_arrayidx598_poly843_vt_select_63_b_13_wraddr_q;
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_ab = redist17_i_arrayidx598_poly843_vt_select_63_b_13_rdcnt_q;
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(63),
        .widthad_a(4),
        .numwords_a(11),
        .width_b(63),
        .widthad_b(4),
        .numwords_b(11),
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
    ) redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_dmem (
        .clocken1(redist17_i_arrayidx598_poly843_vt_select_63_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_aa),
        .data_a(redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_ab),
        .q_b(redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_iq),
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
    assign redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_q = redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_iq[62:0];

    // i_arrayidx598_poly843_vt_join(BITJOIN,51)@16
    assign i_arrayidx598_poly843_vt_join_q = {redist17_i_arrayidx598_poly843_vt_select_63_b_13_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_4_poly844(BLACKBOX,68)@16
    // out out_memdep_4_poly8_avm_address@20000000
    // out out_memdep_4_poly8_avm_burstcount@20000000
    // out out_memdep_4_poly8_avm_byteenable@20000000
    // out out_memdep_4_poly8_avm_enable@20000000
    // out out_memdep_4_poly8_avm_read@20000000
    // out out_memdep_4_poly8_avm_write@20000000
    // out out_memdep_4_poly8_avm_writedata@20000000
    // out out_o_stall@17
    // out out_o_valid@17
    // out out_o_writeack@17
    poly8_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_poly844 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx598_poly843_vt_join_q),
        .in_i_predicate(redist6_i_xor_poly84_q_14_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(bgTrunc_i_dot_prod_add62_poly842_sel_x_b),
        .in_memdep_4_poly8_avm_readdata(in_memdep_4_poly8_avm_readdata),
        .in_memdep_4_poly8_avm_readdatavalid(in_memdep_4_poly8_avm_readdatavalid),
        .in_memdep_4_poly8_avm_waitrequest(in_memdep_4_poly8_avm_waitrequest),
        .in_memdep_4_poly8_avm_writeack(in_memdep_4_poly8_avm_writeack),
        .out_memdep_4_poly8_avm_address(i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_address),
        .out_memdep_4_poly8_avm_burstcount(i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_burstcount),
        .out_memdep_4_poly8_avm_byteenable(i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_byteenable),
        .out_memdep_4_poly8_avm_enable(i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_enable),
        .out_memdep_4_poly8_avm_read(i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_read),
        .out_memdep_4_poly8_avm_write(i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_write),
        .out_memdep_4_poly8_avm_writedata(i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,113)
    assign out_memdep_4_poly8_avm_address = i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_address;
    assign out_memdep_4_poly8_avm_enable = i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_enable;
    assign out_memdep_4_poly8_avm_read = i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_read;
    assign out_memdep_4_poly8_avm_write = i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_write;
    assign out_memdep_4_poly8_avm_writedata = i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_writedata;
    assign out_memdep_4_poly8_avm_byteenable = i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_byteenable;
    assign out_memdep_4_poly8_avm_burstcount = i_llvm_fpga_mem_memdep_4_poly844_out_memdep_4_poly8_avm_burstcount;

    // valid_fanout_reg0(REG,186)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together104_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // valid_fanout_reg8(REG,194)@1 + 1
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

    // valid_fanout_reg9(REG,195)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together104_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_2(DELAY,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_2_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_2_q <= $unsigned(redist10_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1746_push18_poly859(BLACKBOX,79)@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    poly8_i_llvm_fpga_push_i1_notcmp1746_push18_0 thei_llvm_fpga_push_i1_notcmp1746_push18_poly859 (
        .in_data_in(redist8_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_feedback_stall_out_18),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly859_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly859_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together104_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together104_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together104_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858(BLACKBOX,74)@2
    // out out_feedback_stall_out_18@20000000
    poly8_i_llvm_fpga_pop_i1_notcmp1746_pop18_0 thei_llvm_fpga_pop_i1_notcmp1746_pop18_poly858 (
        .in_data_in(redist2_sync_together104_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist1_sync_together104_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly859_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp1746_push18_poly859_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_1(DELAY,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_15(DELAY,336)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_15 ( .xin(redist8_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_1_q), .xout(redist9_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_poly857(LOGICAL,83)@2 + 1
    assign i_masked_poly857_qi = i_notcmp_poly850_q & i_first_cleanup_poly83_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_poly857_delay ( .xin(i_masked_poly857_qi), .xout(i_masked_poly857_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked_poly857_q_15(DELAY,334)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_masked_poly857_q_15 ( .xin(i_masked_poly857_q), .xout(redist7_i_masked_poly857_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_16(DELAY,339)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_16 ( .xin(redist11_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_2_q), .xout(redist12_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,178)@17
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist12_i_llvm_fpga_pipeline_keep_going_poly86_out_data_out_16_q;
    assign out_c0_exi3_2_tpl = redist7_i_masked_poly857_q_15_q;
    assign out_c0_exi3_3_tpl = redist9_i_llvm_fpga_pop_i1_notcmp1746_pop18_poly858_out_data_out_15_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_poly81 = GND_q;

endmodule
