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

// SystemVerilog created from qspline_i_sfc_logic_s_c0_in_for_body35_s_c0_enter915_qspline0
// SystemVerilog created on Sun Apr 19 22:15:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module qspline_i_sfc_logic_s_c0_in_for_body35_s_c0_enter915_qspline0 (
    input wire [15:0] in_unnamed_qspline7_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline7_qspline_avm_writeack,
    input wire [0:0] in_unnamed_qspline7_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline7_qspline_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_qspline6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_qspline6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_unnamed_qspline8_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline8_qspline_avm_writeack,
    input wire [0:0] in_unnamed_qspline8_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline8_qspline_avm_readdatavalid,
    output wire [31:0] out_unnamed_qspline7_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline7_qspline_avm_writedata,
    output wire [1:0] out_unnamed_qspline7_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_burstcount,
    input wire [15:0] in_unnamed_qspline9_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline9_qspline_avm_writeack,
    input wire [0:0] in_unnamed_qspline9_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline9_qspline_avm_readdatavalid,
    output wire [31:0] out_unnamed_qspline8_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline8_qspline_avm_writedata,
    output wire [1:0] out_unnamed_qspline8_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_burstcount,
    input wire [15:0] in_unnamed_qspline10_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline10_qspline_avm_writeack,
    input wire [0:0] in_unnamed_qspline10_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline10_qspline_avm_readdatavalid,
    output wire [31:0] out_unnamed_qspline9_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline9_qspline_avm_writedata,
    output wire [1:0] out_unnamed_qspline9_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_burstcount,
    input wire [15:0] in_unnamed_qspline11_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline11_qspline_avm_writeack,
    input wire [0:0] in_unnamed_qspline11_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline11_qspline_avm_readdatavalid,
    output wire [31:0] out_unnamed_qspline10_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline10_qspline_avm_writedata,
    output wire [1:0] out_unnamed_qspline10_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_burstcount,
    input wire [15:0] in_unnamed_qspline12_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline12_qspline_avm_writeack,
    input wire [0:0] in_unnamed_qspline12_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline12_qspline_avm_readdatavalid,
    output wire [31:0] out_unnamed_qspline11_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline11_qspline_avm_writedata,
    output wire [1:0] out_unnamed_qspline11_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_burstcount,
    input wire [15:0] in_memdep_7_qspline_avm_readdata,
    input wire [0:0] in_memdep_7_qspline_avm_writeack,
    input wire [0:0] in_memdep_7_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_7_qspline_avm_readdatavalid,
    output wire [31:0] out_unnamed_qspline12_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline12_qspline_avm_writedata,
    output wire [1:0] out_unnamed_qspline12_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_burstcount,
    output wire [31:0] out_memdep_7_qspline_avm_address,
    output wire [0:0] out_memdep_7_qspline_avm_enable,
    output wire [0:0] out_memdep_7_qspline_avm_read,
    output wire [0:0] out_memdep_7_qspline_avm_write,
    output wire [15:0] out_memdep_7_qspline_avm_writedata,
    output wire [1:0] out_memdep_7_qspline_avm_byteenable,
    output wire [0:0] out_memdep_7_qspline_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_qspline1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102297_q;
    wire [10:0] c_i11_199_q;
    wire [1:0] c_i2_191_q;
    wire [31:0] c_i32_093_q;
    wire [31:0] c_i32_196_q;
    wire [63:0] c_qspline_a_pmem_q;
    wire [63:0] c_qspline_b_pmem_q;
    wire [63:0] c_qspline_c_pmem_q;
    wire [63:0] c_qspline_e_pmem_q;
    wire [63:0] c_qspline_f_pmem_q;
    wire [63:0] c_qspline_g_pmem_q;
    wire [63:0] c_qspline_out_pmem_q;
    wire [63:0] i_arrayidx11114_qspline31_vt_join_q;
    wire [62:0] i_arrayidx11114_qspline31_vt_select_63_b;
    wire [63:0] i_arrayidx12115_qspline55_vt_join_q;
    wire [62:0] i_arrayidx12115_qspline55_vt_select_63_b;
    wire [63:0] i_arrayidx379_qspline10_vt_join_q;
    wire [62:0] i_arrayidx379_qspline10_vt_select_63_b;
    wire [63:0] i_arrayidx4010_qspline12_vt_join_q;
    wire [62:0] i_arrayidx4010_qspline12_vt_select_63_b;
    wire [63:0] i_arrayidx6511_qspline20_vt_join_q;
    wire [62:0] i_arrayidx6511_qspline20_vt_select_63_b;
    wire [63:0] i_arrayidx7012_qspline23_vt_join_q;
    wire [62:0] i_arrayidx7012_qspline23_vt_select_63_b;
    wire [63:0] i_arrayidx8313_qspline28_vt_join_q;
    wire [62:0] i_arrayidx8313_qspline28_vt_select_63_b;
    wire [1:0] i_cleanups_shl_qspline5_vt_join_q;
    wire [0:0] i_cleanups_shl_qspline5_vt_select_1_b;
    wire [16:0] i_dot_prod_add_qspline19_a;
    wire [16:0] i_dot_prod_add_qspline19_b;
    logic [16:0] i_dot_prod_add_qspline19_o;
    wire [16:0] i_dot_prod_add_qspline19_q;
    wire [11:0] i_fpga_indvars_iv_next9_qspline67_a;
    wire [11:0] i_fpga_indvars_iv_next9_qspline67_b;
    logic [11:0] i_fpga_indvars_iv_next9_qspline67_o;
    wire [11:0] i_fpga_indvars_iv_next9_qspline67_q;
    wire [63:0] i_idxprom36_qspline9_vt_join_q;
    wire [31:0] i_idxprom36_qspline9_vt_select_31_b;
    wire [32:0] i_inc123_qspline57_a;
    wire [32:0] i_inc123_qspline57_b;
    logic [32:0] i_inc123_qspline57_o;
    wire [32:0] i_inc123_qspline57_q;
    wire [31:0] i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k31_049_pop16_qspline8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k31_049_pop16_qspline8_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_qspline7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_qspline7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2355_push18_qspline71_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2355_push18_qspline71_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_qspline63_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_qspline63_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_qspline66_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_qspline66_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k31_049_push16_qspline58_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k31_049_push16_qspline58_out_feedback_valid_out_16;
    wire [0:0] i_masked_qspline69_qi;
    reg [0:0] i_masked_qspline69_q;
    wire [1:0] i_mul113_qspline33_vt_const_1_q;
    wire [15:0] i_mul113_qspline33_vt_join_q;
    wire [13:0] i_mul113_qspline33_vt_select_15_b;
    wire [16:0] i_mul76_add15_qspline27_a;
    wire [16:0] i_mul76_add15_qspline27_b;
    logic [16:0] i_mul76_add15_qspline27_o;
    wire [16:0] i_mul76_add15_qspline27_q;
    wire [15:0] i_mul76_add15_qspline27_vt_join_q;
    wire [14:0] i_mul76_add15_qspline27_vt_select_15_b;
    wire [0:0] i_next_cleanups_qspline65_s;
    reg [1:0] i_next_cleanups_qspline65_q;
    wire [0:0] i_notcmp_qspline62_q;
    wire [0:0] i_or_qspline64_q;
    wire [15:0] i_unnamed_qspline25_vt_join_q;
    wire [14:0] i_unnamed_qspline25_vt_select_15_b;
    wire [15:0] i_unnamed_qspline26_vt_join_q;
    wire [13:0] i_unnamed_qspline26_vt_select_15_b;
    wire [0:0] i_xor_qspline4_q;
    wire [15:0] bgTrunc_i_dot_prod_add_qspline19_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next9_qspline67_sel_x_b;
    wire [31:0] bgTrunc_i_inc123_qspline57_sel_x_b;
    wire [15:0] bgTrunc_i_mul67_qspline22_sel_x_b;
    wire [15:0] bgTrunc_i_mul76_add15_qspline27_sel_x_b;
    wire [15:0] bgTrunc_i_mul92_qspline30_sel_x_b;
    wire [15:0] bgTrunc_i_reduction_qspline_0_qspline14_sel_x_b;
    wire [15:0] bgTrunc_i_reduction_qspline_1_qspline15_sel_x_b;
    wire [64:0] i_arrayidx11114_qspline0_add_x_a;
    wire [64:0] i_arrayidx11114_qspline0_add_x_b;
    logic [64:0] i_arrayidx11114_qspline0_add_x_o;
    wire [64:0] i_arrayidx11114_qspline0_add_x_q;
    wire [127:0] i_arrayidx11114_qspline0_mult_extender_x_q;
    wire [61:0] i_arrayidx11114_qspline0_mult_multconst_x_q;
    wire [63:0] i_arrayidx11114_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx11114_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx12115_qspline0_add_x_a;
    wire [64:0] i_arrayidx12115_qspline0_add_x_b;
    logic [64:0] i_arrayidx12115_qspline0_add_x_o;
    wire [64:0] i_arrayidx12115_qspline0_add_x_q;
    wire [127:0] i_arrayidx12115_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx12115_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx12115_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx379_qspline0_add_x_a;
    wire [64:0] i_arrayidx379_qspline0_add_x_b;
    logic [64:0] i_arrayidx379_qspline0_add_x_o;
    wire [64:0] i_arrayidx379_qspline0_add_x_q;
    wire [127:0] i_arrayidx379_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx379_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx379_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx4010_qspline0_add_x_a;
    wire [64:0] i_arrayidx4010_qspline0_add_x_b;
    logic [64:0] i_arrayidx4010_qspline0_add_x_o;
    wire [64:0] i_arrayidx4010_qspline0_add_x_q;
    wire [127:0] i_arrayidx4010_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx4010_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx4010_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx6511_qspline0_add_x_a;
    wire [64:0] i_arrayidx6511_qspline0_add_x_b;
    logic [64:0] i_arrayidx6511_qspline0_add_x_o;
    wire [64:0] i_arrayidx6511_qspline0_add_x_q;
    wire [127:0] i_arrayidx6511_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx6511_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx6511_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx7012_qspline0_add_x_a;
    wire [64:0] i_arrayidx7012_qspline0_add_x_b;
    logic [64:0] i_arrayidx7012_qspline0_add_x_o;
    wire [64:0] i_arrayidx7012_qspline0_add_x_q;
    wire [127:0] i_arrayidx7012_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx7012_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx7012_qspline0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx8313_qspline0_add_x_a;
    wire [64:0] i_arrayidx8313_qspline0_add_x_b;
    logic [64:0] i_arrayidx8313_qspline0_add_x_o;
    wire [64:0] i_arrayidx8313_qspline0_add_x_q;
    wire [127:0] i_arrayidx8313_qspline0_mult_extender_x_q;
    wire [63:0] i_arrayidx8313_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8313_qspline0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_qspline3_sel_x_b;
    wire [63:0] i_idxprom36_qspline9_sel_x_b;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_castb1_x_in;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_castb1_x_b;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_casta1_x_in;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_casta1_x_b;
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
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [32:0] i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire [0:0] i_exitcond10_qspline60_cmp_nsign_q;
    wire [35:0] i_arrayidx11114_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx11114_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx11114_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx11114_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx11114_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx11114_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx11114_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx11114_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx12115_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx12115_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx12115_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx12115_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx12115_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx12115_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx12115_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx12115_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx379_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx379_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx379_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx379_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx379_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx379_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx379_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx379_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx4010_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx4010_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx4010_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx4010_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx4010_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx4010_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx4010_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx4010_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx6511_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx6511_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx6511_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx6511_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx6511_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx6511_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx6511_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx6511_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx7012_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx7012_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx7012_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx7012_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx7012_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx7012_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx7012_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx7012_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx8313_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8313_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx8313_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx8313_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx8313_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8313_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8313_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx8313_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid416_i_cleanups_shl_qspline0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid416_i_cleanups_shl_qspline0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid417_i_cleanups_shl_qspline0_shift_x_q;
    wire [0:0] leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_s;
    reg [1:0] leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_q;
    wire [13:0] leftShiftStage0Idx1Rng2_uid424_i_mul113_qspline0_shift_x_in;
    wire [13:0] leftShiftStage0Idx1Rng2_uid424_i_mul113_qspline0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid425_i_mul113_qspline0_shift_x_q;
    wire [0:0] leftShiftStage0_uid427_i_mul113_qspline0_shift_x_s;
    reg [15:0] leftShiftStage0_uid427_i_mul113_qspline0_shift_x_q;
    wire [14:0] leftShiftStage0Idx1Rng1_uid432_i_unnamed_qspline0_shift_x_in;
    wire [14:0] leftShiftStage0Idx1Rng1_uid432_i_unnamed_qspline0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid433_i_unnamed_qspline0_shift_x_q;
    wire [0:0] leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_s;
    reg [15:0] leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_q;
    wire [13:0] leftShiftStage0Idx1Rng2_uid440_dupName_0_i_unnamed_qspline0_shift_x_in;
    wire [13:0] leftShiftStage0Idx1Rng2_uid440_dupName_0_i_unnamed_qspline0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid441_dupName_0_i_unnamed_qspline0_shift_x_q;
    wire [0:0] leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_s;
    reg [15:0] leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_q;
    wire [10:0] i_arrayidx11114_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx11114_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx11114_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx11114_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx11114_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx11114_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx11114_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx11114_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx12115_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx12115_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx12115_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx12115_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx12115_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx12115_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx12115_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx12115_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx379_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx379_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx379_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx379_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx379_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx379_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx379_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx379_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx4010_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx4010_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx4010_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx4010_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx4010_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx4010_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx4010_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx4010_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx6511_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx6511_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx6511_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx6511_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx6511_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx6511_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx6511_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx6511_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx7012_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx7012_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx7012_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx7012_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx7012_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx7012_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx7012_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx7012_qspline0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx8313_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx8313_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx8313_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx8313_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx8313_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx8313_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx8313_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx8313_qspline0_mult_x_im9_shift0_qint;
    wire i_mul67_qspline22_cma_reset;
    wire [15:0] i_mul67_qspline22_cma_a0;
    wire [15:0] i_mul67_qspline22_cma_c0;
    wire [31:0] i_mul67_qspline22_cma_s0;
    wire [31:0] i_mul67_qspline22_cma_qq;
    wire [31:0] i_mul67_qspline22_cma_q;
    wire i_mul67_qspline22_cma_ena0;
    wire i_mul67_qspline22_cma_ena1;
    wire i_mul67_qspline22_cma_ena2;
    wire i_mul92_qspline30_cma_reset;
    wire [15:0] i_mul92_qspline30_cma_a0;
    wire [15:0] i_mul92_qspline30_cma_c0;
    wire [31:0] i_mul92_qspline30_cma_s0;
    wire [31:0] i_mul92_qspline30_cma_qq;
    wire [31:0] i_mul92_qspline30_cma_q;
    wire i_mul92_qspline30_cma_ena0;
    wire i_mul92_qspline30_cma_ena1;
    wire i_mul92_qspline30_cma_ena2;
    wire i_reduction_qspline_0_qspline14_cma_reset;
    wire [15:0] i_reduction_qspline_0_qspline14_cma_a0;
    wire [15:0] i_reduction_qspline_0_qspline14_cma_c0;
    wire [31:0] i_reduction_qspline_0_qspline14_cma_s0;
    wire [31:0] i_reduction_qspline_0_qspline14_cma_qq;
    wire [31:0] i_reduction_qspline_0_qspline14_cma_q;
    wire i_reduction_qspline_0_qspline14_cma_ena0;
    wire i_reduction_qspline_0_qspline14_cma_ena1;
    wire i_reduction_qspline_0_qspline14_cma_ena2;
    wire i_reduction_qspline_1_qspline15_cma_reset;
    wire [15:0] i_reduction_qspline_1_qspline15_cma_a0;
    wire [15:0] i_reduction_qspline_1_qspline15_cma_c0;
    wire [31:0] i_reduction_qspline_1_qspline15_cma_s0;
    wire [31:0] i_reduction_qspline_1_qspline15_cma_qq;
    wire [31:0] i_reduction_qspline_1_qspline15_cma_q;
    wire i_reduction_qspline_1_qspline15_cma_ena0;
    wire i_reduction_qspline_1_qspline15_cma_ena1;
    wire i_reduction_qspline_1_qspline15_cma_ena2;
    wire [9:0] i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e;
    reg [9:0] redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_q;
    reg [9:0] redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_0;
    reg [9:0] redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_1;
    reg [17:0] redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_q;
    reg [17:0] redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_delay_0;
    reg [17:0] redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_q;
    reg [17:0] redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_delay_0;
    reg [17:0] redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_q;
    reg [17:0] redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_delay_0;
    reg [0:0] redist4_valid_fanout_reg0_q_1_q;
    reg [0:0] redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist6_sync_together114_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist7_sync_together114_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together114_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist8_sync_together114_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist8_sync_together114_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist9_sync_together114_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist10_i_xor_qspline4_q_1_q;
    reg [0:0] redist11_i_xor_qspline4_q_4_q;
    reg [0:0] redist11_i_xor_qspline4_q_4_delay_0;
    reg [0:0] redist11_i_xor_qspline4_q_4_delay_1;
    reg [0:0] redist12_i_xor_qspline4_q_14_q;
    reg [0:0] redist13_i_masked_qspline69_q_15_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out_15_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_16_q;
    reg [31:0] redist19_i_idxprom36_qspline9_vt_select_31_b_1_q;
    reg [17:0] redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_outputreg0_q;
    reg [17:0] redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_outputreg0_q;
    reg [17:0] redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_outputreg0_q;
    reg [15:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_inputreg0_q;
    wire redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_reset0;
    wire [15:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_ia;
    wire [1:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_aa;
    wire [1:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_ab;
    wire [15:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_iq;
    wire [15:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_q;
    wire [1:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_q;
    (* preserve *) reg [1:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_i;
    reg [1:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_wraddr_q;
    wire [2:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_last_q;
    wire [2:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmp_b;
    wire [0:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmp_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmpReg_q;
    wire [0:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_notEnable_q;
    wire [0:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_nor_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_sticky_ena_q;
    wire [0:0] redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_enaAnd_q;
    reg [15:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_inputreg0_q;
    reg [15:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_outputreg0_q;
    wire redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_reset0;
    wire [15:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_ia;
    wire [1:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_aa;
    wire [1:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_ab;
    wire [15:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_iq;
    wire [15:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_q;
    wire [1:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_q;
    (* preserve *) reg [1:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i;
    (* preserve *) reg redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_eq;
    reg [1:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_wraddr_q;
    wire [1:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_last_q;
    wire [0:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmp_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmpReg_q;
    wire [0:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_notEnable_q;
    wire [0:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_nor_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_sticky_ena_q;
    wire [0:0] redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_enaAnd_q;
    reg [62:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_inputreg0_q;
    wire redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_reset0;
    wire [62:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_ia;
    wire [2:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_aa;
    wire [2:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_ab;
    wire [62:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_iq;
    wire [62:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_q;
    wire [2:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_q;
    (* preserve *) reg [2:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_i;
    reg [2:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_wraddr_q;
    wire [3:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_last_q;
    wire [3:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmp_b;
    wire [0:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmpReg_q;
    wire [0:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_notEnable_q;
    wire [0:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_sticky_ena_q;
    wire [0:0] redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together114_aunroll_x_in_i_valid_1(DELAY,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together114_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together114_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid416_i_cleanups_shl_qspline0_shift_x(BITSELECT,415)@2
    assign leftShiftStage0Idx1Rng1_uid416_i_cleanups_shl_qspline0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid416_i_cleanups_shl_qspline0_shift_x_b = leftShiftStage0Idx1Rng1_uid416_i_cleanups_shl_qspline0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid417_i_cleanups_shl_qspline0_shift_x(BITJOIN,416)@2
    assign leftShiftStage0Idx1_uid417_i_cleanups_shl_qspline0_shift_x_q = {leftShiftStage0Idx1Rng1_uid416_i_cleanups_shl_qspline0_shift_x_b, GND_q};

    // leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x(MUX,418)@2
    assign leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out or leftShiftStage0Idx1_uid417_i_cleanups_shl_qspline0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_s)
            1'b0 : leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out;
            1'b1 : leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_q = leftShiftStage0Idx1_uid417_i_cleanups_shl_qspline0_shift_x_q;
            default : leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_qspline5_vt_select_1(BITSELECT,68)@2
    assign i_cleanups_shl_qspline5_vt_select_1_b = leftShiftStage0_uid419_i_cleanups_shl_qspline0_shift_x_q[1:1];

    // i_cleanups_shl_qspline5_vt_join(BITJOIN,67)@2
    assign i_cleanups_shl_qspline5_vt_join_q = {i_cleanups_shl_qspline5_vt_select_1_b, GND_q};

    // i_xor_qspline4(LOGICAL,117)@2
    assign i_xor_qspline4_q = i_first_cleanup_qspline3_sel_x_b ^ VCC_q;

    // i_notcmp_qspline62(LOGICAL,107)@2
    assign i_notcmp_qspline62_q = i_exitcond10_qspline60_cmp_nsign_q ^ VCC_q;

    // i_or_qspline64(LOGICAL,108)@2
    assign i_or_qspline64_q = i_notcmp_qspline62_q | i_xor_qspline4_q;

    // i_next_cleanups_qspline65(MUX,106)@2
    assign i_next_cleanups_qspline65_s = i_or_qspline64_q;
    always @(i_next_cleanups_qspline65_s or i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out or i_cleanups_shl_qspline5_vt_join_q)
    begin
        unique case (i_next_cleanups_qspline65_s)
            1'b0 : i_next_cleanups_qspline65_q = i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out;
            1'b1 : i_next_cleanups_qspline65_q = i_cleanups_shl_qspline5_vt_join_q;
            default : i_next_cleanups_qspline65_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_qspline66(BLACKBOX,94)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    qspline_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_qspline66 (
        .in_data_in(i_next_cleanups_qspline65_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_feedback_stall_out_17),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_qspline66_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_qspline66_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_191(CONSTANT,33)
    assign c_i2_191_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_qspline2(BLACKBOX,88)@2
    // out out_feedback_stall_out_17@20000000
    qspline_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_qspline2 (
        .in_data_in(c_i2_191_q),
        .in_dir(redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_qspline66_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_qspline66_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_qspline3_sel_x(BITSELECT,219)@2
    assign i_first_cleanup_qspline3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_qspline2_out_data_out[0:0];

    // c_i11_199(CONSTANT,11)
    assign c_i11_199_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next9_qspline67(ADD,72)@2
    assign i_fpga_indvars_iv_next9_qspline67_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59_out_data_out};
    assign i_fpga_indvars_iv_next9_qspline67_b = {1'b0, c_i11_199_q};
    assign i_fpga_indvars_iv_next9_qspline67_o = $unsigned(i_fpga_indvars_iv_next9_qspline67_a) + $unsigned(i_fpga_indvars_iv_next9_qspline67_b);
    assign i_fpga_indvars_iv_next9_qspline67_q = i_fpga_indvars_iv_next9_qspline67_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next9_qspline67_sel_x(BITSELECT,124)@2
    assign bgTrunc_i_fpga_indvars_iv_next9_qspline67_sel_x_b = i_fpga_indvars_iv_next9_qspline67_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68(BLACKBOX,90)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    qspline_i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_qspline67_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59_out_feedback_stall_out_15),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102297(CONSTANT,10)
    assign c_i11_102297_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59(BLACKBOX,86)@2
    // out out_feedback_stall_out_15@20000000
    qspline_i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59 (
        .in_data_in(c_i11_102297_q),
        .in_dir(redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv8_push15_qspline68_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_qspline60_cmp_nsign(LOGICAL,285)@2
    assign i_exitcond10_qspline60_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv8_pop15_qspline59_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_qspline63(BLACKBOX,93)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    qspline_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_qspline63 (
        .in_data_in(i_exitcond10_qspline60_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_qspline6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_qspline3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_qspline63_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_qspline63_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,254)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_qspline7(BLACKBOX,91)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    qspline_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_qspline7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_qspline6_out_initeration_stall_out),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_qspline7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_qspline7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_qspline6(BLACKBOX,85)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    qspline_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_qspline6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_qspline7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_qspline7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_qspline63_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_qspline63_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_qspline6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_qspline6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_qspline6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_qspline6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_qspline6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_qspline6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_qspline6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_qspline6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_qspline6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,120)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_qspline6_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,256)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist7_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist10_i_xor_qspline4_q_1(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_xor_qspline4_q_1_q <= '0;
        end
        else
        begin
            redist10_i_xor_qspline4_q_1_q <= $unsigned(i_xor_qspline4_q);
        end
    end

    // i_arrayidx11114_qspline0_mult_multconst_x(CONSTANT,152)
    assign i_arrayidx11114_qspline0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_093(CONSTANT,34)
    assign c_i32_093_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,255)@1 + 1
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

    // valid_fanout_reg10(REG,263)@1 + 1
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

    // c_i32_196(CONSTANT,35)
    assign c_i32_196_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc123_qspline57(ADD,77)@2
    assign i_inc123_qspline57_a = {1'b0, i_llvm_fpga_pop_i32_k31_049_pop16_qspline8_out_data_out};
    assign i_inc123_qspline57_b = {1'b0, c_i32_196_q};
    assign i_inc123_qspline57_o = $unsigned(i_inc123_qspline57_a) + $unsigned(i_inc123_qspline57_b);
    assign i_inc123_qspline57_q = i_inc123_qspline57_o[32:0];

    // bgTrunc_i_inc123_qspline57_sel_x(BITSELECT,125)@2
    assign bgTrunc_i_inc123_qspline57_sel_x_b = i_inc123_qspline57_q[31:0];

    // i_llvm_fpga_push_i32_k31_049_push16_qspline58(BLACKBOX,95)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    qspline_i_llvm_fpga_push_i32_k31_049_push16_0 thei_llvm_fpga_push_i32_k31_049_push16_qspline58 (
        .in_data_in(bgTrunc_i_inc123_qspline57_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k31_049_pop16_qspline8_out_feedback_stall_out_16),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k31_049_push16_qspline58_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k31_049_push16_qspline58_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k31_049_pop16_qspline8(BLACKBOX,89)@2
    // out out_feedback_stall_out_16@20000000
    qspline_i_llvm_fpga_pop_i32_k31_049_pop16_0 thei_llvm_fpga_pop_i32_k31_049_pop16_qspline8 (
        .in_data_in(c_i32_093_q),
        .in_dir(redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k31_049_push16_qspline58_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k31_049_push16_qspline58_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k31_049_pop16_qspline8_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k31_049_pop16_qspline8_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom36_qspline9_sel_x(BITSELECT,220)@2
    assign i_idxprom36_qspline9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k31_049_pop16_qspline8_out_data_out[31:0]};

    // i_idxprom36_qspline9_vt_select_31(BITSELECT,76)@2
    assign i_idxprom36_qspline9_vt_select_31_b = i_idxprom36_qspline9_sel_x_b[31:0];

    // redist19_i_idxprom36_qspline9_vt_select_31_b_1(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_idxprom36_qspline9_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist19_i_idxprom36_qspline9_vt_select_31_b_1_q <= $unsigned(i_idxprom36_qspline9_vt_select_31_b);
        end
    end

    // i_idxprom36_qspline9_vt_join(BITJOIN,75)@3
    assign i_idxprom36_qspline9_vt_join_q = {c_i32_093_q, redist19_i_idxprom36_qspline9_vt_select_31_b_1_q};

    // i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select(BITSELECT,476)@3
    assign i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b = i_idxprom36_qspline9_vt_join_q[63:54];
    assign i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c = i_idxprom36_qspline9_vt_join_q[53:36];
    assign i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d = i_idxprom36_qspline9_vt_join_q[35:18];
    assign i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e = i_idxprom36_qspline9_vt_join_q[17:0];

    // i_arrayidx379_qspline0_mult_x_im0_shift0(BITSHIFT,452)@3
    assign i_arrayidx379_qspline0_mult_x_im0_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx379_qspline0_mult_x_im0_shift0_q = i_arrayidx379_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx379_qspline0_mult_x_sums_align_3(BITSHIFT,337)@3
    assign i_arrayidx379_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx379_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx379_qspline0_mult_x_sums_align_3_q = i_arrayidx379_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx379_qspline0_mult_x_im6_shift0(BITSHIFT,454)@3
    assign i_arrayidx379_qspline0_mult_x_im6_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx379_qspline0_mult_x_im6_shift0_q = i_arrayidx379_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx379_qspline0_mult_x_sums_align_2(BITSHIFT,336)@3
    assign i_arrayidx379_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx379_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx379_qspline0_mult_x_sums_align_2_q = i_arrayidx379_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx379_qspline0_mult_x_sums_join_4(BITJOIN,338)@3
    assign i_arrayidx379_qspline0_mult_x_sums_join_4_q = {i_arrayidx379_qspline0_mult_x_sums_align_3_q, i_arrayidx379_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx379_qspline0_mult_x_im3_shift0(BITSHIFT,453)@3
    assign i_arrayidx379_qspline0_mult_x_im3_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx379_qspline0_mult_x_im3_shift0_q = i_arrayidx379_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx379_qspline0_mult_x_sums_align_0(BITSHIFT,334)@3
    assign i_arrayidx379_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx379_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx379_qspline0_mult_x_sums_align_0_q = i_arrayidx379_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx379_qspline0_mult_x_im9_shift0(BITSHIFT,455)@3
    assign i_arrayidx379_qspline0_mult_x_im9_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx379_qspline0_mult_x_im9_shift0_q = i_arrayidx379_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx379_qspline0_mult_x_sums_join_1(BITJOIN,335)@3
    assign i_arrayidx379_qspline0_mult_x_sums_join_1_q = {i_arrayidx379_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx379_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx379_qspline0_mult_x_sums_result_add_0_0(ADD,339)@3
    assign i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx379_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx379_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx379_qspline0_mult_extender_x(BITJOIN,171)@3
    assign i_arrayidx379_qspline0_mult_extender_x_q = {i_arrayidx11114_qspline0_mult_multconst_x_q, i_arrayidx379_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx379_qspline0_trunc_sel_x(BITSELECT,173)@3
    assign i_arrayidx379_qspline0_trunc_sel_x_b = i_arrayidx379_qspline0_mult_extender_x_q[63:0];

    // c_qspline_b_pmem(CONSTANT,37)
    assign c_qspline_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx379_qspline0_add_x(ADD,165)@3
    assign i_arrayidx379_qspline0_add_x_a = {1'b0, c_qspline_b_pmem_q};
    assign i_arrayidx379_qspline0_add_x_b = {1'b0, i_arrayidx379_qspline0_trunc_sel_x_b};
    assign i_arrayidx379_qspline0_add_x_o = $unsigned(i_arrayidx379_qspline0_add_x_a) + $unsigned(i_arrayidx379_qspline0_add_x_b);
    assign i_arrayidx379_qspline0_add_x_q = i_arrayidx379_qspline0_add_x_o[64:0];

    // i_arrayidx379_qspline0_dupName_0_trunc_sel_x(BITSELECT,174)@3
    assign i_arrayidx379_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx379_qspline0_add_x_q[63:0];

    // i_arrayidx379_qspline10_vt_select_63(BITSELECT,53)@3
    assign i_arrayidx379_qspline10_vt_select_63_b = i_arrayidx379_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx379_qspline10_vt_join(BITJOIN,52)@3
    assign i_arrayidx379_qspline10_vt_join_q = {i_arrayidx379_qspline10_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_qspline7_qspline11(BLACKBOX,82)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_qspline7_qspline_avm_address@20000000
    // out out_unnamed_qspline7_qspline_avm_burstcount@20000000
    // out out_unnamed_qspline7_qspline_avm_byteenable@20000000
    // out out_unnamed_qspline7_qspline_avm_enable@20000000
    // out out_unnamed_qspline7_qspline_avm_read@20000000
    // out out_unnamed_qspline7_qspline_avm_write@20000000
    // out out_unnamed_qspline7_qspline_avm_writedata@20000000
    qspline_i_llvm_fpga_mem_unnamed_7_qspline0 thei_llvm_fpga_mem_unnamed_qspline7_qspline11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx379_qspline10_vt_join_q),
        .in_i_predicate(redist10_i_xor_qspline4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_qspline7_qspline_avm_readdata(in_unnamed_qspline7_qspline_avm_readdata),
        .in_unnamed_qspline7_qspline_avm_readdatavalid(in_unnamed_qspline7_qspline_avm_readdatavalid),
        .in_unnamed_qspline7_qspline_avm_waitrequest(in_unnamed_qspline7_qspline_avm_waitrequest),
        .in_unnamed_qspline7_qspline_avm_writeack(in_unnamed_qspline7_qspline_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_qspline7_qspline_avm_address(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_address),
        .out_unnamed_qspline7_qspline_avm_burstcount(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_burstcount),
        .out_unnamed_qspline7_qspline_avm_byteenable(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_byteenable),
        .out_unnamed_qspline7_qspline_avm_enable(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_enable),
        .out_unnamed_qspline7_qspline_avm_read(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_read),
        .out_unnamed_qspline7_qspline_avm_write(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_write),
        .out_unnamed_qspline7_qspline_avm_writedata(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,133)
    assign out_unnamed_qspline7_qspline_avm_address = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_address;
    assign out_unnamed_qspline7_qspline_avm_enable = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_enable;
    assign out_unnamed_qspline7_qspline_avm_read = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_read;
    assign out_unnamed_qspline7_qspline_avm_write = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_write;
    assign out_unnamed_qspline7_qspline_avm_writedata = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_writedata;
    assign out_unnamed_qspline7_qspline_avm_byteenable = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_byteenable;
    assign out_unnamed_qspline7_qspline_avm_burstcount = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_unnamed_qspline7_qspline_avm_burstcount;

    // valid_fanout_reg4(REG,257)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist7_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx4010_qspline0_mult_x_im0_shift0(BITSHIFT,456)@3
    assign i_arrayidx4010_qspline0_mult_x_im0_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx4010_qspline0_mult_x_im0_shift0_q = i_arrayidx4010_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx4010_qspline0_mult_x_sums_align_3(BITSHIFT,355)@3
    assign i_arrayidx4010_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx4010_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx4010_qspline0_mult_x_sums_align_3_q = i_arrayidx4010_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx4010_qspline0_mult_x_im6_shift0(BITSHIFT,458)@3
    assign i_arrayidx4010_qspline0_mult_x_im6_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx4010_qspline0_mult_x_im6_shift0_q = i_arrayidx4010_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx4010_qspline0_mult_x_sums_align_2(BITSHIFT,354)@3
    assign i_arrayidx4010_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx4010_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx4010_qspline0_mult_x_sums_align_2_q = i_arrayidx4010_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx4010_qspline0_mult_x_sums_join_4(BITJOIN,356)@3
    assign i_arrayidx4010_qspline0_mult_x_sums_join_4_q = {i_arrayidx4010_qspline0_mult_x_sums_align_3_q, i_arrayidx4010_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx4010_qspline0_mult_x_im3_shift0(BITSHIFT,457)@3
    assign i_arrayidx4010_qspline0_mult_x_im3_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx4010_qspline0_mult_x_im3_shift0_q = i_arrayidx4010_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx4010_qspline0_mult_x_sums_align_0(BITSHIFT,352)@3
    assign i_arrayidx4010_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx4010_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx4010_qspline0_mult_x_sums_align_0_q = i_arrayidx4010_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx4010_qspline0_mult_x_im9_shift0(BITSHIFT,459)@3
    assign i_arrayidx4010_qspline0_mult_x_im9_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx4010_qspline0_mult_x_im9_shift0_q = i_arrayidx4010_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx4010_qspline0_mult_x_sums_join_1(BITJOIN,353)@3
    assign i_arrayidx4010_qspline0_mult_x_sums_join_1_q = {i_arrayidx4010_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx4010_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0(ADD,357)@3
    assign i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx4010_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx4010_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx4010_qspline0_mult_extender_x(BITJOIN,181)@3
    assign i_arrayidx4010_qspline0_mult_extender_x_q = {i_arrayidx11114_qspline0_mult_multconst_x_q, i_arrayidx4010_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx4010_qspline0_trunc_sel_x(BITSELECT,183)@3
    assign i_arrayidx4010_qspline0_trunc_sel_x_b = i_arrayidx4010_qspline0_mult_extender_x_q[63:0];

    // c_qspline_a_pmem(CONSTANT,36)
    assign c_qspline_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx4010_qspline0_add_x(ADD,175)@3
    assign i_arrayidx4010_qspline0_add_x_a = {1'b0, c_qspline_a_pmem_q};
    assign i_arrayidx4010_qspline0_add_x_b = {1'b0, i_arrayidx4010_qspline0_trunc_sel_x_b};
    assign i_arrayidx4010_qspline0_add_x_o = $unsigned(i_arrayidx4010_qspline0_add_x_a) + $unsigned(i_arrayidx4010_qspline0_add_x_b);
    assign i_arrayidx4010_qspline0_add_x_q = i_arrayidx4010_qspline0_add_x_o[64:0];

    // i_arrayidx4010_qspline0_dupName_0_trunc_sel_x(BITSELECT,184)@3
    assign i_arrayidx4010_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx4010_qspline0_add_x_q[63:0];

    // i_arrayidx4010_qspline12_vt_select_63(BITSELECT,56)@3
    assign i_arrayidx4010_qspline12_vt_select_63_b = i_arrayidx4010_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx4010_qspline12_vt_join(BITJOIN,55)@3
    assign i_arrayidx4010_qspline12_vt_join_q = {i_arrayidx4010_qspline12_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_qspline8_qspline13(BLACKBOX,83)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_qspline8_qspline_avm_address@20000000
    // out out_unnamed_qspline8_qspline_avm_burstcount@20000000
    // out out_unnamed_qspline8_qspline_avm_byteenable@20000000
    // out out_unnamed_qspline8_qspline_avm_enable@20000000
    // out out_unnamed_qspline8_qspline_avm_read@20000000
    // out out_unnamed_qspline8_qspline_avm_write@20000000
    // out out_unnamed_qspline8_qspline_avm_writedata@20000000
    qspline_i_llvm_fpga_mem_unnamed_8_qspline0 thei_llvm_fpga_mem_unnamed_qspline8_qspline13 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx4010_qspline12_vt_join_q),
        .in_i_predicate(redist10_i_xor_qspline4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_qspline8_qspline_avm_readdata(in_unnamed_qspline8_qspline_avm_readdata),
        .in_unnamed_qspline8_qspline_avm_readdatavalid(in_unnamed_qspline8_qspline_avm_readdatavalid),
        .in_unnamed_qspline8_qspline_avm_waitrequest(in_unnamed_qspline8_qspline_avm_waitrequest),
        .in_unnamed_qspline8_qspline_avm_writeack(in_unnamed_qspline8_qspline_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_qspline8_qspline_avm_address(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_address),
        .out_unnamed_qspline8_qspline_avm_burstcount(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_burstcount),
        .out_unnamed_qspline8_qspline_avm_byteenable(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_byteenable),
        .out_unnamed_qspline8_qspline_avm_enable(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_enable),
        .out_unnamed_qspline8_qspline_avm_read(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_read),
        .out_unnamed_qspline8_qspline_avm_write(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_write),
        .out_unnamed_qspline8_qspline_avm_writedata(i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,135)
    assign out_unnamed_qspline8_qspline_avm_address = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_address;
    assign out_unnamed_qspline8_qspline_avm_enable = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_enable;
    assign out_unnamed_qspline8_qspline_avm_read = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_read;
    assign out_unnamed_qspline8_qspline_avm_write = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_write;
    assign out_unnamed_qspline8_qspline_avm_writedata = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_writedata;
    assign out_unnamed_qspline8_qspline_avm_byteenable = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_byteenable;
    assign out_unnamed_qspline8_qspline_avm_burstcount = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_unnamed_qspline8_qspline_avm_burstcount;

    // valid_fanout_reg5(REG,258)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist7_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx6511_qspline0_mult_x_im0_shift0(BITSHIFT,460)@3
    assign i_arrayidx6511_qspline0_mult_x_im0_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx6511_qspline0_mult_x_im0_shift0_q = i_arrayidx6511_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx6511_qspline0_mult_x_sums_align_3(BITSHIFT,373)@3
    assign i_arrayidx6511_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx6511_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx6511_qspline0_mult_x_sums_align_3_q = i_arrayidx6511_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx6511_qspline0_mult_x_im6_shift0(BITSHIFT,462)@3
    assign i_arrayidx6511_qspline0_mult_x_im6_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx6511_qspline0_mult_x_im6_shift0_q = i_arrayidx6511_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx6511_qspline0_mult_x_sums_align_2(BITSHIFT,372)@3
    assign i_arrayidx6511_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx6511_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx6511_qspline0_mult_x_sums_align_2_q = i_arrayidx6511_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx6511_qspline0_mult_x_sums_join_4(BITJOIN,374)@3
    assign i_arrayidx6511_qspline0_mult_x_sums_join_4_q = {i_arrayidx6511_qspline0_mult_x_sums_align_3_q, i_arrayidx6511_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx6511_qspline0_mult_x_im3_shift0(BITSHIFT,461)@3
    assign i_arrayidx6511_qspline0_mult_x_im3_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx6511_qspline0_mult_x_im3_shift0_q = i_arrayidx6511_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx6511_qspline0_mult_x_sums_align_0(BITSHIFT,370)@3
    assign i_arrayidx6511_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx6511_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx6511_qspline0_mult_x_sums_align_0_q = i_arrayidx6511_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx6511_qspline0_mult_x_im9_shift0(BITSHIFT,463)@3
    assign i_arrayidx6511_qspline0_mult_x_im9_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx6511_qspline0_mult_x_im9_shift0_q = i_arrayidx6511_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx6511_qspline0_mult_x_sums_join_1(BITJOIN,371)@3
    assign i_arrayidx6511_qspline0_mult_x_sums_join_1_q = {i_arrayidx6511_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx6511_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0(ADD,375)@3
    assign i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx6511_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx6511_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx6511_qspline0_mult_extender_x(BITJOIN,191)@3
    assign i_arrayidx6511_qspline0_mult_extender_x_q = {i_arrayidx11114_qspline0_mult_multconst_x_q, i_arrayidx6511_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx6511_qspline0_trunc_sel_x(BITSELECT,193)@3
    assign i_arrayidx6511_qspline0_trunc_sel_x_b = i_arrayidx6511_qspline0_mult_extender_x_q[63:0];

    // c_qspline_f_pmem(CONSTANT,40)
    assign c_qspline_f_pmem_q = $unsigned(64'b0100000000001010000000000000000000000000000000000000000000000000);

    // i_arrayidx6511_qspline0_add_x(ADD,185)@3
    assign i_arrayidx6511_qspline0_add_x_a = {1'b0, c_qspline_f_pmem_q};
    assign i_arrayidx6511_qspline0_add_x_b = {1'b0, i_arrayidx6511_qspline0_trunc_sel_x_b};
    assign i_arrayidx6511_qspline0_add_x_o = $unsigned(i_arrayidx6511_qspline0_add_x_a) + $unsigned(i_arrayidx6511_qspline0_add_x_b);
    assign i_arrayidx6511_qspline0_add_x_q = i_arrayidx6511_qspline0_add_x_o[64:0];

    // i_arrayidx6511_qspline0_dupName_0_trunc_sel_x(BITSELECT,194)@3
    assign i_arrayidx6511_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx6511_qspline0_add_x_q[63:0];

    // i_arrayidx6511_qspline20_vt_select_63(BITSELECT,59)@3
    assign i_arrayidx6511_qspline20_vt_select_63_b = i_arrayidx6511_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx6511_qspline20_vt_join(BITJOIN,58)@3
    assign i_arrayidx6511_qspline20_vt_join_q = {i_arrayidx6511_qspline20_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_qspline9_qspline21(BLACKBOX,84)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_qspline9_qspline_avm_address@20000000
    // out out_unnamed_qspline9_qspline_avm_burstcount@20000000
    // out out_unnamed_qspline9_qspline_avm_byteenable@20000000
    // out out_unnamed_qspline9_qspline_avm_enable@20000000
    // out out_unnamed_qspline9_qspline_avm_read@20000000
    // out out_unnamed_qspline9_qspline_avm_write@20000000
    // out out_unnamed_qspline9_qspline_avm_writedata@20000000
    qspline_i_llvm_fpga_mem_unnamed_9_qspline0 thei_llvm_fpga_mem_unnamed_qspline9_qspline21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx6511_qspline20_vt_join_q),
        .in_i_predicate(redist10_i_xor_qspline4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_qspline9_qspline_avm_readdata(in_unnamed_qspline9_qspline_avm_readdata),
        .in_unnamed_qspline9_qspline_avm_readdatavalid(in_unnamed_qspline9_qspline_avm_readdatavalid),
        .in_unnamed_qspline9_qspline_avm_waitrequest(in_unnamed_qspline9_qspline_avm_waitrequest),
        .in_unnamed_qspline9_qspline_avm_writeack(in_unnamed_qspline9_qspline_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_qspline9_qspline_avm_address(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_address),
        .out_unnamed_qspline9_qspline_avm_burstcount(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_burstcount),
        .out_unnamed_qspline9_qspline_avm_byteenable(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_byteenable),
        .out_unnamed_qspline9_qspline_avm_enable(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_enable),
        .out_unnamed_qspline9_qspline_avm_read(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_read),
        .out_unnamed_qspline9_qspline_avm_write(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_write),
        .out_unnamed_qspline9_qspline_avm_writedata(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,137)
    assign out_unnamed_qspline9_qspline_avm_address = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_address;
    assign out_unnamed_qspline9_qspline_avm_enable = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_enable;
    assign out_unnamed_qspline9_qspline_avm_read = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_read;
    assign out_unnamed_qspline9_qspline_avm_write = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_write;
    assign out_unnamed_qspline9_qspline_avm_writedata = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_writedata;
    assign out_unnamed_qspline9_qspline_avm_byteenable = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_byteenable;
    assign out_unnamed_qspline9_qspline_avm_burstcount = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_unnamed_qspline9_qspline_avm_burstcount;

    // valid_fanout_reg6(REG,259)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist7_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx7012_qspline0_mult_x_im0_shift0(BITSHIFT,464)@3
    assign i_arrayidx7012_qspline0_mult_x_im0_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx7012_qspline0_mult_x_im0_shift0_q = i_arrayidx7012_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx7012_qspline0_mult_x_sums_align_3(BITSHIFT,391)@3
    assign i_arrayidx7012_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx7012_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx7012_qspline0_mult_x_sums_align_3_q = i_arrayidx7012_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx7012_qspline0_mult_x_im6_shift0(BITSHIFT,466)@3
    assign i_arrayidx7012_qspline0_mult_x_im6_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx7012_qspline0_mult_x_im6_shift0_q = i_arrayidx7012_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx7012_qspline0_mult_x_sums_align_2(BITSHIFT,390)@3
    assign i_arrayidx7012_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx7012_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx7012_qspline0_mult_x_sums_align_2_q = i_arrayidx7012_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx7012_qspline0_mult_x_sums_join_4(BITJOIN,392)@3
    assign i_arrayidx7012_qspline0_mult_x_sums_join_4_q = {i_arrayidx7012_qspline0_mult_x_sums_align_3_q, i_arrayidx7012_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx7012_qspline0_mult_x_im3_shift0(BITSHIFT,465)@3
    assign i_arrayidx7012_qspline0_mult_x_im3_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx7012_qspline0_mult_x_im3_shift0_q = i_arrayidx7012_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx7012_qspline0_mult_x_sums_align_0(BITSHIFT,388)@3
    assign i_arrayidx7012_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx7012_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx7012_qspline0_mult_x_sums_align_0_q = i_arrayidx7012_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx7012_qspline0_mult_x_im9_shift0(BITSHIFT,467)@3
    assign i_arrayidx7012_qspline0_mult_x_im9_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx7012_qspline0_mult_x_im9_shift0_q = i_arrayidx7012_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx7012_qspline0_mult_x_sums_join_1(BITJOIN,389)@3
    assign i_arrayidx7012_qspline0_mult_x_sums_join_1_q = {i_arrayidx7012_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx7012_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0(ADD,393)@3
    assign i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx7012_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx7012_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx7012_qspline0_mult_extender_x(BITJOIN,201)@3
    assign i_arrayidx7012_qspline0_mult_extender_x_q = {i_arrayidx11114_qspline0_mult_multconst_x_q, i_arrayidx7012_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx7012_qspline0_trunc_sel_x(BITSELECT,203)@3
    assign i_arrayidx7012_qspline0_trunc_sel_x_b = i_arrayidx7012_qspline0_mult_extender_x_q[63:0];

    // c_qspline_c_pmem(CONSTANT,38)
    assign c_qspline_c_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx7012_qspline0_add_x(ADD,195)@3
    assign i_arrayidx7012_qspline0_add_x_a = {1'b0, c_qspline_c_pmem_q};
    assign i_arrayidx7012_qspline0_add_x_b = {1'b0, i_arrayidx7012_qspline0_trunc_sel_x_b};
    assign i_arrayidx7012_qspline0_add_x_o = $unsigned(i_arrayidx7012_qspline0_add_x_a) + $unsigned(i_arrayidx7012_qspline0_add_x_b);
    assign i_arrayidx7012_qspline0_add_x_q = i_arrayidx7012_qspline0_add_x_o[64:0];

    // i_arrayidx7012_qspline0_dupName_0_trunc_sel_x(BITSELECT,204)@3
    assign i_arrayidx7012_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx7012_qspline0_add_x_q[63:0];

    // i_arrayidx7012_qspline23_vt_select_63(BITSELECT,62)@3
    assign i_arrayidx7012_qspline23_vt_select_63_b = i_arrayidx7012_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx7012_qspline23_vt_join(BITJOIN,61)@3
    assign i_arrayidx7012_qspline23_vt_join_q = {i_arrayidx7012_qspline23_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_qspline10_qspline24(BLACKBOX,79)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_qspline10_qspline_avm_address@20000000
    // out out_unnamed_qspline10_qspline_avm_burstcount@20000000
    // out out_unnamed_qspline10_qspline_avm_byteenable@20000000
    // out out_unnamed_qspline10_qspline_avm_enable@20000000
    // out out_unnamed_qspline10_qspline_avm_read@20000000
    // out out_unnamed_qspline10_qspline_avm_write@20000000
    // out out_unnamed_qspline10_qspline_avm_writedata@20000000
    qspline_i_llvm_fpga_mem_unnamed_10_qspline0 thei_llvm_fpga_mem_unnamed_qspline10_qspline24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx7012_qspline23_vt_join_q),
        .in_i_predicate(redist10_i_xor_qspline4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_qspline10_qspline_avm_readdata(in_unnamed_qspline10_qspline_avm_readdata),
        .in_unnamed_qspline10_qspline_avm_readdatavalid(in_unnamed_qspline10_qspline_avm_readdatavalid),
        .in_unnamed_qspline10_qspline_avm_waitrequest(in_unnamed_qspline10_qspline_avm_waitrequest),
        .in_unnamed_qspline10_qspline_avm_writeack(in_unnamed_qspline10_qspline_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_qspline10_qspline_avm_address(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_address),
        .out_unnamed_qspline10_qspline_avm_burstcount(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_burstcount),
        .out_unnamed_qspline10_qspline_avm_byteenable(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_byteenable),
        .out_unnamed_qspline10_qspline_avm_enable(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_enable),
        .out_unnamed_qspline10_qspline_avm_read(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_read),
        .out_unnamed_qspline10_qspline_avm_write(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_write),
        .out_unnamed_qspline10_qspline_avm_writedata(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,139)
    assign out_unnamed_qspline10_qspline_avm_address = i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_address;
    assign out_unnamed_qspline10_qspline_avm_enable = i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_enable;
    assign out_unnamed_qspline10_qspline_avm_read = i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_read;
    assign out_unnamed_qspline10_qspline_avm_write = i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_write;
    assign out_unnamed_qspline10_qspline_avm_writedata = i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_writedata;
    assign out_unnamed_qspline10_qspline_avm_byteenable = i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_byteenable;
    assign out_unnamed_qspline10_qspline_avm_burstcount = i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_unnamed_qspline10_qspline_avm_burstcount;

    // redist8_sync_together114_aunroll_x_in_i_valid_4(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together114_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist8_sync_together114_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist8_sync_together114_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist8_sync_together114_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist7_sync_together114_aunroll_x_in_i_valid_1_q);
            redist8_sync_together114_aunroll_x_in_i_valid_4_delay_1 <= redist8_sync_together114_aunroll_x_in_i_valid_4_delay_0;
            redist8_sync_together114_aunroll_x_in_i_valid_4_q <= redist8_sync_together114_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg7(REG,260)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist8_sync_together114_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist11_i_xor_qspline4_q_4(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_xor_qspline4_q_4_delay_0 <= '0;
            redist11_i_xor_qspline4_q_4_delay_1 <= '0;
            redist11_i_xor_qspline4_q_4_q <= '0;
        end
        else
        begin
            redist11_i_xor_qspline4_q_4_delay_0 <= $unsigned(redist10_i_xor_qspline4_q_1_q);
            redist11_i_xor_qspline4_q_4_delay_1 <= redist11_i_xor_qspline4_q_4_delay_0;
            redist11_i_xor_qspline4_q_4_q <= redist11_i_xor_qspline4_q_4_delay_1;
        end
    end

    // redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3(DELAY,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_0 <= '0;
            redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_1 <= '0;
            redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_0 <= $unsigned(i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b);
            redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_1 <= redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_0;
            redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_q <= redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_delay_1;
        end
    end

    // i_arrayidx8313_qspline0_mult_x_im0_shift0(BITSHIFT,468)@6
    assign i_arrayidx8313_qspline0_mult_x_im0_shift0_qint = { redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_q, 1'b0 };
    assign i_arrayidx8313_qspline0_mult_x_im0_shift0_q = i_arrayidx8313_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx8313_qspline0_mult_x_sums_align_3(BITSHIFT,409)@6
    assign i_arrayidx8313_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx8313_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx8313_qspline0_mult_x_sums_align_3_q = i_arrayidx8313_qspline0_mult_x_sums_align_3_qint[27:0];

    // redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_delay_0 <= '0;
            redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_delay_0 <= $unsigned(i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d);
            redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_q <= redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_delay_0;
        end
    end

    // redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_outputreg0(DELAY,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_outputreg0_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_outputreg0_q <= $unsigned(redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_q);
        end
    end

    // i_arrayidx8313_qspline0_mult_x_im6_shift0(BITSHIFT,470)@6
    assign i_arrayidx8313_qspline0_mult_x_im6_shift0_qint = { redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_outputreg0_q, 1'b0 };
    assign i_arrayidx8313_qspline0_mult_x_im6_shift0_q = i_arrayidx8313_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx8313_qspline0_mult_x_sums_align_2(BITSHIFT,408)@6
    assign i_arrayidx8313_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx8313_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx8313_qspline0_mult_x_sums_align_2_q = i_arrayidx8313_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx8313_qspline0_mult_x_sums_join_4(BITJOIN,410)@6
    assign i_arrayidx8313_qspline0_mult_x_sums_join_4_q = {i_arrayidx8313_qspline0_mult_x_sums_align_3_q, i_arrayidx8313_qspline0_mult_x_sums_align_2_q};

    // redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3(DELAY,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_delay_0 <= '0;
            redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_delay_0 <= $unsigned(i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c);
            redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_q <= redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_delay_0;
        end
    end

    // redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_outputreg0(DELAY,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_outputreg0_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_outputreg0_q <= $unsigned(redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_q);
        end
    end

    // i_arrayidx8313_qspline0_mult_x_im3_shift0(BITSHIFT,469)@6
    assign i_arrayidx8313_qspline0_mult_x_im3_shift0_qint = { redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_outputreg0_q, 1'b0 };
    assign i_arrayidx8313_qspline0_mult_x_im3_shift0_q = i_arrayidx8313_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx8313_qspline0_mult_x_sums_align_0(BITSHIFT,406)@6
    assign i_arrayidx8313_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx8313_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx8313_qspline0_mult_x_sums_align_0_q = i_arrayidx8313_qspline0_mult_x_sums_align_0_qint[35:0];

    // redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_delay_0 <= '0;
            redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_delay_0 <= $unsigned(i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e);
            redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_q <= redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_delay_0;
        end
    end

    // redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_outputreg0(DELAY,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_outputreg0_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_outputreg0_q <= $unsigned(redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_q);
        end
    end

    // i_arrayidx8313_qspline0_mult_x_im9_shift0(BITSHIFT,471)@6
    assign i_arrayidx8313_qspline0_mult_x_im9_shift0_qint = { redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_outputreg0_q, 1'b0 };
    assign i_arrayidx8313_qspline0_mult_x_im9_shift0_q = i_arrayidx8313_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx8313_qspline0_mult_x_sums_join_1(BITJOIN,407)@6
    assign i_arrayidx8313_qspline0_mult_x_sums_join_1_q = {i_arrayidx8313_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx8313_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0(ADD,411)@6
    assign i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8313_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8313_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx8313_qspline0_mult_extender_x(BITJOIN,211)@6
    assign i_arrayidx8313_qspline0_mult_extender_x_q = {i_arrayidx11114_qspline0_mult_multconst_x_q, i_arrayidx8313_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx8313_qspline0_trunc_sel_x(BITSELECT,213)@6
    assign i_arrayidx8313_qspline0_trunc_sel_x_b = i_arrayidx8313_qspline0_mult_extender_x_q[63:0];

    // c_qspline_e_pmem(CONSTANT,39)
    assign c_qspline_e_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx8313_qspline0_add_x(ADD,205)@6
    assign i_arrayidx8313_qspline0_add_x_a = {1'b0, c_qspline_e_pmem_q};
    assign i_arrayidx8313_qspline0_add_x_b = {1'b0, i_arrayidx8313_qspline0_trunc_sel_x_b};
    assign i_arrayidx8313_qspline0_add_x_o = $unsigned(i_arrayidx8313_qspline0_add_x_a) + $unsigned(i_arrayidx8313_qspline0_add_x_b);
    assign i_arrayidx8313_qspline0_add_x_q = i_arrayidx8313_qspline0_add_x_o[64:0];

    // i_arrayidx8313_qspline0_dupName_0_trunc_sel_x(BITSELECT,214)@6
    assign i_arrayidx8313_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx8313_qspline0_add_x_q[63:0];

    // i_arrayidx8313_qspline28_vt_select_63(BITSELECT,65)@6
    assign i_arrayidx8313_qspline28_vt_select_63_b = i_arrayidx8313_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx8313_qspline28_vt_join(BITJOIN,64)@6
    assign i_arrayidx8313_qspline28_vt_join_q = {i_arrayidx8313_qspline28_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_qspline11_qspline29(BLACKBOX,80)@6
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    // out out_unnamed_qspline11_qspline_avm_address@20000000
    // out out_unnamed_qspline11_qspline_avm_burstcount@20000000
    // out out_unnamed_qspline11_qspline_avm_byteenable@20000000
    // out out_unnamed_qspline11_qspline_avm_enable@20000000
    // out out_unnamed_qspline11_qspline_avm_read@20000000
    // out out_unnamed_qspline11_qspline_avm_write@20000000
    // out out_unnamed_qspline11_qspline_avm_writedata@20000000
    qspline_i_llvm_fpga_mem_unnamed_11_qspline0 thei_llvm_fpga_mem_unnamed_qspline11_qspline29 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx8313_qspline28_vt_join_q),
        .in_i_predicate(redist11_i_xor_qspline4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_qspline11_qspline_avm_readdata(in_unnamed_qspline11_qspline_avm_readdata),
        .in_unnamed_qspline11_qspline_avm_readdatavalid(in_unnamed_qspline11_qspline_avm_readdatavalid),
        .in_unnamed_qspline11_qspline_avm_waitrequest(in_unnamed_qspline11_qspline_avm_waitrequest),
        .in_unnamed_qspline11_qspline_avm_writeack(in_unnamed_qspline11_qspline_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_qspline11_qspline_avm_address(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_address),
        .out_unnamed_qspline11_qspline_avm_burstcount(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_burstcount),
        .out_unnamed_qspline11_qspline_avm_byteenable(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_byteenable),
        .out_unnamed_qspline11_qspline_avm_enable(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_enable),
        .out_unnamed_qspline11_qspline_avm_read(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_read),
        .out_unnamed_qspline11_qspline_avm_write(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_write),
        .out_unnamed_qspline11_qspline_avm_writedata(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_ext_sig_sync_out_x(GPOUT,141)
    assign out_unnamed_qspline11_qspline_avm_address = i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_address;
    assign out_unnamed_qspline11_qspline_avm_enable = i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_enable;
    assign out_unnamed_qspline11_qspline_avm_read = i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_read;
    assign out_unnamed_qspline11_qspline_avm_write = i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_write;
    assign out_unnamed_qspline11_qspline_avm_writedata = i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_writedata;
    assign out_unnamed_qspline11_qspline_avm_byteenable = i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_byteenable;
    assign out_unnamed_qspline11_qspline_avm_burstcount = i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_unnamed_qspline11_qspline_avm_burstcount;

    // valid_fanout_reg8(REG,261)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist7_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx11114_qspline0_mult_x_im0_shift0(BITSHIFT,444)@3
    assign i_arrayidx11114_qspline0_mult_x_im0_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx11114_qspline0_mult_x_im0_shift0_q = i_arrayidx11114_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx11114_qspline0_mult_x_sums_align_3(BITSHIFT,301)@3
    assign i_arrayidx11114_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx11114_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx11114_qspline0_mult_x_sums_align_3_q = i_arrayidx11114_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx11114_qspline0_mult_x_im6_shift0(BITSHIFT,446)@3
    assign i_arrayidx11114_qspline0_mult_x_im6_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx11114_qspline0_mult_x_im6_shift0_q = i_arrayidx11114_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx11114_qspline0_mult_x_sums_align_2(BITSHIFT,300)@3
    assign i_arrayidx11114_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx11114_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx11114_qspline0_mult_x_sums_align_2_q = i_arrayidx11114_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx11114_qspline0_mult_x_sums_join_4(BITJOIN,302)@3
    assign i_arrayidx11114_qspline0_mult_x_sums_join_4_q = {i_arrayidx11114_qspline0_mult_x_sums_align_3_q, i_arrayidx11114_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx11114_qspline0_mult_x_im3_shift0(BITSHIFT,445)@3
    assign i_arrayidx11114_qspline0_mult_x_im3_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx11114_qspline0_mult_x_im3_shift0_q = i_arrayidx11114_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx11114_qspline0_mult_x_sums_align_0(BITSHIFT,298)@3
    assign i_arrayidx11114_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx11114_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx11114_qspline0_mult_x_sums_align_0_q = i_arrayidx11114_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx11114_qspline0_mult_x_im9_shift0(BITSHIFT,447)@3
    assign i_arrayidx11114_qspline0_mult_x_im9_shift0_qint = { i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx11114_qspline0_mult_x_im9_shift0_q = i_arrayidx11114_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx11114_qspline0_mult_x_sums_join_1(BITJOIN,299)@3
    assign i_arrayidx11114_qspline0_mult_x_sums_join_1_q = {i_arrayidx11114_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx11114_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0(ADD,303)@3
    assign i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx11114_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx11114_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx11114_qspline0_mult_extender_x(BITJOIN,151)@3
    assign i_arrayidx11114_qspline0_mult_extender_x_q = {i_arrayidx11114_qspline0_mult_multconst_x_q, i_arrayidx11114_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx11114_qspline0_trunc_sel_x(BITSELECT,153)@3
    assign i_arrayidx11114_qspline0_trunc_sel_x_b = i_arrayidx11114_qspline0_mult_extender_x_q[63:0];

    // c_qspline_g_pmem(CONSTANT,41)
    assign c_qspline_g_pmem_q = $unsigned(64'b0100000000001011000000000000000000000000000000000000000000000000);

    // i_arrayidx11114_qspline0_add_x(ADD,145)@3
    assign i_arrayidx11114_qspline0_add_x_a = {1'b0, c_qspline_g_pmem_q};
    assign i_arrayidx11114_qspline0_add_x_b = {1'b0, i_arrayidx11114_qspline0_trunc_sel_x_b};
    assign i_arrayidx11114_qspline0_add_x_o = $unsigned(i_arrayidx11114_qspline0_add_x_a) + $unsigned(i_arrayidx11114_qspline0_add_x_b);
    assign i_arrayidx11114_qspline0_add_x_q = i_arrayidx11114_qspline0_add_x_o[64:0];

    // i_arrayidx11114_qspline0_dupName_0_trunc_sel_x(BITSELECT,154)@3
    assign i_arrayidx11114_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx11114_qspline0_add_x_q[63:0];

    // i_arrayidx11114_qspline31_vt_select_63(BITSELECT,47)@3
    assign i_arrayidx11114_qspline31_vt_select_63_b = i_arrayidx11114_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx11114_qspline31_vt_join(BITJOIN,46)@3
    assign i_arrayidx11114_qspline31_vt_join_q = {i_arrayidx11114_qspline31_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_qspline12_qspline32(BLACKBOX,81)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_qspline12_qspline_avm_address@20000000
    // out out_unnamed_qspline12_qspline_avm_burstcount@20000000
    // out out_unnamed_qspline12_qspline_avm_byteenable@20000000
    // out out_unnamed_qspline12_qspline_avm_enable@20000000
    // out out_unnamed_qspline12_qspline_avm_read@20000000
    // out out_unnamed_qspline12_qspline_avm_write@20000000
    // out out_unnamed_qspline12_qspline_avm_writedata@20000000
    qspline_i_llvm_fpga_mem_unnamed_12_qspline0 thei_llvm_fpga_mem_unnamed_qspline12_qspline32 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx11114_qspline31_vt_join_q),
        .in_i_predicate(redist10_i_xor_qspline4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_qspline12_qspline_avm_readdata(in_unnamed_qspline12_qspline_avm_readdata),
        .in_unnamed_qspline12_qspline_avm_readdatavalid(in_unnamed_qspline12_qspline_avm_readdatavalid),
        .in_unnamed_qspline12_qspline_avm_waitrequest(in_unnamed_qspline12_qspline_avm_waitrequest),
        .in_unnamed_qspline12_qspline_avm_writeack(in_unnamed_qspline12_qspline_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_qspline12_qspline_avm_address(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_address),
        .out_unnamed_qspline12_qspline_avm_burstcount(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_burstcount),
        .out_unnamed_qspline12_qspline_avm_byteenable(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_byteenable),
        .out_unnamed_qspline12_qspline_avm_enable(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_enable),
        .out_unnamed_qspline12_qspline_avm_read(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_read),
        .out_unnamed_qspline12_qspline_avm_write(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_write),
        .out_unnamed_qspline12_qspline_avm_writedata(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_ext_sig_sync_out_x(GPOUT,143)
    assign out_unnamed_qspline12_qspline_avm_address = i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_address;
    assign out_unnamed_qspline12_qspline_avm_enable = i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_enable;
    assign out_unnamed_qspline12_qspline_avm_read = i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_read;
    assign out_unnamed_qspline12_qspline_avm_write = i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_write;
    assign out_unnamed_qspline12_qspline_avm_writedata = i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_writedata;
    assign out_unnamed_qspline12_qspline_avm_byteenable = i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_byteenable;
    assign out_unnamed_qspline12_qspline_avm_burstcount = i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_unnamed_qspline12_qspline_avm_burstcount;

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_notEnable(LOGICAL,508)
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_nor(LOGICAL,509)
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_nor_q = ~ (redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_notEnable_q | redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_sticky_ena_q);

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_last(CONSTANT,505)
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_last_q = $unsigned(3'b010);

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmp(LOGICAL,506)
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmp_b = {1'b0, redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_q};
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmp_q = $unsigned(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_last_q == redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmp_b ? 1'b1 : 1'b0);

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmpReg(REG,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmpReg_q <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmp_q);
        end
    end

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_sticky_ena(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_nor_q == 1'b1)
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_sticky_ena_q <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_cmpReg_q);
        end
    end

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_enaAnd(LOGICAL,511)
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_enaAnd_q = redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_sticky_ena_q & VCC_q;

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt(COUNTER,503)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_q = redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_i[1:0];

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_inputreg0(DELAY,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_inputreg0_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata);
        end
    end

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_wraddr(REG,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_wraddr_q <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_q);
        end
    end

    // redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem(DUALMEM,502)
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_ia = $unsigned(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_inputreg0_q);
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_aa = redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_wraddr_q;
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_ab = redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_rdcnt_q;
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_reset0 = ~ (resetn);
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
    ) redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_dmem (
        .clocken1(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_reset0),
        .clock1(clock),
        .address_a(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_aa),
        .data_a(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_ab),
        .q_b(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_iq),
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
    assign redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_q = redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_iq[15:0];

    // leftShiftStage0Idx1Rng2_uid440_dupName_0_i_unnamed_qspline0_shift_x(BITSELECT,439)@7
    assign leftShiftStage0Idx1Rng2_uid440_dupName_0_i_unnamed_qspline0_shift_x_in = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata[13:0];
    assign leftShiftStage0Idx1Rng2_uid440_dupName_0_i_unnamed_qspline0_shift_x_b = leftShiftStage0Idx1Rng2_uid440_dupName_0_i_unnamed_qspline0_shift_x_in[13:0];

    // leftShiftStage0Idx1_uid441_dupName_0_i_unnamed_qspline0_shift_x(BITJOIN,440)@7
    assign leftShiftStage0Idx1_uid441_dupName_0_i_unnamed_qspline0_shift_x_q = {leftShiftStage0Idx1Rng2_uid440_dupName_0_i_unnamed_qspline0_shift_x_b, i_mul113_qspline33_vt_const_1_q};

    // leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x(MUX,442)@7
    assign leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_s or i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata or leftShiftStage0Idx1_uid441_dupName_0_i_unnamed_qspline0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_s)
            1'b0 : leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_q = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata;
            1'b1 : leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_q = leftShiftStage0Idx1_uid441_dupName_0_i_unnamed_qspline0_shift_x_q;
            default : leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_qspline26_vt_select_15(BITSELECT,116)@7
    assign i_unnamed_qspline26_vt_select_15_b = leftShiftStage0_uid443_dupName_0_i_unnamed_qspline0_shift_x_q[15:2];

    // i_mul113_qspline33_vt_const_1(CONSTANT,97)
    assign i_mul113_qspline33_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_qspline26_vt_join(BITJOIN,115)@7
    assign i_unnamed_qspline26_vt_join_q = {i_unnamed_qspline26_vt_select_15_b, i_mul113_qspline33_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid432_i_unnamed_qspline0_shift_x(BITSELECT,431)@7
    assign leftShiftStage0Idx1Rng1_uid432_i_unnamed_qspline0_shift_x_in = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata[14:0];
    assign leftShiftStage0Idx1Rng1_uid432_i_unnamed_qspline0_shift_x_b = leftShiftStage0Idx1Rng1_uid432_i_unnamed_qspline0_shift_x_in[14:0];

    // leftShiftStage0Idx1_uid433_i_unnamed_qspline0_shift_x(BITJOIN,432)@7
    assign leftShiftStage0Idx1_uid433_i_unnamed_qspline0_shift_x_q = {leftShiftStage0Idx1Rng1_uid432_i_unnamed_qspline0_shift_x_b, GND_q};

    // leftShiftStage0_uid435_i_unnamed_qspline0_shift_x(MUX,434)@7
    assign leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_s or i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata or leftShiftStage0Idx1_uid433_i_unnamed_qspline0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_s)
            1'b0 : leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_q = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata;
            1'b1 : leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_q = leftShiftStage0Idx1_uid433_i_unnamed_qspline0_shift_x_q;
            default : leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_qspline25_vt_select_15(BITSELECT,113)@7
    assign i_unnamed_qspline25_vt_select_15_b = leftShiftStage0_uid435_i_unnamed_qspline0_shift_x_q[15:1];

    // i_unnamed_qspline25_vt_join(BITJOIN,112)@7
    assign i_unnamed_qspline25_vt_join_q = {i_unnamed_qspline25_vt_select_15_b, GND_q};

    // i_mul76_add15_qspline27(ADD,101)@7
    assign i_mul76_add15_qspline27_a = {1'b0, i_unnamed_qspline25_vt_join_q};
    assign i_mul76_add15_qspline27_b = {1'b0, i_unnamed_qspline26_vt_join_q};
    assign i_mul76_add15_qspline27_o = $unsigned(i_mul76_add15_qspline27_a) + $unsigned(i_mul76_add15_qspline27_b);
    assign i_mul76_add15_qspline27_q = i_mul76_add15_qspline27_o[16:0];

    // bgTrunc_i_mul76_add15_qspline27_sel_x(BITSELECT,127)@7
    assign bgTrunc_i_mul76_add15_qspline27_sel_x_b = i_mul76_add15_qspline27_q[15:0];

    // i_mul76_add15_qspline27_vt_select_15(BITSELECT,104)@7
    assign i_mul76_add15_qspline27_vt_select_15_b = bgTrunc_i_mul76_add15_qspline27_sel_x_b[15:1];

    // i_mul76_add15_qspline27_vt_join(BITJOIN,103)@7
    assign i_mul76_add15_qspline27_vt_join_q = {i_mul76_add15_qspline27_vt_select_15_b, GND_q};

    // leftShiftStage0Idx1Rng2_uid424_i_mul113_qspline0_shift_x(BITSELECT,423)@7
    assign leftShiftStage0Idx1Rng2_uid424_i_mul113_qspline0_shift_x_in = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata[13:0];
    assign leftShiftStage0Idx1Rng2_uid424_i_mul113_qspline0_shift_x_b = leftShiftStage0Idx1Rng2_uid424_i_mul113_qspline0_shift_x_in[13:0];

    // leftShiftStage0Idx1_uid425_i_mul113_qspline0_shift_x(BITJOIN,424)@7
    assign leftShiftStage0Idx1_uid425_i_mul113_qspline0_shift_x_q = {leftShiftStage0Idx1Rng2_uid424_i_mul113_qspline0_shift_x_b, i_mul113_qspline33_vt_const_1_q};

    // leftShiftStage0_uid427_i_mul113_qspline0_shift_x(MUX,426)@7
    assign leftShiftStage0_uid427_i_mul113_qspline0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid427_i_mul113_qspline0_shift_x_s or i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata or leftShiftStage0Idx1_uid425_i_mul113_qspline0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid427_i_mul113_qspline0_shift_x_s)
            1'b0 : leftShiftStage0_uid427_i_mul113_qspline0_shift_x_q = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata;
            1'b1 : leftShiftStage0_uid427_i_mul113_qspline0_shift_x_q = leftShiftStage0Idx1_uid425_i_mul113_qspline0_shift_x_q;
            default : leftShiftStage0_uid427_i_mul113_qspline0_shift_x_q = 16'b0;
        endcase
    end

    // i_mul113_qspline33_vt_select_15(BITSELECT,99)@7
    assign i_mul113_qspline33_vt_select_15_b = leftShiftStage0_uid427_i_mul113_qspline0_shift_x_q[15:2];

    // i_mul113_qspline33_vt_join(BITJOIN,98)@7
    assign i_mul113_qspline33_vt_join_q = {i_mul113_qspline33_vt_select_15_b, i_mul113_qspline33_vt_const_1_q};

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,267)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_mul113_qspline33_vt_join_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_unnamed_qspline12_qspline32_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(i_mul76_add15_qspline27_vt_join_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(i_llvm_fpga_mem_unnamed_qspline10_qspline24_out_o_readdata);
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
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_castb1_x(BITSELECT,232)@10
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_castb1_x_in = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod61_qspline0_dspb_native_dot_product_vunroll_x_cma0_q[15:0];
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_castb1_x_b = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_castb1_x_in[15:0];

    // i_mul67_qspline22_cma(CHAINMULTADD,472)@7 + 3
    assign i_mul67_qspline22_cma_reset = ~ (resetn);
    assign i_mul67_qspline22_cma_ena0 = 1'b1;
    assign i_mul67_qspline22_cma_ena1 = i_mul67_qspline22_cma_ena0;
    assign i_mul67_qspline22_cma_ena2 = i_mul67_qspline22_cma_ena0;

    assign i_mul67_qspline22_cma_a0 = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata;
    assign i_mul67_qspline22_cma_c0 = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata;
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
    ) i_mul67_qspline22_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul67_qspline22_cma_ena2, i_mul67_qspline22_cma_ena1, i_mul67_qspline22_cma_ena0 }),
        .aclr({ i_mul67_qspline22_cma_reset, i_mul67_qspline22_cma_reset }),
        .ay(i_mul67_qspline22_cma_a0),
        .ax(i_mul67_qspline22_cma_c0),
        .resulta(i_mul67_qspline22_cma_s0),
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
    i_mul67_qspline22_cma_delay ( .xin(i_mul67_qspline22_cma_s0), .xout(i_mul67_qspline22_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul67_qspline22_cma_q = $unsigned(i_mul67_qspline22_cma_qq[31:0]);

    // bgTrunc_i_mul67_qspline22_sel_x(BITSELECT,126)@10
    assign bgTrunc_i_mul67_qspline22_sel_x_b = i_mul67_qspline22_cma_q[15:0];

    // i_mul92_qspline30_cma(CHAINMULTADD,473)@7 + 3
    assign i_mul92_qspline30_cma_reset = ~ (resetn);
    assign i_mul92_qspline30_cma_ena0 = 1'b1;
    assign i_mul92_qspline30_cma_ena1 = i_mul92_qspline30_cma_ena0;
    assign i_mul92_qspline30_cma_ena2 = i_mul92_qspline30_cma_ena0;

    assign i_mul92_qspline30_cma_a0 = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata;
    assign i_mul92_qspline30_cma_c0 = i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata;
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
    ) i_mul92_qspline30_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul92_qspline30_cma_ena2, i_mul92_qspline30_cma_ena1, i_mul92_qspline30_cma_ena0 }),
        .aclr({ i_mul92_qspline30_cma_reset, i_mul92_qspline30_cma_reset }),
        .ay(i_mul92_qspline30_cma_a0),
        .ax(i_mul92_qspline30_cma_c0),
        .resulta(i_mul92_qspline30_cma_s0),
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
    i_mul92_qspline30_cma_delay ( .xin(i_mul92_qspline30_cma_s0), .xout(i_mul92_qspline30_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul92_qspline30_cma_q = $unsigned(i_mul92_qspline30_cma_qq[31:0]);

    // bgTrunc_i_mul92_qspline30_sel_x(BITSELECT,128)@10
    assign bgTrunc_i_mul92_qspline30_sel_x_b = i_mul92_qspline30_cma_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,268)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_mul92_qspline30_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_unnamed_qspline11_qspline29_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(bgTrunc_i_mul67_qspline22_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_castb1_x_b);
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
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_casta1_x(BITSELECT,235)@13
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_casta1_x_in = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod66_qspline0_dspb_native_dot_product_vunroll_x_cma0_q[15:0];
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_casta1_x_b = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_casta1_x_in[15:0];

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_notEnable(LOGICAL,520)
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_nor(LOGICAL,521)
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_nor_q = ~ (redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_notEnable_q | redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_sticky_ena_q);

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_last(CONSTANT,517)
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_last_q = $unsigned(2'b01);

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmp(LOGICAL,518)
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmp_q = $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_last_q == redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmpReg(REG,519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmpReg_q <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmp_q);
        end
    end

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_sticky_ena(REG,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_nor_q == 1'b1)
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_sticky_ena_q <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_cmpReg_q);
        end
    end

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_enaAnd(LOGICAL,523)
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_enaAnd_q = redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_sticky_ena_q & VCC_q;

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt(COUNTER,515)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i <= 2'd0;
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i == 2'd1)
            begin
                redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_eq <= 1'b0;
            end
            if (redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_eq == 1'b1)
            begin
                redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_q = redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_i[1:0];

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_inputreg0(DELAY,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_inputreg0_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata);
        end
    end

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_wraddr(REG,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_wraddr_q <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_q);
        end
    end

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem(DUALMEM,514)
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_ia = $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_inputreg0_q);
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_aa = redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_wraddr_q;
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_ab = redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_rdcnt_q;
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_reset0 = ~ (resetn);
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
    ) redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_dmem (
        .clocken1(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_reset0),
        .clock1(clock),
        .address_a(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_aa),
        .data_a(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_ab),
        .q_b(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_iq),
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
    assign redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_q = redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_iq[15:0];

    // redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_outputreg0(DELAY,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_outputreg0_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_outputreg0_q <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_mem_q);
        end
    end

    // i_reduction_qspline_1_qspline15_cma(CHAINMULTADD,475)@7 + 3
    assign i_reduction_qspline_1_qspline15_cma_reset = ~ (resetn);
    assign i_reduction_qspline_1_qspline15_cma_ena0 = 1'b1;
    assign i_reduction_qspline_1_qspline15_cma_ena1 = i_reduction_qspline_1_qspline15_cma_ena0;
    assign i_reduction_qspline_1_qspline15_cma_ena2 = i_reduction_qspline_1_qspline15_cma_ena0;

    assign i_reduction_qspline_1_qspline15_cma_a0 = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata;
    assign i_reduction_qspline_1_qspline15_cma_c0 = i_llvm_fpga_mem_unnamed_qspline8_qspline13_out_o_readdata;
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
    ) i_reduction_qspline_1_qspline15_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reduction_qspline_1_qspline15_cma_ena2, i_reduction_qspline_1_qspline15_cma_ena1, i_reduction_qspline_1_qspline15_cma_ena0 }),
        .aclr({ i_reduction_qspline_1_qspline15_cma_reset, i_reduction_qspline_1_qspline15_cma_reset }),
        .ay(i_reduction_qspline_1_qspline15_cma_a0),
        .ax(i_reduction_qspline_1_qspline15_cma_c0),
        .resulta(i_reduction_qspline_1_qspline15_cma_s0),
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
    i_reduction_qspline_1_qspline15_cma_delay ( .xin(i_reduction_qspline_1_qspline15_cma_s0), .xout(i_reduction_qspline_1_qspline15_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reduction_qspline_1_qspline15_cma_q = $unsigned(i_reduction_qspline_1_qspline15_cma_qq[31:0]);

    // bgTrunc_i_reduction_qspline_1_qspline15_sel_x(BITSELECT,130)@10
    assign bgTrunc_i_reduction_qspline_1_qspline15_sel_x_b = i_reduction_qspline_1_qspline15_cma_q[15:0];

    // i_reduction_qspline_0_qspline14_cma(CHAINMULTADD,474)@7 + 3
    assign i_reduction_qspline_0_qspline14_cma_reset = ~ (resetn);
    assign i_reduction_qspline_0_qspline14_cma_ena0 = 1'b1;
    assign i_reduction_qspline_0_qspline14_cma_ena1 = i_reduction_qspline_0_qspline14_cma_ena0;
    assign i_reduction_qspline_0_qspline14_cma_ena2 = i_reduction_qspline_0_qspline14_cma_ena0;

    assign i_reduction_qspline_0_qspline14_cma_a0 = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata;
    assign i_reduction_qspline_0_qspline14_cma_c0 = i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata;
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
    ) i_reduction_qspline_0_qspline14_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reduction_qspline_0_qspline14_cma_ena2, i_reduction_qspline_0_qspline14_cma_ena1, i_reduction_qspline_0_qspline14_cma_ena0 }),
        .aclr({ i_reduction_qspline_0_qspline14_cma_reset, i_reduction_qspline_0_qspline14_cma_reset }),
        .ay(i_reduction_qspline_0_qspline14_cma_a0),
        .ax(i_reduction_qspline_0_qspline14_cma_c0),
        .resulta(i_reduction_qspline_0_qspline14_cma_s0),
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
    i_reduction_qspline_0_qspline14_cma_delay ( .xin(i_reduction_qspline_0_qspline14_cma_s0), .xout(i_reduction_qspline_0_qspline14_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reduction_qspline_0_qspline14_cma_q = $unsigned(i_reduction_qspline_0_qspline14_cma_qq[31:0]);

    // bgTrunc_i_reduction_qspline_0_qspline14_sel_x(BITSELECT,129)@10
    assign bgTrunc_i_reduction_qspline_0_qspline14_sel_x_b = i_reduction_qspline_0_qspline14_cma_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,266)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_reduction_qspline_0_qspline14_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(bgTrunc_i_reduction_qspline_1_qspline15_sel_x_b);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add_qspline19(ADD,69)@13
    assign i_dot_prod_add_qspline19_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_qspline0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add_qspline19_b = {1'b0, redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_outputreg0_q};
    assign i_dot_prod_add_qspline19_o = $unsigned(i_dot_prod_add_qspline19_a) + $unsigned(i_dot_prod_add_qspline19_b);
    assign i_dot_prod_add_qspline19_q = i_dot_prod_add_qspline19_o[16:0];

    // bgTrunc_i_dot_prod_add_qspline19_sel_x(BITSELECT,123)@13
    assign bgTrunc_i_dot_prod_add_qspline19_sel_x_b = i_dot_prod_add_qspline19_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,269)@13 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_dot_prod_add_qspline19_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(redist18_i_llvm_fpga_mem_unnamed_qspline7_qspline11_out_o_readdata_6_outputreg0_q);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1 = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_casta1_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1 = $unsigned(redist17_i_llvm_fpga_mem_unnamed_qspline9_qspline21_out_o_readdata_6_mem_q);
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
    ) i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_a1),
        .by(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_c1),
        .bx(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_qq[32:0]);

    // redist9_sync_together114_aunroll_x_in_i_valid_14(DELAY,486)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together114_aunroll_x_in_i_valid_14 ( .xin(redist8_sync_together114_aunroll_x_in_i_valid_4_q), .xout(redist9_sync_together114_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg9(REG,262)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist9_sync_together114_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist12_i_xor_qspline4_q_14(DELAY,489)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_xor_qspline4_q_14 ( .xin(redist11_i_xor_qspline4_q_4_q), .xout(redist12_i_xor_qspline4_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_notEnable(LOGICAL,531)
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_nor(LOGICAL,532)
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_nor_q = ~ (redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_notEnable_q | redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_sticky_ena_q);

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_last(CONSTANT,528)
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_last_q = $unsigned(4'b0110);

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmp(LOGICAL,529)
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmp_b = {1'b0, redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_q};
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmp_q = $unsigned(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_last_q == redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmp_b ? 1'b1 : 1'b0);

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmpReg(REG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmpReg_q <= $unsigned(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmp_q);
        end
    end

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_sticky_ena(REG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_nor_q == 1'b1)
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_sticky_ena_q <= $unsigned(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_cmpReg_q);
        end
    end

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_enaAnd(LOGICAL,534)
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_enaAnd_q = redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_sticky_ena_q & VCC_q;

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt(COUNTER,526)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_i <= $unsigned(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_q = redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_i[2:0];

    // i_arrayidx12115_qspline0_mult_x_im0_shift0(BITSHIFT,448)@6
    assign i_arrayidx12115_qspline0_mult_x_im0_shift0_qint = { redist0_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_b_3_q, 1'b0 };
    assign i_arrayidx12115_qspline0_mult_x_im0_shift0_q = i_arrayidx12115_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx12115_qspline0_mult_x_sums_align_3(BITSHIFT,319)@6
    assign i_arrayidx12115_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx12115_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx12115_qspline0_mult_x_sums_align_3_q = i_arrayidx12115_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx12115_qspline0_mult_x_im6_shift0(BITSHIFT,450)@6
    assign i_arrayidx12115_qspline0_mult_x_im6_shift0_qint = { redist2_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_d_3_outputreg0_q, 1'b0 };
    assign i_arrayidx12115_qspline0_mult_x_im6_shift0_q = i_arrayidx12115_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx12115_qspline0_mult_x_sums_align_2(BITSHIFT,318)@6
    assign i_arrayidx12115_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx12115_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx12115_qspline0_mult_x_sums_align_2_q = i_arrayidx12115_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx12115_qspline0_mult_x_sums_join_4(BITJOIN,320)@6
    assign i_arrayidx12115_qspline0_mult_x_sums_join_4_q = {i_arrayidx12115_qspline0_mult_x_sums_align_3_q, i_arrayidx12115_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx12115_qspline0_mult_x_im3_shift0(BITSHIFT,449)@6
    assign i_arrayidx12115_qspline0_mult_x_im3_shift0_qint = { redist1_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_c_3_outputreg0_q, 1'b0 };
    assign i_arrayidx12115_qspline0_mult_x_im3_shift0_q = i_arrayidx12115_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx12115_qspline0_mult_x_sums_align_0(BITSHIFT,316)@6
    assign i_arrayidx12115_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx12115_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx12115_qspline0_mult_x_sums_align_0_q = i_arrayidx12115_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx12115_qspline0_mult_x_im9_shift0(BITSHIFT,451)@6
    assign i_arrayidx12115_qspline0_mult_x_im9_shift0_qint = { redist3_i_arrayidx11114_qspline0_mult_x_bs1_merged_bit_select_e_3_outputreg0_q, 1'b0 };
    assign i_arrayidx12115_qspline0_mult_x_im9_shift0_q = i_arrayidx12115_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx12115_qspline0_mult_x_sums_join_1(BITJOIN,317)@6
    assign i_arrayidx12115_qspline0_mult_x_sums_join_1_q = {i_arrayidx12115_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx12115_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0(ADD,321)@6
    assign i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx12115_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx12115_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx12115_qspline0_mult_extender_x(BITJOIN,161)@6
    assign i_arrayidx12115_qspline0_mult_extender_x_q = {i_arrayidx11114_qspline0_mult_multconst_x_q, i_arrayidx12115_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx12115_qspline0_trunc_sel_x(BITSELECT,163)@6
    assign i_arrayidx12115_qspline0_trunc_sel_x_b = i_arrayidx12115_qspline0_mult_extender_x_q[63:0];

    // c_qspline_out_pmem(CONSTANT,42)
    assign c_qspline_out_pmem_q = $unsigned(64'b0100000000001100000000000000000000000000000000000000000000000000);

    // i_arrayidx12115_qspline0_add_x(ADD,155)@6
    assign i_arrayidx12115_qspline0_add_x_a = {1'b0, c_qspline_out_pmem_q};
    assign i_arrayidx12115_qspline0_add_x_b = {1'b0, i_arrayidx12115_qspline0_trunc_sel_x_b};
    assign i_arrayidx12115_qspline0_add_x_o = $unsigned(i_arrayidx12115_qspline0_add_x_a) + $unsigned(i_arrayidx12115_qspline0_add_x_b);
    assign i_arrayidx12115_qspline0_add_x_q = i_arrayidx12115_qspline0_add_x_o[64:0];

    // i_arrayidx12115_qspline0_dupName_0_trunc_sel_x(BITSELECT,164)@6
    assign i_arrayidx12115_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx12115_qspline0_add_x_q[63:0];

    // i_arrayidx12115_qspline55_vt_select_63(BITSELECT,50)@6
    assign i_arrayidx12115_qspline55_vt_select_63_b = i_arrayidx12115_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_inputreg0(DELAY,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_inputreg0_q <= '0;
        end
        else
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_inputreg0_q <= $unsigned(i_arrayidx12115_qspline55_vt_select_63_b);
        end
    end

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_wraddr(REG,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_wraddr_q <= $unsigned(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_q);
        end
    end

    // redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem(DUALMEM,525)
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_ia = $unsigned(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_inputreg0_q);
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_aa = redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_wraddr_q;
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_ab = redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_rdcnt_q;
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(63),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(63),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_dmem (
        .clocken1(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_aa),
        .data_a(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_ab),
        .q_b(redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_iq),
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
    assign redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_q = redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_iq[62:0];

    // i_arrayidx12115_qspline55_vt_join(BITJOIN,49)@16
    assign i_arrayidx12115_qspline55_vt_join_q = {redist20_i_arrayidx12115_qspline55_vt_select_63_b_10_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_7_qspline56(BLACKBOX,78)@16
    // out out_memdep_7_qspline_avm_address@20000000
    // out out_memdep_7_qspline_avm_burstcount@20000000
    // out out_memdep_7_qspline_avm_byteenable@20000000
    // out out_memdep_7_qspline_avm_enable@20000000
    // out out_memdep_7_qspline_avm_read@20000000
    // out out_memdep_7_qspline_avm_write@20000000
    // out out_memdep_7_qspline_avm_writedata@20000000
    // out out_o_stall@17
    // out out_o_valid@17
    // out out_o_writeack@17
    qspline_i_llvm_fpga_mem_memdep_7_0 thei_llvm_fpga_mem_memdep_7_qspline56 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx12115_qspline55_vt_join_q),
        .in_i_predicate(redist12_i_xor_qspline4_q_14_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_llvm_fpga_dot_product_i16_i16_v2i16_dot_prod71_qspline0_dspb_native_dot_product_vunroll_x_cma0_q[15:0]),
        .in_memdep_7_qspline_avm_readdata(in_memdep_7_qspline_avm_readdata),
        .in_memdep_7_qspline_avm_readdatavalid(in_memdep_7_qspline_avm_readdatavalid),
        .in_memdep_7_qspline_avm_waitrequest(in_memdep_7_qspline_avm_waitrequest),
        .in_memdep_7_qspline_avm_writeack(in_memdep_7_qspline_avm_writeack),
        .out_memdep_7_qspline_avm_address(i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_address),
        .out_memdep_7_qspline_avm_burstcount(i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_burstcount),
        .out_memdep_7_qspline_avm_byteenable(i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_byteenable),
        .out_memdep_7_qspline_avm_enable(i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_enable),
        .out_memdep_7_qspline_avm_read(i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_read),
        .out_memdep_7_qspline_avm_write(i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_write),
        .out_memdep_7_qspline_avm_writedata(i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_ext_sig_sync_out_x(GPOUT,144)
    assign out_memdep_7_qspline_avm_address = i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_address;
    assign out_memdep_7_qspline_avm_enable = i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_enable;
    assign out_memdep_7_qspline_avm_read = i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_read;
    assign out_memdep_7_qspline_avm_write = i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_write;
    assign out_memdep_7_qspline_avm_writedata = i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_writedata;
    assign out_memdep_7_qspline_avm_byteenable = i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_byteenable;
    assign out_memdep_7_qspline_avm_burstcount = i_llvm_fpga_mem_memdep_7_qspline56_out_memdep_7_qspline_avm_burstcount;

    // valid_fanout_reg0(REG,253)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together114_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist4_valid_fanout_reg0_q_1(DELAY,481)
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

    // valid_fanout_reg11(REG,264)@1 + 1
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

    // valid_fanout_reg12(REG,265)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2355_push18_qspline71(BLACKBOX,92)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    qspline_i_llvm_fpga_push_i1_notcmp2355_push18_0 thei_llvm_fpga_push_i1_notcmp2355_push18_qspline71 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_feedback_stall_out_18),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp2355_push18_qspline71_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp2355_push18_qspline71_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together114_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together114_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together114_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70(BLACKBOX,87)@2
    // out out_feedback_stall_out_18@20000000
    qspline_i_llvm_fpga_pop_i1_notcmp2355_pop18_0 thei_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70 (
        .in_data_in(redist6_sync_together114_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist5_sync_together114_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp2355_push18_qspline71_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp2355_push18_qspline71_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out_15(DELAY,491)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out_15 ( .xin(i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out), .xout(redist14_i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_qspline69(LOGICAL,96)@2 + 1
    assign i_masked_qspline69_qi = i_notcmp_qspline62_q & i_first_cleanup_qspline3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_qspline69_delay ( .xin(i_masked_qspline69_qi), .xout(i_masked_qspline69_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_masked_qspline69_q_15(DELAY,490)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_masked_qspline69_q_15 ( .xin(i_masked_qspline69_q), .xout(redist13_i_masked_qspline69_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_16(DELAY,493)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_16 ( .xin(redist15_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_1_q), .xout(redist16_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,247)@17
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist16_i_llvm_fpga_pipeline_keep_going_qspline6_out_data_out_16_q;
    assign out_c0_exi3_2_tpl = redist13_i_masked_qspline69_q_15_q;
    assign out_c0_exi3_3_tpl = redist14_i_llvm_fpga_pop_i1_notcmp2355_pop18_qspline70_out_data_out_15_q;
    assign out_o_valid = redist4_valid_fanout_reg0_q_1_q;
    assign out_unnamed_qspline1 = GND_q;

endmodule
