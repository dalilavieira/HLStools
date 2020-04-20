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

// SystemVerilog created from qspline_i_sfc_logic_s_c0_in_for_body_s_c0_enter743_qspline0
// SystemVerilog created on Sun Apr 19 22:15:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module qspline_i_sfc_logic_s_c0_in_for_body_s_c0_enter743_qspline0 (
    input wire [15:0] in_memdep_qspline_avm_readdata,
    input wire [0:0] in_memdep_qspline_avm_writeack,
    input wire [0:0] in_memdep_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_qspline_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_qspline6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_qspline6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_memdep_1_qspline_avm_readdata,
    input wire [0:0] in_memdep_1_qspline_avm_writeack,
    input wire [0:0] in_memdep_1_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_1_qspline_avm_readdatavalid,
    output wire [31:0] out_memdep_qspline_avm_address,
    output wire [0:0] out_memdep_qspline_avm_enable,
    output wire [0:0] out_memdep_qspline_avm_read,
    output wire [0:0] out_memdep_qspline_avm_write,
    output wire [15:0] out_memdep_qspline_avm_writedata,
    output wire [1:0] out_memdep_qspline_avm_byteenable,
    output wire [0:0] out_memdep_qspline_avm_burstcount,
    input wire [15:0] in_memdep_2_qspline_avm_readdata,
    input wire [0:0] in_memdep_2_qspline_avm_writeack,
    input wire [0:0] in_memdep_2_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_2_qspline_avm_readdatavalid,
    output wire [31:0] out_memdep_1_qspline_avm_address,
    output wire [0:0] out_memdep_1_qspline_avm_enable,
    output wire [0:0] out_memdep_1_qspline_avm_read,
    output wire [0:0] out_memdep_1_qspline_avm_write,
    output wire [15:0] out_memdep_1_qspline_avm_writedata,
    output wire [1:0] out_memdep_1_qspline_avm_byteenable,
    output wire [0:0] out_memdep_1_qspline_avm_burstcount,
    input wire [15:0] in_memdep_3_qspline_avm_readdata,
    input wire [0:0] in_memdep_3_qspline_avm_writeack,
    input wire [0:0] in_memdep_3_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_3_qspline_avm_readdatavalid,
    output wire [31:0] out_memdep_2_qspline_avm_address,
    output wire [0:0] out_memdep_2_qspline_avm_enable,
    output wire [0:0] out_memdep_2_qspline_avm_read,
    output wire [0:0] out_memdep_2_qspline_avm_write,
    output wire [15:0] out_memdep_2_qspline_avm_writedata,
    output wire [1:0] out_memdep_2_qspline_avm_byteenable,
    output wire [0:0] out_memdep_2_qspline_avm_burstcount,
    input wire [15:0] in_memdep_4_qspline_avm_readdata,
    input wire [0:0] in_memdep_4_qspline_avm_writeack,
    input wire [0:0] in_memdep_4_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_4_qspline_avm_readdatavalid,
    output wire [31:0] out_memdep_3_qspline_avm_address,
    output wire [0:0] out_memdep_3_qspline_avm_enable,
    output wire [0:0] out_memdep_3_qspline_avm_read,
    output wire [0:0] out_memdep_3_qspline_avm_write,
    output wire [15:0] out_memdep_3_qspline_avm_writedata,
    output wire [1:0] out_memdep_3_qspline_avm_byteenable,
    output wire [0:0] out_memdep_3_qspline_avm_burstcount,
    input wire [15:0] in_memdep_5_qspline_avm_readdata,
    input wire [0:0] in_memdep_5_qspline_avm_writeack,
    input wire [0:0] in_memdep_5_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_5_qspline_avm_readdatavalid,
    output wire [31:0] out_memdep_4_qspline_avm_address,
    output wire [0:0] out_memdep_4_qspline_avm_enable,
    output wire [0:0] out_memdep_4_qspline_avm_read,
    output wire [0:0] out_memdep_4_qspline_avm_write,
    output wire [15:0] out_memdep_4_qspline_avm_writedata,
    output wire [1:0] out_memdep_4_qspline_avm_byteenable,
    output wire [0:0] out_memdep_4_qspline_avm_burstcount,
    input wire [15:0] in_memdep_6_qspline_avm_readdata,
    input wire [0:0] in_memdep_6_qspline_avm_writeack,
    input wire [0:0] in_memdep_6_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_6_qspline_avm_readdatavalid,
    output wire [31:0] out_memdep_5_qspline_avm_address,
    output wire [0:0] out_memdep_5_qspline_avm_enable,
    output wire [0:0] out_memdep_5_qspline_avm_read,
    output wire [0:0] out_memdep_5_qspline_avm_write,
    output wire [15:0] out_memdep_5_qspline_avm_writedata,
    output wire [1:0] out_memdep_5_qspline_avm_byteenable,
    output wire [0:0] out_memdep_5_qspline_avm_burstcount,
    output wire [31:0] out_memdep_6_qspline_avm_address,
    output wire [0:0] out_memdep_6_qspline_avm_enable,
    output wire [0:0] out_memdep_6_qspline_avm_read,
    output wire [0:0] out_memdep_6_qspline_avm_write,
    output wire [15:0] out_memdep_6_qspline_avm_writedata,
    output wire [1:0] out_memdep_6_qspline_avm_byteenable,
    output wire [0:0] out_memdep_6_qspline_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_qspline1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102269_q;
    wire [10:0] c_i11_171_q;
    wire [15:0] c_i16_067_q;
    wire [15:0] c_i16_102366_q;
    wire [31:0] c_i32_065_q;
    wire [31:0] c_i32_168_q;
    wire [3:0] c_i4_762_q;
    wire [63:0] c_qspline_a_pmem_q;
    wire [63:0] c_qspline_b_pmem_q;
    wire [63:0] c_qspline_c_pmem_q;
    wire [63:0] c_qspline_e_pmem_q;
    wire [63:0] c_qspline_f_pmem_q;
    wire [63:0] c_qspline_g_pmem_q;
    wire [63:0] c_qspline_out_pmem_q;
    wire [63:0] i_arrayidx165_qspline22_vt_join_q;
    wire [62:0] i_arrayidx165_qspline22_vt_select_63_b;
    wire [63:0] i_arrayidx1_qspline16_vt_join_q;
    wire [62:0] i_arrayidx1_qspline16_vt_select_63_b;
    wire [63:0] i_arrayidx206_qspline24_vt_join_q;
    wire [62:0] i_arrayidx206_qspline24_vt_select_63_b;
    wire [63:0] i_arrayidx247_qspline26_vt_join_q;
    wire [62:0] i_arrayidx247_qspline26_vt_select_63_b;
    wire [63:0] i_arrayidx268_qspline28_vt_join_q;
    wire [62:0] i_arrayidx268_qspline28_vt_select_63_b;
    wire [63:0] i_arrayidx42_qspline18_vt_join_q;
    wire [62:0] i_arrayidx42_qspline18_vt_select_63_b;
    wire [63:0] i_arrayidx84_qspline20_vt_join_q;
    wire [62:0] i_arrayidx84_qspline20_vt_select_63_b;
    wire [3:0] i_cleanups_shl36_qspline5_vt_join_q;
    wire [2:0] i_cleanups_shl36_qspline5_vt_select_3_b;
    wire [15:0] i_conv_qspline14_q;
    wire [5:0] i_conv_qspline14_vt_const_15_q;
    wire [15:0] i_conv_qspline14_vt_join_q;
    wire [9:0] i_conv_qspline14_vt_select_9_b;
    wire [11:0] i_fpga_indvars_iv_next_qspline40_a;
    wire [11:0] i_fpga_indvars_iv_next_qspline40_b;
    logic [11:0] i_fpga_indvars_iv_next_qspline40_o;
    wire [11:0] i_fpga_indvars_iv_next_qspline40_q;
    wire [63:0] i_idxprom_qspline15_vt_join_q;
    wire [31:0] i_idxprom_qspline15_vt_select_31_b;
    wire [32:0] i_inc_qspline30_a;
    wire [32:0] i_inc_qspline30_b;
    logic [32:0] i_inc_qspline30_o;
    wire [32:0] i_inc_qspline30_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_feedback_stall_out_12;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration34_qspline11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration34_qspline11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond42_qspline36_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond42_qspline36_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_k_051_push11_qspline31_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_k_051_push11_qspline31_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_cleanups35_push13_qspline39_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i4_cleanups35_push13_qspline39_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_initerations30_push12_qspline9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_initerations30_push12_qspline9_out_feedback_valid_out_12;
    wire [0:0] i_masked41_qspline42_qi;
    reg [0:0] i_masked41_qspline42_q;
    wire [0:0] i_next_cleanups40_qspline38_s;
    reg [3:0] i_next_cleanups40_qspline38_q;
    wire [3:0] i_next_initerations31_qspline8_vt_join_q;
    wire [2:0] i_next_initerations31_qspline8_vt_select_2_b;
    wire [0:0] i_notcmp28_qspline35_q;
    wire [0:0] i_or39_qspline37_q;
    wire [0:0] i_xor38_qspline4_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_qspline40_sel_x_b;
    wire [31:0] bgTrunc_i_inc_qspline30_sel_x_b;
    wire [64:0] i_arrayidx165_qspline0_add_x_a;
    wire [64:0] i_arrayidx165_qspline0_add_x_b;
    logic [64:0] i_arrayidx165_qspline0_add_x_o;
    wire [64:0] i_arrayidx165_qspline0_add_x_q;
    wire [127:0] i_arrayidx165_qspline0_mult_extender_x_q;
    wire [61:0] i_arrayidx165_qspline0_mult_multconst_x_q;
    wire [63:0] i_arrayidx165_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx165_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx1_qspline0_add_x_a;
    wire [64:0] i_arrayidx1_qspline0_add_x_b;
    logic [64:0] i_arrayidx1_qspline0_add_x_o;
    wire [64:0] i_arrayidx1_qspline0_add_x_q;
    wire [127:0] i_arrayidx1_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx1_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx1_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx206_qspline0_add_x_a;
    wire [64:0] i_arrayidx206_qspline0_add_x_b;
    logic [64:0] i_arrayidx206_qspline0_add_x_o;
    wire [64:0] i_arrayidx206_qspline0_add_x_q;
    wire [127:0] i_arrayidx206_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx206_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx206_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx247_qspline0_add_x_a;
    wire [64:0] i_arrayidx247_qspline0_add_x_b;
    logic [64:0] i_arrayidx247_qspline0_add_x_o;
    wire [64:0] i_arrayidx247_qspline0_add_x_q;
    wire [127:0] i_arrayidx247_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx247_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx247_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx268_qspline0_add_x_a;
    wire [64:0] i_arrayidx268_qspline0_add_x_b;
    logic [64:0] i_arrayidx268_qspline0_add_x_o;
    wire [64:0] i_arrayidx268_qspline0_add_x_q;
    wire [127:0] i_arrayidx268_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx268_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx268_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx42_qspline0_add_x_a;
    wire [64:0] i_arrayidx42_qspline0_add_x_b;
    logic [64:0] i_arrayidx42_qspline0_add_x_o;
    wire [64:0] i_arrayidx42_qspline0_add_x_q;
    wire [127:0] i_arrayidx42_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx42_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx42_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx84_qspline0_add_x_a;
    wire [64:0] i_arrayidx84_qspline0_add_x_b;
    logic [64:0] i_arrayidx84_qspline0_add_x_o;
    wire [64:0] i_arrayidx84_qspline0_add_x_q;
    wire [127:0] i_arrayidx84_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx84_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx84_qspline0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup37_qspline3_sel_x_b;
    wire [63:0] i_idxprom_qspline15_sel_x_b;
    wire [0:0] i_last_initeration33_qspline10_sel_x_b;
    wire [15:0] i_unnamed_qspline13_sel_x_b;
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
    wire [0:0] i_exitcond_qspline33_cmp_nsign_q;
    wire [35:0] i_arrayidx165_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx165_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx165_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx165_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx165_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx165_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx165_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx165_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx1_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx1_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx1_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx1_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx1_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx1_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx1_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx1_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx206_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx206_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx206_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx206_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx206_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx206_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx206_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx206_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx247_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx247_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx247_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx247_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx247_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx247_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx247_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx247_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx268_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx268_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx268_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx268_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx268_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx268_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx268_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx268_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx42_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx42_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx42_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx42_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx42_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx42_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx42_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx42_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx84_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx84_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx84_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx84_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx84_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx84_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx84_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx84_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid362_i_cleanups_shl36_qspline0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid362_i_cleanups_shl36_qspline0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid363_i_cleanups_shl36_qspline0_shift_x_q;
    wire [0:0] leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_s;
    reg [3:0] leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid369_i_next_initerations31_qspline0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid371_i_next_initerations31_qspline0_shift_x_q;
    wire [0:0] rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_s;
    reg [3:0] rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_q;
    wire [10:0] i_arrayidx165_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx165_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx165_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx165_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx165_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx165_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx165_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx165_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx1_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx1_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx1_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx1_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx1_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx1_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx1_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx1_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx206_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx206_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx206_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx206_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx206_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx206_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx206_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx206_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx247_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx247_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx247_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx247_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx247_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx247_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx247_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx247_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx268_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx268_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx268_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx268_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx268_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx268_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx268_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx268_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx42_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx42_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx42_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx42_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx42_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx42_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx42_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx42_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx84_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx84_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx84_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx84_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx84_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx84_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx84_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx84_qspline0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together86_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together86_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together86_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together86_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_3_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together86_aunroll_x_in_i_valid_1(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together86_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together86_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together86_aunroll_x_in_i_valid_2(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together86_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together86_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_1(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid362_i_cleanups_shl36_qspline0_shift_x(BITSELECT,361)@3
    assign leftShiftStage0Idx1Rng1_uid362_i_cleanups_shl36_qspline0_shift_x_in = i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid362_i_cleanups_shl36_qspline0_shift_x_b = leftShiftStage0Idx1Rng1_uid362_i_cleanups_shl36_qspline0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid363_i_cleanups_shl36_qspline0_shift_x(BITJOIN,362)@3
    assign leftShiftStage0Idx1_uid363_i_cleanups_shl36_qspline0_shift_x_q = {leftShiftStage0Idx1Rng1_uid362_i_cleanups_shl36_qspline0_shift_x_b, GND_q};

    // leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x(MUX,364)@3
    assign leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_s or i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out or leftShiftStage0Idx1_uid363_i_cleanups_shl36_qspline0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_s)
            1'b0 : leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_q = i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out;
            1'b1 : leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_q = leftShiftStage0Idx1_uid363_i_cleanups_shl36_qspline0_shift_x_q;
            default : leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl36_qspline5_vt_select_3(BITSELECT,63)@3
    assign i_cleanups_shl36_qspline5_vt_select_3_b = leftShiftStage0_uid365_i_cleanups_shl36_qspline0_shift_x_q[3:1];

    // i_cleanups_shl36_qspline5_vt_join(BITJOIN,62)@3
    assign i_cleanups_shl36_qspline5_vt_join_q = {i_cleanups_shl36_qspline5_vt_select_3_b, GND_q};

    // i_xor38_qspline4(LOGICAL,103)@3
    assign i_xor38_qspline4_q = i_first_cleanup37_qspline3_sel_x_b ^ VCC_q;

    // i_notcmp28_qspline35(LOGICAL,100)@3
    assign i_notcmp28_qspline35_q = i_exitcond_qspline33_cmp_nsign_q ^ VCC_q;

    // i_or39_qspline37(LOGICAL,101)@3
    assign i_or39_qspline37_q = i_notcmp28_qspline35_q | i_xor38_qspline4_q;

    // i_next_cleanups40_qspline38(MUX,96)@3
    assign i_next_cleanups40_qspline38_s = i_or39_qspline37_q;
    always @(i_next_cleanups40_qspline38_s or i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out or i_cleanups_shl36_qspline5_vt_join_q)
    begin
        unique case (i_next_cleanups40_qspline38_s)
            1'b0 : i_next_cleanups40_qspline38_q = i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out;
            1'b1 : i_next_cleanups40_qspline38_q = i_cleanups_shl36_qspline5_vt_join_q;
            default : i_next_cleanups40_qspline38_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups35_push13_qspline39(BLACKBOX,93)@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    qspline_i_llvm_fpga_push_i4_cleanups35_push13_0 thei_llvm_fpga_push_i4_cleanups35_push13_qspline39 (
        .in_data_in(i_next_cleanups40_qspline38_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_feedback_stall_out_13),
        .in_keep_going32(redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i4_cleanups35_push13_qspline39_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i4_cleanups35_push13_qspline39_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together86_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together86_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together86_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together86_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together86_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together86_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together86_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_762(CONSTANT,30)
    assign c_i4_762_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2(BLACKBOX,87)@3
    // out out_feedback_stall_out_13@20000000
    qspline_i_llvm_fpga_pop_i4_cleanups35_pop13_0 thei_llvm_fpga_pop_i4_cleanups35_pop13_qspline2 (
        .in_data_in(c_i4_762_q),
        .in_dir(redist1_sync_together86_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_13(i_llvm_fpga_push_i4_cleanups35_push13_qspline39_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i4_cleanups35_push13_qspline39_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup37_qspline3_sel_x(BITSELECT,199)@3
    assign i_first_cleanup37_qspline3_sel_x_b = i_llvm_fpga_pop_i4_cleanups35_pop13_qspline2_out_data_out[0:0];

    // c_i11_171(CONSTANT,5)
    assign c_i11_171_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_qspline40(ADD,70)@3
    assign i_fpga_indvars_iv_next_qspline40_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32_out_data_out};
    assign i_fpga_indvars_iv_next_qspline40_b = {1'b0, c_i11_171_q};
    assign i_fpga_indvars_iv_next_qspline40_o = $unsigned(i_fpga_indvars_iv_next_qspline40_a) + $unsigned(i_fpga_indvars_iv_next_qspline40_b);
    assign i_fpga_indvars_iv_next_qspline40_q = i_fpga_indvars_iv_next_qspline40_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_qspline40_sel_x(BITSELECT,109)@3
    assign bgTrunc_i_fpga_indvars_iv_next_qspline40_sel_x_b = i_fpga_indvars_iv_next_qspline40_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41(BLACKBOX,89)@3
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    qspline_i_llvm_fpga_push_i11_fpga_indvars_iv_push10_0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_qspline40_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32_out_feedback_stall_out_10),
        .in_keep_going32(redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102269(CONSTANT,4)
    assign c_i11_102269_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32(BLACKBOX,85)@3
    // out out_feedback_stall_out_10@20000000
    qspline_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32 (
        .in_data_in(c_i11_102269_q),
        .in_dir(redist1_sync_together86_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_qspline41_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_qspline33_cmp_nsign(LOGICAL,231)@3
    assign i_exitcond_qspline33_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_qspline32_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond42_qspline36(BLACKBOX,91)@3
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    qspline_i_llvm_fpga_push_i1_notexitcond42_0 thei_llvm_fpga_push_i1_notexitcond42_qspline36 (
        .in_data_in(i_exitcond_qspline33_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going32_qspline6_out_not_exitcond_stall_out),
        .in_first_cleanup37(i_first_cleanup37_qspline3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond42_qspline36_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond42_qspline36_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,212)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid369_i_next_initerations31_qspline0_shift_x(BITSELECT,368)@2
    assign rightShiftStage0Idx1Rng1_uid369_i_next_initerations31_qspline0_shift_x_b = i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid371_i_next_initerations31_qspline0_shift_x(BITJOIN,370)@2
    assign rightShiftStage0Idx1_uid371_i_next_initerations31_qspline0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid369_i_next_initerations31_qspline0_shift_x_b};

    // valid_fanout_reg1(REG,210)@1 + 1
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

    // valid_fanout_reg2(REG,211)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations30_push12_qspline9(BLACKBOX,94)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    qspline_i_llvm_fpga_push_i4_initerations30_push12_0 thei_llvm_fpga_push_i4_initerations30_push12_qspline9 (
        .in_data_in(i_next_initerations31_qspline8_vt_join_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_feedback_stall_out_12),
        .in_keep_going32(redist5_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i4_initerations30_push12_qspline9_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i4_initerations30_push12_qspline9_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations30_pop12_qspline7(BLACKBOX,88)@2
    // out out_feedback_stall_out_12@20000000
    qspline_i_llvm_fpga_pop_i4_initerations30_pop12_0 thei_llvm_fpga_pop_i4_initerations30_pop12_qspline7 (
        .in_data_in(c_i4_762_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i4_initerations30_push12_qspline9_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i4_initerations30_push12_qspline9_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x(MUX,372)@2
    assign rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_s or i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_data_out or rightShiftStage0Idx1_uid371_i_next_initerations31_qspline0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_s)
            1'b0 : rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_q = i_llvm_fpga_pop_i4_initerations30_pop12_qspline7_out_data_out;
            1'b1 : rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_q = rightShiftStage0Idx1_uid371_i_next_initerations31_qspline0_shift_x_q;
            default : rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations31_qspline8_vt_select_2(BITSELECT,99)@2
    assign i_next_initerations31_qspline8_vt_select_2_b = rightShiftStage0_uid373_i_next_initerations31_qspline0_shift_x_q[2:0];

    // i_next_initerations31_qspline8_vt_join(BITJOIN,98)@2
    assign i_next_initerations31_qspline8_vt_join_q = {GND_q, i_next_initerations31_qspline8_vt_select_2_b};

    // i_last_initeration33_qspline10_sel_x(BITSELECT,201)@2
    assign i_last_initeration33_qspline10_sel_x_b = i_next_initerations31_qspline8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration34_qspline11(BLACKBOX,90)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    qspline_i_llvm_fpga_push_i1_lastiniteration34_0 thei_llvm_fpga_push_i1_lastiniteration34_qspline11 (
        .in_data_in(i_last_initeration33_qspline10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going32_qspline6_out_initeration_stall_out),
        .in_keep_going32(redist5_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration34_qspline11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration34_qspline11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_qspline6(BLACKBOX,84)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    qspline_i_llvm_fpga_pipeline_keep_going32_0 thei_llvm_fpga_pipeline_keep_going32_qspline6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration34_qspline11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration34_qspline11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond42_qspline36_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond42_qspline36_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going32_qspline6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going32_qspline6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going32_qspline6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going32_qspline6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going32_qspline6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,39)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_qspline6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going32_qspline6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_qspline6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going32_qspline6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,106)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going32_qspline6_out_pipeline_valid_out;

    // i_conv_qspline14_vt_const_15(CONSTANT,65)
    assign i_conv_qspline14_vt_const_15_q = $unsigned(6'b000000);

    // c_i16_102366(CONSTANT,7)
    assign c_i16_102366_q = $unsigned(16'b0000001111111111);

    // valid_fanout_reg4(REG,213)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,221)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_168(CONSTANT,28)
    assign c_i32_168_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_qspline30(ADD,75)@3
    assign i_inc_qspline30_a = {1'b0, redist4_i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out_1_q};
    assign i_inc_qspline30_b = {1'b0, c_i32_168_q};
    assign i_inc_qspline30_o = $unsigned(i_inc_qspline30_a) + $unsigned(i_inc_qspline30_b);
    assign i_inc_qspline30_q = i_inc_qspline30_o[32:0];

    // bgTrunc_i_inc_qspline30_sel_x(BITSELECT,110)@3
    assign bgTrunc_i_inc_qspline30_sel_x_b = i_inc_qspline30_q[31:0];

    // i_llvm_fpga_push_i32_k_051_push11_qspline31(BLACKBOX,92)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    qspline_i_llvm_fpga_push_i32_k_051_push11_0 thei_llvm_fpga_push_i32_k_051_push11_qspline31 (
        .in_data_in(bgTrunc_i_inc_qspline30_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_feedback_stall_out_11),
        .in_keep_going32(redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_k_051_push11_qspline31_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_k_051_push11_qspline31_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_065(CONSTANT,27)
    assign c_i32_065_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_051_pop11_qspline12(BLACKBOX,86)@2
    // out out_feedback_stall_out_11@20000000
    qspline_i_llvm_fpga_pop_i32_k_051_pop11_0 thei_llvm_fpga_pop_i32_k_051_pop11_qspline12 (
        .in_data_in(c_i32_065_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_k_051_push11_qspline31_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_k_051_push11_qspline31_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out_1(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out);
        end
    end

    // i_unnamed_qspline13_sel_x(BITSELECT,206)@3
    assign i_unnamed_qspline13_sel_x_b = redist4_i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out_1_q[15:0];

    // i_conv_qspline14(LOGICAL,64)@3
    assign i_conv_qspline14_q = i_unnamed_qspline13_sel_x_b & c_i16_102366_q;

    // i_conv_qspline14_vt_select_9(BITSELECT,67)@3
    assign i_conv_qspline14_vt_select_9_b = i_conv_qspline14_q[9:0];

    // i_conv_qspline14_vt_join(BITJOIN,66)@3
    assign i_conv_qspline14_vt_join_q = {i_conv_qspline14_vt_const_15_q, i_conv_qspline14_vt_select_9_b};

    // valid_fanout_reg5(REG,214)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx165_qspline0_mult_multconst_x(CONSTANT,132)
    assign i_arrayidx165_qspline0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_qspline15_sel_x(BITSELECT,200)@3
    assign i_idxprom_qspline15_sel_x_b = {32'b00000000000000000000000000000000, redist4_i_llvm_fpga_pop_i32_k_051_pop11_qspline12_out_data_out_1_q[31:0]};

    // i_idxprom_qspline15_vt_select_31(BITSELECT,74)@3
    assign i_idxprom_qspline15_vt_select_31_b = i_idxprom_qspline15_sel_x_b[31:0];

    // i_idxprom_qspline15_vt_join(BITJOIN,73)@3
    assign i_idxprom_qspline15_vt_join_q = {c_i32_065_q, i_idxprom_qspline15_vt_select_31_b};

    // i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select(BITSELECT,402)@3
    assign i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b = i_idxprom_qspline15_vt_join_q[63:54];
    assign i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c = i_idxprom_qspline15_vt_join_q[53:36];
    assign i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d = i_idxprom_qspline15_vt_join_q[35:18];
    assign i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e = i_idxprom_qspline15_vt_join_q[17:0];

    // i_arrayidx1_qspline0_mult_x_im0_shift0(BITSHIFT,378)@3
    assign i_arrayidx1_qspline0_mult_x_im0_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx1_qspline0_mult_x_im0_shift0_q = i_arrayidx1_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx1_qspline0_mult_x_sums_align_3(BITSHIFT,265)@3
    assign i_arrayidx1_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx1_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_qspline0_mult_x_sums_align_3_q = i_arrayidx1_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx1_qspline0_mult_x_im6_shift0(BITSHIFT,380)@3
    assign i_arrayidx1_qspline0_mult_x_im6_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx1_qspline0_mult_x_im6_shift0_q = i_arrayidx1_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx1_qspline0_mult_x_sums_align_2(BITSHIFT,264)@3
    assign i_arrayidx1_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx1_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx1_qspline0_mult_x_sums_align_2_q = i_arrayidx1_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx1_qspline0_mult_x_sums_join_4(BITJOIN,266)@3
    assign i_arrayidx1_qspline0_mult_x_sums_join_4_q = {i_arrayidx1_qspline0_mult_x_sums_align_3_q, i_arrayidx1_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx1_qspline0_mult_x_im3_shift0(BITSHIFT,379)@3
    assign i_arrayidx1_qspline0_mult_x_im3_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx1_qspline0_mult_x_im3_shift0_q = i_arrayidx1_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx1_qspline0_mult_x_sums_align_0(BITSHIFT,262)@3
    assign i_arrayidx1_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx1_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_qspline0_mult_x_sums_align_0_q = i_arrayidx1_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx1_qspline0_mult_x_im9_shift0(BITSHIFT,381)@3
    assign i_arrayidx1_qspline0_mult_x_im9_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx1_qspline0_mult_x_im9_shift0_q = i_arrayidx1_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx1_qspline0_mult_x_sums_join_1(BITJOIN,263)@3
    assign i_arrayidx1_qspline0_mult_x_sums_join_1_q = {i_arrayidx1_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx1_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx1_qspline0_mult_x_sums_result_add_0_0(ADD,267)@3
    assign i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx1_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx1_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx1_qspline0_mult_extender_x(BITJOIN,141)@3
    assign i_arrayidx1_qspline0_mult_extender_x_q = {i_arrayidx165_qspline0_mult_multconst_x_q, i_arrayidx1_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx1_qspline0_trunc_sel_x(BITSELECT,143)@3
    assign i_arrayidx1_qspline0_trunc_sel_x_b = i_arrayidx1_qspline0_mult_extender_x_q[63:0];

    // c_qspline_a_pmem(CONSTANT,31)
    assign c_qspline_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx1_qspline0_add_x(ADD,135)@3
    assign i_arrayidx1_qspline0_add_x_a = {1'b0, c_qspline_a_pmem_q};
    assign i_arrayidx1_qspline0_add_x_b = {1'b0, i_arrayidx1_qspline0_trunc_sel_x_b};
    assign i_arrayidx1_qspline0_add_x_o = $unsigned(i_arrayidx1_qspline0_add_x_a) + $unsigned(i_arrayidx1_qspline0_add_x_b);
    assign i_arrayidx1_qspline0_add_x_q = i_arrayidx1_qspline0_add_x_o[64:0];

    // i_arrayidx1_qspline0_dupName_0_trunc_sel_x(BITSELECT,144)@3
    assign i_arrayidx1_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx1_qspline0_add_x_q[63:0];

    // i_arrayidx1_qspline16_vt_select_63(BITSELECT,45)@3
    assign i_arrayidx1_qspline16_vt_select_63_b = i_arrayidx1_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx1_qspline16_vt_join(BITJOIN,44)@3
    assign i_arrayidx1_qspline16_vt_join_q = {i_arrayidx1_qspline16_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_qspline17(BLACKBOX,83)@3
    // out out_memdep_qspline_avm_address@20000000
    // out out_memdep_qspline_avm_burstcount@20000000
    // out out_memdep_qspline_avm_byteenable@20000000
    // out out_memdep_qspline_avm_enable@20000000
    // out out_memdep_qspline_avm_read@20000000
    // out out_memdep_qspline_avm_write@20000000
    // out out_memdep_qspline_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    qspline_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_qspline17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_qspline16_vt_join_q),
        .in_i_predicate(i_xor38_qspline4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(i_conv_qspline14_vt_join_q),
        .in_memdep_qspline_avm_readdata(in_memdep_qspline_avm_readdata),
        .in_memdep_qspline_avm_readdatavalid(in_memdep_qspline_avm_readdatavalid),
        .in_memdep_qspline_avm_waitrequest(in_memdep_qspline_avm_waitrequest),
        .in_memdep_qspline_avm_writeack(in_memdep_qspline_avm_writeack),
        .out_memdep_qspline_avm_address(i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_address),
        .out_memdep_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_burstcount),
        .out_memdep_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_byteenable),
        .out_memdep_qspline_avm_enable(i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_enable),
        .out_memdep_qspline_avm_read(i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_read),
        .out_memdep_qspline_avm_write(i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_write),
        .out_memdep_qspline_avm_writedata(i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,113)
    assign out_memdep_qspline_avm_address = i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_address;
    assign out_memdep_qspline_avm_enable = i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_enable;
    assign out_memdep_qspline_avm_read = i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_read;
    assign out_memdep_qspline_avm_write = i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_write;
    assign out_memdep_qspline_avm_writedata = i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_writedata;
    assign out_memdep_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_byteenable;
    assign out_memdep_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_qspline17_out_memdep_qspline_avm_burstcount;

    // valid_fanout_reg6(REG,215)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx42_qspline0_mult_x_im0_shift0(BITSHIFT,394)@3
    assign i_arrayidx42_qspline0_mult_x_im0_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx42_qspline0_mult_x_im0_shift0_q = i_arrayidx42_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx42_qspline0_mult_x_sums_align_3(BITSHIFT,337)@3
    assign i_arrayidx42_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx42_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx42_qspline0_mult_x_sums_align_3_q = i_arrayidx42_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx42_qspline0_mult_x_im6_shift0(BITSHIFT,396)@3
    assign i_arrayidx42_qspline0_mult_x_im6_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx42_qspline0_mult_x_im6_shift0_q = i_arrayidx42_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx42_qspline0_mult_x_sums_align_2(BITSHIFT,336)@3
    assign i_arrayidx42_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx42_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx42_qspline0_mult_x_sums_align_2_q = i_arrayidx42_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx42_qspline0_mult_x_sums_join_4(BITJOIN,338)@3
    assign i_arrayidx42_qspline0_mult_x_sums_join_4_q = {i_arrayidx42_qspline0_mult_x_sums_align_3_q, i_arrayidx42_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx42_qspline0_mult_x_im3_shift0(BITSHIFT,395)@3
    assign i_arrayidx42_qspline0_mult_x_im3_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx42_qspline0_mult_x_im3_shift0_q = i_arrayidx42_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx42_qspline0_mult_x_sums_align_0(BITSHIFT,334)@3
    assign i_arrayidx42_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx42_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx42_qspline0_mult_x_sums_align_0_q = i_arrayidx42_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx42_qspline0_mult_x_im9_shift0(BITSHIFT,397)@3
    assign i_arrayidx42_qspline0_mult_x_im9_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx42_qspline0_mult_x_im9_shift0_q = i_arrayidx42_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx42_qspline0_mult_x_sums_join_1(BITJOIN,335)@3
    assign i_arrayidx42_qspline0_mult_x_sums_join_1_q = {i_arrayidx42_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx42_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx42_qspline0_mult_x_sums_result_add_0_0(ADD,339)@3
    assign i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx42_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx42_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx42_qspline0_mult_extender_x(BITJOIN,181)@3
    assign i_arrayidx42_qspline0_mult_extender_x_q = {i_arrayidx165_qspline0_mult_multconst_x_q, i_arrayidx42_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx42_qspline0_trunc_sel_x(BITSELECT,183)@3
    assign i_arrayidx42_qspline0_trunc_sel_x_b = i_arrayidx42_qspline0_mult_extender_x_q[63:0];

    // c_qspline_b_pmem(CONSTANT,32)
    assign c_qspline_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx42_qspline0_add_x(ADD,175)@3
    assign i_arrayidx42_qspline0_add_x_a = {1'b0, c_qspline_b_pmem_q};
    assign i_arrayidx42_qspline0_add_x_b = {1'b0, i_arrayidx42_qspline0_trunc_sel_x_b};
    assign i_arrayidx42_qspline0_add_x_o = $unsigned(i_arrayidx42_qspline0_add_x_a) + $unsigned(i_arrayidx42_qspline0_add_x_b);
    assign i_arrayidx42_qspline0_add_x_q = i_arrayidx42_qspline0_add_x_o[64:0];

    // i_arrayidx42_qspline0_dupName_0_trunc_sel_x(BITSELECT,184)@3
    assign i_arrayidx42_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx42_qspline0_add_x_q[63:0];

    // i_arrayidx42_qspline18_vt_select_63(BITSELECT,57)@3
    assign i_arrayidx42_qspline18_vt_select_63_b = i_arrayidx42_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx42_qspline18_vt_join(BITJOIN,56)@3
    assign i_arrayidx42_qspline18_vt_join_q = {i_arrayidx42_qspline18_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_1_qspline19(BLACKBOX,77)@3
    // out out_memdep_1_qspline_avm_address@20000000
    // out out_memdep_1_qspline_avm_burstcount@20000000
    // out out_memdep_1_qspline_avm_byteenable@20000000
    // out out_memdep_1_qspline_avm_enable@20000000
    // out out_memdep_1_qspline_avm_read@20000000
    // out out_memdep_1_qspline_avm_write@20000000
    // out out_memdep_1_qspline_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    qspline_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_qspline19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_qspline18_vt_join_q),
        .in_i_predicate(i_xor38_qspline4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_conv_qspline14_vt_join_q),
        .in_memdep_1_qspline_avm_readdata(in_memdep_1_qspline_avm_readdata),
        .in_memdep_1_qspline_avm_readdatavalid(in_memdep_1_qspline_avm_readdatavalid),
        .in_memdep_1_qspline_avm_waitrequest(in_memdep_1_qspline_avm_waitrequest),
        .in_memdep_1_qspline_avm_writeack(in_memdep_1_qspline_avm_writeack),
        .out_memdep_1_qspline_avm_address(i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_address),
        .out_memdep_1_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_burstcount),
        .out_memdep_1_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_byteenable),
        .out_memdep_1_qspline_avm_enable(i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_enable),
        .out_memdep_1_qspline_avm_read(i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_read),
        .out_memdep_1_qspline_avm_write(i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_write),
        .out_memdep_1_qspline_avm_writedata(i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,115)
    assign out_memdep_1_qspline_avm_address = i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_address;
    assign out_memdep_1_qspline_avm_enable = i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_enable;
    assign out_memdep_1_qspline_avm_read = i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_read;
    assign out_memdep_1_qspline_avm_write = i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_write;
    assign out_memdep_1_qspline_avm_writedata = i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_writedata;
    assign out_memdep_1_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_byteenable;
    assign out_memdep_1_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_1_qspline19_out_memdep_1_qspline_avm_burstcount;

    // valid_fanout_reg7(REG,216)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx84_qspline0_mult_x_im0_shift0(BITSHIFT,398)@3
    assign i_arrayidx84_qspline0_mult_x_im0_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx84_qspline0_mult_x_im0_shift0_q = i_arrayidx84_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx84_qspline0_mult_x_sums_align_3(BITSHIFT,355)@3
    assign i_arrayidx84_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx84_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx84_qspline0_mult_x_sums_align_3_q = i_arrayidx84_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx84_qspline0_mult_x_im6_shift0(BITSHIFT,400)@3
    assign i_arrayidx84_qspline0_mult_x_im6_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx84_qspline0_mult_x_im6_shift0_q = i_arrayidx84_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx84_qspline0_mult_x_sums_align_2(BITSHIFT,354)@3
    assign i_arrayidx84_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx84_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx84_qspline0_mult_x_sums_align_2_q = i_arrayidx84_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx84_qspline0_mult_x_sums_join_4(BITJOIN,356)@3
    assign i_arrayidx84_qspline0_mult_x_sums_join_4_q = {i_arrayidx84_qspline0_mult_x_sums_align_3_q, i_arrayidx84_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx84_qspline0_mult_x_im3_shift0(BITSHIFT,399)@3
    assign i_arrayidx84_qspline0_mult_x_im3_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx84_qspline0_mult_x_im3_shift0_q = i_arrayidx84_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx84_qspline0_mult_x_sums_align_0(BITSHIFT,352)@3
    assign i_arrayidx84_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx84_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx84_qspline0_mult_x_sums_align_0_q = i_arrayidx84_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx84_qspline0_mult_x_im9_shift0(BITSHIFT,401)@3
    assign i_arrayidx84_qspline0_mult_x_im9_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx84_qspline0_mult_x_im9_shift0_q = i_arrayidx84_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx84_qspline0_mult_x_sums_join_1(BITJOIN,353)@3
    assign i_arrayidx84_qspline0_mult_x_sums_join_1_q = {i_arrayidx84_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx84_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx84_qspline0_mult_x_sums_result_add_0_0(ADD,357)@3
    assign i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx84_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx84_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx84_qspline0_mult_extender_x(BITJOIN,191)@3
    assign i_arrayidx84_qspline0_mult_extender_x_q = {i_arrayidx165_qspline0_mult_multconst_x_q, i_arrayidx84_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx84_qspline0_trunc_sel_x(BITSELECT,193)@3
    assign i_arrayidx84_qspline0_trunc_sel_x_b = i_arrayidx84_qspline0_mult_extender_x_q[63:0];

    // c_qspline_c_pmem(CONSTANT,33)
    assign c_qspline_c_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx84_qspline0_add_x(ADD,185)@3
    assign i_arrayidx84_qspline0_add_x_a = {1'b0, c_qspline_c_pmem_q};
    assign i_arrayidx84_qspline0_add_x_b = {1'b0, i_arrayidx84_qspline0_trunc_sel_x_b};
    assign i_arrayidx84_qspline0_add_x_o = $unsigned(i_arrayidx84_qspline0_add_x_a) + $unsigned(i_arrayidx84_qspline0_add_x_b);
    assign i_arrayidx84_qspline0_add_x_q = i_arrayidx84_qspline0_add_x_o[64:0];

    // i_arrayidx84_qspline0_dupName_0_trunc_sel_x(BITSELECT,194)@3
    assign i_arrayidx84_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx84_qspline0_add_x_q[63:0];

    // i_arrayidx84_qspline20_vt_select_63(BITSELECT,60)@3
    assign i_arrayidx84_qspline20_vt_select_63_b = i_arrayidx84_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx84_qspline20_vt_join(BITJOIN,59)@3
    assign i_arrayidx84_qspline20_vt_join_q = {i_arrayidx84_qspline20_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_2_qspline21(BLACKBOX,78)@3
    // out out_memdep_2_qspline_avm_address@20000000
    // out out_memdep_2_qspline_avm_burstcount@20000000
    // out out_memdep_2_qspline_avm_byteenable@20000000
    // out out_memdep_2_qspline_avm_enable@20000000
    // out out_memdep_2_qspline_avm_read@20000000
    // out out_memdep_2_qspline_avm_write@20000000
    // out out_memdep_2_qspline_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    qspline_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_qspline21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx84_qspline20_vt_join_q),
        .in_i_predicate(i_xor38_qspline4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(i_conv_qspline14_vt_join_q),
        .in_memdep_2_qspline_avm_readdata(in_memdep_2_qspline_avm_readdata),
        .in_memdep_2_qspline_avm_readdatavalid(in_memdep_2_qspline_avm_readdatavalid),
        .in_memdep_2_qspline_avm_waitrequest(in_memdep_2_qspline_avm_waitrequest),
        .in_memdep_2_qspline_avm_writeack(in_memdep_2_qspline_avm_writeack),
        .out_memdep_2_qspline_avm_address(i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_address),
        .out_memdep_2_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_burstcount),
        .out_memdep_2_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_byteenable),
        .out_memdep_2_qspline_avm_enable(i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_enable),
        .out_memdep_2_qspline_avm_read(i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_read),
        .out_memdep_2_qspline_avm_write(i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_write),
        .out_memdep_2_qspline_avm_writedata(i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,117)
    assign out_memdep_2_qspline_avm_address = i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_address;
    assign out_memdep_2_qspline_avm_enable = i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_enable;
    assign out_memdep_2_qspline_avm_read = i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_read;
    assign out_memdep_2_qspline_avm_write = i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_write;
    assign out_memdep_2_qspline_avm_writedata = i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_writedata;
    assign out_memdep_2_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_byteenable;
    assign out_memdep_2_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_2_qspline21_out_memdep_2_qspline_avm_burstcount;

    // valid_fanout_reg8(REG,217)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx165_qspline0_mult_x_im0_shift0(BITSHIFT,374)@3
    assign i_arrayidx165_qspline0_mult_x_im0_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx165_qspline0_mult_x_im0_shift0_q = i_arrayidx165_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx165_qspline0_mult_x_sums_align_3(BITSHIFT,247)@3
    assign i_arrayidx165_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx165_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx165_qspline0_mult_x_sums_align_3_q = i_arrayidx165_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx165_qspline0_mult_x_im6_shift0(BITSHIFT,376)@3
    assign i_arrayidx165_qspline0_mult_x_im6_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx165_qspline0_mult_x_im6_shift0_q = i_arrayidx165_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx165_qspline0_mult_x_sums_align_2(BITSHIFT,246)@3
    assign i_arrayidx165_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx165_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx165_qspline0_mult_x_sums_align_2_q = i_arrayidx165_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx165_qspline0_mult_x_sums_join_4(BITJOIN,248)@3
    assign i_arrayidx165_qspline0_mult_x_sums_join_4_q = {i_arrayidx165_qspline0_mult_x_sums_align_3_q, i_arrayidx165_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx165_qspline0_mult_x_im3_shift0(BITSHIFT,375)@3
    assign i_arrayidx165_qspline0_mult_x_im3_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx165_qspline0_mult_x_im3_shift0_q = i_arrayidx165_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx165_qspline0_mult_x_sums_align_0(BITSHIFT,244)@3
    assign i_arrayidx165_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx165_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx165_qspline0_mult_x_sums_align_0_q = i_arrayidx165_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx165_qspline0_mult_x_im9_shift0(BITSHIFT,377)@3
    assign i_arrayidx165_qspline0_mult_x_im9_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx165_qspline0_mult_x_im9_shift0_q = i_arrayidx165_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx165_qspline0_mult_x_sums_join_1(BITJOIN,245)@3
    assign i_arrayidx165_qspline0_mult_x_sums_join_1_q = {i_arrayidx165_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx165_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx165_qspline0_mult_x_sums_result_add_0_0(ADD,249)@3
    assign i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx165_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx165_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx165_qspline0_mult_extender_x(BITJOIN,131)@3
    assign i_arrayidx165_qspline0_mult_extender_x_q = {i_arrayidx165_qspline0_mult_multconst_x_q, i_arrayidx165_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx165_qspline0_trunc_sel_x(BITSELECT,133)@3
    assign i_arrayidx165_qspline0_trunc_sel_x_b = i_arrayidx165_qspline0_mult_extender_x_q[63:0];

    // c_qspline_e_pmem(CONSTANT,34)
    assign c_qspline_e_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx165_qspline0_add_x(ADD,125)@3
    assign i_arrayidx165_qspline0_add_x_a = {1'b0, c_qspline_e_pmem_q};
    assign i_arrayidx165_qspline0_add_x_b = {1'b0, i_arrayidx165_qspline0_trunc_sel_x_b};
    assign i_arrayidx165_qspline0_add_x_o = $unsigned(i_arrayidx165_qspline0_add_x_a) + $unsigned(i_arrayidx165_qspline0_add_x_b);
    assign i_arrayidx165_qspline0_add_x_q = i_arrayidx165_qspline0_add_x_o[64:0];

    // i_arrayidx165_qspline0_dupName_0_trunc_sel_x(BITSELECT,134)@3
    assign i_arrayidx165_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx165_qspline0_add_x_q[63:0];

    // i_arrayidx165_qspline22_vt_select_63(BITSELECT,42)@3
    assign i_arrayidx165_qspline22_vt_select_63_b = i_arrayidx165_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx165_qspline22_vt_join(BITJOIN,41)@3
    assign i_arrayidx165_qspline22_vt_join_q = {i_arrayidx165_qspline22_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_3_qspline23(BLACKBOX,79)@3
    // out out_memdep_3_qspline_avm_address@20000000
    // out out_memdep_3_qspline_avm_burstcount@20000000
    // out out_memdep_3_qspline_avm_byteenable@20000000
    // out out_memdep_3_qspline_avm_enable@20000000
    // out out_memdep_3_qspline_avm_read@20000000
    // out out_memdep_3_qspline_avm_write@20000000
    // out out_memdep_3_qspline_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    qspline_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_qspline23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx165_qspline22_vt_join_q),
        .in_i_predicate(i_xor38_qspline4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_i_writedata(i_conv_qspline14_vt_join_q),
        .in_memdep_3_qspline_avm_readdata(in_memdep_3_qspline_avm_readdata),
        .in_memdep_3_qspline_avm_readdatavalid(in_memdep_3_qspline_avm_readdatavalid),
        .in_memdep_3_qspline_avm_waitrequest(in_memdep_3_qspline_avm_waitrequest),
        .in_memdep_3_qspline_avm_writeack(in_memdep_3_qspline_avm_writeack),
        .out_memdep_3_qspline_avm_address(i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_address),
        .out_memdep_3_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_burstcount),
        .out_memdep_3_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_byteenable),
        .out_memdep_3_qspline_avm_enable(i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_enable),
        .out_memdep_3_qspline_avm_read(i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_read),
        .out_memdep_3_qspline_avm_write(i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_write),
        .out_memdep_3_qspline_avm_writedata(i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,119)
    assign out_memdep_3_qspline_avm_address = i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_address;
    assign out_memdep_3_qspline_avm_enable = i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_enable;
    assign out_memdep_3_qspline_avm_read = i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_read;
    assign out_memdep_3_qspline_avm_write = i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_write;
    assign out_memdep_3_qspline_avm_writedata = i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_writedata;
    assign out_memdep_3_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_byteenable;
    assign out_memdep_3_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_3_qspline23_out_memdep_3_qspline_avm_burstcount;

    // valid_fanout_reg9(REG,218)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx206_qspline0_mult_x_im0_shift0(BITSHIFT,382)@3
    assign i_arrayidx206_qspline0_mult_x_im0_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx206_qspline0_mult_x_im0_shift0_q = i_arrayidx206_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx206_qspline0_mult_x_sums_align_3(BITSHIFT,283)@3
    assign i_arrayidx206_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx206_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx206_qspline0_mult_x_sums_align_3_q = i_arrayidx206_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx206_qspline0_mult_x_im6_shift0(BITSHIFT,384)@3
    assign i_arrayidx206_qspline0_mult_x_im6_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx206_qspline0_mult_x_im6_shift0_q = i_arrayidx206_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx206_qspline0_mult_x_sums_align_2(BITSHIFT,282)@3
    assign i_arrayidx206_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx206_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx206_qspline0_mult_x_sums_align_2_q = i_arrayidx206_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx206_qspline0_mult_x_sums_join_4(BITJOIN,284)@3
    assign i_arrayidx206_qspline0_mult_x_sums_join_4_q = {i_arrayidx206_qspline0_mult_x_sums_align_3_q, i_arrayidx206_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx206_qspline0_mult_x_im3_shift0(BITSHIFT,383)@3
    assign i_arrayidx206_qspline0_mult_x_im3_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx206_qspline0_mult_x_im3_shift0_q = i_arrayidx206_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx206_qspline0_mult_x_sums_align_0(BITSHIFT,280)@3
    assign i_arrayidx206_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx206_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx206_qspline0_mult_x_sums_align_0_q = i_arrayidx206_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx206_qspline0_mult_x_im9_shift0(BITSHIFT,385)@3
    assign i_arrayidx206_qspline0_mult_x_im9_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx206_qspline0_mult_x_im9_shift0_q = i_arrayidx206_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx206_qspline0_mult_x_sums_join_1(BITJOIN,281)@3
    assign i_arrayidx206_qspline0_mult_x_sums_join_1_q = {i_arrayidx206_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx206_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx206_qspline0_mult_x_sums_result_add_0_0(ADD,285)@3
    assign i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx206_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx206_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx206_qspline0_mult_extender_x(BITJOIN,151)@3
    assign i_arrayidx206_qspline0_mult_extender_x_q = {i_arrayidx165_qspline0_mult_multconst_x_q, i_arrayidx206_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx206_qspline0_trunc_sel_x(BITSELECT,153)@3
    assign i_arrayidx206_qspline0_trunc_sel_x_b = i_arrayidx206_qspline0_mult_extender_x_q[63:0];

    // c_qspline_f_pmem(CONSTANT,35)
    assign c_qspline_f_pmem_q = $unsigned(64'b0100000000001010000000000000000000000000000000000000000000000000);

    // i_arrayidx206_qspline0_add_x(ADD,145)@3
    assign i_arrayidx206_qspline0_add_x_a = {1'b0, c_qspline_f_pmem_q};
    assign i_arrayidx206_qspline0_add_x_b = {1'b0, i_arrayidx206_qspline0_trunc_sel_x_b};
    assign i_arrayidx206_qspline0_add_x_o = $unsigned(i_arrayidx206_qspline0_add_x_a) + $unsigned(i_arrayidx206_qspline0_add_x_b);
    assign i_arrayidx206_qspline0_add_x_q = i_arrayidx206_qspline0_add_x_o[64:0];

    // i_arrayidx206_qspline0_dupName_0_trunc_sel_x(BITSELECT,154)@3
    assign i_arrayidx206_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx206_qspline0_add_x_q[63:0];

    // i_arrayidx206_qspline24_vt_select_63(BITSELECT,48)@3
    assign i_arrayidx206_qspline24_vt_select_63_b = i_arrayidx206_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx206_qspline24_vt_join(BITJOIN,47)@3
    assign i_arrayidx206_qspline24_vt_join_q = {i_arrayidx206_qspline24_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_4_qspline25(BLACKBOX,80)@3
    // out out_memdep_4_qspline_avm_address@20000000
    // out out_memdep_4_qspline_avm_burstcount@20000000
    // out out_memdep_4_qspline_avm_byteenable@20000000
    // out out_memdep_4_qspline_avm_enable@20000000
    // out out_memdep_4_qspline_avm_read@20000000
    // out out_memdep_4_qspline_avm_write@20000000
    // out out_memdep_4_qspline_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    qspline_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_qspline25 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx206_qspline24_vt_join_q),
        .in_i_predicate(i_xor38_qspline4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_conv_qspline14_vt_join_q),
        .in_memdep_4_qspline_avm_readdata(in_memdep_4_qspline_avm_readdata),
        .in_memdep_4_qspline_avm_readdatavalid(in_memdep_4_qspline_avm_readdatavalid),
        .in_memdep_4_qspline_avm_waitrequest(in_memdep_4_qspline_avm_waitrequest),
        .in_memdep_4_qspline_avm_writeack(in_memdep_4_qspline_avm_writeack),
        .out_memdep_4_qspline_avm_address(i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_address),
        .out_memdep_4_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_burstcount),
        .out_memdep_4_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_byteenable),
        .out_memdep_4_qspline_avm_enable(i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_enable),
        .out_memdep_4_qspline_avm_read(i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_read),
        .out_memdep_4_qspline_avm_write(i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_write),
        .out_memdep_4_qspline_avm_writedata(i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_ext_sig_sync_out_x(GPOUT,121)
    assign out_memdep_4_qspline_avm_address = i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_address;
    assign out_memdep_4_qspline_avm_enable = i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_enable;
    assign out_memdep_4_qspline_avm_read = i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_read;
    assign out_memdep_4_qspline_avm_write = i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_write;
    assign out_memdep_4_qspline_avm_writedata = i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_writedata;
    assign out_memdep_4_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_byteenable;
    assign out_memdep_4_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_4_qspline25_out_memdep_4_qspline_avm_burstcount;

    // valid_fanout_reg10(REG,219)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx247_qspline0_mult_x_im0_shift0(BITSHIFT,386)@3
    assign i_arrayidx247_qspline0_mult_x_im0_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx247_qspline0_mult_x_im0_shift0_q = i_arrayidx247_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx247_qspline0_mult_x_sums_align_3(BITSHIFT,301)@3
    assign i_arrayidx247_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx247_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx247_qspline0_mult_x_sums_align_3_q = i_arrayidx247_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx247_qspline0_mult_x_im6_shift0(BITSHIFT,388)@3
    assign i_arrayidx247_qspline0_mult_x_im6_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx247_qspline0_mult_x_im6_shift0_q = i_arrayidx247_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx247_qspline0_mult_x_sums_align_2(BITSHIFT,300)@3
    assign i_arrayidx247_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx247_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx247_qspline0_mult_x_sums_align_2_q = i_arrayidx247_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx247_qspline0_mult_x_sums_join_4(BITJOIN,302)@3
    assign i_arrayidx247_qspline0_mult_x_sums_join_4_q = {i_arrayidx247_qspline0_mult_x_sums_align_3_q, i_arrayidx247_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx247_qspline0_mult_x_im3_shift0(BITSHIFT,387)@3
    assign i_arrayidx247_qspline0_mult_x_im3_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx247_qspline0_mult_x_im3_shift0_q = i_arrayidx247_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx247_qspline0_mult_x_sums_align_0(BITSHIFT,298)@3
    assign i_arrayidx247_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx247_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx247_qspline0_mult_x_sums_align_0_q = i_arrayidx247_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx247_qspline0_mult_x_im9_shift0(BITSHIFT,389)@3
    assign i_arrayidx247_qspline0_mult_x_im9_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx247_qspline0_mult_x_im9_shift0_q = i_arrayidx247_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx247_qspline0_mult_x_sums_join_1(BITJOIN,299)@3
    assign i_arrayidx247_qspline0_mult_x_sums_join_1_q = {i_arrayidx247_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx247_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx247_qspline0_mult_x_sums_result_add_0_0(ADD,303)@3
    assign i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx247_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx247_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx247_qspline0_mult_extender_x(BITJOIN,161)@3
    assign i_arrayidx247_qspline0_mult_extender_x_q = {i_arrayidx165_qspline0_mult_multconst_x_q, i_arrayidx247_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx247_qspline0_trunc_sel_x(BITSELECT,163)@3
    assign i_arrayidx247_qspline0_trunc_sel_x_b = i_arrayidx247_qspline0_mult_extender_x_q[63:0];

    // c_qspline_g_pmem(CONSTANT,36)
    assign c_qspline_g_pmem_q = $unsigned(64'b0100000000001011000000000000000000000000000000000000000000000000);

    // i_arrayidx247_qspline0_add_x(ADD,155)@3
    assign i_arrayidx247_qspline0_add_x_a = {1'b0, c_qspline_g_pmem_q};
    assign i_arrayidx247_qspline0_add_x_b = {1'b0, i_arrayidx247_qspline0_trunc_sel_x_b};
    assign i_arrayidx247_qspline0_add_x_o = $unsigned(i_arrayidx247_qspline0_add_x_a) + $unsigned(i_arrayidx247_qspline0_add_x_b);
    assign i_arrayidx247_qspline0_add_x_q = i_arrayidx247_qspline0_add_x_o[64:0];

    // i_arrayidx247_qspline0_dupName_0_trunc_sel_x(BITSELECT,164)@3
    assign i_arrayidx247_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx247_qspline0_add_x_q[63:0];

    // i_arrayidx247_qspline26_vt_select_63(BITSELECT,51)@3
    assign i_arrayidx247_qspline26_vt_select_63_b = i_arrayidx247_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx247_qspline26_vt_join(BITJOIN,50)@3
    assign i_arrayidx247_qspline26_vt_join_q = {i_arrayidx247_qspline26_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_5_qspline27(BLACKBOX,81)@3
    // out out_memdep_5_qspline_avm_address@20000000
    // out out_memdep_5_qspline_avm_burstcount@20000000
    // out out_memdep_5_qspline_avm_byteenable@20000000
    // out out_memdep_5_qspline_avm_enable@20000000
    // out out_memdep_5_qspline_avm_read@20000000
    // out out_memdep_5_qspline_avm_write@20000000
    // out out_memdep_5_qspline_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    qspline_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_qspline27 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx247_qspline26_vt_join_q),
        .in_i_predicate(i_xor38_qspline4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_i_writedata(i_conv_qspline14_vt_join_q),
        .in_memdep_5_qspline_avm_readdata(in_memdep_5_qspline_avm_readdata),
        .in_memdep_5_qspline_avm_readdatavalid(in_memdep_5_qspline_avm_readdatavalid),
        .in_memdep_5_qspline_avm_waitrequest(in_memdep_5_qspline_avm_waitrequest),
        .in_memdep_5_qspline_avm_writeack(in_memdep_5_qspline_avm_writeack),
        .out_memdep_5_qspline_avm_address(i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_address),
        .out_memdep_5_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_burstcount),
        .out_memdep_5_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_byteenable),
        .out_memdep_5_qspline_avm_enable(i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_enable),
        .out_memdep_5_qspline_avm_read(i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_read),
        .out_memdep_5_qspline_avm_write(i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_write),
        .out_memdep_5_qspline_avm_writedata(i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_ext_sig_sync_out_x(GPOUT,123)
    assign out_memdep_5_qspline_avm_address = i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_address;
    assign out_memdep_5_qspline_avm_enable = i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_enable;
    assign out_memdep_5_qspline_avm_read = i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_read;
    assign out_memdep_5_qspline_avm_write = i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_write;
    assign out_memdep_5_qspline_avm_writedata = i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_writedata;
    assign out_memdep_5_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_byteenable;
    assign out_memdep_5_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_5_qspline27_out_memdep_5_qspline_avm_burstcount;

    // c_i16_067(CONSTANT,6)
    assign c_i16_067_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg11(REG,220)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx268_qspline0_mult_x_im0_shift0(BITSHIFT,390)@3
    assign i_arrayidx268_qspline0_mult_x_im0_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx268_qspline0_mult_x_im0_shift0_q = i_arrayidx268_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx268_qspline0_mult_x_sums_align_3(BITSHIFT,319)@3
    assign i_arrayidx268_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx268_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx268_qspline0_mult_x_sums_align_3_q = i_arrayidx268_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx268_qspline0_mult_x_im6_shift0(BITSHIFT,392)@3
    assign i_arrayidx268_qspline0_mult_x_im6_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx268_qspline0_mult_x_im6_shift0_q = i_arrayidx268_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx268_qspline0_mult_x_sums_align_2(BITSHIFT,318)@3
    assign i_arrayidx268_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx268_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx268_qspline0_mult_x_sums_align_2_q = i_arrayidx268_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx268_qspline0_mult_x_sums_join_4(BITJOIN,320)@3
    assign i_arrayidx268_qspline0_mult_x_sums_join_4_q = {i_arrayidx268_qspline0_mult_x_sums_align_3_q, i_arrayidx268_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx268_qspline0_mult_x_im3_shift0(BITSHIFT,391)@3
    assign i_arrayidx268_qspline0_mult_x_im3_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx268_qspline0_mult_x_im3_shift0_q = i_arrayidx268_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx268_qspline0_mult_x_sums_align_0(BITSHIFT,316)@3
    assign i_arrayidx268_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx268_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx268_qspline0_mult_x_sums_align_0_q = i_arrayidx268_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx268_qspline0_mult_x_im9_shift0(BITSHIFT,393)@3
    assign i_arrayidx268_qspline0_mult_x_im9_shift0_qint = { i_arrayidx165_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx268_qspline0_mult_x_im9_shift0_q = i_arrayidx268_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx268_qspline0_mult_x_sums_join_1(BITJOIN,317)@3
    assign i_arrayidx268_qspline0_mult_x_sums_join_1_q = {i_arrayidx268_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx268_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx268_qspline0_mult_x_sums_result_add_0_0(ADD,321)@3
    assign i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx268_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx268_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx268_qspline0_mult_extender_x(BITJOIN,171)@3
    assign i_arrayidx268_qspline0_mult_extender_x_q = {i_arrayidx165_qspline0_mult_multconst_x_q, i_arrayidx268_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx268_qspline0_trunc_sel_x(BITSELECT,173)@3
    assign i_arrayidx268_qspline0_trunc_sel_x_b = i_arrayidx268_qspline0_mult_extender_x_q[63:0];

    // c_qspline_out_pmem(CONSTANT,37)
    assign c_qspline_out_pmem_q = $unsigned(64'b0100000000001100000000000000000000000000000000000000000000000000);

    // i_arrayidx268_qspline0_add_x(ADD,165)@3
    assign i_arrayidx268_qspline0_add_x_a = {1'b0, c_qspline_out_pmem_q};
    assign i_arrayidx268_qspline0_add_x_b = {1'b0, i_arrayidx268_qspline0_trunc_sel_x_b};
    assign i_arrayidx268_qspline0_add_x_o = $unsigned(i_arrayidx268_qspline0_add_x_a) + $unsigned(i_arrayidx268_qspline0_add_x_b);
    assign i_arrayidx268_qspline0_add_x_q = i_arrayidx268_qspline0_add_x_o[64:0];

    // i_arrayidx268_qspline0_dupName_0_trunc_sel_x(BITSELECT,174)@3
    assign i_arrayidx268_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx268_qspline0_add_x_q[63:0];

    // i_arrayidx268_qspline28_vt_select_63(BITSELECT,54)@3
    assign i_arrayidx268_qspline28_vt_select_63_b = i_arrayidx268_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx268_qspline28_vt_join(BITJOIN,53)@3
    assign i_arrayidx268_qspline28_vt_join_q = {i_arrayidx268_qspline28_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_6_qspline29(BLACKBOX,82)@3
    // out out_memdep_6_qspline_avm_address@20000000
    // out out_memdep_6_qspline_avm_burstcount@20000000
    // out out_memdep_6_qspline_avm_byteenable@20000000
    // out out_memdep_6_qspline_avm_enable@20000000
    // out out_memdep_6_qspline_avm_read@20000000
    // out out_memdep_6_qspline_avm_write@20000000
    // out out_memdep_6_qspline_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    qspline_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_qspline29 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx268_qspline28_vt_join_q),
        .in_i_predicate(i_xor38_qspline4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_i_writedata(c_i16_067_q),
        .in_memdep_6_qspline_avm_readdata(in_memdep_6_qspline_avm_readdata),
        .in_memdep_6_qspline_avm_readdatavalid(in_memdep_6_qspline_avm_readdatavalid),
        .in_memdep_6_qspline_avm_waitrequest(in_memdep_6_qspline_avm_waitrequest),
        .in_memdep_6_qspline_avm_writeack(in_memdep_6_qspline_avm_writeack),
        .out_memdep_6_qspline_avm_address(i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_address),
        .out_memdep_6_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_burstcount),
        .out_memdep_6_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_byteenable),
        .out_memdep_6_qspline_avm_enable(i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_enable),
        .out_memdep_6_qspline_avm_read(i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_read),
        .out_memdep_6_qspline_avm_write(i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_write),
        .out_memdep_6_qspline_avm_writedata(i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_ext_sig_sync_out_x(GPOUT,124)
    assign out_memdep_6_qspline_avm_address = i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_address;
    assign out_memdep_6_qspline_avm_enable = i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_enable;
    assign out_memdep_6_qspline_avm_read = i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_read;
    assign out_memdep_6_qspline_avm_write = i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_write;
    assign out_memdep_6_qspline_avm_writedata = i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_writedata;
    assign out_memdep_6_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_byteenable;
    assign out_memdep_6_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_6_qspline29_out_memdep_6_qspline_avm_burstcount;

    // valid_fanout_reg0(REG,209)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked41_qspline42(LOGICAL,95)@3 + 1
    assign i_masked41_qspline42_qi = i_notcmp28_qspline35_q & i_first_cleanup37_qspline3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked41_qspline42_delay ( .xin(i_masked41_qspline42_qi), .xout(i_masked41_qspline42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_3(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_3_q <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,207)@4
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going32_qspline6_out_data_out_3_q;
    assign out_c0_exi2_2_tpl = i_masked41_qspline42_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_qspline1 = GND_q;

endmodule
