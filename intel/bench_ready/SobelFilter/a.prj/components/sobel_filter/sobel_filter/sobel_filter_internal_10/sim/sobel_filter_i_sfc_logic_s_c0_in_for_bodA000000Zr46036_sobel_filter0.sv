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

// SystemVerilog created from sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr46036_sobel_filter0
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr46036_sobel_filter0 (
    input wire [31:0] in_unnamed_sobel_filter14_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_writeack,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_sobel_filter15_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_writeack,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_unnamed_sobel_filter14_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter14_sobel_filter_avm_writedata,
    output wire [3:0] out_unnamed_sobel_filter14_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_burstcount,
    input wire [31:0] in_memdep_19_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_19_sobel_filter_avm_writeack,
    input wire [0:0] in_memdep_19_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_19_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_unnamed_sobel_filter15_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter15_sobel_filter_avm_writedata,
    output wire [3:0] out_unnamed_sobel_filter15_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_burstcount,
    output wire [31:0] out_memdep_19_sobel_filter_avm_address,
    output wire [0:0] out_memdep_19_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_19_sobel_filter_avm_read,
    output wire [0:0] out_memdep_19_sobel_filter_avm_write,
    output wire [31:0] out_memdep_19_sobel_filter_avm_writedata,
    output wire [3:0] out_memdep_19_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_19_sobel_filter_avm_burstcount,
    output wire [0:0] out_c0_exi6469_0_tpl,
    output wire [0:0] out_c0_exi6469_1_tpl,
    output wire [0:0] out_c0_exi6469_2_tpl,
    output wire [0:0] out_c0_exi6469_3_tpl,
    output wire [0:0] out_c0_exi6469_4_tpl,
    output wire [0:0] out_c0_exi6469_5_tpl,
    output wire [0:0] out_c0_exi6469_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sobel_filter3,
    input wire [0:0] in_c0_eni3459_0_tpl,
    input wire [0:0] in_c0_eni3459_1_tpl,
    input wire [0:0] in_c0_eni3459_2_tpl,
    input wire [0:0] in_c0_eni3459_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_29138_q;
    wire [17:0] c_i18_102398151_q;
    wire [17:0] c_i18_1153_q;
    wire [1:0] c_i2_1120_q;
    wire [31:0] c_i32_0122_q;
    wire [31:0] c_i32_1023144_q;
    wire [31:0] c_i32_1023146_q;
    wire [31:0] c_i32_1053145_q;
    wire [31:0] c_i32_1054129_q;
    wire [31:0] c_i32_1123_q;
    wire [31:0] c_i32_1128_q;
    wire [31:0] c_i32_21130_q;
    wire [31:0] c_i32_2147483647142_q;
    wire [31:0] c_i32_2147483648143_q;
    wire [31:0] c_i32_255150_q;
    wire [31:0] c_i32_31147_q;
    wire [7:0] c_i8_247_q;
    wire [63:0] c_sobel_filter_contour_img_cpu_pmem_q;
    wire [63:0] c_sobel_filter_sobel_h_res_pmem_q;
    wire [63:0] c_sobel_filter_sobel_v_res_pmem_q;
    wire [0:0] i_acl_24_i11_sobel_filter73_s;
    reg [31:0] i_acl_24_i11_sobel_filter73_q;
    wire [26:0] i_acl_24_i11_sobel_filter73_vt_const_31_q;
    wire [31:0] i_acl_24_i11_sobel_filter73_vt_join_q;
    wire [4:0] i_acl_24_i11_sobel_filter73_vt_select_4_b;
    wire [0:0] i_acl_25_i12_sobel_filter74_s;
    reg [31:0] i_acl_25_i12_sobel_filter74_q;
    wire [31:0] i_acl_25_i12_sobel_filter74_vt_join_q;
    wire [4:0] i_acl_25_i12_sobel_filter74_vt_select_4_b;
    wire [0:0] i_acl_26_i13_sobel_filter75_s;
    reg [31:0] i_acl_26_i13_sobel_filter75_q;
    wire [0:0] i_acl_27_i14_sobel_filter76_s;
    reg [31:0] i_acl_27_i14_sobel_filter76_q;
    wire [63:0] i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut;
    wire [32:0] i_add_i22_sobel_filter36_a;
    wire [32:0] i_add_i22_sobel_filter36_b;
    logic [32:0] i_add_i22_sobel_filter36_o;
    wire [32:0] i_add_i22_sobel_filter36_q;
    wire [24:0] i_add_i22_sobel_filter36_vt_const_31_q;
    wire [31:0] i_add_i22_sobel_filter36_vt_join_q;
    wire [6:0] i_add_i22_sobel_filter36_vt_select_6_b;
    wire [32:0] i_add_i_sobel_filter18_a;
    wire [32:0] i_add_i_sobel_filter18_b;
    logic [32:0] i_add_i_sobel_filter18_o;
    wire [32:0] i_add_i_sobel_filter18_q;
    wire [31:0] i_add_i_sobel_filter18_vt_join_q;
    wire [30:0] i_add_i_sobel_filter18_vt_select_30_b;
    wire [51:0] i_and1_i2_sobel_filter54_vt_const_63_q;
    wire [63:0] i_and1_i2_sobel_filter54_vt_join_q;
    wire [11:0] i_and1_i2_sobel_filter54_vt_select_11_b;
    wire [1:0] i_and23_i15_sobel_filter77_vt_const_1_q;
    wire [31:0] i_and23_i15_sobel_filter77_vt_join_q;
    wire [2:0] i_and23_i15_sobel_filter77_vt_select_4_b;
    wire [29:0] i_and26_i17_sobel_filter79_vt_const_31_q;
    wire [31:0] i_and26_i17_sobel_filter79_vt_join_q;
    wire [1:0] i_and26_i17_sobel_filter79_vt_select_1_b;
    wire [3:0] i_and6_i_sobel_filter37_vt_const_3_q;
    wire [25:0] i_and6_i_sobel_filter37_vt_const_31_q;
    wire [31:0] i_and6_i_sobel_filter37_vt_join_q;
    wire [1:0] i_and6_i_sobel_filter37_vt_select_5_b;
    wire [27:0] i_and7_i_sobel_filter40_vt_const_31_q;
    wire [31:0] i_and7_i_sobel_filter40_vt_join_q;
    wire [1:0] i_and7_i_sobel_filter40_vt_select_3_b;
    wire [63:0] i_arrayidx10_i111_sobel_filter84_vt_join_q;
    wire [61:0] i_arrayidx10_i111_sobel_filter84_vt_select_63_b;
    wire [63:0] i_arrayidx4_i110_sobel_filter14_vt_join_q;
    wire [61:0] i_arrayidx4_i110_sobel_filter14_vt_select_63_b;
    wire [63:0] i_arrayidx_i17109_sobel_filter10_vt_join_q;
    wire [61:0] i_arrayidx_i17109_sobel_filter10_vt_select_63_b;
    wire [1:0] i_cleanups_shl_sobel_filter5_vt_join_q;
    wire [0:0] i_cleanups_shl_sobel_filter5_vt_select_1_b;
    wire [33:0] i_cmp12_i7_sobel_filter67_a;
    wire [33:0] i_cmp12_i7_sobel_filter67_b;
    logic [33:0] i_cmp12_i7_sobel_filter67_o;
    wire [0:0] i_cmp12_i7_sobel_filter67_c;
    wire [33:0] i_cmp16_i8_sobel_filter68_a;
    wire [33:0] i_cmp16_i8_sobel_filter68_b;
    logic [33:0] i_cmp16_i8_sobel_filter68_o;
    wire [0:0] i_cmp16_i8_sobel_filter68_c;
    wire [0:0] i_cmp_i20_sobel_filter31_q;
    wire [0:0] i_cmp_i5_sobel_filter64_qi;
    reg [0:0] i_cmp_i5_sobel_filter64_q;
    wire [0:0] i_cond10_i6_sobel_filter66_s;
    reg [31:0] i_cond10_i6_sobel_filter66_q;
    wire [32:0] i_conv4_i_sobel_filter35_vt_const_63_q;
    wire [63:0] i_conv4_i_sobel_filter35_vt_join_q;
    wire [30:0] i_conv4_i_sobel_filter35_vt_select_30_b;
    wire [31:0] i_conv7_i4_sobel_filter63_vt_join_q;
    wire [29:0] i_conv7_i4_sobel_filter63_vt_select_29_b;
    wire [18:0] i_fpga_indvars_iv_next41_sobel_filter96_a;
    wire [18:0] i_fpga_indvars_iv_next41_sobel_filter96_b;
    logic [18:0] i_fpga_indvars_iv_next41_sobel_filter96_o;
    wire [18:0] i_fpga_indvars_iv_next41_sobel_filter96_q;
    wire [63:0] i_idxprom_i16_sobel_filter9_vt_join_q;
    wire [31:0] i_idxprom_i16_sobel_filter9_vt_select_31_b;
    wire [32:0] i_inc_i18_sobel_filter86_a;
    wire [32:0] i_inc_i18_sobel_filter86_b;
    logic [32:0] i_inc_i18_sobel_filter86_o;
    wire [32:0] i_inc_i18_sobel_filter86_q;
    wire [31:0] i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_select_5_b;
    wire [31:0] i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_pipeline_valid_out;
    wire [17:0] i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_feedback_stall_out_54;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_feedback_stall_out_52;
    wire [31:0] i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sobel_filter7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sobel_filter7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sobel_filter92_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sobel_filter92_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push52_sobel_filter95_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push52_sobel_filter95_out_feedback_valid_out_52;
    wire [31:0] i_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87_out_feedback_valid_out_51;
    wire [0:0] i_masked_sobel_filter98_qi;
    reg [0:0] i_masked_sobel_filter98_q;
    wire [31:0] i_mul7_i_sobel_filter17_vt_join_q;
    wire [30:0] i_mul7_i_sobel_filter17_vt_select_30_b;
    wire [31:0] i_mul_i_sobel_filter13_vt_join_q;
    wire [30:0] i_mul_i_sobel_filter13_vt_select_30_b;
    wire [31:0] i_neg_i_i_sobel_filter29_q;
    wire [0:0] i_next_cleanups_sobel_filter94_s;
    reg [1:0] i_next_cleanups_sobel_filter94_q;
    wire [0:0] i_notcmp_sobel_filter91_q;
    wire [32:0] i_off_i10_sobel_filter71_a;
    wire [32:0] i_off_i10_sobel_filter71_b;
    logic [32:0] i_off_i10_sobel_filter71_o;
    wire [32:0] i_off_i10_sobel_filter71_q;
    wire [31:0] i_or2_i_i_sobel_filter22_q;
    wire [31:0] i_or2_i_i_sobel_filter22_vt_join_q;
    wire [30:0] i_or2_i_i_sobel_filter22_vt_select_30_b;
    wire [31:0] i_or4_i_i_sobel_filter24_q;
    wire [31:0] i_or4_i_i_sobel_filter24_vt_join_q;
    wire [30:0] i_or4_i_i_sobel_filter24_vt_select_30_b;
    wire [31:0] i_or6_i_i_sobel_filter26_q;
    wire [31:0] i_or6_i_i_sobel_filter26_vt_join_q;
    wire [30:0] i_or6_i_i_sobel_filter26_vt_select_30_b;
    wire [31:0] i_or8_i_i_sobel_filter28_q;
    wire [31:0] i_or_i_i_sobel_filter20_q;
    wire [31:0] i_or_i_i_sobel_filter20_vt_join_q;
    wire [30:0] i_or_i_i_sobel_filter20_vt_select_30_b;
    wire [0:0] i_or_sobel_filter93_q;
    wire [61:0] i_sh_prom1126_i_sobel_filter44_vt_const_63_q;
    wire [63:0] i_sh_prom1126_i_sobel_filter44_vt_join_q;
    wire [1:0] i_sh_prom1126_i_sobel_filter44_vt_select_1_b;
    wire [59:0] i_sh_prom8_i_sobel_filter41_vt_const_63_q;
    wire [63:0] i_sh_prom8_i_sobel_filter41_vt_join_q;
    wire [1:0] i_sh_prom8_i_sobel_filter41_vt_select_3_b;
    wire [57:0] i_sh_prom_i_sobel_filter38_vt_const_63_q;
    wire [63:0] i_sh_prom_i_sobel_filter38_vt_join_q;
    wire [1:0] i_sh_prom_i_sobel_filter38_vt_select_5_b;
    wire [2:0] i_shr1_i_i_sobel_filter21_vt_const_31_q;
    wire [31:0] i_shr1_i_i_sobel_filter21_vt_join_q;
    wire [28:0] i_shr1_i_i_sobel_filter21_vt_select_28_b;
    wire [4:0] i_shr3_i_i_sobel_filter23_vt_const_31_q;
    wire [31:0] i_shr3_i_i_sobel_filter23_vt_join_q;
    wire [26:0] i_shr3_i_i_sobel_filter23_vt_select_26_b;
    wire [8:0] i_shr5_i_i_sobel_filter25_vt_const_31_q;
    wire [31:0] i_shr5_i_i_sobel_filter25_vt_join_q;
    wire [22:0] i_shr5_i_i_sobel_filter25_vt_select_22_b;
    wire [15:0] i_shr7_i_i_sobel_filter27_vt_const_31_q;
    wire [31:0] i_shr7_i_i_sobel_filter27_vt_join_q;
    wire [15:0] i_shr7_i_i_sobel_filter27_vt_select_15_b;
    wire [31:0] i_shr_i_i_sobel_filter19_vt_join_q;
    wire [29:0] i_shr_i_i_sobel_filter19_vt_select_29_b;
    wire [0:0] i_spec_select23_i9_sobel_filter69_s;
    reg [31:0] i_spec_select23_i9_sobel_filter69_q;
    wire [32:0] i_sub29_i19_sobel_filter81_a;
    wire [32:0] i_sub29_i19_sobel_filter81_b;
    logic [32:0] i_sub29_i19_sobel_filter81_o;
    wire [32:0] i_sub29_i19_sobel_filter81_q;
    wire [32:0] i_sub_i21_sobel_filter33_a;
    wire [32:0] i_sub_i21_sobel_filter33_b;
    logic [32:0] i_sub_i21_sobel_filter33_o;
    wire [32:0] i_sub_i21_sobel_filter33_q;
    wire [20:0] i_sub_i21_sobel_filter33_vt_const_31_q;
    wire [31:0] i_sub_i21_sobel_filter33_vt_join_q;
    wire [10:0] i_sub_i21_sobel_filter33_vt_select_10_b;
    wire [32:0] i_sub_i_sobel_filter83_a;
    wire [32:0] i_sub_i_sobel_filter83_b;
    logic [32:0] i_sub_i_sobel_filter83_o;
    wire [32:0] i_sub_i_sobel_filter83_q;
    wire [0:0] i_unnamed_sobel_filter34_s;
    reg [31:0] i_unnamed_sobel_filter34_q;
    wire [31:0] i_unnamed_sobel_filter34_vt_join_q;
    wire [10:0] i_unnamed_sobel_filter34_vt_select_10_b;
    wire [19:0] i_unnamed_sobel_filter55_vt_const_31_q;
    wire [31:0] i_unnamed_sobel_filter55_vt_join_q;
    wire [11:0] i_unnamed_sobel_filter55_vt_select_11_b;
    wire [31:0] i_unnamed_sobel_filter56_vt_join_q;
    wire [10:0] i_unnamed_sobel_filter56_vt_select_10_b;
    wire [15:0] i_unnamed_sobel_filter57_vt_join_q;
    wire [11:0] i_unnamed_sobel_filter57_vt_select_11_b;
    wire [16:0] i_unnamed_sobel_filter58_a;
    wire [16:0] i_unnamed_sobel_filter58_b;
    logic [16:0] i_unnamed_sobel_filter58_o;
    wire [16:0] i_unnamed_sobel_filter58_q;
    wire [21:0] i_unnamed_sobel_filter60_vt_const_63_q;
    wire [63:0] i_unnamed_sobel_filter60_vt_join_q;
    wire [41:0] i_unnamed_sobel_filter60_vt_select_41_b;
    wire [31:0] i_unnamed_sobel_filter62_vt_join_q;
    wire [29:0] i_unnamed_sobel_filter62_vt_select_29_b;
    wire [31:0] i_unnamed_sobel_filter70_vt_join_q;
    wire [4:0] i_unnamed_sobel_filter70_vt_select_4_b;
    wire [33:0] i_unnamed_sobel_filter72_a;
    wire [33:0] i_unnamed_sobel_filter72_b;
    logic [33:0] i_unnamed_sobel_filter72_o;
    wire [0:0] i_unnamed_sobel_filter72_c;
    wire [0:0] i_unnamed_sobel_filter82_s;
    reg [31:0] i_unnamed_sobel_filter82_q;
    wire [0:0] i_xor_sobel_filter4_q;
    wire [31:0] bgTrunc_i_add_i22_sobel_filter36_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_sobel_filter18_sel_x_b;
    wire [17:0] bgTrunc_i_fpga_indvars_iv_next41_sobel_filter96_sel_x_b;
    wire [31:0] bgTrunc_i_inc_i18_sobel_filter86_sel_x_b;
    wire [63:0] bgTrunc_i_mul7_i_sobel_filter17_sel_x_in;
    wire [31:0] bgTrunc_i_mul7_i_sobel_filter17_sel_x_b;
    wire [63:0] bgTrunc_i_mul_i_sobel_filter13_sel_x_in;
    wire [31:0] bgTrunc_i_mul_i_sobel_filter13_sel_x_b;
    wire [31:0] bgTrunc_i_off_i10_sobel_filter71_sel_x_b;
    wire [31:0] bgTrunc_i_sub29_i19_sobel_filter81_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i21_sobel_filter33_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_sobel_filter83_sel_x_b;
    wire [15:0] bgTrunc_i_unnamed_sobel_filter58_sel_x_b;
    wire [31:0] c_i32_2047137_recast_x_q;
    wire [64:0] i_arrayidx10_i111_sobel_filter0_add_x_a;
    wire [64:0] i_arrayidx10_i111_sobel_filter0_add_x_b;
    logic [64:0] i_arrayidx10_i111_sobel_filter0_add_x_o;
    wire [64:0] i_arrayidx10_i111_sobel_filter0_add_x_q;
    wire [127:0] i_arrayidx10_i111_sobel_filter0_mult_extender_x_q;
    wire [60:0] i_arrayidx10_i111_sobel_filter0_mult_multconst_x_q;
    wire [63:0] i_arrayidx10_i111_sobel_filter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx10_i111_sobel_filter0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx4_i110_sobel_filter0_add_x_a;
    wire [64:0] i_arrayidx4_i110_sobel_filter0_add_x_b;
    logic [64:0] i_arrayidx4_i110_sobel_filter0_add_x_o;
    wire [64:0] i_arrayidx4_i110_sobel_filter0_add_x_q;
    wire [127:0] i_arrayidx4_i110_sobel_filter0_mult_extender_x_q;
    wire [63:0] i_arrayidx4_i110_sobel_filter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx4_i110_sobel_filter0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i17109_sobel_filter0_add_x_a;
    wire [64:0] i_arrayidx_i17109_sobel_filter0_add_x_b;
    logic [64:0] i_arrayidx_i17109_sobel_filter0_add_x_o;
    wire [64:0] i_arrayidx_i17109_sobel_filter0_add_x_q;
    wire [127:0] i_arrayidx_i17109_sobel_filter0_mult_extender_x_q;
    wire [63:0] i_arrayidx_i17109_sobel_filter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx_i17109_sobel_filter0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_conv4_i_sobel_filter35_sel_x_b;
    wire [4:0] i_conv5_trunc_i3_sobel_filter59_sel_x_b;
    wire [0:0] i_first_cleanup_sobel_filter3_sel_x_b;
    wire [63:0] i_idxprom_i16_sobel_filter9_sel_x_b;
    wire [135:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q;
    wire [135:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [63:0] i_sh_prom1126_i_sobel_filter44_sel_x_b;
    wire [63:0] i_sh_prom8_i_sobel_filter41_sel_x_b;
    wire [63:0] i_sh_prom_i_sobel_filter38_sel_x_b;
    wire [5:0] i_shl12_i_sobel_filter0_shift_narrow_x_b;
    wire [5:0] i_shl9_i_sobel_filter0_shift_narrow_x_b;
    wire [5:0] i_shl_i_sobel_filter0_shift_narrow_x_b;
    wire [4:0] i_shr24_i16_sobel_filter0_shift_narrow_x_b;
    wire [4:0] i_shr27_i18_sobel_filter0_shift_narrow_x_b;
    wire [0:0] i_toi1_intcast17_sobel_filter16_sel_x_b;
    wire [0:0] i_toi1_intcast_sobel_filter12_sel_x_b;
    wire [31:0] i_unnamed_sobel_filter55_sel_x_b;
    wire [15:0] i_unnamed_sobel_filter57_sel_x_b;
    wire [31:0] i_unnamed_sobel_filter61_sel_x_b;
    wire [31:0] i_unnamed_sobel_filter70_sel_x_b;
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
    wire [31:0] i_and23_i15_sobel_filter77_join_q;
    wire [31:0] i_and26_i17_sobel_filter79_join_q;
    wire [31:0] i_and6_i_sobel_filter37_join_q;
    wire [31:0] i_and7_i_sobel_filter40_join_q;
    wire [29:0] i_conv7_i4_sobel_filter63_BitSelect_for_a_b;
    wire [31:0] i_conv7_i4_sobel_filter63_join_q;
    wire [0:0] i_exitcond42_sobel_filter89_cmp_nsign_q;
    wire [13:0] i_mul7_i_sobel_filter17_bs1_b;
    wire [17:0] i_mul7_i_sobel_filter17_bs4_in;
    wire [17:0] i_mul7_i_sobel_filter17_bs4_b;
    wire [63:0] i_mul7_i_sobel_filter17_sums_join_0_q;
    wire [50:0] i_mul7_i_sobel_filter17_sums_align_1_q;
    wire [50:0] i_mul7_i_sobel_filter17_sums_align_1_qint;
    wire [64:0] i_mul7_i_sobel_filter17_sums_result_add_0_0_a;
    wire [64:0] i_mul7_i_sobel_filter17_sums_result_add_0_0_b;
    logic [64:0] i_mul7_i_sobel_filter17_sums_result_add_0_0_o;
    wire [64:0] i_mul7_i_sobel_filter17_sums_result_add_0_0_q;
    wire [13:0] i_mul_i_sobel_filter13_bs1_b;
    wire [17:0] i_mul_i_sobel_filter13_bs4_in;
    wire [17:0] i_mul_i_sobel_filter13_bs4_b;
    wire [63:0] i_mul_i_sobel_filter13_sums_join_0_q;
    wire [50:0] i_mul_i_sobel_filter13_sums_align_1_q;
    wire [50:0] i_mul_i_sobel_filter13_sums_align_1_qint;
    wire [64:0] i_mul_i_sobel_filter13_sums_result_add_0_0_a;
    wire [64:0] i_mul_i_sobel_filter13_sums_result_add_0_0_b;
    logic [64:0] i_mul_i_sobel_filter13_sums_result_add_0_0_o;
    wire [64:0] i_mul_i_sobel_filter13_sums_result_add_0_0_q;
    wire [0:0] i_tobool_i1_sobel_filter52_cmp_sign_qi;
    reg [0:0] i_tobool_i1_sobel_filter52_cmp_sign_q;
    wire [10:0] i_unnamed_sobel_filter56_BitSelect_for_a_b;
    wire [31:0] i_unnamed_sobel_filter56_join_q;
    wire [29:0] i_unnamed_sobel_filter62_BitSelect_for_a_b;
    wire [31:0] i_unnamed_sobel_filter62_join_q;
    wire [59:0] rightShiftStage0Idx1Rng4_uid498_i_and1_i2_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid500_i_and1_i2_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_q;
    wire [47:0] rightShiftStage1Idx1Rng16_uid503_i_and1_i2_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid505_i_and1_i2_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_q;
    wire [31:0] rightShiftStage2Idx1Rng32_uid508_i_and1_i2_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid510_i_and1_i2_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_q;
    wire [35:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid571_i_cleanups_shl_sobel_filter0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid571_i_cleanups_shl_sobel_filter0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid572_i_cleanups_shl_sobel_filter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_s;
    reg [1:0] leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid579_i_shl12_i_sobel_filter0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid579_i_shl12_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid580_i_shl12_i_sobel_filter0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid582_i_shl12_i_sobel_filter0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid582_i_shl12_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid583_i_shl12_i_sobel_filter0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid585_i_shl12_i_sobel_filter0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid585_i_shl12_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid586_i_shl12_i_sobel_filter0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid587_i_shl12_i_sobel_filter0_shift_x_in;
    wire [1:0] leftShiftStageSel0Dto0_uid587_i_shl12_i_sobel_filter0_shift_x_b;
    wire [1:0] leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_s;
    reg [63:0] leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_q;
    wire [59:0] leftShiftStage0Idx1Rng4_uid593_i_shl9_i_sobel_filter0_shift_x_in;
    wire [59:0] leftShiftStage0Idx1Rng4_uid593_i_shl9_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid594_i_shl9_i_sobel_filter0_shift_x_q;
    wire [7:0] leftShiftStage0Idx2Pad8_uid595_i_shl9_i_sobel_filter0_shift_x_q;
    wire [55:0] leftShiftStage0Idx2Rng8_uid596_i_shl9_i_sobel_filter0_shift_x_in;
    wire [55:0] leftShiftStage0Idx2Rng8_uid596_i_shl9_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid597_i_shl9_i_sobel_filter0_shift_x_q;
    wire [11:0] leftShiftStage0Idx3Pad12_uid598_i_shl9_i_sobel_filter0_shift_x_q;
    wire [51:0] leftShiftStage0Idx3Rng12_uid599_i_shl9_i_sobel_filter0_shift_x_in;
    wire [51:0] leftShiftStage0Idx3Rng12_uid599_i_shl9_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid600_i_shl9_i_sobel_filter0_shift_x_q;
    wire [3:0] leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_in;
    wire [1:0] leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b;
    wire [1:0] leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_s;
    reg [63:0] leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q;
    wire [47:0] leftShiftStage0Idx1Rng16_uid607_i_shl_i_sobel_filter0_shift_x_in;
    wire [47:0] leftShiftStage0Idx1Rng16_uid607_i_shl_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid608_i_shl_i_sobel_filter0_shift_x_q;
    wire [31:0] leftShiftStage0Idx2Rng32_uid610_i_shl_i_sobel_filter0_shift_x_in;
    wire [31:0] leftShiftStage0Idx2Rng32_uid610_i_shl_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid611_i_shl_i_sobel_filter0_shift_x_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid612_i_shl_i_sobel_filter0_shift_x_q;
    wire [15:0] leftShiftStage0Idx3Rng48_uid613_i_shl_i_sobel_filter0_shift_x_in;
    wire [15:0] leftShiftStage0Idx3Rng48_uid613_i_shl_i_sobel_filter0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid614_i_shl_i_sobel_filter0_shift_x_q;
    wire [1:0] leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b;
    wire [1:0] leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_s;
    reg [63:0] leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid620_i_shr1_i_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid622_i_shr1_i_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_q;
    wire [0:0] xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b;
    wire [3:0] seMsb_to4_uid628_in;
    wire [3:0] seMsb_to4_uid628_b;
    wire [27:0] rightShiftStage0Idx1Rng4_uid629_i_shr24_i16_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid630_i_shr24_i16_sobel_filter0_shift_x_q;
    wire [7:0] seMsb_to8_uid631_in;
    wire [7:0] seMsb_to8_uid631_b;
    wire [23:0] rightShiftStage0Idx2Rng8_uid632_i_shr24_i16_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid633_i_shr24_i16_sobel_filter0_shift_x_q;
    wire [11:0] seMsb_to12_uid634_in;
    wire [11:0] seMsb_to12_uid634_b;
    wire [19:0] rightShiftStage0Idx3Rng12_uid635_i_shr24_i16_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid636_i_shr24_i16_sobel_filter0_shift_x_q;
    wire [1:0] rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q;
    wire [15:0] seMsb_to16_uid639_in;
    wire [15:0] seMsb_to16_uid639_b;
    wire [15:0] rightShiftStage1Idx1Rng16_uid640_i_shr24_i16_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid641_i_shr24_i16_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q;
    wire [0:0] xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid647_i_shr27_i18_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid648_i_shr27_i18_sobel_filter0_shift_x_q;
    wire [1:0] seMsb_to2_uid649_in;
    wire [1:0] seMsb_to2_uid649_b;
    wire [29:0] rightShiftStage0Idx2Rng2_uid650_i_shr27_i18_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid651_i_shr27_i18_sobel_filter0_shift_x_q;
    wire [2:0] seMsb_to3_uid652_in;
    wire [2:0] seMsb_to3_uid652_b;
    wire [28:0] rightShiftStage0Idx3Rng3_uid653_i_shr27_i18_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid654_i_shr27_i18_sobel_filter0_shift_x_q;
    wire [1:0] rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_in;
    wire [1:0] rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b;
    wire [1:0] rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid660_i_shr3_i_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid662_i_shr3_i_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid668_i_shr5_i_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid670_i_shr5_i_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid676_i_shr7_i_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid678_i_shr7_i_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid684_i_shr_i_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid686_i_shr_i_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_q;
    wire [61:0] rightShiftStage0Idx1Rng2_uid692_dupName_0_i_unnamed_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid694_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
    wire [59:0] rightShiftStage1Idx1Rng4_uid697_dupName_0_i_unnamed_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid699_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
    wire [47:0] rightShiftStage2Idx1Rng16_uid702_dupName_0_i_unnamed_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid704_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
    wire [11:0] i_arrayidx10_i111_sobel_filter0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx10_i111_sobel_filter0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx10_i111_sobel_filter0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx10_i111_sobel_filter0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx10_i111_sobel_filter0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx10_i111_sobel_filter0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx10_i111_sobel_filter0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx10_i111_sobel_filter0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx4_i110_sobel_filter0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx4_i110_sobel_filter0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx4_i110_sobel_filter0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx4_i110_sobel_filter0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx4_i110_sobel_filter0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx4_i110_sobel_filter0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx4_i110_sobel_filter0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx4_i110_sobel_filter0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx_i17109_sobel_filter0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx_i17109_sobel_filter0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx_i17109_sobel_filter0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx_i17109_sobel_filter0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx_i17109_sobel_filter0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx_i17109_sobel_filter0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx_i17109_sobel_filter0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx_i17109_sobel_filter0_mult_x_im9_shift0_qint;
    wire i_mul7_i_sobel_filter17_im0_cma_reset;
    wire [13:0] i_mul7_i_sobel_filter17_im0_cma_a0;
    wire [13:0] i_mul7_i_sobel_filter17_im0_cma_c0;
    wire [27:0] i_mul7_i_sobel_filter17_im0_cma_s0;
    wire [27:0] i_mul7_i_sobel_filter17_im0_cma_qq;
    wire [27:0] i_mul7_i_sobel_filter17_im0_cma_q;
    wire i_mul7_i_sobel_filter17_im0_cma_ena0;
    wire i_mul7_i_sobel_filter17_im0_cma_ena1;
    wire i_mul7_i_sobel_filter17_im0_cma_ena2;
    wire i_mul7_i_sobel_filter17_im8_cma_reset;
    wire [17:0] i_mul7_i_sobel_filter17_im8_cma_a0;
    wire [17:0] i_mul7_i_sobel_filter17_im8_cma_c0;
    wire [35:0] i_mul7_i_sobel_filter17_im8_cma_s0;
    wire [35:0] i_mul7_i_sobel_filter17_im8_cma_qq;
    wire [35:0] i_mul7_i_sobel_filter17_im8_cma_q;
    wire i_mul7_i_sobel_filter17_im8_cma_ena0;
    wire i_mul7_i_sobel_filter17_im8_cma_ena1;
    wire i_mul7_i_sobel_filter17_im8_cma_ena2;
    wire i_mul_i_sobel_filter13_im0_cma_reset;
    wire [13:0] i_mul_i_sobel_filter13_im0_cma_a0;
    wire [13:0] i_mul_i_sobel_filter13_im0_cma_c0;
    wire [27:0] i_mul_i_sobel_filter13_im0_cma_s0;
    wire [27:0] i_mul_i_sobel_filter13_im0_cma_qq;
    wire [27:0] i_mul_i_sobel_filter13_im0_cma_q;
    wire i_mul_i_sobel_filter13_im0_cma_ena0;
    wire i_mul_i_sobel_filter13_im0_cma_ena1;
    wire i_mul_i_sobel_filter13_im0_cma_ena2;
    wire i_mul_i_sobel_filter13_im8_cma_reset;
    wire [17:0] i_mul_i_sobel_filter13_im8_cma_a0;
    wire [17:0] i_mul_i_sobel_filter13_im8_cma_c0;
    wire [35:0] i_mul_i_sobel_filter13_im8_cma_s0;
    wire [35:0] i_mul_i_sobel_filter13_im8_cma_qq;
    wire [35:0] i_mul_i_sobel_filter13_im8_cma_q;
    wire i_mul_i_sobel_filter13_im8_cma_ena0;
    wire i_mul_i_sobel_filter13_im8_cma_ena1;
    wire i_mul_i_sobel_filter13_im8_cma_ena2;
    wire i_mul7_i_sobel_filter17_ma3_cma_reset;
    wire [13:0] i_mul7_i_sobel_filter17_ma3_cma_a0;
    wire [17:0] i_mul7_i_sobel_filter17_ma3_cma_c0;
    wire [13:0] i_mul7_i_sobel_filter17_ma3_cma_a1;
    wire [17:0] i_mul7_i_sobel_filter17_ma3_cma_c1;
    wire [32:0] i_mul7_i_sobel_filter17_ma3_cma_s0;
    wire [32:0] i_mul7_i_sobel_filter17_ma3_cma_qq;
    wire [32:0] i_mul7_i_sobel_filter17_ma3_cma_q;
    wire i_mul7_i_sobel_filter17_ma3_cma_ena0;
    wire i_mul7_i_sobel_filter17_ma3_cma_ena1;
    wire i_mul7_i_sobel_filter17_ma3_cma_ena2;
    wire i_mul_i_sobel_filter13_ma3_cma_reset;
    wire [13:0] i_mul_i_sobel_filter13_ma3_cma_a0;
    wire [17:0] i_mul_i_sobel_filter13_ma3_cma_c0;
    wire [13:0] i_mul_i_sobel_filter13_ma3_cma_a1;
    wire [17:0] i_mul_i_sobel_filter13_ma3_cma_c1;
    wire [32:0] i_mul_i_sobel_filter13_ma3_cma_s0;
    wire [32:0] i_mul_i_sobel_filter13_ma3_cma_qq;
    wire [32:0] i_mul_i_sobel_filter13_ma3_cma_q;
    wire i_mul_i_sobel_filter13_ma3_cma_ena0;
    wire i_mul_i_sobel_filter13_ma3_cma_ena1;
    wire i_mul_i_sobel_filter13_ma3_cma_ena2;
    wire [4:0] i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_in;
    wire [2:0] i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_b;
    wire [1:0] i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_c;
    wire [5:0] i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_in;
    wire [1:0] i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b;
    wire [1:0] i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_c;
    wire [1:0] i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_d;
    wire [9:0] i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_e;
    wire [1:0] rightShiftStageSel2Dto2_uid637_i_shr24_i16_sobel_filter0_shift_x_merged_bit_select_b;
    wire [0:0] rightShiftStageSel2Dto2_uid637_i_shr24_i16_sobel_filter0_shift_x_merged_bit_select_c;
    reg [1:0] redist0_i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b_1_q;
    reg [1:0] redist1_rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b_1_q;
    reg [1:0] redist2_leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b_1_q;
    reg [1:0] redist3_leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b_1_q;
    reg [0:0] redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_q;
    reg [0:0] redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_delay_0;
    reg [0:0] redist5_valid_fanout_reg0_q_1_q;
    reg [0:0] redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q;
    reg [0:0] redist7_sync_together170_aunroll_x_in_c0_eni3459_2_tpl_1_q;
    reg [0:0] redist8_sync_together170_aunroll_x_in_c0_eni3459_3_tpl_1_q;
    reg [0:0] redist9_sync_together170_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist10_sync_together170_aunroll_x_in_i_valid_52_q;
    reg [0:0] redist11_i_toi1_intcast_sobel_filter12_sel_x_b_48_q;
    reg [0:0] redist12_i_toi1_intcast17_sobel_filter16_sel_x_b_48_q;
    reg [63:0] redist13_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q_1_q;
    reg [4:0] redist14_i_conv5_trunc_i3_sobel_filter59_sel_x_b_1_q;
    reg [0:0] redist15_i_xor_sobel_filter4_q_1_q;
    reg [0:0] redist16_i_xor_sobel_filter4_q_52_q;
    reg [29:0] redist17_i_unnamed_sobel_filter62_vt_select_29_b_1_q;
    reg [10:0] redist18_i_unnamed_sobel_filter34_vt_select_10_b_1_q;
    reg [30:0] redist19_i_or4_i_i_sobel_filter24_vt_select_30_b_1_q;
    reg [30:0] redist20_i_mul_i_sobel_filter13_vt_select_30_b_1_q;
    reg [30:0] redist21_i_mul7_i_sobel_filter17_vt_select_30_b_1_q;
    reg [0:0] redist22_i_masked_sobel_filter98_q_53_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_53_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_1_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_53_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_2_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_54_q;
    reg [31:0] redist30_i_idxprom_i16_sobel_filter9_vt_select_31_b_1_q;
    reg [31:0] redist31_i_cond10_i6_sobel_filter66_q_1_q;
    reg [11:0] redist33_i_and1_i2_sobel_filter54_vt_select_11_b_1_q;
    reg [31:0] redist34_i_add_i_sobel_filter18_vt_join_q_2_q;
    reg [31:0] redist34_i_add_i_sobel_filter18_vt_join_q_2_delay_0;
    reg [61:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_inputreg0_q;
    wire redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_reset0;
    wire [61:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_ia;
    wire [5:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_aa;
    wire [5:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_ab;
    wire [61:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_iq;
    wire [61:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_q;
    wire [5:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_q;
    (* preserve *) reg [5:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i;
    (* preserve *) reg redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_eq;
    reg [5:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_wraddr_q;
    wire [6:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_last_q;
    wire [6:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmp_b;
    wire [0:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmp_q;
    reg [0:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmpReg_q;
    wire [0:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_notEnable_q;
    wire [0:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_nor_q;
    reg [0:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_sticky_ena_q;
    wire [0:0] redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together170_aunroll_x_in_i_valid_1(DELAY,738)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together170_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist9_sync_together170_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1(DELAY,756)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid571_i_cleanups_shl_sobel_filter0_shift_x(BITSELECT,570)@2
    assign leftShiftStage0Idx1Rng1_uid571_i_cleanups_shl_sobel_filter0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid571_i_cleanups_shl_sobel_filter0_shift_x_b = leftShiftStage0Idx1Rng1_uid571_i_cleanups_shl_sobel_filter0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid572_i_cleanups_shl_sobel_filter0_shift_x(BITJOIN,571)@2
    assign leftShiftStage0Idx1_uid572_i_cleanups_shl_sobel_filter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid571_i_cleanups_shl_sobel_filter0_shift_x_b, GND_q};

    // leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x(MUX,573)@2
    assign leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out or leftShiftStage0Idx1_uid572_i_cleanups_shl_sobel_filter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_s)
            1'b0 : leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out;
            1'b1 : leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_q = leftShiftStage0Idx1_uid572_i_cleanups_shl_sobel_filter0_shift_x_q;
            default : leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_sobel_filter5_vt_select_1(BITSELECT,118)@2
    assign i_cleanups_shl_sobel_filter5_vt_select_1_b = leftShiftStage0_uid574_i_cleanups_shl_sobel_filter0_shift_x_q[1:1];

    // i_cleanups_shl_sobel_filter5_vt_join(BITJOIN,117)@2
    assign i_cleanups_shl_sobel_filter5_vt_join_q = {i_cleanups_shl_sobel_filter5_vt_select_1_b, GND_q};

    // i_xor_sobel_filter4(LOGICAL,264)@2
    assign i_xor_sobel_filter4_q = i_first_cleanup_sobel_filter3_sel_x_b ^ VCC_q;

    // i_notcmp_sobel_filter91(LOGICAL,172)@2
    assign i_notcmp_sobel_filter91_q = i_exitcond42_sobel_filter89_cmp_nsign_q ^ VCC_q;

    // i_or_sobel_filter93(LOGICAL,191)@2
    assign i_or_sobel_filter93_q = i_notcmp_sobel_filter91_q | i_xor_sobel_filter4_q;

    // i_next_cleanups_sobel_filter94(MUX,171)@2
    assign i_next_cleanups_sobel_filter94_s = i_or_sobel_filter93_q;
    always @(i_next_cleanups_sobel_filter94_s or i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out or i_cleanups_shl_sobel_filter5_vt_join_q)
    begin
        unique case (i_next_cleanups_sobel_filter94_s)
            1'b0 : i_next_cleanups_sobel_filter94_q = i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out;
            1'b1 : i_next_cleanups_sobel_filter94_q = i_cleanups_shl_sobel_filter5_vt_join_q;
            default : i_next_cleanups_sobel_filter94_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push52_sobel_filter95(BLACKBOX,159)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    sobel_filter_i_llvm_fpga_push_i2_cleanups_push52_0 thei_llvm_fpga_push_i2_cleanups_push52_sobel_filter95 (
        .in_data_in(i_next_cleanups_sobel_filter94_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_feedback_stall_out_52),
        .in_keep_going(redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i2_cleanups_push52_sobel_filter95_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i2_cleanups_push52_sobel_filter95_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1(DELAY,735)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q <= $unsigned(in_c0_eni3459_1_tpl);
        end
    end

    // c_i2_1120(CONSTANT,33)
    assign c_i2_1120_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2(BLACKBOX,152)@2
    // out out_feedback_stall_out_52@20000000
    sobel_filter_i_llvm_fpga_pop_i2_cleanups_pop52_0 thei_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2 (
        .in_data_in(c_i2_1120_q),
        .in_dir(redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i2_cleanups_push52_sobel_filter95_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i2_cleanups_push52_sobel_filter95_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_sobel_filter3_sel_x(BITSELECT,334)@2
    assign i_first_cleanup_sobel_filter3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop52_sobel_filter2_out_data_out[0:0];

    // c_i18_1153(CONSTANT,15)
    assign c_i18_1153_q = $unsigned(18'b111111111111111111);

    // i_fpga_indvars_iv_next41_sobel_filter96(ADD,135)@2
    assign i_fpga_indvars_iv_next41_sobel_filter96_a = {1'b0, i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88_out_data_out};
    assign i_fpga_indvars_iv_next41_sobel_filter96_b = {1'b0, c_i18_1153_q};
    assign i_fpga_indvars_iv_next41_sobel_filter96_o = $unsigned(i_fpga_indvars_iv_next41_sobel_filter96_a) + $unsigned(i_fpga_indvars_iv_next41_sobel_filter96_b);
    assign i_fpga_indvars_iv_next41_sobel_filter96_q = i_fpga_indvars_iv_next41_sobel_filter96_o[18:0];

    // bgTrunc_i_fpga_indvars_iv_next41_sobel_filter96_sel_x(BITSELECT,275)@2
    assign bgTrunc_i_fpga_indvars_iv_next41_sobel_filter96_sel_x_b = i_fpga_indvars_iv_next41_sobel_filter96_q[17:0];

    // i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97(BLACKBOX,154)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    sobel_filter_i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_0 thei_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next41_sobel_filter96_sel_x_b),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88_out_feedback_stall_out_50),
        .in_keep_going(redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i18_102398151(CONSTANT,14)
    assign c_i18_102398151_q = $unsigned(18'b011000111111111110);

    // i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88(BLACKBOX,149)@2
    // out out_feedback_stall_out_50@20000000
    sobel_filter_i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_0 thei_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88 (
        .in_data_in(c_i18_102398151_q),
        .in_dir(redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i18_fpga_indvars_iv40_push50_sobel_filter97_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond42_sobel_filter89_cmp_nsign(LOGICAL,458)@2
    assign i_exitcond42_sobel_filter89_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i18_fpga_indvars_iv40_pop50_sobel_filter88_out_data_out[17:17]));

    // i_llvm_fpga_push_i1_notexitcond_sobel_filter92(BLACKBOX,158)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    sobel_filter_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_sobel_filter92 (
        .in_data_in(i_exitcond42_sobel_filter89_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_sobel_filter3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_sobel_filter92_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_sobel_filter92_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,399)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_sobel_filter7(BLACKBOX,156)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    sobel_filter_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_sobel_filter7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_initeration_stall_out),
        .in_keep_going(redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_sobel_filter7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_sobel_filter7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_sobel_filter6(BLACKBOX,148)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    sobel_filter_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_sobel_filter6 (
        .in_data_in(in_c0_eni3459_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_sobel_filter7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_sobel_filter7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_sobel_filter92_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_sobel_filter92_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,64)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,270)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,401)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist9_sync_together170_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist15_i_xor_sobel_filter4_q_1(DELAY,744)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_xor_sobel_filter4_q_1_q <= '0;
        end
        else
        begin
            redist15_i_xor_sobel_filter4_q_1_q <= $unsigned(i_xor_sobel_filter4_q);
        end
    end

    // i_arrayidx10_i111_sobel_filter0_mult_multconst_x(CONSTANT,305)
    assign i_arrayidx10_i111_sobel_filter0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // c_i32_0122(CONSTANT,34)
    assign c_i32_0122_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,400)@1 + 1
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

    // valid_fanout_reg6(REG,404)@1 + 1
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

    // c_i32_1123(CONSTANT,41)
    assign c_i32_1123_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_i18_sobel_filter86(ADD,140)@2
    assign i_inc_i18_sobel_filter86_a = {1'b0, i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8_out_data_out};
    assign i_inc_i18_sobel_filter86_b = {1'b0, c_i32_1123_q};
    assign i_inc_i18_sobel_filter86_o = $unsigned(i_inc_i18_sobel_filter86_a) + $unsigned(i_inc_i18_sobel_filter86_b);
    assign i_inc_i18_sobel_filter86_q = i_inc_i18_sobel_filter86_o[32:0];

    // bgTrunc_i_inc_i18_sobel_filter86_sel_x(BITSELECT,276)@2
    assign bgTrunc_i_inc_i18_sobel_filter86_sel_x_b = i_inc_i18_sobel_filter86_q[31:0];

    // i_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87(BLACKBOX,160)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    sobel_filter_i_llvm_fpga_push_i32_i_0_i12141_push51_0 thei_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87 (
        .in_data_in(bgTrunc_i_inc_i18_sobel_filter86_sel_x_b),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8_out_feedback_stall_out_51),
        .in_keep_going(redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8(BLACKBOX,153)@2
    // out out_feedback_stall_out_51@20000000
    sobel_filter_i_llvm_fpga_pop_i32_i_0_i12141_pop51_0 thei_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8 (
        .in_data_in(c_i32_0122_q),
        .in_dir(redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i32_i_0_i12141_push51_sobel_filter87_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_i16_sobel_filter9_sel_x(BITSELECT,335)@2
    assign i_idxprom_i16_sobel_filter9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_0_i12141_pop51_sobel_filter8_out_data_out[31:0]};

    // i_idxprom_i16_sobel_filter9_vt_select_31(BITSELECT,139)@2
    assign i_idxprom_i16_sobel_filter9_vt_select_31_b = i_idxprom_i16_sobel_filter9_sel_x_b[31:0];

    // redist30_i_idxprom_i16_sobel_filter9_vt_select_31_b_1(DELAY,759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_idxprom_i16_sobel_filter9_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist30_i_idxprom_i16_sobel_filter9_vt_select_31_b_1_q <= $unsigned(i_idxprom_i16_sobel_filter9_vt_select_31_b);
        end
    end

    // i_idxprom_i16_sobel_filter9_vt_join(BITJOIN,138)@3
    assign i_idxprom_i16_sobel_filter9_vt_join_q = {c_i32_0122_q, redist30_i_idxprom_i16_sobel_filter9_vt_select_31_b_1_q};

    // i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select(BITSELECT,727)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_b = i_idxprom_i16_sobel_filter9_vt_join_q[63:54];
    assign i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_c = i_idxprom_i16_sobel_filter9_vt_join_q[53:36];
    assign i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_d = i_idxprom_i16_sobel_filter9_vt_join_q[35:18];
    assign i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_e = i_idxprom_i16_sobel_filter9_vt_join_q[17:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_im0_shift0(BITSHIFT,715)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im0_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im0_shift0_q = i_arrayidx_i17109_sobel_filter0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_3(BITSHIFT,564)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx_i17109_sobel_filter0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_3_q = i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_im6_shift0(BITSHIFT,717)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im6_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im6_shift0_q = i_arrayidx_i17109_sobel_filter0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_2(BITSHIFT,563)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx_i17109_sobel_filter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_2_q = i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_4(BITJOIN,565)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_4_q = {i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_3_q, i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_2_q};

    // i_arrayidx_i17109_sobel_filter0_mult_x_im3_shift0(BITSHIFT,716)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im3_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im3_shift0_q = i_arrayidx_i17109_sobel_filter0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_0(BITSHIFT,561)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx_i17109_sobel_filter0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_0_q = i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_im9_shift0(BITSHIFT,718)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im9_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx_i17109_sobel_filter0_mult_x_im9_shift0_q = i_arrayidx_i17109_sobel_filter0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_1(BITJOIN,562)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_1_q = {i_arrayidx_i17109_sobel_filter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx_i17109_sobel_filter0_mult_x_im9_shift0_q}};

    // i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0(ADD,566)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_1_q};
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx_i17109_sobel_filter0_mult_x_sums_join_4_q};
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_q = i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx_i17109_sobel_filter0_mult_extender_x(BITJOIN,324)@3
    assign i_arrayidx_i17109_sobel_filter0_mult_extender_x_q = {i_arrayidx10_i111_sobel_filter0_mult_multconst_x_q, i_arrayidx_i17109_sobel_filter0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx_i17109_sobel_filter0_trunc_sel_x(BITSELECT,326)@3
    assign i_arrayidx_i17109_sobel_filter0_trunc_sel_x_b = i_arrayidx_i17109_sobel_filter0_mult_extender_x_q[63:0];

    // c_sobel_filter_sobel_h_res_pmem(CONSTANT,61)
    assign c_sobel_filter_sobel_h_res_pmem_q = $unsigned(64'b0100000000001010000000000000000000000000000000000000000000000000);

    // i_arrayidx_i17109_sobel_filter0_add_x(ADD,318)@3
    assign i_arrayidx_i17109_sobel_filter0_add_x_a = {1'b0, c_sobel_filter_sobel_h_res_pmem_q};
    assign i_arrayidx_i17109_sobel_filter0_add_x_b = {1'b0, i_arrayidx_i17109_sobel_filter0_trunc_sel_x_b};
    assign i_arrayidx_i17109_sobel_filter0_add_x_o = $unsigned(i_arrayidx_i17109_sobel_filter0_add_x_a) + $unsigned(i_arrayidx_i17109_sobel_filter0_add_x_b);
    assign i_arrayidx_i17109_sobel_filter0_add_x_q = i_arrayidx_i17109_sobel_filter0_add_x_o[64:0];

    // i_arrayidx_i17109_sobel_filter0_dupName_0_trunc_sel_x(BITSELECT,327)@3
    assign i_arrayidx_i17109_sobel_filter0_dupName_0_trunc_sel_x_b = i_arrayidx_i17109_sobel_filter0_add_x_q[63:0];

    // i_arrayidx_i17109_sobel_filter10_vt_select_63(BITSELECT,115)@3
    assign i_arrayidx_i17109_sobel_filter10_vt_select_63_b = i_arrayidx_i17109_sobel_filter0_dupName_0_trunc_sel_x_b[63:2];

    // i_and23_i15_sobel_filter77_vt_const_1(CONSTANT,89)
    assign i_and23_i15_sobel_filter77_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx_i17109_sobel_filter10_vt_join(BITJOIN,114)@3
    assign i_arrayidx_i17109_sobel_filter10_vt_join_q = {i_arrayidx_i17109_sobel_filter10_vt_select_63_b, i_and23_i15_sobel_filter77_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11(BLACKBOX,146)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_sobel_filter14_sobel_filter_avm_address@20000000
    // out out_unnamed_sobel_filter14_sobel_filter_avm_burstcount@20000000
    // out out_unnamed_sobel_filter14_sobel_filter_avm_byteenable@20000000
    // out out_unnamed_sobel_filter14_sobel_filter_avm_enable@20000000
    // out out_unnamed_sobel_filter14_sobel_filter_avm_read@20000000
    // out out_unnamed_sobel_filter14_sobel_filter_avm_write@20000000
    // out out_unnamed_sobel_filter14_sobel_filter_avm_writedata@20000000
    sobel_filter_i_llvm_fpga_mem_unnamed_14_sobel_filter0 thei_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_i17109_sobel_filter10_vt_join_q),
        .in_i_predicate(redist15_i_xor_sobel_filter4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdata(in_unnamed_sobel_filter14_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter14_sobel_filter_avm_writeack(in_unnamed_sobel_filter14_sobel_filter_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_sobel_filter14_sobel_filter_avm_address(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_address),
        .out_unnamed_sobel_filter14_sobel_filter_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter14_sobel_filter_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_enable(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_read(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_read),
        .out_unnamed_sobel_filter14_sobel_filter_avm_write(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_write),
        .out_unnamed_sobel_filter14_sobel_filter_avm_writedata(i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,289)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_address = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_address;
    assign out_unnamed_sobel_filter14_sobel_filter_avm_enable = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_enable;
    assign out_unnamed_sobel_filter14_sobel_filter_avm_read = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_read;
    assign out_unnamed_sobel_filter14_sobel_filter_avm_write = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_write;
    assign out_unnamed_sobel_filter14_sobel_filter_avm_writedata = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;
    assign out_unnamed_sobel_filter14_sobel_filter_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;
    assign out_unnamed_sobel_filter14_sobel_filter_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;

    // valid_fanout_reg4(REG,402)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist9_sync_together170_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx4_i110_sobel_filter0_mult_x_im0_shift0(BITSHIFT,711)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im0_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im0_shift0_q = i_arrayidx4_i110_sobel_filter0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_3(BITSHIFT,546)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx4_i110_sobel_filter0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_3_q = i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx4_i110_sobel_filter0_mult_x_im6_shift0(BITSHIFT,713)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im6_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im6_shift0_q = i_arrayidx4_i110_sobel_filter0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_2(BITSHIFT,545)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx4_i110_sobel_filter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_2_q = i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_4(BITJOIN,547)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_4_q = {i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_3_q, i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_2_q};

    // i_arrayidx4_i110_sobel_filter0_mult_x_im3_shift0(BITSHIFT,712)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im3_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im3_shift0_q = i_arrayidx4_i110_sobel_filter0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_0(BITSHIFT,543)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx4_i110_sobel_filter0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_0_q = i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx4_i110_sobel_filter0_mult_x_im9_shift0(BITSHIFT,714)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im9_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx4_i110_sobel_filter0_mult_x_im9_shift0_q = i_arrayidx4_i110_sobel_filter0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_1(BITJOIN,544)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_1_q = {i_arrayidx4_i110_sobel_filter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx4_i110_sobel_filter0_mult_x_im9_shift0_q}};

    // i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0(ADD,548)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_1_q};
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx4_i110_sobel_filter0_mult_x_sums_join_4_q};
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_q = i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx4_i110_sobel_filter0_mult_extender_x(BITJOIN,314)@3
    assign i_arrayidx4_i110_sobel_filter0_mult_extender_x_q = {i_arrayidx10_i111_sobel_filter0_mult_multconst_x_q, i_arrayidx4_i110_sobel_filter0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx4_i110_sobel_filter0_trunc_sel_x(BITSELECT,316)@3
    assign i_arrayidx4_i110_sobel_filter0_trunc_sel_x_b = i_arrayidx4_i110_sobel_filter0_mult_extender_x_q[63:0];

    // c_sobel_filter_sobel_v_res_pmem(CONSTANT,62)
    assign c_sobel_filter_sobel_v_res_pmem_q = $unsigned(64'b0100000000001011000000000000000000000000000000000000000000000000);

    // i_arrayidx4_i110_sobel_filter0_add_x(ADD,308)@3
    assign i_arrayidx4_i110_sobel_filter0_add_x_a = {1'b0, c_sobel_filter_sobel_v_res_pmem_q};
    assign i_arrayidx4_i110_sobel_filter0_add_x_b = {1'b0, i_arrayidx4_i110_sobel_filter0_trunc_sel_x_b};
    assign i_arrayidx4_i110_sobel_filter0_add_x_o = $unsigned(i_arrayidx4_i110_sobel_filter0_add_x_a) + $unsigned(i_arrayidx4_i110_sobel_filter0_add_x_b);
    assign i_arrayidx4_i110_sobel_filter0_add_x_q = i_arrayidx4_i110_sobel_filter0_add_x_o[64:0];

    // i_arrayidx4_i110_sobel_filter0_dupName_0_trunc_sel_x(BITSELECT,317)@3
    assign i_arrayidx4_i110_sobel_filter0_dupName_0_trunc_sel_x_b = i_arrayidx4_i110_sobel_filter0_add_x_q[63:0];

    // i_arrayidx4_i110_sobel_filter14_vt_select_63(BITSELECT,112)@3
    assign i_arrayidx4_i110_sobel_filter14_vt_select_63_b = i_arrayidx4_i110_sobel_filter0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx4_i110_sobel_filter14_vt_join(BITJOIN,111)@3
    assign i_arrayidx4_i110_sobel_filter14_vt_join_q = {i_arrayidx4_i110_sobel_filter14_vt_select_63_b, i_and23_i15_sobel_filter77_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15(BLACKBOX,147)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_sobel_filter15_sobel_filter_avm_address@20000000
    // out out_unnamed_sobel_filter15_sobel_filter_avm_burstcount@20000000
    // out out_unnamed_sobel_filter15_sobel_filter_avm_byteenable@20000000
    // out out_unnamed_sobel_filter15_sobel_filter_avm_enable@20000000
    // out out_unnamed_sobel_filter15_sobel_filter_avm_read@20000000
    // out out_unnamed_sobel_filter15_sobel_filter_avm_write@20000000
    // out out_unnamed_sobel_filter15_sobel_filter_avm_writedata@20000000
    sobel_filter_i_llvm_fpga_mem_unnamed_15_sobel_filter0 thei_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx4_i110_sobel_filter14_vt_join_q),
        .in_i_predicate(redist15_i_xor_sobel_filter4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdata(in_unnamed_sobel_filter15_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter15_sobel_filter_avm_writeack(in_unnamed_sobel_filter15_sobel_filter_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_sobel_filter15_sobel_filter_avm_address(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_address),
        .out_unnamed_sobel_filter15_sobel_filter_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter15_sobel_filter_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_enable(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_read(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_read),
        .out_unnamed_sobel_filter15_sobel_filter_avm_write(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_write),
        .out_unnamed_sobel_filter15_sobel_filter_avm_writedata(i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,291)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_address = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_address;
    assign out_unnamed_sobel_filter15_sobel_filter_avm_enable = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_enable;
    assign out_unnamed_sobel_filter15_sobel_filter_avm_read = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_read;
    assign out_unnamed_sobel_filter15_sobel_filter_avm_write = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_write;
    assign out_unnamed_sobel_filter15_sobel_filter_avm_writedata = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;
    assign out_unnamed_sobel_filter15_sobel_filter_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;
    assign out_unnamed_sobel_filter15_sobel_filter_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;

    // i_sub29_i19_sobel_filter81(SUB,222)@53
    assign i_sub29_i19_sobel_filter81_a = {1'b0, c_i32_0122_q};
    assign i_sub29_i19_sobel_filter81_b = {1'b0, rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q};
    assign i_sub29_i19_sobel_filter81_o = $unsigned(i_sub29_i19_sobel_filter81_a) - $unsigned(i_sub29_i19_sobel_filter81_b);
    assign i_sub29_i19_sobel_filter81_q = i_sub29_i19_sobel_filter81_o[32:0];

    // bgTrunc_i_sub29_i19_sobel_filter81_sel_x(BITSELECT,280)@53
    assign bgTrunc_i_sub29_i19_sobel_filter81_sel_x_b = $unsigned(i_sub29_i19_sobel_filter81_q[31:0]);

    // xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x(BITSELECT,644)@53
    assign xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q[31:31]);

    // seMsb_to3_uid652(BITSELECT,651)@53
    assign seMsb_to3_uid652_in = $unsigned({{2{xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x_b[0]}}, xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x_b});
    assign seMsb_to3_uid652_b = $unsigned(seMsb_to3_uid652_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid653_i_shr27_i18_sobel_filter0_shift_x(BITSELECT,652)@53
    assign rightShiftStage0Idx3Rng3_uid653_i_shr27_i18_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q[31:3]);

    // rightShiftStage0Idx3_uid654_i_shr27_i18_sobel_filter0_shift_x(BITJOIN,653)@53
    assign rightShiftStage0Idx3_uid654_i_shr27_i18_sobel_filter0_shift_x_q = {seMsb_to3_uid652_b, rightShiftStage0Idx3Rng3_uid653_i_shr27_i18_sobel_filter0_shift_x_b};

    // seMsb_to2_uid649(BITSELECT,648)@53
    assign seMsb_to2_uid649_in = $unsigned({{1{xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x_b[0]}}, xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x_b});
    assign seMsb_to2_uid649_b = $unsigned(seMsb_to2_uid649_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid650_i_shr27_i18_sobel_filter0_shift_x(BITSELECT,649)@53
    assign rightShiftStage0Idx2Rng2_uid650_i_shr27_i18_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q[31:2]);

    // rightShiftStage0Idx2_uid651_i_shr27_i18_sobel_filter0_shift_x(BITJOIN,650)@53
    assign rightShiftStage0Idx2_uid651_i_shr27_i18_sobel_filter0_shift_x_q = {seMsb_to2_uid649_b, rightShiftStage0Idx2Rng2_uid650_i_shr27_i18_sobel_filter0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid647_i_shr27_i18_sobel_filter0_shift_x(BITSELECT,646)@53
    assign rightShiftStage0Idx1Rng1_uid647_i_shr27_i18_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q[31:1]);

    // rightShiftStage0Idx1_uid648_i_shr27_i18_sobel_filter0_shift_x(BITJOIN,647)@53
    assign rightShiftStage0Idx1_uid648_i_shr27_i18_sobel_filter0_shift_x_q = {xMSB_uid645_i_shr27_i18_sobel_filter0_shift_x_b, rightShiftStage0Idx1Rng1_uid647_i_shr27_i18_sobel_filter0_shift_x_b};

    // c_i32_2147483648143(CONSTANT,49)
    assign c_i32_2147483648143_q = $unsigned(32'b10000000000000000000000000000000);

    // c_i32_2147483647142(CONSTANT,48)
    assign c_i32_2147483647142_q = $unsigned(32'b01111111111111111111111111111111);

    // c_i8_247(CONSTANT,59)
    assign c_i8_247_q = $unsigned(8'b00000010);

    // i_mul_i_sobel_filter13_bs4(BITSELECT,478)@7
    assign i_mul_i_sobel_filter13_bs4_in = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_o_readdata[17:0];
    assign i_mul_i_sobel_filter13_bs4_b = i_mul_i_sobel_filter13_bs4_in[17:0];

    // i_mul_i_sobel_filter13_bs1(BITSELECT,475)@7
    assign i_mul_i_sobel_filter13_bs1_b = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_o_readdata[31:18];

    // i_mul_i_sobel_filter13_ma3_cma(CHAINMULTADD,724)@7 + 3
    assign i_mul_i_sobel_filter13_ma3_cma_reset = ~ (resetn);
    assign i_mul_i_sobel_filter13_ma3_cma_ena0 = 1'b1;
    assign i_mul_i_sobel_filter13_ma3_cma_ena1 = i_mul_i_sobel_filter13_ma3_cma_ena0;
    assign i_mul_i_sobel_filter13_ma3_cma_ena2 = i_mul_i_sobel_filter13_ma3_cma_ena0;

    assign i_mul_i_sobel_filter13_ma3_cma_a0 = i_mul_i_sobel_filter13_bs1_b;
    assign i_mul_i_sobel_filter13_ma3_cma_c0 = i_mul_i_sobel_filter13_bs4_b;
    assign i_mul_i_sobel_filter13_ma3_cma_a1 = i_mul_i_sobel_filter13_bs1_b;
    assign i_mul_i_sobel_filter13_ma3_cma_c1 = i_mul_i_sobel_filter13_bs4_b;
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
    ) i_mul_i_sobel_filter13_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_sobel_filter13_ma3_cma_ena2, i_mul_i_sobel_filter13_ma3_cma_ena1, i_mul_i_sobel_filter13_ma3_cma_ena0 }),
        .aclr({ i_mul_i_sobel_filter13_ma3_cma_reset, i_mul_i_sobel_filter13_ma3_cma_reset }),
        .ay(i_mul_i_sobel_filter13_ma3_cma_a1),
        .by(i_mul_i_sobel_filter13_ma3_cma_a0),
        .ax(i_mul_i_sobel_filter13_ma3_cma_c1),
        .bx(i_mul_i_sobel_filter13_ma3_cma_c0),
        .resulta(i_mul_i_sobel_filter13_ma3_cma_s0),
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
    i_mul_i_sobel_filter13_ma3_cma_delay ( .xin(i_mul_i_sobel_filter13_ma3_cma_s0), .xout(i_mul_i_sobel_filter13_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_sobel_filter13_ma3_cma_q = $unsigned(i_mul_i_sobel_filter13_ma3_cma_qq[32:0]);

    // i_mul_i_sobel_filter13_sums_align_1(BITSHIFT,486)@10
    assign i_mul_i_sobel_filter13_sums_align_1_qint = { i_mul_i_sobel_filter13_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_i_sobel_filter13_sums_align_1_q = i_mul_i_sobel_filter13_sums_align_1_qint[50:0];

    // i_mul_i_sobel_filter13_im0_cma(CHAINMULTADD,721)@7 + 3
    assign i_mul_i_sobel_filter13_im0_cma_reset = ~ (resetn);
    assign i_mul_i_sobel_filter13_im0_cma_ena0 = 1'b1;
    assign i_mul_i_sobel_filter13_im0_cma_ena1 = i_mul_i_sobel_filter13_im0_cma_ena0;
    assign i_mul_i_sobel_filter13_im0_cma_ena2 = i_mul_i_sobel_filter13_im0_cma_ena0;

    assign i_mul_i_sobel_filter13_im0_cma_a0 = i_mul_i_sobel_filter13_bs1_b;
    assign i_mul_i_sobel_filter13_im0_cma_c0 = i_mul_i_sobel_filter13_bs1_b;
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
    ) i_mul_i_sobel_filter13_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_sobel_filter13_im0_cma_ena2, i_mul_i_sobel_filter13_im0_cma_ena1, i_mul_i_sobel_filter13_im0_cma_ena0 }),
        .aclr({ i_mul_i_sobel_filter13_im0_cma_reset, i_mul_i_sobel_filter13_im0_cma_reset }),
        .ay(i_mul_i_sobel_filter13_im0_cma_a0),
        .ax(i_mul_i_sobel_filter13_im0_cma_c0),
        .resulta(i_mul_i_sobel_filter13_im0_cma_s0),
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
    i_mul_i_sobel_filter13_im0_cma_delay ( .xin(i_mul_i_sobel_filter13_im0_cma_s0), .xout(i_mul_i_sobel_filter13_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_sobel_filter13_im0_cma_q = $unsigned(i_mul_i_sobel_filter13_im0_cma_qq[27:0]);

    // i_mul_i_sobel_filter13_im8_cma(CHAINMULTADD,722)@7 + 3
    assign i_mul_i_sobel_filter13_im8_cma_reset = ~ (resetn);
    assign i_mul_i_sobel_filter13_im8_cma_ena0 = 1'b1;
    assign i_mul_i_sobel_filter13_im8_cma_ena1 = i_mul_i_sobel_filter13_im8_cma_ena0;
    assign i_mul_i_sobel_filter13_im8_cma_ena2 = i_mul_i_sobel_filter13_im8_cma_ena0;

    assign i_mul_i_sobel_filter13_im8_cma_a0 = i_mul_i_sobel_filter13_bs4_b;
    assign i_mul_i_sobel_filter13_im8_cma_c0 = i_mul_i_sobel_filter13_bs4_b;
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
    ) i_mul_i_sobel_filter13_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_sobel_filter13_im8_cma_ena2, i_mul_i_sobel_filter13_im8_cma_ena1, i_mul_i_sobel_filter13_im8_cma_ena0 }),
        .aclr({ i_mul_i_sobel_filter13_im8_cma_reset, i_mul_i_sobel_filter13_im8_cma_reset }),
        .ay(i_mul_i_sobel_filter13_im8_cma_a0),
        .ax(i_mul_i_sobel_filter13_im8_cma_c0),
        .resulta(i_mul_i_sobel_filter13_im8_cma_s0),
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
    i_mul_i_sobel_filter13_im8_cma_delay ( .xin(i_mul_i_sobel_filter13_im8_cma_s0), .xout(i_mul_i_sobel_filter13_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_sobel_filter13_im8_cma_q = $unsigned(i_mul_i_sobel_filter13_im8_cma_qq[35:0]);

    // i_mul_i_sobel_filter13_sums_join_0(BITJOIN,485)@10
    assign i_mul_i_sobel_filter13_sums_join_0_q = {i_mul_i_sobel_filter13_im0_cma_q, i_mul_i_sobel_filter13_im8_cma_q};

    // i_mul_i_sobel_filter13_sums_result_add_0_0(ADD,488)@10
    assign i_mul_i_sobel_filter13_sums_result_add_0_0_a = {1'b0, i_mul_i_sobel_filter13_sums_join_0_q};
    assign i_mul_i_sobel_filter13_sums_result_add_0_0_b = {14'b00000000000000, i_mul_i_sobel_filter13_sums_align_1_q};
    assign i_mul_i_sobel_filter13_sums_result_add_0_0_o = $unsigned(i_mul_i_sobel_filter13_sums_result_add_0_0_a) + $unsigned(i_mul_i_sobel_filter13_sums_result_add_0_0_b);
    assign i_mul_i_sobel_filter13_sums_result_add_0_0_q = i_mul_i_sobel_filter13_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_i_sobel_filter13_sel_x(BITSELECT,278)@10
    assign bgTrunc_i_mul_i_sobel_filter13_sel_x_in = i_mul_i_sobel_filter13_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_i_sobel_filter13_sel_x_b = bgTrunc_i_mul_i_sobel_filter13_sel_x_in[31:0];

    // i_mul_i_sobel_filter13_vt_select_30(BITSELECT,169)@10
    assign i_mul_i_sobel_filter13_vt_select_30_b = bgTrunc_i_mul_i_sobel_filter13_sel_x_b[30:0];

    // redist20_i_mul_i_sobel_filter13_vt_select_30_b_1(DELAY,749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_mul_i_sobel_filter13_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist20_i_mul_i_sobel_filter13_vt_select_30_b_1_q <= $unsigned(i_mul_i_sobel_filter13_vt_select_30_b);
        end
    end

    // i_mul_i_sobel_filter13_vt_join(BITJOIN,168)@11
    assign i_mul_i_sobel_filter13_vt_join_q = {GND_q, redist20_i_mul_i_sobel_filter13_vt_select_30_b_1_q};

    // i_mul7_i_sobel_filter17_bs4(BITSELECT,463)@7
    assign i_mul7_i_sobel_filter17_bs4_in = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_o_readdata[17:0];
    assign i_mul7_i_sobel_filter17_bs4_b = i_mul7_i_sobel_filter17_bs4_in[17:0];

    // i_mul7_i_sobel_filter17_bs1(BITSELECT,460)@7
    assign i_mul7_i_sobel_filter17_bs1_b = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_o_readdata[31:18];

    // i_mul7_i_sobel_filter17_ma3_cma(CHAINMULTADD,723)@7 + 3
    assign i_mul7_i_sobel_filter17_ma3_cma_reset = ~ (resetn);
    assign i_mul7_i_sobel_filter17_ma3_cma_ena0 = 1'b1;
    assign i_mul7_i_sobel_filter17_ma3_cma_ena1 = i_mul7_i_sobel_filter17_ma3_cma_ena0;
    assign i_mul7_i_sobel_filter17_ma3_cma_ena2 = i_mul7_i_sobel_filter17_ma3_cma_ena0;

    assign i_mul7_i_sobel_filter17_ma3_cma_a0 = i_mul7_i_sobel_filter17_bs1_b;
    assign i_mul7_i_sobel_filter17_ma3_cma_c0 = i_mul7_i_sobel_filter17_bs4_b;
    assign i_mul7_i_sobel_filter17_ma3_cma_a1 = i_mul7_i_sobel_filter17_bs1_b;
    assign i_mul7_i_sobel_filter17_ma3_cma_c1 = i_mul7_i_sobel_filter17_bs4_b;
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
    ) i_mul7_i_sobel_filter17_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul7_i_sobel_filter17_ma3_cma_ena2, i_mul7_i_sobel_filter17_ma3_cma_ena1, i_mul7_i_sobel_filter17_ma3_cma_ena0 }),
        .aclr({ i_mul7_i_sobel_filter17_ma3_cma_reset, i_mul7_i_sobel_filter17_ma3_cma_reset }),
        .ay(i_mul7_i_sobel_filter17_ma3_cma_a1),
        .by(i_mul7_i_sobel_filter17_ma3_cma_a0),
        .ax(i_mul7_i_sobel_filter17_ma3_cma_c1),
        .bx(i_mul7_i_sobel_filter17_ma3_cma_c0),
        .resulta(i_mul7_i_sobel_filter17_ma3_cma_s0),
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
    i_mul7_i_sobel_filter17_ma3_cma_delay ( .xin(i_mul7_i_sobel_filter17_ma3_cma_s0), .xout(i_mul7_i_sobel_filter17_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul7_i_sobel_filter17_ma3_cma_q = $unsigned(i_mul7_i_sobel_filter17_ma3_cma_qq[32:0]);

    // i_mul7_i_sobel_filter17_sums_align_1(BITSHIFT,471)@10
    assign i_mul7_i_sobel_filter17_sums_align_1_qint = { i_mul7_i_sobel_filter17_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul7_i_sobel_filter17_sums_align_1_q = i_mul7_i_sobel_filter17_sums_align_1_qint[50:0];

    // i_mul7_i_sobel_filter17_im0_cma(CHAINMULTADD,719)@7 + 3
    assign i_mul7_i_sobel_filter17_im0_cma_reset = ~ (resetn);
    assign i_mul7_i_sobel_filter17_im0_cma_ena0 = 1'b1;
    assign i_mul7_i_sobel_filter17_im0_cma_ena1 = i_mul7_i_sobel_filter17_im0_cma_ena0;
    assign i_mul7_i_sobel_filter17_im0_cma_ena2 = i_mul7_i_sobel_filter17_im0_cma_ena0;

    assign i_mul7_i_sobel_filter17_im0_cma_a0 = i_mul7_i_sobel_filter17_bs1_b;
    assign i_mul7_i_sobel_filter17_im0_cma_c0 = i_mul7_i_sobel_filter17_bs1_b;
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
    ) i_mul7_i_sobel_filter17_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul7_i_sobel_filter17_im0_cma_ena2, i_mul7_i_sobel_filter17_im0_cma_ena1, i_mul7_i_sobel_filter17_im0_cma_ena0 }),
        .aclr({ i_mul7_i_sobel_filter17_im0_cma_reset, i_mul7_i_sobel_filter17_im0_cma_reset }),
        .ay(i_mul7_i_sobel_filter17_im0_cma_a0),
        .ax(i_mul7_i_sobel_filter17_im0_cma_c0),
        .resulta(i_mul7_i_sobel_filter17_im0_cma_s0),
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
    i_mul7_i_sobel_filter17_im0_cma_delay ( .xin(i_mul7_i_sobel_filter17_im0_cma_s0), .xout(i_mul7_i_sobel_filter17_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul7_i_sobel_filter17_im0_cma_q = $unsigned(i_mul7_i_sobel_filter17_im0_cma_qq[27:0]);

    // i_mul7_i_sobel_filter17_im8_cma(CHAINMULTADD,720)@7 + 3
    assign i_mul7_i_sobel_filter17_im8_cma_reset = ~ (resetn);
    assign i_mul7_i_sobel_filter17_im8_cma_ena0 = 1'b1;
    assign i_mul7_i_sobel_filter17_im8_cma_ena1 = i_mul7_i_sobel_filter17_im8_cma_ena0;
    assign i_mul7_i_sobel_filter17_im8_cma_ena2 = i_mul7_i_sobel_filter17_im8_cma_ena0;

    assign i_mul7_i_sobel_filter17_im8_cma_a0 = i_mul7_i_sobel_filter17_bs4_b;
    assign i_mul7_i_sobel_filter17_im8_cma_c0 = i_mul7_i_sobel_filter17_bs4_b;
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
    ) i_mul7_i_sobel_filter17_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul7_i_sobel_filter17_im8_cma_ena2, i_mul7_i_sobel_filter17_im8_cma_ena1, i_mul7_i_sobel_filter17_im8_cma_ena0 }),
        .aclr({ i_mul7_i_sobel_filter17_im8_cma_reset, i_mul7_i_sobel_filter17_im8_cma_reset }),
        .ay(i_mul7_i_sobel_filter17_im8_cma_a0),
        .ax(i_mul7_i_sobel_filter17_im8_cma_c0),
        .resulta(i_mul7_i_sobel_filter17_im8_cma_s0),
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
    i_mul7_i_sobel_filter17_im8_cma_delay ( .xin(i_mul7_i_sobel_filter17_im8_cma_s0), .xout(i_mul7_i_sobel_filter17_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul7_i_sobel_filter17_im8_cma_q = $unsigned(i_mul7_i_sobel_filter17_im8_cma_qq[35:0]);

    // i_mul7_i_sobel_filter17_sums_join_0(BITJOIN,470)@10
    assign i_mul7_i_sobel_filter17_sums_join_0_q = {i_mul7_i_sobel_filter17_im0_cma_q, i_mul7_i_sobel_filter17_im8_cma_q};

    // i_mul7_i_sobel_filter17_sums_result_add_0_0(ADD,473)@10
    assign i_mul7_i_sobel_filter17_sums_result_add_0_0_a = {1'b0, i_mul7_i_sobel_filter17_sums_join_0_q};
    assign i_mul7_i_sobel_filter17_sums_result_add_0_0_b = {14'b00000000000000, i_mul7_i_sobel_filter17_sums_align_1_q};
    assign i_mul7_i_sobel_filter17_sums_result_add_0_0_o = $unsigned(i_mul7_i_sobel_filter17_sums_result_add_0_0_a) + $unsigned(i_mul7_i_sobel_filter17_sums_result_add_0_0_b);
    assign i_mul7_i_sobel_filter17_sums_result_add_0_0_q = i_mul7_i_sobel_filter17_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul7_i_sobel_filter17_sel_x(BITSELECT,277)@10
    assign bgTrunc_i_mul7_i_sobel_filter17_sel_x_in = i_mul7_i_sobel_filter17_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul7_i_sobel_filter17_sel_x_b = bgTrunc_i_mul7_i_sobel_filter17_sel_x_in[31:0];

    // i_mul7_i_sobel_filter17_vt_select_30(BITSELECT,165)@10
    assign i_mul7_i_sobel_filter17_vt_select_30_b = bgTrunc_i_mul7_i_sobel_filter17_sel_x_b[30:0];

    // redist21_i_mul7_i_sobel_filter17_vt_select_30_b_1(DELAY,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_mul7_i_sobel_filter17_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist21_i_mul7_i_sobel_filter17_vt_select_30_b_1_q <= $unsigned(i_mul7_i_sobel_filter17_vt_select_30_b);
        end
    end

    // i_mul7_i_sobel_filter17_vt_join(BITJOIN,164)@11
    assign i_mul7_i_sobel_filter17_vt_join_q = {GND_q, redist21_i_mul7_i_sobel_filter17_vt_select_30_b_1_q};

    // i_add_i_sobel_filter18(ADD,80)@11
    assign i_add_i_sobel_filter18_a = {1'b0, i_mul7_i_sobel_filter17_vt_join_q};
    assign i_add_i_sobel_filter18_b = {1'b0, i_mul_i_sobel_filter13_vt_join_q};
    assign i_add_i_sobel_filter18_o = $unsigned(i_add_i_sobel_filter18_a) + $unsigned(i_add_i_sobel_filter18_b);
    assign i_add_i_sobel_filter18_q = i_add_i_sobel_filter18_o[32:0];

    // bgTrunc_i_add_i_sobel_filter18_sel_x(BITSELECT,274)@11
    assign bgTrunc_i_add_i_sobel_filter18_sel_x_b = i_add_i_sobel_filter18_q[31:0];

    // i_add_i_sobel_filter18_vt_select_30(BITSELECT,83)@11
    assign i_add_i_sobel_filter18_vt_select_30_b = bgTrunc_i_add_i_sobel_filter18_sel_x_b[30:0];

    // i_add_i_sobel_filter18_vt_join(BITJOIN,82)@11
    assign i_add_i_sobel_filter18_vt_join_q = {GND_q, i_add_i_sobel_filter18_vt_select_30_b};

    // redist34_i_add_i_sobel_filter18_vt_join_q_2(DELAY,763)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_add_i_sobel_filter18_vt_join_q_2_delay_0 <= '0;
            redist34_i_add_i_sobel_filter18_vt_join_q_2_q <= '0;
        end
        else
        begin
            redist34_i_add_i_sobel_filter18_vt_join_q_2_delay_0 <= $unsigned(i_add_i_sobel_filter18_vt_join_q);
            redist34_i_add_i_sobel_filter18_vt_join_q_2_q <= redist34_i_add_i_sobel_filter18_vt_join_q_2_delay_0;
        end
    end

    // i_sub_i21_sobel_filter33_vt_const_31(CONSTANT,224)
    assign i_sub_i21_sobel_filter33_vt_const_31_q = $unsigned(21'b000000000000000000000);

    // i_and6_i_sobel_filter37_vt_const_31(CONSTANT,99)
    assign i_and6_i_sobel_filter37_vt_const_31_q = $unsigned(26'b00000000000000000000000000);

    // c_i32_1128(CONSTANT,42)
    assign c_i32_1128_q = $unsigned(32'b11111111111111111111111111111111);

    // rightShiftStage0Idx1Rng1_uid684_i_shr_i_i_sobel_filter0_shift_x(BITSELECT,683)@11
    assign rightShiftStage0Idx1Rng1_uid684_i_shr_i_i_sobel_filter0_shift_x_b = i_add_i_sobel_filter18_vt_join_q[31:1];

    // rightShiftStage0Idx1_uid686_i_shr_i_i_sobel_filter0_shift_x(BITJOIN,685)@11
    assign rightShiftStage0Idx1_uid686_i_shr_i_i_sobel_filter0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid684_i_shr_i_i_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x(MUX,687)@11
    assign rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_s or i_add_i_sobel_filter18_vt_join_q or rightShiftStage0Idx1_uid686_i_shr_i_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_q = i_add_i_sobel_filter18_vt_join_q;
            1'b1 : rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid686_i_shr_i_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr_i_i_sobel_filter19_vt_select_29(BITSELECT,220)@11
    assign i_shr_i_i_sobel_filter19_vt_select_29_b = rightShiftStage0_uid688_i_shr_i_i_sobel_filter0_shift_x_q[29:0];

    // i_shr_i_i_sobel_filter19_vt_join(BITJOIN,219)@11
    assign i_shr_i_i_sobel_filter19_vt_join_q = {i_and23_i15_sobel_filter77_vt_const_1_q, i_shr_i_i_sobel_filter19_vt_select_29_b};

    // i_or_i_i_sobel_filter20(LOGICAL,187)@11
    assign i_or_i_i_sobel_filter20_q = i_shr_i_i_sobel_filter19_vt_join_q | i_add_i_sobel_filter18_vt_join_q;

    // i_or_i_i_sobel_filter20_vt_select_30(BITSELECT,190)@11
    assign i_or_i_i_sobel_filter20_vt_select_30_b = i_or_i_i_sobel_filter20_q[30:0];

    // i_or_i_i_sobel_filter20_vt_join(BITJOIN,189)@11
    assign i_or_i_i_sobel_filter20_vt_join_q = {GND_q, i_or_i_i_sobel_filter20_vt_select_30_b};

    // i_shr1_i_i_sobel_filter21_vt_const_31(CONSTANT,206)
    assign i_shr1_i_i_sobel_filter21_vt_const_31_q = $unsigned(3'b000);

    // rightShiftStage0Idx1Rng2_uid620_i_shr1_i_i_sobel_filter0_shift_x(BITSELECT,619)@11
    assign rightShiftStage0Idx1Rng2_uid620_i_shr1_i_i_sobel_filter0_shift_x_b = i_or_i_i_sobel_filter20_vt_join_q[31:2];

    // rightShiftStage0Idx1_uid622_i_shr1_i_i_sobel_filter0_shift_x(BITJOIN,621)@11
    assign rightShiftStage0Idx1_uid622_i_shr1_i_i_sobel_filter0_shift_x_q = {i_and23_i15_sobel_filter77_vt_const_1_q, rightShiftStage0Idx1Rng2_uid620_i_shr1_i_i_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x(MUX,623)@11
    assign rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_s or i_or_i_i_sobel_filter20_vt_join_q or rightShiftStage0Idx1_uid622_i_shr1_i_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_q = i_or_i_i_sobel_filter20_vt_join_q;
            1'b1 : rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid622_i_shr1_i_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr1_i_i_sobel_filter21_vt_select_28(BITSELECT,208)@11
    assign i_shr1_i_i_sobel_filter21_vt_select_28_b = rightShiftStage0_uid624_i_shr1_i_i_sobel_filter0_shift_x_q[28:0];

    // i_shr1_i_i_sobel_filter21_vt_join(BITJOIN,207)@11
    assign i_shr1_i_i_sobel_filter21_vt_join_q = {i_shr1_i_i_sobel_filter21_vt_const_31_q, i_shr1_i_i_sobel_filter21_vt_select_28_b};

    // i_or2_i_i_sobel_filter22(LOGICAL,174)@11
    assign i_or2_i_i_sobel_filter22_q = i_shr1_i_i_sobel_filter21_vt_join_q | i_or_i_i_sobel_filter20_vt_join_q;

    // i_or2_i_i_sobel_filter22_vt_select_30(BITSELECT,177)@11
    assign i_or2_i_i_sobel_filter22_vt_select_30_b = i_or2_i_i_sobel_filter22_q[30:0];

    // i_or2_i_i_sobel_filter22_vt_join(BITJOIN,176)@11
    assign i_or2_i_i_sobel_filter22_vt_join_q = {GND_q, i_or2_i_i_sobel_filter22_vt_select_30_b};

    // i_shr3_i_i_sobel_filter23_vt_const_31(CONSTANT,209)
    assign i_shr3_i_i_sobel_filter23_vt_const_31_q = $unsigned(5'b00000);

    // i_and6_i_sobel_filter37_vt_const_3(CONSTANT,98)
    assign i_and6_i_sobel_filter37_vt_const_3_q = $unsigned(4'b0000);

    // rightShiftStage0Idx1Rng4_uid660_i_shr3_i_i_sobel_filter0_shift_x(BITSELECT,659)@11
    assign rightShiftStage0Idx1Rng4_uid660_i_shr3_i_i_sobel_filter0_shift_x_b = i_or2_i_i_sobel_filter22_vt_join_q[31:4];

    // rightShiftStage0Idx1_uid662_i_shr3_i_i_sobel_filter0_shift_x(BITJOIN,661)@11
    assign rightShiftStage0Idx1_uid662_i_shr3_i_i_sobel_filter0_shift_x_q = {i_and6_i_sobel_filter37_vt_const_3_q, rightShiftStage0Idx1Rng4_uid660_i_shr3_i_i_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x(MUX,663)@11
    assign rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_s or i_or2_i_i_sobel_filter22_vt_join_q or rightShiftStage0Idx1_uid662_i_shr3_i_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_q = i_or2_i_i_sobel_filter22_vt_join_q;
            1'b1 : rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid662_i_shr3_i_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr3_i_i_sobel_filter23_vt_select_26(BITSELECT,211)@11
    assign i_shr3_i_i_sobel_filter23_vt_select_26_b = rightShiftStage0_uid664_i_shr3_i_i_sobel_filter0_shift_x_q[26:0];

    // i_shr3_i_i_sobel_filter23_vt_join(BITJOIN,210)@11
    assign i_shr3_i_i_sobel_filter23_vt_join_q = {i_shr3_i_i_sobel_filter23_vt_const_31_q, i_shr3_i_i_sobel_filter23_vt_select_26_b};

    // i_or4_i_i_sobel_filter24(LOGICAL,178)@11
    assign i_or4_i_i_sobel_filter24_q = i_shr3_i_i_sobel_filter23_vt_join_q | i_or2_i_i_sobel_filter22_vt_join_q;

    // i_or4_i_i_sobel_filter24_vt_select_30(BITSELECT,181)@11
    assign i_or4_i_i_sobel_filter24_vt_select_30_b = i_or4_i_i_sobel_filter24_q[30:0];

    // redist19_i_or4_i_i_sobel_filter24_vt_select_30_b_1(DELAY,748)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_or4_i_i_sobel_filter24_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist19_i_or4_i_i_sobel_filter24_vt_select_30_b_1_q <= $unsigned(i_or4_i_i_sobel_filter24_vt_select_30_b);
        end
    end

    // i_or4_i_i_sobel_filter24_vt_join(BITJOIN,180)@12
    assign i_or4_i_i_sobel_filter24_vt_join_q = {GND_q, redist19_i_or4_i_i_sobel_filter24_vt_select_30_b_1_q};

    // i_shr5_i_i_sobel_filter25_vt_const_31(CONSTANT,212)
    assign i_shr5_i_i_sobel_filter25_vt_const_31_q = $unsigned(9'b000000000);

    // leftShiftStage0Idx2Pad8_uid595_i_shl9_i_sobel_filter0_shift_x(CONSTANT,594)
    assign leftShiftStage0Idx2Pad8_uid595_i_shl9_i_sobel_filter0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage0Idx1Rng8_uid668_i_shr5_i_i_sobel_filter0_shift_x(BITSELECT,667)@12
    assign rightShiftStage0Idx1Rng8_uid668_i_shr5_i_i_sobel_filter0_shift_x_b = i_or4_i_i_sobel_filter24_vt_join_q[31:8];

    // rightShiftStage0Idx1_uid670_i_shr5_i_i_sobel_filter0_shift_x(BITJOIN,669)@12
    assign rightShiftStage0Idx1_uid670_i_shr5_i_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx2Pad8_uid595_i_shl9_i_sobel_filter0_shift_x_q, rightShiftStage0Idx1Rng8_uid668_i_shr5_i_i_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x(MUX,671)@12
    assign rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_s or i_or4_i_i_sobel_filter24_vt_join_q or rightShiftStage0Idx1_uid670_i_shr5_i_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_q = i_or4_i_i_sobel_filter24_vt_join_q;
            1'b1 : rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid670_i_shr5_i_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr5_i_i_sobel_filter25_vt_select_22(BITSELECT,214)@12
    assign i_shr5_i_i_sobel_filter25_vt_select_22_b = rightShiftStage0_uid672_i_shr5_i_i_sobel_filter0_shift_x_q[22:0];

    // i_shr5_i_i_sobel_filter25_vt_join(BITJOIN,213)@12
    assign i_shr5_i_i_sobel_filter25_vt_join_q = {i_shr5_i_i_sobel_filter25_vt_const_31_q, i_shr5_i_i_sobel_filter25_vt_select_22_b};

    // i_or6_i_i_sobel_filter26(LOGICAL,182)@12
    assign i_or6_i_i_sobel_filter26_q = i_shr5_i_i_sobel_filter25_vt_join_q | i_or4_i_i_sobel_filter24_vt_join_q;

    // i_or6_i_i_sobel_filter26_vt_select_30(BITSELECT,185)@12
    assign i_or6_i_i_sobel_filter26_vt_select_30_b = i_or6_i_i_sobel_filter26_q[30:0];

    // i_or6_i_i_sobel_filter26_vt_join(BITJOIN,184)@12
    assign i_or6_i_i_sobel_filter26_vt_join_q = {GND_q, i_or6_i_i_sobel_filter26_vt_select_30_b};

    // i_shr7_i_i_sobel_filter27_vt_const_31(CONSTANT,215)
    assign i_shr7_i_i_sobel_filter27_vt_const_31_q = $unsigned(16'b0000000000000000);

    // rightShiftStage0Idx1Rng16_uid676_i_shr7_i_i_sobel_filter0_shift_x(BITSELECT,675)@12
    assign rightShiftStage0Idx1Rng16_uid676_i_shr7_i_i_sobel_filter0_shift_x_b = i_or6_i_i_sobel_filter26_vt_join_q[31:16];

    // rightShiftStage0Idx1_uid678_i_shr7_i_i_sobel_filter0_shift_x(BITJOIN,677)@12
    assign rightShiftStage0Idx1_uid678_i_shr7_i_i_sobel_filter0_shift_x_q = {i_shr7_i_i_sobel_filter27_vt_const_31_q, rightShiftStage0Idx1Rng16_uid676_i_shr7_i_i_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x(MUX,679)@12
    assign rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_s or i_or6_i_i_sobel_filter26_vt_join_q or rightShiftStage0Idx1_uid678_i_shr7_i_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_q = i_or6_i_i_sobel_filter26_vt_join_q;
            1'b1 : rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid678_i_shr7_i_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr7_i_i_sobel_filter27_vt_select_15(BITSELECT,217)@12
    assign i_shr7_i_i_sobel_filter27_vt_select_15_b = rightShiftStage0_uid680_i_shr7_i_i_sobel_filter0_shift_x_q[15:0];

    // i_shr7_i_i_sobel_filter27_vt_join(BITJOIN,216)@12
    assign i_shr7_i_i_sobel_filter27_vt_join_q = {i_shr7_i_i_sobel_filter27_vt_const_31_q, i_shr7_i_i_sobel_filter27_vt_select_15_b};

    // i_or8_i_i_sobel_filter28(LOGICAL,186)@12
    assign i_or8_i_i_sobel_filter28_q = i_shr7_i_i_sobel_filter27_vt_join_q | i_or6_i_i_sobel_filter26_vt_join_q;

    // i_neg_i_i_sobel_filter29(LOGICAL,170)@12
    assign i_neg_i_i_sobel_filter29_q = i_or8_i_i_sobel_filter28_q ^ c_i32_1128_q;

    // i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30(EXTIFACE,141)@12
    assign i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_data = i_neg_i_i_sobel_filter29_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30 (
        .data(i_neg_i_i_sobel_filter29_q),
        .sum(i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_sum),
        .clock(clock)
    );

    // i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_select_5(BITSELECT,144)@12
    assign i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_select_5_b = i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_sum[5:0];

    // i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_join(BITJOIN,143)@12
    assign i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_join_q = {i_and6_i_sobel_filter37_vt_const_31_q, i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_select_5_b};

    // c_i32_1054129(CONSTANT,38)
    assign c_i32_1054129_q = $unsigned(32'b00000000000000000000010000011110);

    // i_sub_i21_sobel_filter33(SUB,223)@12
    assign i_sub_i21_sobel_filter33_a = {1'b0, c_i32_1054129_q};
    assign i_sub_i21_sobel_filter33_b = {1'b0, i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_join_q};
    assign i_sub_i21_sobel_filter33_o = $unsigned(i_sub_i21_sobel_filter33_a) - $unsigned(i_sub_i21_sobel_filter33_b);
    assign i_sub_i21_sobel_filter33_q = i_sub_i21_sobel_filter33_o[32:0];

    // bgTrunc_i_sub_i21_sobel_filter33_sel_x(BITSELECT,281)@12
    assign bgTrunc_i_sub_i21_sobel_filter33_sel_x_b = $unsigned(i_sub_i21_sobel_filter33_q[31:0]);

    // i_sub_i21_sobel_filter33_vt_select_10(BITSELECT,226)@12
    assign i_sub_i21_sobel_filter33_vt_select_10_b = bgTrunc_i_sub_i21_sobel_filter33_sel_x_b[10:0];

    // i_sub_i21_sobel_filter33_vt_join(BITJOIN,225)@12
    assign i_sub_i21_sobel_filter33_vt_join_q = {i_sub_i21_sobel_filter33_vt_const_31_q, i_sub_i21_sobel_filter33_vt_select_10_b};

    // i_cmp_i20_sobel_filter31(LOGICAL,121)@12
    assign i_cmp_i20_sobel_filter31_q = $unsigned(i_or8_i_i_sobel_filter28_q == c_i32_0122_q ? 1'b1 : 1'b0);

    // i_unnamed_sobel_filter34(MUX,231)@12
    assign i_unnamed_sobel_filter34_s = i_cmp_i20_sobel_filter31_q;
    always @(i_unnamed_sobel_filter34_s or i_sub_i21_sobel_filter33_vt_join_q or c_i32_0122_q)
    begin
        unique case (i_unnamed_sobel_filter34_s)
            1'b0 : i_unnamed_sobel_filter34_q = i_sub_i21_sobel_filter33_vt_join_q;
            1'b1 : i_unnamed_sobel_filter34_q = c_i32_0122_q;
            default : i_unnamed_sobel_filter34_q = 32'b0;
        endcase
    end

    // i_unnamed_sobel_filter34_vt_select_10(BITSELECT,234)@12
    assign i_unnamed_sobel_filter34_vt_select_10_b = i_unnamed_sobel_filter34_q[10:0];

    // redist18_i_unnamed_sobel_filter34_vt_select_10_b_1(DELAY,747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_unnamed_sobel_filter34_vt_select_10_b_1_q <= '0;
        end
        else
        begin
            redist18_i_unnamed_sobel_filter34_vt_select_10_b_1_q <= $unsigned(i_unnamed_sobel_filter34_vt_select_10_b);
        end
    end

    // i_unnamed_sobel_filter34_vt_join(BITJOIN,233)@13
    assign i_unnamed_sobel_filter34_vt_join_q = {i_sub_i21_sobel_filter33_vt_const_31_q, redist18_i_unnamed_sobel_filter34_vt_select_10_b_1_q};

    // leftShiftStage0Idx3Rng3_uid585_i_shl12_i_sobel_filter0_shift_x(BITSELECT,584)@13
    assign leftShiftStage0Idx3Rng3_uid585_i_shl12_i_sobel_filter0_shift_x_in = leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid585_i_shl12_i_sobel_filter0_shift_x_b = leftShiftStage0Idx3Rng3_uid585_i_shl12_i_sobel_filter0_shift_x_in[60:0];

    // leftShiftStage0Idx3_uid586_i_shl12_i_sobel_filter0_shift_x(BITJOIN,585)@13
    assign leftShiftStage0Idx3_uid586_i_shl12_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx3Rng3_uid585_i_shl12_i_sobel_filter0_shift_x_b, i_shr1_i_i_sobel_filter21_vt_const_31_q};

    // leftShiftStage0Idx2Rng2_uid582_i_shl12_i_sobel_filter0_shift_x(BITSELECT,581)@13
    assign leftShiftStage0Idx2Rng2_uid582_i_shl12_i_sobel_filter0_shift_x_in = leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid582_i_shl12_i_sobel_filter0_shift_x_b = leftShiftStage0Idx2Rng2_uid582_i_shl12_i_sobel_filter0_shift_x_in[61:0];

    // leftShiftStage0Idx2_uid583_i_shl12_i_sobel_filter0_shift_x(BITJOIN,582)@13
    assign leftShiftStage0Idx2_uid583_i_shl12_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx2Rng2_uid582_i_shl12_i_sobel_filter0_shift_x_b, i_and23_i15_sobel_filter77_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid579_i_shl12_i_sobel_filter0_shift_x(BITSELECT,578)@13
    assign leftShiftStage0Idx1Rng1_uid579_i_shl12_i_sobel_filter0_shift_x_in = leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid579_i_shl12_i_sobel_filter0_shift_x_b = leftShiftStage0Idx1Rng1_uid579_i_shl12_i_sobel_filter0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid580_i_shl12_i_sobel_filter0_shift_x(BITJOIN,579)@13
    assign leftShiftStage0Idx1_uid580_i_shl12_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid579_i_shl12_i_sobel_filter0_shift_x_b, GND_q};

    // leftShiftStage0Idx3Rng12_uid599_i_shl9_i_sobel_filter0_shift_x(BITSELECT,598)@13
    assign leftShiftStage0Idx3Rng12_uid599_i_shl9_i_sobel_filter0_shift_x_in = leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q[51:0];
    assign leftShiftStage0Idx3Rng12_uid599_i_shl9_i_sobel_filter0_shift_x_b = leftShiftStage0Idx3Rng12_uid599_i_shl9_i_sobel_filter0_shift_x_in[51:0];

    // leftShiftStage0Idx3Pad12_uid598_i_shl9_i_sobel_filter0_shift_x(CONSTANT,597)
    assign leftShiftStage0Idx3Pad12_uid598_i_shl9_i_sobel_filter0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage0Idx3_uid600_i_shl9_i_sobel_filter0_shift_x(BITJOIN,599)@13
    assign leftShiftStage0Idx3_uid600_i_shl9_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx3Rng12_uid599_i_shl9_i_sobel_filter0_shift_x_b, leftShiftStage0Idx3Pad12_uid598_i_shl9_i_sobel_filter0_shift_x_q};

    // leftShiftStage0Idx2Rng8_uid596_i_shl9_i_sobel_filter0_shift_x(BITSELECT,595)@13
    assign leftShiftStage0Idx2Rng8_uid596_i_shl9_i_sobel_filter0_shift_x_in = leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q[55:0];
    assign leftShiftStage0Idx2Rng8_uid596_i_shl9_i_sobel_filter0_shift_x_b = leftShiftStage0Idx2Rng8_uid596_i_shl9_i_sobel_filter0_shift_x_in[55:0];

    // leftShiftStage0Idx2_uid597_i_shl9_i_sobel_filter0_shift_x(BITJOIN,596)@13
    assign leftShiftStage0Idx2_uid597_i_shl9_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx2Rng8_uid596_i_shl9_i_sobel_filter0_shift_x_b, leftShiftStage0Idx2Pad8_uid595_i_shl9_i_sobel_filter0_shift_x_q};

    // leftShiftStage0Idx1Rng4_uid593_i_shl9_i_sobel_filter0_shift_x(BITSELECT,592)@13
    assign leftShiftStage0Idx1Rng4_uid593_i_shl9_i_sobel_filter0_shift_x_in = leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q[59:0];
    assign leftShiftStage0Idx1Rng4_uid593_i_shl9_i_sobel_filter0_shift_x_b = leftShiftStage0Idx1Rng4_uid593_i_shl9_i_sobel_filter0_shift_x_in[59:0];

    // leftShiftStage0Idx1_uid594_i_shl9_i_sobel_filter0_shift_x(BITJOIN,593)@13
    assign leftShiftStage0Idx1_uid594_i_shl9_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx1Rng4_uid593_i_shl9_i_sobel_filter0_shift_x_b, i_and6_i_sobel_filter37_vt_const_3_q};

    // leftShiftStage0Idx3Rng48_uid613_i_shl_i_sobel_filter0_shift_x(BITSELECT,612)@13
    assign leftShiftStage0Idx3Rng48_uid613_i_shl_i_sobel_filter0_shift_x_in = i_conv4_i_sobel_filter35_vt_join_q[15:0];
    assign leftShiftStage0Idx3Rng48_uid613_i_shl_i_sobel_filter0_shift_x_b = leftShiftStage0Idx3Rng48_uid613_i_shl_i_sobel_filter0_shift_x_in[15:0];

    // leftShiftStage0Idx3Pad48_uid612_i_shl_i_sobel_filter0_shift_x(CONSTANT,611)
    assign leftShiftStage0Idx3Pad48_uid612_i_shl_i_sobel_filter0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid614_i_shl_i_sobel_filter0_shift_x(BITJOIN,613)@13
    assign leftShiftStage0Idx3_uid614_i_shl_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx3Rng48_uid613_i_shl_i_sobel_filter0_shift_x_b, leftShiftStage0Idx3Pad48_uid612_i_shl_i_sobel_filter0_shift_x_q};

    // leftShiftStage0Idx2Rng32_uid610_i_shl_i_sobel_filter0_shift_x(BITSELECT,609)@13
    assign leftShiftStage0Idx2Rng32_uid610_i_shl_i_sobel_filter0_shift_x_in = i_conv4_i_sobel_filter35_vt_join_q[31:0];
    assign leftShiftStage0Idx2Rng32_uid610_i_shl_i_sobel_filter0_shift_x_b = leftShiftStage0Idx2Rng32_uid610_i_shl_i_sobel_filter0_shift_x_in[31:0];

    // leftShiftStage0Idx2_uid611_i_shl_i_sobel_filter0_shift_x(BITJOIN,610)@13
    assign leftShiftStage0Idx2_uid611_i_shl_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx2Rng32_uid610_i_shl_i_sobel_filter0_shift_x_b, c_i32_0122_q};

    // leftShiftStage0Idx1Rng16_uid607_i_shl_i_sobel_filter0_shift_x(BITSELECT,606)@13
    assign leftShiftStage0Idx1Rng16_uid607_i_shl_i_sobel_filter0_shift_x_in = i_conv4_i_sobel_filter35_vt_join_q[47:0];
    assign leftShiftStage0Idx1Rng16_uid607_i_shl_i_sobel_filter0_shift_x_b = leftShiftStage0Idx1Rng16_uid607_i_shl_i_sobel_filter0_shift_x_in[47:0];

    // leftShiftStage0Idx1_uid608_i_shl_i_sobel_filter0_shift_x(BITJOIN,607)@13
    assign leftShiftStage0Idx1_uid608_i_shl_i_sobel_filter0_shift_x_q = {leftShiftStage0Idx1Rng16_uid607_i_shl_i_sobel_filter0_shift_x_b, i_shr7_i_i_sobel_filter27_vt_const_31_q};

    // i_conv4_i_sobel_filter35_vt_const_63(CONSTANT,125)
    assign i_conv4_i_sobel_filter35_vt_const_63_q = $unsigned(33'b000000000000000000000000000000000);

    // i_conv4_i_sobel_filter35_sel_x(BITSELECT,332)@13
    assign i_conv4_i_sobel_filter35_sel_x_b = {32'b00000000000000000000000000000000, redist34_i_add_i_sobel_filter18_vt_join_q_2_q[31:0]};

    // i_conv4_i_sobel_filter35_vt_select_30(BITSELECT,127)@13
    assign i_conv4_i_sobel_filter35_vt_select_30_b = i_conv4_i_sobel_filter35_sel_x_b[30:0];

    // i_conv4_i_sobel_filter35_vt_join(BITJOIN,126)@13
    assign i_conv4_i_sobel_filter35_vt_join_q = {i_conv4_i_sobel_filter35_vt_const_63_q, i_conv4_i_sobel_filter35_vt_select_30_b};

    // i_sh_prom_i_sobel_filter38_vt_const_63(CONSTANT,203)
    assign i_sh_prom_i_sobel_filter38_vt_const_63_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_add_i22_sobel_filter36_vt_const_31(CONSTANT,77)
    assign i_add_i22_sobel_filter36_vt_const_31_q = $unsigned(25'b0000000000000000000000000);

    // c_i32_21130(CONSTANT,46)
    assign c_i32_21130_q = $unsigned(32'b00000000000000000000000000010101);

    // i_add_i22_sobel_filter36(ADD,76)@12
    assign i_add_i22_sobel_filter36_a = {1'b0, i_llvm_ctpop_i32_unnamed_sobel_filter16_sobel_filter30_vt_join_q};
    assign i_add_i22_sobel_filter36_b = {1'b0, c_i32_21130_q};
    assign i_add_i22_sobel_filter36_o = $unsigned(i_add_i22_sobel_filter36_a) + $unsigned(i_add_i22_sobel_filter36_b);
    assign i_add_i22_sobel_filter36_q = i_add_i22_sobel_filter36_o[32:0];

    // bgTrunc_i_add_i22_sobel_filter36_sel_x(BITSELECT,273)@12
    assign bgTrunc_i_add_i22_sobel_filter36_sel_x_b = i_add_i22_sobel_filter36_q[31:0];

    // i_add_i22_sobel_filter36_vt_select_6(BITSELECT,79)@12
    assign i_add_i22_sobel_filter36_vt_select_6_b = bgTrunc_i_add_i22_sobel_filter36_sel_x_b[6:0];

    // i_add_i22_sobel_filter36_vt_join(BITJOIN,78)@12
    assign i_add_i22_sobel_filter36_vt_join_q = {i_add_i22_sobel_filter36_vt_const_31_q, i_add_i22_sobel_filter36_vt_select_6_b};

    // i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select(BITSELECT,726)@12
    assign i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_in = i_add_i22_sobel_filter36_vt_join_q[5:0];
    assign i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b = i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_in[1:0];
    assign i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_c = i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_in[5:4];
    assign i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_d = i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_in[3:2];

    // i_and6_i_sobel_filter37_join(BITJOIN,452)@12
    assign i_and6_i_sobel_filter37_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_c, GND_q, GND_q, GND_q, GND_q};

    // i_and6_i_sobel_filter37_vt_select_5(BITSELECT,101)@12
    assign i_and6_i_sobel_filter37_vt_select_5_b = i_and6_i_sobel_filter37_join_q[5:4];

    // i_and6_i_sobel_filter37_vt_join(BITJOIN,100)@12
    assign i_and6_i_sobel_filter37_vt_join_q = {i_and6_i_sobel_filter37_vt_const_31_q, i_and6_i_sobel_filter37_vt_select_5_b, i_and6_i_sobel_filter37_vt_const_3_q};

    // i_sh_prom_i_sobel_filter38_sel_x(BITSELECT,341)@12
    assign i_sh_prom_i_sobel_filter38_sel_x_b = {32'b00000000000000000000000000000000, i_and6_i_sobel_filter37_vt_join_q[31:0]};

    // i_sh_prom_i_sobel_filter38_vt_select_5(BITSELECT,205)@12
    assign i_sh_prom_i_sobel_filter38_vt_select_5_b = i_sh_prom_i_sobel_filter38_sel_x_b[5:4];

    // i_sh_prom_i_sobel_filter38_vt_join(BITJOIN,204)@12
    assign i_sh_prom_i_sobel_filter38_vt_join_q = {i_sh_prom_i_sobel_filter38_vt_const_63_q, i_sh_prom_i_sobel_filter38_vt_select_5_b, i_and6_i_sobel_filter37_vt_const_3_q};

    // i_shl_i_sobel_filter0_shift_narrow_x(BITSELECT,352)@12
    assign i_shl_i_sobel_filter0_shift_narrow_x_b = i_sh_prom_i_sobel_filter38_vt_join_q[5:0];

    // leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x(BITSELECT,614)@12
    assign leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b = i_shl_i_sobel_filter0_shift_narrow_x_b[5:4];

    // redist2_leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b_1(DELAY,731)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist2_leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b_1_q <= $unsigned(leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b);
        end
    end

    // leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x(MUX,615)@13
    assign leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_s = redist2_leftShiftStageSel4Dto4_uid615_i_shl_i_sobel_filter0_shift_x_b_1_q;
    always @(leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_s or i_conv4_i_sobel_filter35_vt_join_q or leftShiftStage0Idx1_uid608_i_shl_i_sobel_filter0_shift_x_q or leftShiftStage0Idx2_uid611_i_shl_i_sobel_filter0_shift_x_q or leftShiftStage0Idx3_uid614_i_shl_i_sobel_filter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_s)
            2'b00 : leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q = i_conv4_i_sobel_filter35_vt_join_q;
            2'b01 : leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q = leftShiftStage0Idx1_uid608_i_shl_i_sobel_filter0_shift_x_q;
            2'b10 : leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q = leftShiftStage0Idx2_uid611_i_shl_i_sobel_filter0_shift_x_q;
            2'b11 : leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q = leftShiftStage0Idx3_uid614_i_shl_i_sobel_filter0_shift_x_q;
            default : leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom8_i_sobel_filter41_vt_const_63(CONSTANT,198)
    assign i_sh_prom8_i_sobel_filter41_vt_const_63_q = $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);

    // i_and7_i_sobel_filter40_vt_const_31(CONSTANT,104)
    assign i_and7_i_sobel_filter40_vt_const_31_q = $unsigned(28'b0000000000000000000000000000);

    // i_and7_i_sobel_filter40_join(BITJOIN,454)@12
    assign i_and7_i_sobel_filter40_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_d, GND_q, GND_q};

    // i_and7_i_sobel_filter40_vt_select_3(BITSELECT,106)@12
    assign i_and7_i_sobel_filter40_vt_select_3_b = i_and7_i_sobel_filter40_join_q[3:2];

    // i_and7_i_sobel_filter40_vt_join(BITJOIN,105)@12
    assign i_and7_i_sobel_filter40_vt_join_q = {i_and7_i_sobel_filter40_vt_const_31_q, i_and7_i_sobel_filter40_vt_select_3_b, i_and23_i15_sobel_filter77_vt_const_1_q};

    // i_sh_prom8_i_sobel_filter41_sel_x(BITSELECT,340)@12
    assign i_sh_prom8_i_sobel_filter41_sel_x_b = {32'b00000000000000000000000000000000, i_and7_i_sobel_filter40_vt_join_q[31:0]};

    // i_sh_prom8_i_sobel_filter41_vt_select_3(BITSELECT,200)@12
    assign i_sh_prom8_i_sobel_filter41_vt_select_3_b = i_sh_prom8_i_sobel_filter41_sel_x_b[3:2];

    // i_sh_prom8_i_sobel_filter41_vt_join(BITJOIN,199)@12
    assign i_sh_prom8_i_sobel_filter41_vt_join_q = {i_sh_prom8_i_sobel_filter41_vt_const_63_q, i_sh_prom8_i_sobel_filter41_vt_select_3_b, i_and23_i15_sobel_filter77_vt_const_1_q};

    // i_shl9_i_sobel_filter0_shift_narrow_x(BITSELECT,348)@12
    assign i_shl9_i_sobel_filter0_shift_narrow_x_b = i_sh_prom8_i_sobel_filter41_vt_join_q[5:0];

    // leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x(BITSELECT,600)@12
    assign leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_in = i_shl9_i_sobel_filter0_shift_narrow_x_b[3:0];
    assign leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b = leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_in[3:2];

    // redist3_leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b_1(DELAY,732)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist3_leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b_1_q <= $unsigned(leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b);
        end
    end

    // leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x(MUX,601)@13
    assign leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_s = redist3_leftShiftStageSel2Dto2_uid601_i_shl9_i_sobel_filter0_shift_x_b_1_q;
    always @(leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_s or leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q or leftShiftStage0Idx1_uid594_i_shl9_i_sobel_filter0_shift_x_q or leftShiftStage0Idx2_uid597_i_shl9_i_sobel_filter0_shift_x_q or leftShiftStage0Idx3_uid600_i_shl9_i_sobel_filter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_s)
            2'b00 : leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q = leftShiftStage0_uid616_i_shl_i_sobel_filter0_shift_x_q;
            2'b01 : leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q = leftShiftStage0Idx1_uid594_i_shl9_i_sobel_filter0_shift_x_q;
            2'b10 : leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q = leftShiftStage0Idx2_uid597_i_shl9_i_sobel_filter0_shift_x_q;
            2'b11 : leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q = leftShiftStage0Idx3_uid600_i_shl9_i_sobel_filter0_shift_x_q;
            default : leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom1126_i_sobel_filter44_vt_const_63(CONSTANT,193)
    assign i_sh_prom1126_i_sobel_filter44_vt_const_63_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // redist0_i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b_1(DELAY,729)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b_1_q <= $unsigned(i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b);
        end
    end

    // i_sh_prom1126_i_sobel_filter44_sel_x(BITSELECT,339)@13
    assign i_sh_prom1126_i_sobel_filter44_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, redist0_i_and10_trunc_i_sobel_filter43_sel_x_merged_bit_select_b_1_q[1:0]};

    // i_sh_prom1126_i_sobel_filter44_vt_select_1(BITSELECT,195)@13
    assign i_sh_prom1126_i_sobel_filter44_vt_select_1_b = i_sh_prom1126_i_sobel_filter44_sel_x_b[1:0];

    // i_sh_prom1126_i_sobel_filter44_vt_join(BITJOIN,194)@13
    assign i_sh_prom1126_i_sobel_filter44_vt_join_q = {i_sh_prom1126_i_sobel_filter44_vt_const_63_q, i_sh_prom1126_i_sobel_filter44_vt_select_1_b};

    // i_shl12_i_sobel_filter0_shift_narrow_x(BITSELECT,344)@13
    assign i_shl12_i_sobel_filter0_shift_narrow_x_b = i_sh_prom1126_i_sobel_filter44_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid587_i_shl12_i_sobel_filter0_shift_x(BITSELECT,586)@13
    assign leftShiftStageSel0Dto0_uid587_i_shl12_i_sobel_filter0_shift_x_in = i_shl12_i_sobel_filter0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid587_i_shl12_i_sobel_filter0_shift_x_b = leftShiftStageSel0Dto0_uid587_i_shl12_i_sobel_filter0_shift_x_in[1:0];

    // leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x(MUX,587)@13
    assign leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_s = leftShiftStageSel0Dto0_uid587_i_shl12_i_sobel_filter0_shift_x_b;
    always @(leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_s or leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q or leftShiftStage0Idx1_uid580_i_shl12_i_sobel_filter0_shift_x_q or leftShiftStage0Idx2_uid583_i_shl12_i_sobel_filter0_shift_x_q or leftShiftStage0Idx3_uid586_i_shl12_i_sobel_filter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_s)
            2'b00 : leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_q = leftShiftStage0_uid602_i_shl9_i_sobel_filter0_shift_x_q;
            2'b01 : leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_q = leftShiftStage0Idx1_uid580_i_shl12_i_sobel_filter0_shift_x_q;
            2'b10 : leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_q = leftShiftStage0Idx2_uid583_i_shl12_i_sobel_filter0_shift_x_q;
            2'b11 : leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_q = leftShiftStage0Idx3_uid586_i_shl12_i_sobel_filter0_shift_x_q;
            default : leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,337)@13
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_247_q, redist34_i_add_i_sobel_filter18_vt_join_q_2_q, i_unnamed_sobel_filter34_vt_join_q, leftShiftStage0_uid588_i_shl12_i_sobel_filter0_shift_x_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x(CHOOSEBITS,336)@13
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[127:127], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[74:74], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[73:73], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[72:72], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[71:71], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[7:7], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[6:6], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[5:5], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[4:4], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[3:3], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[2:2], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[1:1], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_a[0:0]};

    // redist13_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q_1(DELAY,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q);
        end
    end

    // i_acl_sqrtfd_call111_i_sobel_filter50(BLACKBOX,75)@14
    // out out_primWireOut@50
    sobel_filter_flt_i_sfc_logic_s_c0_in_forA000000Z46140i0k614004ki0abw thei_acl_sqrtfd_call111_i_sobel_filter50 (
        .in_0(redist13_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel_filter0_NO_NAME_x_q_1_q),
        .out_primWireOut(i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_tobool_i1_sobel_filter52_cmp_sign(LOGICAL,489)@50 + 1
    assign i_tobool_i1_sobel_filter52_cmp_sign_qi = $unsigned(i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut[63:63]);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool_i1_sobel_filter52_cmp_sign_delay ( .xin(i_tobool_i1_sobel_filter52_cmp_sign_qi), .xout(i_tobool_i1_sobel_filter52_cmp_sign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cond10_i6_sobel_filter66(MUX,123)@51
    assign i_cond10_i6_sobel_filter66_s = i_tobool_i1_sobel_filter52_cmp_sign_q;
    always @(i_cond10_i6_sobel_filter66_s or c_i32_2147483647142_q or c_i32_2147483648143_q)
    begin
        unique case (i_cond10_i6_sobel_filter66_s)
            1'b0 : i_cond10_i6_sobel_filter66_q = c_i32_2147483647142_q;
            1'b1 : i_cond10_i6_sobel_filter66_q = c_i32_2147483648143_q;
            default : i_cond10_i6_sobel_filter66_q = 32'b0;
        endcase
    end

    // redist31_i_cond10_i6_sobel_filter66_q_1(DELAY,760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_cond10_i6_sobel_filter66_q_1_q <= '0;
        end
        else
        begin
            redist31_i_cond10_i6_sobel_filter66_q_1_q <= $unsigned(i_cond10_i6_sobel_filter66_q);
        end
    end

    // i_unnamed_sobel_filter60_vt_const_63(CONSTANT,250)
    assign i_unnamed_sobel_filter60_vt_const_63_q = $unsigned(22'b0000000000000000000000);

    // rightShiftStage2Idx1Rng16_uid702_dupName_0_i_unnamed_sobel_filter0_shift_x(BITSELECT,701)@50
    assign rightShiftStage2Idx1Rng16_uid702_dupName_0_i_unnamed_sobel_filter0_shift_x_b = rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_q[63:16];

    // rightShiftStage2Idx1_uid704_dupName_0_i_unnamed_sobel_filter0_shift_x(BITJOIN,703)@50
    assign rightShiftStage2Idx1_uid704_dupName_0_i_unnamed_sobel_filter0_shift_x_q = {i_shr7_i_i_sobel_filter27_vt_const_31_q, rightShiftStage2Idx1Rng16_uid702_dupName_0_i_unnamed_sobel_filter0_shift_x_b};

    // rightShiftStage1Idx1Rng4_uid697_dupName_0_i_unnamed_sobel_filter0_shift_x(BITSELECT,696)@50
    assign rightShiftStage1Idx1Rng4_uid697_dupName_0_i_unnamed_sobel_filter0_shift_x_b = rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_q[63:4];

    // rightShiftStage1Idx1_uid699_dupName_0_i_unnamed_sobel_filter0_shift_x(BITJOIN,698)@50
    assign rightShiftStage1Idx1_uid699_dupName_0_i_unnamed_sobel_filter0_shift_x_q = {i_and6_i_sobel_filter37_vt_const_3_q, rightShiftStage1Idx1Rng4_uid697_dupName_0_i_unnamed_sobel_filter0_shift_x_b};

    // rightShiftStage0Idx1Rng2_uid692_dupName_0_i_unnamed_sobel_filter0_shift_x(BITSELECT,691)@50
    assign rightShiftStage0Idx1Rng2_uid692_dupName_0_i_unnamed_sobel_filter0_shift_x_b = i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut[63:2];

    // rightShiftStage0Idx1_uid694_dupName_0_i_unnamed_sobel_filter0_shift_x(BITJOIN,693)@50
    assign rightShiftStage0Idx1_uid694_dupName_0_i_unnamed_sobel_filter0_shift_x_q = {i_and23_i15_sobel_filter77_vt_const_1_q, rightShiftStage0Idx1Rng2_uid692_dupName_0_i_unnamed_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x(MUX,695)@50
    assign rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_s or i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut or rightShiftStage0Idx1_uid694_dupName_0_i_unnamed_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_q = i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut;
            1'b1 : rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid694_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x(MUX,700)@50
    assign rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_s or rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_q or rightShiftStage1Idx1_uid699_dupName_0_i_unnamed_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage0_uid696_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage1Idx1_uid699_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
            default : rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x(MUX,705)@50
    assign rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_s or rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_q or rightShiftStage2Idx1_uid704_dupName_0_i_unnamed_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage1_uid701_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage2Idx1_uid704_dupName_0_i_unnamed_sobel_filter0_shift_x_q;
            default : rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_sobel_filter60_vt_select_41(BITSELECT,252)@50
    assign i_unnamed_sobel_filter60_vt_select_41_b = rightShiftStage2_uid706_dupName_0_i_unnamed_sobel_filter0_shift_x_q[41:0];

    // i_unnamed_sobel_filter60_vt_join(BITJOIN,251)@50
    assign i_unnamed_sobel_filter60_vt_join_q = {i_unnamed_sobel_filter60_vt_const_63_q, i_unnamed_sobel_filter60_vt_select_41_b};

    // i_unnamed_sobel_filter61_sel_x(BITSELECT,390)@50
    assign i_unnamed_sobel_filter61_sel_x_b = i_unnamed_sobel_filter60_vt_join_q[31:0];

    // i_unnamed_sobel_filter62_BitSelect_for_a(BITSELECT,493)@50
    assign i_unnamed_sobel_filter62_BitSelect_for_a_b = i_unnamed_sobel_filter61_sel_x_b[29:0];

    // i_unnamed_sobel_filter62_join(BITJOIN,494)@50
    assign i_unnamed_sobel_filter62_join_q = {GND_q, GND_q, i_unnamed_sobel_filter62_BitSelect_for_a_b};

    // i_unnamed_sobel_filter62_vt_select_29(BITSELECT,257)@50
    assign i_unnamed_sobel_filter62_vt_select_29_b = i_unnamed_sobel_filter62_join_q[29:0];

    // redist17_i_unnamed_sobel_filter62_vt_select_29_b_1(DELAY,746)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_unnamed_sobel_filter62_vt_select_29_b_1_q <= '0;
        end
        else
        begin
            redist17_i_unnamed_sobel_filter62_vt_select_29_b_1_q <= $unsigned(i_unnamed_sobel_filter62_vt_select_29_b);
        end
    end

    // i_unnamed_sobel_filter62_vt_join(BITJOIN,256)@51
    assign i_unnamed_sobel_filter62_vt_join_q = {i_and23_i15_sobel_filter77_vt_const_1_q, redist17_i_unnamed_sobel_filter62_vt_select_29_b_1_q};

    // i_conv7_i4_sobel_filter63_BitSelect_for_a(BITSELECT,455)@51
    assign i_conv7_i4_sobel_filter63_BitSelect_for_a_b = i_unnamed_sobel_filter62_vt_join_q[29:0];

    // i_conv7_i4_sobel_filter63_join(BITJOIN,456)@51
    assign i_conv7_i4_sobel_filter63_join_q = {GND_q, VCC_q, i_conv7_i4_sobel_filter63_BitSelect_for_a_b};

    // i_conv7_i4_sobel_filter63_vt_select_29(BITSELECT,132)@51
    assign i_conv7_i4_sobel_filter63_vt_select_29_b = i_conv7_i4_sobel_filter63_join_q[29:0];

    // i_conv7_i4_sobel_filter63_vt_join(BITJOIN,131)@51
    assign i_conv7_i4_sobel_filter63_vt_join_q = {c_i2_1120_q, i_conv7_i4_sobel_filter63_vt_select_29_b};

    // i_unnamed_sobel_filter55_vt_const_31(CONSTANT,238)
    assign i_unnamed_sobel_filter55_vt_const_31_q = $unsigned(20'b00000000000000000000);

    // i_and1_i2_sobel_filter54_vt_const_63(CONSTANT,85)
    assign i_and1_i2_sobel_filter54_vt_const_63_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // rightShiftStage2Idx1Rng32_uid508_i_and1_i2_sobel_filter0_shift_x(BITSELECT,507)@50
    assign rightShiftStage2Idx1Rng32_uid508_i_and1_i2_sobel_filter0_shift_x_b = rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_q[63:32];

    // rightShiftStage2Idx1_uid510_i_and1_i2_sobel_filter0_shift_x(BITJOIN,509)@50
    assign rightShiftStage2Idx1_uid510_i_and1_i2_sobel_filter0_shift_x_q = {c_i32_0122_q, rightShiftStage2Idx1Rng32_uid508_i_and1_i2_sobel_filter0_shift_x_b};

    // rightShiftStage1Idx1Rng16_uid503_i_and1_i2_sobel_filter0_shift_x(BITSELECT,502)@50
    assign rightShiftStage1Idx1Rng16_uid503_i_and1_i2_sobel_filter0_shift_x_b = rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_q[63:16];

    // rightShiftStage1Idx1_uid505_i_and1_i2_sobel_filter0_shift_x(BITJOIN,504)@50
    assign rightShiftStage1Idx1_uid505_i_and1_i2_sobel_filter0_shift_x_q = {i_shr7_i_i_sobel_filter27_vt_const_31_q, rightShiftStage1Idx1Rng16_uid503_i_and1_i2_sobel_filter0_shift_x_b};

    // rightShiftStage0Idx1Rng4_uid498_i_and1_i2_sobel_filter0_shift_x(BITSELECT,497)@50
    assign rightShiftStage0Idx1Rng4_uid498_i_and1_i2_sobel_filter0_shift_x_b = i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut[63:4];

    // rightShiftStage0Idx1_uid500_i_and1_i2_sobel_filter0_shift_x(BITJOIN,499)@50
    assign rightShiftStage0Idx1_uid500_i_and1_i2_sobel_filter0_shift_x_q = {i_and6_i_sobel_filter37_vt_const_3_q, rightShiftStage0Idx1Rng4_uid498_i_and1_i2_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x(MUX,501)@50
    assign rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_s or i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut or rightShiftStage0Idx1_uid500_i_and1_i2_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_q = i_acl_sqrtfd_call111_i_sobel_filter50_out_primWireOut;
            1'b1 : rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid500_i_and1_i2_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x(MUX,506)@50
    assign rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_s or rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_q or rightShiftStage1Idx1_uid505_i_and1_i2_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_q = rightShiftStage0_uid502_i_and1_i2_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_q = rightShiftStage1Idx1_uid505_i_and1_i2_sobel_filter0_shift_x_q;
            default : rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x(MUX,511)@50
    assign rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_s or rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_q or rightShiftStage2Idx1_uid510_i_and1_i2_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_q = rightShiftStage1_uid507_i_and1_i2_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_q = rightShiftStage2Idx1_uid510_i_and1_i2_sobel_filter0_shift_x_q;
            default : rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // i_and1_i2_sobel_filter54_vt_select_11(BITSELECT,87)@50
    assign i_and1_i2_sobel_filter54_vt_select_11_b = rightShiftStage2_uid512_i_and1_i2_sobel_filter0_shift_x_q[11:0];

    // redist33_i_and1_i2_sobel_filter54_vt_select_11_b_1(DELAY,762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_and1_i2_sobel_filter54_vt_select_11_b_1_q <= '0;
        end
        else
        begin
            redist33_i_and1_i2_sobel_filter54_vt_select_11_b_1_q <= $unsigned(i_and1_i2_sobel_filter54_vt_select_11_b);
        end
    end

    // i_and1_i2_sobel_filter54_vt_join(BITJOIN,86)@51
    assign i_and1_i2_sobel_filter54_vt_join_q = {i_and1_i2_sobel_filter54_vt_const_63_q, redist33_i_and1_i2_sobel_filter54_vt_select_11_b_1_q};

    // i_unnamed_sobel_filter55_sel_x(BITSELECT,388)@51
    assign i_unnamed_sobel_filter55_sel_x_b = i_and1_i2_sobel_filter54_vt_join_q[31:0];

    // i_unnamed_sobel_filter55_vt_select_11(BITSELECT,240)@51
    assign i_unnamed_sobel_filter55_vt_select_11_b = i_unnamed_sobel_filter55_sel_x_b[11:0];

    // i_unnamed_sobel_filter55_vt_join(BITJOIN,239)@51
    assign i_unnamed_sobel_filter55_vt_join_q = {i_unnamed_sobel_filter55_vt_const_31_q, i_unnamed_sobel_filter55_vt_select_11_b};

    // i_unnamed_sobel_filter56_BitSelect_for_a(BITSELECT,491)@51
    assign i_unnamed_sobel_filter56_BitSelect_for_a_b = i_unnamed_sobel_filter55_vt_join_q[10:0];

    // i_unnamed_sobel_filter56_join(BITJOIN,492)@51
    assign i_unnamed_sobel_filter56_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_unnamed_sobel_filter56_BitSelect_for_a_b};

    // i_unnamed_sobel_filter56_vt_select_10(BITSELECT,244)@51
    assign i_unnamed_sobel_filter56_vt_select_10_b = i_unnamed_sobel_filter56_join_q[10:0];

    // i_unnamed_sobel_filter56_vt_join(BITJOIN,243)@51
    assign i_unnamed_sobel_filter56_vt_join_q = {i_sub_i21_sobel_filter33_vt_const_31_q, i_unnamed_sobel_filter56_vt_select_10_b};

    // c_i32_1053145(CONSTANT,37)
    assign c_i32_1053145_q = $unsigned(32'b00000000000000000000010000011101);

    // i_cmp16_i8_sobel_filter68(COMPARE,120)@51
    assign i_cmp16_i8_sobel_filter68_a = {2'b00, c_i32_1053145_q};
    assign i_cmp16_i8_sobel_filter68_b = {2'b00, i_unnamed_sobel_filter56_vt_join_q};
    assign i_cmp16_i8_sobel_filter68_o = $unsigned(i_cmp16_i8_sobel_filter68_a) - $unsigned(i_cmp16_i8_sobel_filter68_b);
    assign i_cmp16_i8_sobel_filter68_c[0] = i_cmp16_i8_sobel_filter68_o[33];

    // i_spec_select23_i9_sobel_filter69(MUX,221)@51
    assign i_spec_select23_i9_sobel_filter69_s = i_cmp16_i8_sobel_filter68_c;
    always @(i_spec_select23_i9_sobel_filter69_s or i_conv7_i4_sobel_filter63_vt_join_q or i_cond10_i6_sobel_filter66_q)
    begin
        unique case (i_spec_select23_i9_sobel_filter69_s)
            1'b0 : i_spec_select23_i9_sobel_filter69_q = i_conv7_i4_sobel_filter63_vt_join_q;
            1'b1 : i_spec_select23_i9_sobel_filter69_q = i_cond10_i6_sobel_filter66_q;
            default : i_spec_select23_i9_sobel_filter69_q = 32'b0;
        endcase
    end

    // c_i32_1023144(CONSTANT,35)
    assign c_i32_1023144_q = $unsigned(32'b00000000000000000000001111111111);

    // i_cmp12_i7_sobel_filter67(COMPARE,119)@51
    assign i_cmp12_i7_sobel_filter67_a = {2'b00, i_unnamed_sobel_filter56_vt_join_q};
    assign i_cmp12_i7_sobel_filter67_b = {2'b00, c_i32_1023144_q};
    assign i_cmp12_i7_sobel_filter67_o = $unsigned(i_cmp12_i7_sobel_filter67_a) - $unsigned(i_cmp12_i7_sobel_filter67_b);
    assign i_cmp12_i7_sobel_filter67_c[0] = i_cmp12_i7_sobel_filter67_o[33];

    // i_acl_26_i13_sobel_filter75(MUX,73)@51 + 1
    assign i_acl_26_i13_sobel_filter75_s = i_cmp12_i7_sobel_filter67_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_26_i13_sobel_filter75_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_26_i13_sobel_filter75_s)
                1'b0 : i_acl_26_i13_sobel_filter75_q <= i_spec_select23_i9_sobel_filter69_q;
                1'b1 : i_acl_26_i13_sobel_filter75_q <= c_i32_0122_q;
                default : i_acl_26_i13_sobel_filter75_q <= 32'b0;
            endcase
        end
    end

    // c_i32_2047137_recast_x(CONSTANT,286)
    assign c_i32_2047137_recast_x_q = $unsigned(32'b00000000000000000000011111111111);

    // i_cmp_i5_sobel_filter64(LOGICAL,122)@51 + 1
    assign i_cmp_i5_sobel_filter64_qi = $unsigned(i_unnamed_sobel_filter56_vt_join_q == c_i32_2047137_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i5_sobel_filter64_delay ( .xin(i_cmp_i5_sobel_filter64_qi), .xout(i_cmp_i5_sobel_filter64_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_27_i14_sobel_filter76(MUX,74)@52
    assign i_acl_27_i14_sobel_filter76_s = i_cmp_i5_sobel_filter64_q;
    always @(i_acl_27_i14_sobel_filter76_s or i_acl_26_i13_sobel_filter75_q or redist31_i_cond10_i6_sobel_filter66_q_1_q)
    begin
        unique case (i_acl_27_i14_sobel_filter76_s)
            1'b0 : i_acl_27_i14_sobel_filter76_q = i_acl_26_i13_sobel_filter75_q;
            1'b1 : i_acl_27_i14_sobel_filter76_q = redist31_i_cond10_i6_sobel_filter66_q_1_q;
            default : i_acl_27_i14_sobel_filter76_q = 32'b0;
        endcase
    end

    // xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x(BITSELECT,625)@52
    assign xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i14_sobel_filter76_q[31:31]);

    // seMsb_to16_uid639(BITSELECT,638)@52
    assign seMsb_to16_uid639_in = $unsigned({{15{xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b[0]}}, xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b});
    assign seMsb_to16_uid639_b = $unsigned(seMsb_to16_uid639_in[15:0]);

    // rightShiftStage1Idx1Rng16_uid640_i_shr24_i16_sobel_filter0_shift_x(BITSELECT,639)@52
    assign rightShiftStage1Idx1Rng16_uid640_i_shr24_i16_sobel_filter0_shift_x_b = $unsigned(rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q[31:16]);

    // rightShiftStage1Idx1_uid641_i_shr24_i16_sobel_filter0_shift_x(BITJOIN,640)@52
    assign rightShiftStage1Idx1_uid641_i_shr24_i16_sobel_filter0_shift_x_q = {seMsb_to16_uid639_b, rightShiftStage1Idx1Rng16_uid640_i_shr24_i16_sobel_filter0_shift_x_b};

    // seMsb_to12_uid634(BITSELECT,633)@52
    assign seMsb_to12_uid634_in = $unsigned({{11{xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b[0]}}, xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b});
    assign seMsb_to12_uid634_b = $unsigned(seMsb_to12_uid634_in[11:0]);

    // rightShiftStage0Idx3Rng12_uid635_i_shr24_i16_sobel_filter0_shift_x(BITSELECT,634)@52
    assign rightShiftStage0Idx3Rng12_uid635_i_shr24_i16_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i14_sobel_filter76_q[31:12]);

    // rightShiftStage0Idx3_uid636_i_shr24_i16_sobel_filter0_shift_x(BITJOIN,635)@52
    assign rightShiftStage0Idx3_uid636_i_shr24_i16_sobel_filter0_shift_x_q = {seMsb_to12_uid634_b, rightShiftStage0Idx3Rng12_uid635_i_shr24_i16_sobel_filter0_shift_x_b};

    // seMsb_to8_uid631(BITSELECT,630)@52
    assign seMsb_to8_uid631_in = $unsigned({{7{xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b[0]}}, xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b});
    assign seMsb_to8_uid631_b = $unsigned(seMsb_to8_uid631_in[7:0]);

    // rightShiftStage0Idx2Rng8_uid632_i_shr24_i16_sobel_filter0_shift_x(BITSELECT,631)@52
    assign rightShiftStage0Idx2Rng8_uid632_i_shr24_i16_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i14_sobel_filter76_q[31:8]);

    // rightShiftStage0Idx2_uid633_i_shr24_i16_sobel_filter0_shift_x(BITJOIN,632)@52
    assign rightShiftStage0Idx2_uid633_i_shr24_i16_sobel_filter0_shift_x_q = {seMsb_to8_uid631_b, rightShiftStage0Idx2Rng8_uid632_i_shr24_i16_sobel_filter0_shift_x_b};

    // seMsb_to4_uid628(BITSELECT,627)@52
    assign seMsb_to4_uid628_in = $unsigned({{3{xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b[0]}}, xMSB_uid626_i_shr24_i16_sobel_filter0_shift_x_b});
    assign seMsb_to4_uid628_b = $unsigned(seMsb_to4_uid628_in[3:0]);

    // rightShiftStage0Idx1Rng4_uid629_i_shr24_i16_sobel_filter0_shift_x(BITSELECT,628)@52
    assign rightShiftStage0Idx1Rng4_uid629_i_shr24_i16_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i14_sobel_filter76_q[31:4]);

    // rightShiftStage0Idx1_uid630_i_shr24_i16_sobel_filter0_shift_x(BITJOIN,629)@52
    assign rightShiftStage0Idx1_uid630_i_shr24_i16_sobel_filter0_shift_x_q = {seMsb_to4_uid628_b, rightShiftStage0Idx1Rng4_uid629_i_shr24_i16_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x(MUX,637)@52
    assign rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_s = rightShiftStageSel2Dto2_uid637_i_shr24_i16_sobel_filter0_shift_x_merged_bit_select_b;
    always @(rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_s or i_acl_27_i14_sobel_filter76_q or rightShiftStage0Idx1_uid630_i_shr24_i16_sobel_filter0_shift_x_q or rightShiftStage0Idx2_uid633_i_shr24_i16_sobel_filter0_shift_x_q or rightShiftStage0Idx3_uid636_i_shr24_i16_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_s)
            2'b00 : rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q = i_acl_27_i14_sobel_filter76_q;
            2'b01 : rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid630_i_shr24_i16_sobel_filter0_shift_x_q;
            2'b10 : rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q = rightShiftStage0Idx2_uid633_i_shr24_i16_sobel_filter0_shift_x_q;
            2'b11 : rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q = rightShiftStage0Idx3_uid636_i_shr24_i16_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // i_acl_24_i11_sobel_filter73_vt_const_31(CONSTANT,66)
    assign i_acl_24_i11_sobel_filter73_vt_const_31_q = $unsigned(27'b000000000000000000000000000);

    // i_unnamed_sobel_filter57_sel_x(BITSELECT,389)@51
    assign i_unnamed_sobel_filter57_sel_x_b = i_and1_i2_sobel_filter54_vt_join_q[15:0];

    // i_unnamed_sobel_filter57_vt_select_11(BITSELECT,248)@51
    assign i_unnamed_sobel_filter57_vt_select_11_b = i_unnamed_sobel_filter57_sel_x_b[11:0];

    // i_unnamed_sobel_filter57_vt_join(BITJOIN,247)@51
    assign i_unnamed_sobel_filter57_vt_join_q = {i_and6_i_sobel_filter37_vt_const_3_q, i_unnamed_sobel_filter57_vt_select_11_b};

    // c_i16_29138(CONSTANT,13)
    assign c_i16_29138_q = $unsigned(16'b0000000000011101);

    // i_unnamed_sobel_filter58(SUB,249)@51
    assign i_unnamed_sobel_filter58_a = {1'b0, c_i16_29138_q};
    assign i_unnamed_sobel_filter58_b = {1'b0, i_unnamed_sobel_filter57_vt_join_q};
    assign i_unnamed_sobel_filter58_o = $unsigned(i_unnamed_sobel_filter58_a) - $unsigned(i_unnamed_sobel_filter58_b);
    assign i_unnamed_sobel_filter58_q = i_unnamed_sobel_filter58_o[16:0];

    // bgTrunc_i_unnamed_sobel_filter58_sel_x(BITSELECT,283)@51
    assign bgTrunc_i_unnamed_sobel_filter58_sel_x_b = $unsigned(i_unnamed_sobel_filter58_q[15:0]);

    // i_conv5_trunc_i3_sobel_filter59_sel_x(BITSELECT,333)@51
    assign i_conv5_trunc_i3_sobel_filter59_sel_x_b = bgTrunc_i_unnamed_sobel_filter58_sel_x_b[4:0];

    // redist14_i_conv5_trunc_i3_sobel_filter59_sel_x_b_1(DELAY,743)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_conv5_trunc_i3_sobel_filter59_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_i_conv5_trunc_i3_sobel_filter59_sel_x_b_1_q <= $unsigned(i_conv5_trunc_i3_sobel_filter59_sel_x_b);
        end
    end

    // i_unnamed_sobel_filter70_sel_x(BITSELECT,391)@52
    assign i_unnamed_sobel_filter70_sel_x_b = {27'b000000000000000000000000000, redist14_i_conv5_trunc_i3_sobel_filter59_sel_x_b_1_q[4:0]};

    // i_unnamed_sobel_filter70_vt_select_4(BITSELECT,261)@52
    assign i_unnamed_sobel_filter70_vt_select_4_b = i_unnamed_sobel_filter70_sel_x_b[4:0];

    // i_unnamed_sobel_filter70_vt_join(BITJOIN,260)@52
    assign i_unnamed_sobel_filter70_vt_join_q = {i_acl_24_i11_sobel_filter73_vt_const_31_q, i_unnamed_sobel_filter70_vt_select_4_b};

    // c_i32_31147(CONSTANT,52)
    assign c_i32_31147_q = $unsigned(32'b00000000000000000000000000011111);

    // c_i32_1023146(CONSTANT,36)
    assign c_i32_1023146_q = $unsigned(32'b11111111111111111111110000000001);

    // i_off_i10_sobel_filter71(ADD,173)@51
    assign i_off_i10_sobel_filter71_a = {1'b0, i_unnamed_sobel_filter56_vt_join_q};
    assign i_off_i10_sobel_filter71_b = {1'b0, c_i32_1023146_q};
    assign i_off_i10_sobel_filter71_o = $unsigned(i_off_i10_sobel_filter71_a) + $unsigned(i_off_i10_sobel_filter71_b);
    assign i_off_i10_sobel_filter71_q = i_off_i10_sobel_filter71_o[32:0];

    // bgTrunc_i_off_i10_sobel_filter71_sel_x(BITSELECT,279)@51
    assign bgTrunc_i_off_i10_sobel_filter71_sel_x_b = i_off_i10_sobel_filter71_q[31:0];

    // i_unnamed_sobel_filter72(COMPARE,262)@51 + 1
    assign i_unnamed_sobel_filter72_a = {2'b00, bgTrunc_i_off_i10_sobel_filter71_sel_x_b};
    assign i_unnamed_sobel_filter72_b = {2'b00, c_i32_31147_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_sobel_filter72_o <= 34'b0;
        end
        else
        begin
            i_unnamed_sobel_filter72_o <= $unsigned(i_unnamed_sobel_filter72_a) - $unsigned(i_unnamed_sobel_filter72_b);
        end
    end
    assign i_unnamed_sobel_filter72_c[0] = i_unnamed_sobel_filter72_o[33];

    // i_acl_24_i11_sobel_filter73(MUX,65)@52
    assign i_acl_24_i11_sobel_filter73_s = i_unnamed_sobel_filter72_c;
    always @(i_acl_24_i11_sobel_filter73_s or c_i32_0122_q or i_unnamed_sobel_filter70_vt_join_q)
    begin
        unique case (i_acl_24_i11_sobel_filter73_s)
            1'b0 : i_acl_24_i11_sobel_filter73_q = c_i32_0122_q;
            1'b1 : i_acl_24_i11_sobel_filter73_q = i_unnamed_sobel_filter70_vt_join_q;
            default : i_acl_24_i11_sobel_filter73_q = 32'b0;
        endcase
    end

    // i_acl_24_i11_sobel_filter73_vt_select_4(BITSELECT,68)@52
    assign i_acl_24_i11_sobel_filter73_vt_select_4_b = i_acl_24_i11_sobel_filter73_q[4:0];

    // i_acl_24_i11_sobel_filter73_vt_join(BITJOIN,67)@52
    assign i_acl_24_i11_sobel_filter73_vt_join_q = {i_acl_24_i11_sobel_filter73_vt_const_31_q, i_acl_24_i11_sobel_filter73_vt_select_4_b};

    // i_acl_25_i12_sobel_filter74(MUX,69)@52
    assign i_acl_25_i12_sobel_filter74_s = i_cmp_i5_sobel_filter64_q;
    always @(i_acl_25_i12_sobel_filter74_s or i_acl_24_i11_sobel_filter73_vt_join_q or c_i32_0122_q)
    begin
        unique case (i_acl_25_i12_sobel_filter74_s)
            1'b0 : i_acl_25_i12_sobel_filter74_q = i_acl_24_i11_sobel_filter73_vt_join_q;
            1'b1 : i_acl_25_i12_sobel_filter74_q = c_i32_0122_q;
            default : i_acl_25_i12_sobel_filter74_q = 32'b0;
        endcase
    end

    // i_acl_25_i12_sobel_filter74_vt_select_4(BITSELECT,72)@52
    assign i_acl_25_i12_sobel_filter74_vt_select_4_b = i_acl_25_i12_sobel_filter74_q[4:0];

    // i_acl_25_i12_sobel_filter74_vt_join(BITJOIN,71)@52
    assign i_acl_25_i12_sobel_filter74_vt_join_q = {i_acl_24_i11_sobel_filter73_vt_const_31_q, i_acl_25_i12_sobel_filter74_vt_select_4_b};

    // i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select(BITSELECT,725)@52
    assign i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_in = i_acl_25_i12_sobel_filter74_vt_join_q[4:0];
    assign i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_b = i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_in[4:2];
    assign i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_c = i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_in[1:0];

    // i_and23_i15_sobel_filter77_join(BITJOIN,448)@52
    assign i_and23_i15_sobel_filter77_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_b, GND_q, GND_q};

    // i_and23_i15_sobel_filter77_vt_select_4(BITSELECT,92)@52
    assign i_and23_i15_sobel_filter77_vt_select_4_b = i_and23_i15_sobel_filter77_join_q[4:2];

    // i_and23_i15_sobel_filter77_vt_join(BITJOIN,91)@52
    assign i_and23_i15_sobel_filter77_vt_join_q = {i_acl_24_i11_sobel_filter73_vt_const_31_q, i_and23_i15_sobel_filter77_vt_select_4_b, i_and23_i15_sobel_filter77_vt_const_1_q};

    // i_shr24_i16_sobel_filter0_shift_narrow_x(BITSELECT,362)@52
    assign i_shr24_i16_sobel_filter0_shift_narrow_x_b = i_and23_i15_sobel_filter77_vt_join_q[4:0];

    // rightShiftStageSel2Dto2_uid637_i_shr24_i16_sobel_filter0_shift_x_merged_bit_select(BITSELECT,728)@52
    assign rightShiftStageSel2Dto2_uid637_i_shr24_i16_sobel_filter0_shift_x_merged_bit_select_b = i_shr24_i16_sobel_filter0_shift_narrow_x_b[3:2];
    assign rightShiftStageSel2Dto2_uid637_i_shr24_i16_sobel_filter0_shift_x_merged_bit_select_c = i_shr24_i16_sobel_filter0_shift_narrow_x_b[4:4];

    // rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x(MUX,642)@52 + 1
    assign rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_s = rightShiftStageSel2Dto2_uid637_i_shr24_i16_sobel_filter0_shift_x_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_s)
                1'b0 : rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q <= rightShiftStage0_uid638_i_shr24_i16_sobel_filter0_shift_x_q;
                1'b1 : rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q <= rightShiftStage1Idx1_uid641_i_shr24_i16_sobel_filter0_shift_x_q;
                default : rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_and26_i17_sobel_filter79_vt_const_31(CONSTANT,94)
    assign i_and26_i17_sobel_filter79_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // i_and26_i17_sobel_filter79_join(BITJOIN,450)@52
    assign i_and26_i17_sobel_filter79_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and23_i15_sobel_filter77_BitSelect_for_a_merged_bit_select_c};

    // i_and26_i17_sobel_filter79_vt_select_1(BITSELECT,96)@52
    assign i_and26_i17_sobel_filter79_vt_select_1_b = i_and26_i17_sobel_filter79_join_q[1:0];

    // i_and26_i17_sobel_filter79_vt_join(BITJOIN,95)@52
    assign i_and26_i17_sobel_filter79_vt_join_q = {i_and26_i17_sobel_filter79_vt_const_31_q, i_and26_i17_sobel_filter79_vt_select_1_b};

    // i_shr27_i18_sobel_filter0_shift_narrow_x(BITSELECT,368)@52
    assign i_shr27_i18_sobel_filter0_shift_narrow_x_b = i_and26_i17_sobel_filter79_vt_join_q[4:0];

    // rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x(BITSELECT,654)@52
    assign rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_in = i_shr27_i18_sobel_filter0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b = rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_in[1:0];

    // redist1_rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b_1(DELAY,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist1_rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b);
        end
    end

    // rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x(MUX,655)@53
    assign rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_s = redist1_rightShiftStageSel0Dto0_uid655_i_shr27_i18_sobel_filter0_shift_x_b_1_q;
    always @(rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_s or rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q or rightShiftStage0Idx1_uid648_i_shr27_i18_sobel_filter0_shift_x_q or rightShiftStage0Idx2_uid651_i_shr27_i18_sobel_filter0_shift_x_q or rightShiftStage0Idx3_uid654_i_shr27_i18_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_s)
            2'b00 : rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q = rightShiftStage1_uid643_i_shr24_i16_sobel_filter0_shift_x_q;
            2'b01 : rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid648_i_shr27_i18_sobel_filter0_shift_x_q;
            2'b10 : rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q = rightShiftStage0Idx2_uid651_i_shr27_i18_sobel_filter0_shift_x_q;
            2'b11 : rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q = rightShiftStage0Idx3_uid654_i_shr27_i18_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3(DELAY,733)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_delay_0 <= '0;
            redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_q <= '0;
        end
        else
        begin
            redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_delay_0 <= $unsigned(i_tobool_i1_sobel_filter52_cmp_sign_q);
            redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_q <= redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_delay_0;
        end
    end

    // i_unnamed_sobel_filter82(MUX,263)@53 + 1
    assign i_unnamed_sobel_filter82_s = redist4_i_tobool_i1_sobel_filter52_cmp_sign_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_sobel_filter82_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_sobel_filter82_s)
                1'b0 : i_unnamed_sobel_filter82_q <= rightShiftStage0_uid656_i_shr27_i18_sobel_filter0_shift_x_q;
                1'b1 : i_unnamed_sobel_filter82_q <= bgTrunc_i_sub29_i19_sobel_filter81_sel_x_b;
                default : i_unnamed_sobel_filter82_q <= 32'b0;
            endcase
        end
    end

    // c_i32_255150(CONSTANT,50)
    assign c_i32_255150_q = $unsigned(32'b00000000000000000000000011111111);

    // i_sub_i_sobel_filter83(SUB,227)@54
    assign i_sub_i_sobel_filter83_a = {1'b0, c_i32_255150_q};
    assign i_sub_i_sobel_filter83_b = {1'b0, i_unnamed_sobel_filter82_q};
    assign i_sub_i_sobel_filter83_o = $unsigned(i_sub_i_sobel_filter83_a) - $unsigned(i_sub_i_sobel_filter83_b);
    assign i_sub_i_sobel_filter83_q = i_sub_i_sobel_filter83_o[32:0];

    // bgTrunc_i_sub_i_sobel_filter83_sel_x(BITSELECT,282)@54
    assign bgTrunc_i_sub_i_sobel_filter83_sel_x_b = $unsigned(i_sub_i_sobel_filter83_q[31:0]);

    // redist10_sync_together170_aunroll_x_in_i_valid_52(DELAY,739)
    dspba_delay_ver #( .width(1), .depth(51), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together170_aunroll_x_in_i_valid_52 ( .xin(redist9_sync_together170_aunroll_x_in_i_valid_1_q), .xout(redist10_sync_together170_aunroll_x_in_i_valid_52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,403)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist10_sync_together170_aunroll_x_in_i_valid_52_q);
        end
    end

    // redist16_i_xor_sobel_filter4_q_52(DELAY,745)
    dspba_delay_ver #( .width(1), .depth(51), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_i_xor_sobel_filter4_q_52 ( .xin(redist15_i_xor_sobel_filter4_q_1_q), .xout(redist16_i_xor_sobel_filter4_q_52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_notEnable(LOGICAL,771)
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_nor(LOGICAL,772)
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_nor_q = ~ (redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_notEnable_q | redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_sticky_ena_q);

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_last(CONSTANT,768)
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_last_q = $unsigned(7'b0101111);

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmp(LOGICAL,769)
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmp_b = {1'b0, redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_q};
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmp_q = $unsigned(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_last_q == redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmp_b ? 1'b1 : 1'b0);

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmpReg(REG,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmpReg_q <= $unsigned(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmp_q);
        end
    end

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_sticky_ena(REG,773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_nor_q == 1'b1)
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_sticky_ena_q <= $unsigned(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_cmpReg_q);
        end
    end

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_enaAnd(LOGICAL,774)
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_enaAnd_q = redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_sticky_ena_q & VCC_q;

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt(COUNTER,766)
    // low=0, high=48, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i <= 6'd0;
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i == 6'd47)
            begin
                redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_eq <= 1'b0;
            end
            if (redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_eq == 1'b1)
            begin
                redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i <= $unsigned(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i) + $unsigned(6'd16);
            end
            else
            begin
                redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i <= $unsigned(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_q = redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_i[5:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_im0_shift0(BITSHIFT,707)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im0_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im0_shift0_q = i_arrayidx10_i111_sobel_filter0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_3(BITSHIFT,528)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx10_i111_sobel_filter0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_3_q = i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_im6_shift0(BITSHIFT,709)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im6_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im6_shift0_q = i_arrayidx10_i111_sobel_filter0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_2(BITSHIFT,527)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx10_i111_sobel_filter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_2_q = i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_4(BITJOIN,529)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_4_q = {i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_3_q, i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_2_q};

    // i_arrayidx10_i111_sobel_filter0_mult_x_im3_shift0(BITSHIFT,708)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im3_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im3_shift0_q = i_arrayidx10_i111_sobel_filter0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_0(BITSHIFT,525)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx10_i111_sobel_filter0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_0_q = i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_im9_shift0(BITSHIFT,710)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im9_shift0_qint = { i_arrayidx10_i111_sobel_filter0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx10_i111_sobel_filter0_mult_x_im9_shift0_q = i_arrayidx10_i111_sobel_filter0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_1(BITJOIN,526)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_1_q = {i_arrayidx10_i111_sobel_filter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx10_i111_sobel_filter0_mult_x_im9_shift0_q}};

    // i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0(ADD,530)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_1_q};
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx10_i111_sobel_filter0_mult_x_sums_join_4_q};
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_q = i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx10_i111_sobel_filter0_mult_extender_x(BITJOIN,304)@3
    assign i_arrayidx10_i111_sobel_filter0_mult_extender_x_q = {i_arrayidx10_i111_sobel_filter0_mult_multconst_x_q, i_arrayidx10_i111_sobel_filter0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx10_i111_sobel_filter0_trunc_sel_x(BITSELECT,306)@3
    assign i_arrayidx10_i111_sobel_filter0_trunc_sel_x_b = i_arrayidx10_i111_sobel_filter0_mult_extender_x_q[63:0];

    // c_sobel_filter_contour_img_cpu_pmem(CONSTANT,60)
    assign c_sobel_filter_contour_img_cpu_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx10_i111_sobel_filter0_add_x(ADD,298)@3
    assign i_arrayidx10_i111_sobel_filter0_add_x_a = {1'b0, c_sobel_filter_contour_img_cpu_pmem_q};
    assign i_arrayidx10_i111_sobel_filter0_add_x_b = {1'b0, i_arrayidx10_i111_sobel_filter0_trunc_sel_x_b};
    assign i_arrayidx10_i111_sobel_filter0_add_x_o = $unsigned(i_arrayidx10_i111_sobel_filter0_add_x_a) + $unsigned(i_arrayidx10_i111_sobel_filter0_add_x_b);
    assign i_arrayidx10_i111_sobel_filter0_add_x_q = i_arrayidx10_i111_sobel_filter0_add_x_o[64:0];

    // i_arrayidx10_i111_sobel_filter0_dupName_0_trunc_sel_x(BITSELECT,307)@3
    assign i_arrayidx10_i111_sobel_filter0_dupName_0_trunc_sel_x_b = i_arrayidx10_i111_sobel_filter0_add_x_q[63:0];

    // i_arrayidx10_i111_sobel_filter84_vt_select_63(BITSELECT,109)@3
    assign i_arrayidx10_i111_sobel_filter84_vt_select_63_b = i_arrayidx10_i111_sobel_filter0_dupName_0_trunc_sel_x_b[63:2];

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_inputreg0(DELAY,764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_inputreg0_q <= '0;
        end
        else
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_inputreg0_q <= $unsigned(i_arrayidx10_i111_sobel_filter84_vt_select_63_b);
        end
    end

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_wraddr(REG,767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_wraddr_q <= $unsigned(6'b110000);
        end
        else
        begin
            redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_wraddr_q <= $unsigned(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_q);
        end
    end

    // redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem(DUALMEM,765)
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_ia = $unsigned(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_inputreg0_q);
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_aa = redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_wraddr_q;
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_ab = redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_rdcnt_q;
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(62),
        .widthad_a(6),
        .numwords_a(49),
        .width_b(62),
        .widthad_b(6),
        .numwords_b(49),
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
    ) redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_dmem (
        .clocken1(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_reset0),
        .clock1(clock),
        .address_a(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_aa),
        .data_a(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_ab),
        .q_b(redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_iq),
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
    assign redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_q = redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_iq[61:0];

    // i_arrayidx10_i111_sobel_filter84_vt_join(BITJOIN,108)@54
    assign i_arrayidx10_i111_sobel_filter84_vt_join_q = {redist32_i_arrayidx10_i111_sobel_filter84_vt_select_63_b_51_mem_q, i_and23_i15_sobel_filter77_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_19_sobel_filter85(BLACKBOX,145)@54
    // out out_memdep_19_sobel_filter_avm_address@20000000
    // out out_memdep_19_sobel_filter_avm_burstcount@20000000
    // out out_memdep_19_sobel_filter_avm_byteenable@20000000
    // out out_memdep_19_sobel_filter_avm_enable@20000000
    // out out_memdep_19_sobel_filter_avm_read@20000000
    // out out_memdep_19_sobel_filter_avm_write@20000000
    // out out_memdep_19_sobel_filter_avm_writedata@20000000
    // out out_o_stall@55
    // out out_o_valid@55
    // out out_o_writeack@55
    sobel_filter_i_llvm_fpga_mem_memdep_19_0 thei_llvm_fpga_mem_memdep_19_sobel_filter85 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx10_i111_sobel_filter84_vt_join_q),
        .in_i_predicate(redist16_i_xor_sobel_filter4_q_52_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(bgTrunc_i_sub_i_sobel_filter83_sel_x_b),
        .in_memdep_19_sobel_filter_avm_readdata(in_memdep_19_sobel_filter_avm_readdata),
        .in_memdep_19_sobel_filter_avm_readdatavalid(in_memdep_19_sobel_filter_avm_readdatavalid),
        .in_memdep_19_sobel_filter_avm_waitrequest(in_memdep_19_sobel_filter_avm_waitrequest),
        .in_memdep_19_sobel_filter_avm_writeack(in_memdep_19_sobel_filter_avm_writeack),
        .out_memdep_19_sobel_filter_avm_address(i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_address),
        .out_memdep_19_sobel_filter_avm_burstcount(i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_burstcount),
        .out_memdep_19_sobel_filter_avm_byteenable(i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_byteenable),
        .out_memdep_19_sobel_filter_avm_enable(i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_enable),
        .out_memdep_19_sobel_filter_avm_read(i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_read),
        .out_memdep_19_sobel_filter_avm_write(i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_write),
        .out_memdep_19_sobel_filter_avm_writedata(i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,292)
    assign out_memdep_19_sobel_filter_avm_address = i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_address;
    assign out_memdep_19_sobel_filter_avm_enable = i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_enable;
    assign out_memdep_19_sobel_filter_avm_read = i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_read;
    assign out_memdep_19_sobel_filter_avm_write = i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_write;
    assign out_memdep_19_sobel_filter_avm_writedata = i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_writedata;
    assign out_memdep_19_sobel_filter_avm_byteenable = i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_byteenable;
    assign out_memdep_19_sobel_filter_avm_burstcount = i_llvm_fpga_mem_memdep_19_sobel_filter85_out_memdep_19_sobel_filter_avm_burstcount;

    // valid_fanout_reg0(REG,398)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together170_aunroll_x_in_i_valid_52_q);
        end
    end

    // redist5_valid_fanout_reg0_q_1(DELAY,734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist5_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // valid_fanout_reg9(REG,407)@1 + 1
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

    // valid_fanout_reg10(REG,408)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist9_sync_together170_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist28_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_2(DELAY,757)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_2_q <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102(BLACKBOX,157)@3
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    sobel_filter_i_llvm_fpga_push_i1_notcmp131174_push54_0 thei_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102 (
        .in_data_in(redist23_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_1_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_feedback_stall_out_54),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together170_aunroll_x_in_c0_eni3459_3_tpl_1(DELAY,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together170_aunroll_x_in_c0_eni3459_3_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together170_aunroll_x_in_c0_eni3459_3_tpl_1_q <= $unsigned(in_c0_eni3459_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101(BLACKBOX,151)@2
    // out out_feedback_stall_out_54@20000000
    sobel_filter_i_llvm_fpga_pop_i1_notcmp131174_pop54_0 thei_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101 (
        .in_data_in(redist8_sync_together170_aunroll_x_in_c0_eni3459_3_tpl_1_q),
        .in_dir(redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_notcmp131174_push54_sobel_filter102_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_1(DELAY,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out);
        end
    end

    // redist24_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_53(DELAY,753)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_53 ( .xin(redist23_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_1_q), .xout(redist24_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg7(REG,405)@1 + 1
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

    // valid_fanout_reg8(REG,406)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist9_sync_together170_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100(BLACKBOX,155)@3
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    sobel_filter_i_llvm_fpga_push_i1_exitcond45167_push53_0 thei_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100 (
        .in_data_in(redist25_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_feedback_stall_out_53),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together170_aunroll_x_in_c0_eni3459_2_tpl_1(DELAY,736)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together170_aunroll_x_in_c0_eni3459_2_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together170_aunroll_x_in_c0_eni3459_2_tpl_1_q <= $unsigned(in_c0_eni3459_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99(BLACKBOX,150)@2
    // out out_feedback_stall_out_53@20000000
    sobel_filter_i_llvm_fpga_pop_i1_exitcond45167_pop53_0 thei_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99 (
        .in_data_in(redist7_sync_together170_aunroll_x_in_c0_eni3459_2_tpl_1_q),
        .in_dir(redist6_sync_together170_aunroll_x_in_c0_eni3459_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_exitcond45167_push53_sobel_filter100_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_1(DELAY,754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out);
        end
    end

    // redist26_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_53(DELAY,755)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_53 ( .xin(redist25_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_1_q), .xout(redist26_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_sobel_filter98(LOGICAL,161)@2 + 1
    assign i_masked_sobel_filter98_qi = i_notcmp_sobel_filter91_q & i_first_cleanup_sobel_filter3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_sobel_filter98_delay ( .xin(i_masked_sobel_filter98_qi), .xout(i_masked_sobel_filter98_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_masked_sobel_filter98_q_53(DELAY,751)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_masked_sobel_filter98_q_53 ( .xin(i_masked_sobel_filter98_q), .xout(redist22_i_masked_sobel_filter98_q_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_toi1_intcast17_sobel_filter16_sel_x(BITSELECT,386)@7
    assign i_toi1_intcast17_sobel_filter16_sel_x_b = i_llvm_fpga_mem_unnamed_sobel_filter15_sobel_filter15_out_o_readdata[0:0];

    // redist12_i_toi1_intcast17_sobel_filter16_sel_x_b_48(DELAY,741)
    dspba_delay_ver #( .width(1), .depth(48), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_toi1_intcast17_sobel_filter16_sel_x_b_48 ( .xin(i_toi1_intcast17_sobel_filter16_sel_x_b), .xout(redist12_i_toi1_intcast17_sobel_filter16_sel_x_b_48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_toi1_intcast_sobel_filter12_sel_x(BITSELECT,387)@7
    assign i_toi1_intcast_sobel_filter12_sel_x_b = i_llvm_fpga_mem_unnamed_sobel_filter14_sobel_filter11_out_o_readdata[0:0];

    // redist11_i_toi1_intcast_sobel_filter12_sel_x_b_48(DELAY,740)
    dspba_delay_ver #( .width(1), .depth(48), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_i_toi1_intcast_sobel_filter12_sel_x_b_48 ( .xin(i_toi1_intcast_sobel_filter12_sel_x_b), .xout(redist11_i_toi1_intcast_sobel_filter12_sel_x_b_48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_54(DELAY,758)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_54 ( .xin(redist28_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_2_q), .xout(redist29_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_54_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,392)@55
    assign out_c0_exi6469_0_tpl = GND_q;
    assign out_c0_exi6469_1_tpl = redist29_i_llvm_fpga_pipeline_keep_going_sobel_filter6_out_data_out_54_q;
    assign out_c0_exi6469_2_tpl = redist11_i_toi1_intcast_sobel_filter12_sel_x_b_48_q;
    assign out_c0_exi6469_3_tpl = redist12_i_toi1_intcast17_sobel_filter16_sel_x_b_48_q;
    assign out_c0_exi6469_4_tpl = redist22_i_masked_sobel_filter98_q_53_q;
    assign out_c0_exi6469_5_tpl = redist26_i_llvm_fpga_pop_i1_exitcond45167_pop53_sobel_filter99_out_data_out_53_q;
    assign out_c0_exi6469_6_tpl = redist24_i_llvm_fpga_pop_i1_notcmp131174_pop54_sobel_filter101_out_data_out_53_q;
    assign out_o_valid = redist5_valid_fanout_reg0_q_1_q;
    assign out_unnamed_sobel_filter3 = GND_q;

endmodule
