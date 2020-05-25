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

// SystemVerilog created from ff_snow_horizontal_compose97i_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifodata,
    input wire [0:0] in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire [63:0] in_memdep_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_memdep_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [32:0] out_intel_reserved_ffwd_5_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_134_q;
    wire [31:0] c_i32_236_q;
    wire [31:0] c_i32_237_q;
    wire [32:0] c_i33_138_q;
    wire [0:0] ff_snow_horizontal_compose97i_B1_start_merge_reg_out_stall_out;
    wire [0:0] ff_snow_horizontal_compose97i_B1_start_merge_reg_out_valid_out;
    wire [32:0] i_add2_ff_snow_horizontal_compose97i27_a;
    wire [32:0] i_add2_ff_snow_horizontal_compose97i27_b;
    logic [32:0] i_add2_ff_snow_horizontal_compose97i27_o;
    wire [32:0] i_add2_ff_snow_horizontal_compose97i27_q;
    wire [32:0] i_add_ff_snow_horizontal_compose97i7_a;
    wire [32:0] i_add_ff_snow_horizontal_compose97i7_b;
    logic [32:0] i_add_ff_snow_horizontal_compose97i7_o;
    wire [32:0] i_add_ff_snow_horizontal_compose97i7_q;
    wire [33:0] i_cmp96_ff_snow_horizontal_compose97i9_a;
    wire [33:0] i_cmp96_ff_snow_horizontal_compose97i9_b;
    logic [33:0] i_cmp96_ff_snow_horizontal_compose97i9_o;
    wire [0:0] i_cmp96_ff_snow_horizontal_compose97i9_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_valid_out;
    wire [32:0] i_mul_add47_ff_snow_horizontal_compose97i25_a;
    wire [32:0] i_mul_add47_ff_snow_horizontal_compose97i25_b;
    logic [32:0] i_mul_add47_ff_snow_horizontal_compose97i25_o;
    wire [32:0] i_mul_add47_ff_snow_horizontal_compose97i25_q;
    wire [0:0] i_smax_ff_snow_horizontal_compose97i18_s;
    reg [31:0] i_smax_ff_snow_horizontal_compose97i18_q;
    wire [31:0] i_smax_ff_snow_horizontal_compose97i18_vt_join_q;
    wire [30:0] i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b;
    wire [32:0] i_sub_ff_snow_horizontal_compose97i29_a;
    wire [32:0] i_sub_ff_snow_horizontal_compose97i29_b;
    logic [32:0] i_sub_ff_snow_horizontal_compose97i29_o;
    wire [32:0] i_sub_ff_snow_horizontal_compose97i29_q;
    wire [33:0] i_unnamed_ff_snow_horizontal_compose97i13_a;
    wire [33:0] i_unnamed_ff_snow_horizontal_compose97i13_b;
    logic [33:0] i_unnamed_ff_snow_horizontal_compose97i13_o;
    wire [0:0] i_unnamed_ff_snow_horizontal_compose97i13_c;
    wire [32:0] i_unnamed_ff_snow_horizontal_compose97i20_a;
    wire [32:0] i_unnamed_ff_snow_horizontal_compose97i20_b;
    logic [32:0] i_unnamed_ff_snow_horizontal_compose97i20_o;
    wire [32:0] i_unnamed_ff_snow_horizontal_compose97i20_q;
    wire [32:0] i_unnamed_ff_snow_horizontal_compose97i22_vt_join_q;
    wire [31:0] i_unnamed_ff_snow_horizontal_compose97i22_vt_select_31_b;
    wire [31:0] i_unnamed_ff_snow_horizontal_compose97i23_vt_join_q;
    wire [30:0] i_unnamed_ff_snow_horizontal_compose97i23_vt_select_31_b;
    wire [33:0] i_unnamed_ff_snow_horizontal_compose97i24_a;
    wire [33:0] i_unnamed_ff_snow_horizontal_compose97i24_b;
    logic [33:0] i_unnamed_ff_snow_horizontal_compose97i24_o;
    wire [33:0] i_unnamed_ff_snow_horizontal_compose97i24_q;
    wire [31:0] bgTrunc_i_add2_ff_snow_horizontal_compose97i27_sel_x_b;
    wire [31:0] bgTrunc_i_add_ff_snow_horizontal_compose97i7_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b;
    wire [31:0] bgTrunc_i_sub_ff_snow_horizontal_compose97i29_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_ff_snow_horizontal_compose97i20_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_ff_snow_horizontal_compose97i24_sel_x_b;
    wire [31:0] c_i32_335_recast_x_q;
    wire [64:0] i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [60:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_multconst_x_q;
    wire [63:0] i_arrayidx1_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx1_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_ff_snow_horizontal_compose97i16_sel_x_b;
    wire [0:0] i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready;
    wire [0:0] i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_pipeline_valid_out;
    wire [32:0] i_unnamed_ff_snow_horizontal_compose97i22_sel_x_b;
    wire [35:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [0:0] xMSB_uid181_i_shr3_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [1:0] seMsb_to2_uid183_in;
    wire [1:0] seMsb_to2_uid183_b;
    wire [29:0] rightShiftStage0Idx1Rng2_uid184_i_shr3_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid185_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid189_i_shr5_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid191_i_shr5_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid192_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid196_i_shr_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid198_i_shr_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid199_i_shr_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid206_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid206_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid207_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [11:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    reg [63:0] redist0_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl_1_0_q;
    wire [0:0] redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_in;
    wire redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_in;
    wire redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_data_in;
    wire [0:0] redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_out;
    wire redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_out;
    wire redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_data_out;
    reg [31:0] redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q;
    reg [30:0] redist3_i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b_1_0_q;
    reg [31:0] redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_q;
    wire [0:0] redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_in;
    wire redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_in;
    wire redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_data_in;
    wire [0:0] redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_out;
    wire redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_out;
    wire redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_b;
    wire [159:0] bubble_join_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d;
    wire [63:0] bubble_join_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_q;
    wire [63:0] bubble_select_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_b;
    wire [0:0] bubble_join_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_q;
    wire [0:0] bubble_select_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_b;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_or0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_V0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_V1;
    wire [0:0] SE_i_add2_ff_snow_horizontal_compose97i27_wireValid;
    wire [0:0] SE_i_add2_ff_snow_horizontal_compose97i27_and0;
    wire [0:0] SE_i_add2_ff_snow_horizontal_compose97i27_and1;
    wire [0:0] SE_i_add2_ff_snow_horizontal_compose97i27_backStall;
    wire [0:0] SE_i_add2_ff_snow_horizontal_compose97i27_V0;
    reg [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_0;
    reg [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_1;
    reg [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_2;
    reg [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_3;
    reg [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_4;
    reg [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_5;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_0;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_1;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_2;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_3;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_4;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_5;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_or0;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_or1;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_or2;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_or3;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_or4;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_backStall;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_V0;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_V1;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_V2;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_V3;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_V4;
    wire [0:0] SE_i_cmp96_ff_snow_horizontal_compose97i9_V5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_V0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireValid;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireStall;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_StallValid;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_toReg0;
    reg [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_toReg1;
    reg [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg1;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed1;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_or0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_backStall;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_V0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_V1;
    reg [0:0] SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_V0;
    reg [0:0] SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_R_v_0;
    wire [0:0] SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_v_s_0;
    wire [0:0] SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_s_tv_0;
    wire [0:0] SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backEN;
    wire [0:0] SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backStall;
    wire [0:0] SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_V0;
    wire [0:0] SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_backStall;
    wire [0:0] SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and3;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and4;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and5;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and6;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x(BITJOIN,247)
    assign bubble_join_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_q = {i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x(BITSELECT,248)
    assign bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_q[159:128]);

    // c_i32_335_recast_x(CONSTANT,99)
    assign c_i32_335_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_cmp96_ff_snow_horizontal_compose97i9(COMPARE,25)@2 + 1
    assign i_cmp96_ff_snow_horizontal_compose97i9_a = $unsigned({{2{c_i32_335_recast_x_q[31]}}, c_i32_335_recast_x_q});
    assign i_cmp96_ff_snow_horizontal_compose97i9_b = $unsigned({{2{bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d[31]}}, bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp96_ff_snow_horizontal_compose97i9_o <= 34'b0;
        end
        else if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b1)
        begin
            i_cmp96_ff_snow_horizontal_compose97i9_o <= $unsigned($signed(i_cmp96_ff_snow_horizontal_compose97i9_a) - $signed(i_cmp96_ff_snow_horizontal_compose97i9_b));
        end
    end
    assign i_cmp96_ff_snow_horizontal_compose97i9_c[0] = i_cmp96_ff_snow_horizontal_compose97i9_o[33];

    // redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo(STALLFIFO,226)
    assign redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_in = SE_i_cmp96_ff_snow_horizontal_compose97i9_V2;
    assign redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_in = SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_backStall;
    assign redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_data_in = i_cmp96_ff_snow_horizontal_compose97i9_c;
    assign redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_in_bitsignaltemp = redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_in[0];
    assign redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_in_bitsignaltemp = redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_in[0];
    assign redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_out[0] = redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_out_bitsignaltemp;
    assign redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_out[0] = redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo (
        .valid_in(redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp96_ff_snow_horizontal_compose97i9_c),
        .valid_out(redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo(STALLENABLE,345)
    // Valid signal propagation
    assign SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_V0 = SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_stall_out | ~ (SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_wireValid = redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_valid_out;

    // bubble_join_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo(BITJOIN,254)
    assign bubble_join_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_q = redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_data_out;

    // bubble_select_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo(BITSELECT,255)
    assign bubble_select_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_b = $unsigned(bubble_join_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_q[0:0]);

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15(BLACKBOX,28)@41
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bubble_select_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // xMSB_uid181_i_shr3_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,180)@36
    assign xMSB_uid181_i_shr3_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add2_ff_snow_horizontal_compose97i27_sel_x_b[31:31]);

    // seMsb_to2_uid183(BITSELECT,182)@36
    assign seMsb_to2_uid183_in = $unsigned({{1{xMSB_uid181_i_shr3_ff_snow_horizontal_compose97i0_shift_x_b[0]}}, xMSB_uid181_i_shr3_ff_snow_horizontal_compose97i0_shift_x_b});
    assign seMsb_to2_uid183_b = $unsigned(seMsb_to2_uid183_in[1:0]);

    // rightShiftStage0Idx1Rng2_uid184_i_shr3_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,183)@36
    assign rightShiftStage0Idx1Rng2_uid184_i_shr3_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add2_ff_snow_horizontal_compose97i27_sel_x_b[31:2]);

    // rightShiftStage0Idx1_uid185_i_shr3_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,184)@36
    assign rightShiftStage0Idx1_uid185_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q = {seMsb_to2_uid183_b, rightShiftStage0Idx1Rng2_uid184_i_shr3_ff_snow_horizontal_compose97i0_shift_x_b};

    // c_i32_236(CONSTANT,11)
    assign c_i32_236_q = $unsigned(32'b00000000000000000000000000000010);

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_multconst_x(CONSTANT,121)
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // xMSB_uid196_i_shr_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,195)@2
    assign xMSB_uid196_i_shr_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add_ff_snow_horizontal_compose97i7_sel_x_b[31:31]);

    // rightShiftStage0Idx1Rng1_uid198_i_shr_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,197)@2
    assign rightShiftStage0Idx1Rng1_uid198_i_shr_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add_ff_snow_horizontal_compose97i7_sel_x_b[31:1]);

    // rightShiftStage0Idx1_uid199_i_shr_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,198)@2
    assign rightShiftStage0Idx1_uid199_i_shr_ff_snow_horizontal_compose97i0_shift_x_q = {xMSB_uid196_i_shr_ff_snow_horizontal_compose97i0_shift_x_b, rightShiftStage0Idx1Rng1_uid198_i_shr_ff_snow_horizontal_compose97i0_shift_x_b};

    // c_i32_134(CONSTANT,10)
    assign c_i32_134_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add_ff_snow_horizontal_compose97i7(ADD,24)@2
    assign i_add_ff_snow_horizontal_compose97i7_a = {1'b0, bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d};
    assign i_add_ff_snow_horizontal_compose97i7_b = {1'b0, c_i32_134_q};
    assign i_add_ff_snow_horizontal_compose97i7_o = $unsigned(i_add_ff_snow_horizontal_compose97i7_a) + $unsigned(i_add_ff_snow_horizontal_compose97i7_b);
    assign i_add_ff_snow_horizontal_compose97i7_q = i_add_ff_snow_horizontal_compose97i7_o[32:0];

    // bgTrunc_i_add_ff_snow_horizontal_compose97i7_sel_x(BITSELECT,93)@2
    assign bgTrunc_i_add_ff_snow_horizontal_compose97i7_sel_x_b = i_add_ff_snow_horizontal_compose97i7_q[31:0];

    // rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x(MUX,200)@2 + 1
    assign rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
        end
        else if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b1)
        begin
            unique case (rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_s)
                1'b0 : rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q <= bgTrunc_i_add_ff_snow_horizontal_compose97i7_sel_x_b;
                1'b1 : rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q <= rightShiftStage0Idx1_uid199_i_shr_ff_snow_horizontal_compose97i0_shift_x_q;
                default : rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_idxprom_ff_snow_horizontal_compose97i16_sel_x(BITSELECT,124)@3
    assign i_idxprom_ff_snow_horizontal_compose97i16_sel_x_b = $unsigned({{32{rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q[31]}}, rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q[31:0]});

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,214)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom_ff_snow_horizontal_compose97i16_sel_x_b[63:54];
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom_ff_snow_horizontal_compose97i16_sel_x_b[53:36];
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom_ff_snow_horizontal_compose97i16_sel_x_b[35:18];
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom_ff_snow_horizontal_compose97i16_sel_x_b[17:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,210)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,177)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,212)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,176)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,178)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,211)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,174)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,213)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,175)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,179)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,120)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx1_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx1_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx1_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,122)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx1_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // redist0_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl_1_0(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b1)
        begin
            redist0_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl_1_0_q <= $unsigned(bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_b);
        end
    end

    // i_arrayidx1_ff_snow_horizontal_compose97i0_add_x(ADD,114)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, redist0_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl_1_0_q};
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx1_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx1_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,123)@3
    assign i_arrayidx1_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx1_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21(BLACKBOX,36)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000007Zrizontal_compose97i0 thei_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_backStall),
        .in_i_valid(SE_i_cmp96_ff_snow_horizontal_compose97i9_V5),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdata(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_waitrequest(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writeack(in_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_valid),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write),
        .out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21(STALLENABLE,278)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_backStall = SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_wireValid = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_valid;

    // SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0(STALLENABLE,341)
    // Valid signal propagation
    assign SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_V0 = SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_s_tv_0 = SE_i_add2_ff_snow_horizontal_compose97i27_backStall & SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backEN = ~ (SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_v_s_0 = SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_V0;
    // Backward Stall generation
    assign SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backStall = ~ (SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_R_v_0 <= SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_R_v_0 & SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_R_v_0 <= SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // leftShiftStage0Idx1Rng1_uid206_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,205)@35
    assign leftShiftStage0Idx1Rng1_uid206_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in = bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid206_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid206_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid207_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,206)@35
    assign leftShiftStage0Idx1_uid207_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid206_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(MUX,208)@35
    assign leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_b or leftShiftStage0Idx1_uid207_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_b;
            1'b1 : leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid207_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_snow_horizontal_compose97i23_vt_select_31(BITSELECT,52)@35
    assign i_unnamed_ff_snow_horizontal_compose97i23_vt_select_31_b = leftShiftStage0_uid209_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_unnamed_ff_snow_horizontal_compose97i23_vt_join(BITJOIN,51)@35
    assign i_unnamed_ff_snow_horizontal_compose97i23_vt_join_q = {i_unnamed_ff_snow_horizontal_compose97i23_vt_select_31_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21(BITJOIN,240)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_q = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21(BITSELECT,241)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_q[31:0]);

    // i_mul_add47_ff_snow_horizontal_compose97i25(ADD,38)@35
    assign i_mul_add47_ff_snow_horizontal_compose97i25_a = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_b};
    assign i_mul_add47_ff_snow_horizontal_compose97i25_b = {1'b0, i_unnamed_ff_snow_horizontal_compose97i23_vt_join_q};
    assign i_mul_add47_ff_snow_horizontal_compose97i25_o = $unsigned(i_mul_add47_ff_snow_horizontal_compose97i25_a) + $unsigned(i_mul_add47_ff_snow_horizontal_compose97i25_b);
    assign i_mul_add47_ff_snow_horizontal_compose97i25_q = i_mul_add47_ff_snow_horizontal_compose97i25_o[32:0];

    // bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x(BITSELECT,94)@35
    assign bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b = i_mul_add47_ff_snow_horizontal_compose97i25_q[31:0];

    // redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b);
        end
    end

    // i_add2_ff_snow_horizontal_compose97i27(ADD,23)@36
    assign i_add2_ff_snow_horizontal_compose97i27_a = {1'b0, redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q};
    assign i_add2_ff_snow_horizontal_compose97i27_b = {1'b0, c_i32_236_q};
    assign i_add2_ff_snow_horizontal_compose97i27_o = $unsigned(i_add2_ff_snow_horizontal_compose97i27_a) + $unsigned(i_add2_ff_snow_horizontal_compose97i27_b);
    assign i_add2_ff_snow_horizontal_compose97i27_q = i_add2_ff_snow_horizontal_compose97i27_o[32:0];

    // bgTrunc_i_add2_ff_snow_horizontal_compose97i27_sel_x(BITSELECT,92)@36
    assign bgTrunc_i_add2_ff_snow_horizontal_compose97i27_sel_x_b = i_add2_ff_snow_horizontal_compose97i27_q[31:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x(MUX,186)@36
    assign rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_s or bgTrunc_i_add2_ff_snow_horizontal_compose97i27_sel_x_b or rightShiftStage0Idx1_uid185_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q = bgTrunc_i_add2_ff_snow_horizontal_compose97i27_sel_x_b;
            1'b1 : rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0Idx1_uid185_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4(BLACKBOX,35)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000006Zrizontal_compose97i0 thei_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4 (
        .in_flush(in_flush),
        .in_i_address(redist0_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl_1_0_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_backStall),
        .in_i_valid(SE_i_cmp96_ff_snow_horizontal_compose97i9_V1),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdata(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_waitrequest(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writeack(in_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_valid),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write),
        .out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4(STALLENABLE,276)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_backStall = SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_wireValid = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_valid;

    // SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0(STALLENABLE,343)
    // Valid signal propagation
    assign SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_V0 = SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_s_tv_0 = SE_i_add2_ff_snow_horizontal_compose97i27_backStall & SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backEN = ~ (SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_v_s_0 = SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_V0;
    // Backward Stall generation
    assign SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backStall = ~ (SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backEN == 1'b0)
            begin
                SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_R_v_0 <= SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_R_v_0 & SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_R_v_0 <= SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4(BITJOIN,237)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_q = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4(BITSELECT,238)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_q[31:0]);

    // redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_backEN == 1'b1)
        begin
            redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_b);
        end
    end

    // i_sub_ff_snow_horizontal_compose97i29(SUB,43)@36
    assign i_sub_ff_snow_horizontal_compose97i29_a = {1'b0, redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_q};
    assign i_sub_ff_snow_horizontal_compose97i29_b = {1'b0, rightShiftStage0_uid187_i_shr3_ff_snow_horizontal_compose97i0_shift_x_q};
    assign i_sub_ff_snow_horizontal_compose97i29_o = $unsigned(i_sub_ff_snow_horizontal_compose97i29_a) - $unsigned(i_sub_ff_snow_horizontal_compose97i29_b);
    assign i_sub_ff_snow_horizontal_compose97i29_q = i_sub_ff_snow_horizontal_compose97i29_o[32:0];

    // bgTrunc_i_sub_ff_snow_horizontal_compose97i29_sel_x(BITSELECT,95)@36
    assign bgTrunc_i_sub_ff_snow_horizontal_compose97i29_sel_x_b = $unsigned(i_sub_ff_snow_horizontal_compose97i29_q[31:0]);

    // i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30(BLACKBOX,34)@36
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_o_writeack@41
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall),
        .in_i_valid(SE_i_add2_ff_snow_horizontal_compose97i27_V0),
        .in_i_writedata(bgTrunc_i_sub_ff_snow_horizontal_compose97i29_sel_x_b),
        .in_memdep_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_lsu_memdep_o_active),
        .out_memdep_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11(STALLENABLE,264)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg(STALLFIFO,392)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17(BLACKBOX,30)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000002Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(rightShiftStage0_uid201_i_shr_ff_snow_horizontal_compose97i0_shift_x_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_backStall),
        .in_valid_in(SE_i_cmp96_ff_snow_horizontal_compose97i9_V3),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17(STALLENABLE,266)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg(STALLFIFO,393)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_138(CONSTANT,13)
    assign c_i33_138_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_237(CONSTANT,12)
    assign c_i32_237_q = $unsigned(32'b11111111111111111111111111111110);

    // xMSB_uid189_i_shr5_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,188)@2
    assign xMSB_uid189_i_shr5_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d[31:31]);

    // rightShiftStage0Idx1Rng1_uid191_i_shr5_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,190)@2
    assign rightShiftStage0Idx1Rng1_uid191_i_shr5_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d[31:1]);

    // rightShiftStage0Idx1_uid192_i_shr5_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,191)@2
    assign rightShiftStage0Idx1_uid192_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q = {xMSB_uid189_i_shr5_ff_snow_horizontal_compose97i0_shift_x_b, rightShiftStage0Idx1Rng1_uid191_i_shr5_ff_snow_horizontal_compose97i0_shift_x_b};

    // rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x(MUX,193)@2
    assign rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d or rightShiftStage0Idx1_uid192_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d;
            1'b1 : rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0Idx1_uid192_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_snow_horizontal_compose97i13(COMPARE,44)@2
    assign i_unnamed_ff_snow_horizontal_compose97i13_a = $unsigned({{2{c_i32_236_q[31]}}, c_i32_236_q});
    assign i_unnamed_ff_snow_horizontal_compose97i13_b = $unsigned({{2{rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q[31]}}, rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q});
    assign i_unnamed_ff_snow_horizontal_compose97i13_o = $unsigned($signed(i_unnamed_ff_snow_horizontal_compose97i13_a) - $signed(i_unnamed_ff_snow_horizontal_compose97i13_b));
    assign i_unnamed_ff_snow_horizontal_compose97i13_c[0] = i_unnamed_ff_snow_horizontal_compose97i13_o[33];

    // i_smax_ff_snow_horizontal_compose97i18(MUX,39)@2
    assign i_smax_ff_snow_horizontal_compose97i18_s = i_unnamed_ff_snow_horizontal_compose97i13_c;
    always @(i_smax_ff_snow_horizontal_compose97i18_s or c_i32_236_q or rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (i_smax_ff_snow_horizontal_compose97i18_s)
            1'b0 : i_smax_ff_snow_horizontal_compose97i18_q = c_i32_236_q;
            1'b1 : i_smax_ff_snow_horizontal_compose97i18_q = rightShiftStage0_uid194_i_shr5_ff_snow_horizontal_compose97i0_shift_x_q;
            default : i_smax_ff_snow_horizontal_compose97i18_q = 32'b0;
        endcase
    end

    // i_smax_ff_snow_horizontal_compose97i18_vt_select_30(BITSELECT,42)@2
    assign i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b = i_smax_ff_snow_horizontal_compose97i18_q[30:0];

    // redist3_i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b_1_0(REG,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b1)
        begin
            redist3_i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b_1_0_q <= $unsigned(i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b);
        end
    end

    // i_smax_ff_snow_horizontal_compose97i18_vt_join(BITJOIN,41)@3
    assign i_smax_ff_snow_horizontal_compose97i18_vt_join_q = {GND_q, redist3_i_smax_ff_snow_horizontal_compose97i18_vt_select_30_b_1_0_q};

    // i_unnamed_ff_snow_horizontal_compose97i20(ADD,45)@3
    assign i_unnamed_ff_snow_horizontal_compose97i20_a = {1'b0, i_smax_ff_snow_horizontal_compose97i18_vt_join_q};
    assign i_unnamed_ff_snow_horizontal_compose97i20_b = {1'b0, c_i32_237_q};
    assign i_unnamed_ff_snow_horizontal_compose97i20_o = $unsigned(i_unnamed_ff_snow_horizontal_compose97i20_a) + $unsigned(i_unnamed_ff_snow_horizontal_compose97i20_b);
    assign i_unnamed_ff_snow_horizontal_compose97i20_q = i_unnamed_ff_snow_horizontal_compose97i20_o[32:0];

    // bgTrunc_i_unnamed_ff_snow_horizontal_compose97i20_sel_x(BITSELECT,96)@3
    assign bgTrunc_i_unnamed_ff_snow_horizontal_compose97i20_sel_x_b = i_unnamed_ff_snow_horizontal_compose97i20_q[31:0];

    // i_unnamed_ff_snow_horizontal_compose97i22_sel_x(BITSELECT,149)@3
    assign i_unnamed_ff_snow_horizontal_compose97i22_sel_x_b = {1'b0, bgTrunc_i_unnamed_ff_snow_horizontal_compose97i20_sel_x_b[31:0]};

    // i_unnamed_ff_snow_horizontal_compose97i22_vt_select_31(BITSELECT,49)@3
    assign i_unnamed_ff_snow_horizontal_compose97i22_vt_select_31_b = i_unnamed_ff_snow_horizontal_compose97i22_sel_x_b[31:0];

    // i_unnamed_ff_snow_horizontal_compose97i22_vt_join(BITJOIN,48)@3
    assign i_unnamed_ff_snow_horizontal_compose97i22_vt_join_q = {GND_q, i_unnamed_ff_snow_horizontal_compose97i22_vt_select_31_b};

    // i_unnamed_ff_snow_horizontal_compose97i24(ADD,53)@3
    assign i_unnamed_ff_snow_horizontal_compose97i24_a = {1'b0, i_unnamed_ff_snow_horizontal_compose97i22_vt_join_q};
    assign i_unnamed_ff_snow_horizontal_compose97i24_b = {1'b0, c_i33_138_q};
    assign i_unnamed_ff_snow_horizontal_compose97i24_o = $unsigned(i_unnamed_ff_snow_horizontal_compose97i24_a) + $unsigned(i_unnamed_ff_snow_horizontal_compose97i24_b);
    assign i_unnamed_ff_snow_horizontal_compose97i24_q = i_unnamed_ff_snow_horizontal_compose97i24_o[33:0];

    // bgTrunc_i_unnamed_ff_snow_horizontal_compose97i24_sel_x(BITSELECT,97)@3
    assign bgTrunc_i_unnamed_ff_snow_horizontal_compose97i24_sel_x_b = i_unnamed_ff_snow_horizontal_compose97i24_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26(BLACKBOX,31)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000003Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(bgTrunc_i_unnamed_ff_snow_horizontal_compose97i24_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_backStall),
        .in_valid_in(SE_i_cmp96_ff_snow_horizontal_compose97i9_V4),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26(STALLENABLE,268)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_backStall = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_wireValid = i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg(STALLFIFO,394)
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5(BLACKBOX,32)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000004Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist0_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_backStall),
        .in_valid_in(SE_i_cmp96_ff_snow_horizontal_compose97i9_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5(STALLENABLE,270)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg(STALLFIFO,395)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg(STALLFIFO,397)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(41),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1(STALLENABLE,383)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and1;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and2;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and3;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and5 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and4;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and6 = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_o_valid & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and5;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_and6;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg(STALLFIFO,396)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6(STALLENABLE,272)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_valid_out;

    // bubble_join_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo(BITJOIN,251)
    assign bubble_join_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_q = redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_data_out;

    // bubble_select_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo(BITSELECT,252)
    assign bubble_select_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_b = $unsigned(bubble_join_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_q[63:0]);

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6(BLACKBOX,33)@36
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000005Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_backStall),
        .in_valid_in(SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_add2_ff_snow_horizontal_compose97i27(STALLENABLE,258)
    // Valid signal propagation
    assign SE_i_add2_ff_snow_horizontal_compose97i27_V0 = SE_i_add2_ff_snow_horizontal_compose97i27_wireValid;
    // Backward Stall generation
    assign SE_i_add2_ff_snow_horizontal_compose97i27_backStall = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_o_stall | ~ (SE_i_add2_ff_snow_horizontal_compose97i27_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add2_ff_snow_horizontal_compose97i27_and0 = SE_redist2_bgTrunc_i_mul_add47_ff_snow_horizontal_compose97i25_sel_x_b_1_0_V0;
    assign SE_i_add2_ff_snow_horizontal_compose97i27_and1 = SE_redist4_i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_readdata_1_0_V0 & SE_i_add2_ff_snow_horizontal_compose97i27_and0;
    assign SE_i_add2_ff_snow_horizontal_compose97i27_wireValid = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_V0 & SE_i_add2_ff_snow_horizontal_compose97i27_and1;

    // SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo(STALLENABLE,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg0 <= '0;
            SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg0 <= SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_toReg0;
            // Successor 1
            SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg1 <= SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed0 = (~ (SE_i_add2_ff_snow_horizontal_compose97i27_backStall) & SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireValid) | SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg0;
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_stall_out) & SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireValid) | SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg1;
    // Consuming
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_StallValid = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_backStall & SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireValid;
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_toReg0 = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_StallValid & SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed0;
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_toReg1 = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_StallValid & SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_or0 = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed0;
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireStall = ~ (SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_consumed1 & SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_or0);
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_backStall = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_V0 = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireValid & ~ (SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg0);
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_V1 = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireValid & ~ (SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_wireValid = redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_out;

    // redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo(STALLFIFO,222)
    assign redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_in = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V2;
    assign redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_in = SE_out_redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_backStall;
    assign redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_data_in = bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_c;
    assign redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_in_bitsignaltemp = redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_in[0];
    assign redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_in_bitsignaltemp = redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_in[0];
    assign redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_out[0] = redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_out_bitsignaltemp;
    assign redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_out[0] = redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo (
        .valid_in(redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_c),
        .valid_out(redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11(BLACKBOX,29)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000001Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_d),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V1),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp96_ff_snow_horizontal_compose97i9(STALLENABLE,260)
    // Valid signal propagation
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_V0 = SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_0;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_V1 = SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_1;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_V2 = SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_2;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_V3 = SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_3;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_V4 = SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_4;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_V5 = SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_5;
    // Stall signal propagation
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_stall_out & SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_0;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_1 = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_o_stall & SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_1;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_2 = redist5_i_cmp96_ff_snow_horizontal_compose97i9_c_39_fifo_stall_out & SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_2;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_3 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_stall_out & SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_3;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_4 = i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_stall_out & SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_4;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_5 = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_o_stall & SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_5;
    // Backward Enable generation
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_or0 = SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_0;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_or1 = SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_1 | SE_i_cmp96_ff_snow_horizontal_compose97i9_or0;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_or2 = SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_2 | SE_i_cmp96_ff_snow_horizontal_compose97i9_or1;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_or3 = SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_3 | SE_i_cmp96_ff_snow_horizontal_compose97i9_or2;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_or4 = SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_4 | SE_i_cmp96_ff_snow_horizontal_compose97i9_or3;
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN = ~ (SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_5 | SE_i_cmp96_ff_snow_horizontal_compose97i9_or4);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0 = SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp96_ff_snow_horizontal_compose97i9_backStall = ~ (SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_0 <= 1'b0;
            SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_1 <= 1'b0;
            SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_2 <= 1'b0;
            SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_3 <= 1'b0;
            SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_4 <= 1'b0;
            SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_5 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b0)
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_0 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_0 & SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_0;
            end
            else
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_0 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0;
            end

            if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b0)
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_1 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_1 & SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_1;
            end
            else
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_1 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0;
            end

            if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b0)
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_2 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_2 & SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_2;
            end
            else
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_2 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0;
            end

            if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b0)
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_3 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_3 & SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_3;
            end
            else
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_3 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0;
            end

            if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b0)
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_4 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_4 & SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_4;
            end
            else
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_4 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0;
            end

            if (SE_i_cmp96_ff_snow_horizontal_compose97i9_backEN == 1'b0)
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_5 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_5 & SE_i_cmp96_ff_snow_horizontal_compose97i9_s_tv_5;
            end
            else
            begin
                SE_i_cmp96_ff_snow_horizontal_compose97i9_R_v_5 <= SE_i_cmp96_ff_snow_horizontal_compose97i9_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x(STALLENABLE,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed0 = (~ (SE_i_cmp96_ff_snow_horizontal_compose97i9_backStall) & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_stall_out) & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed2 = (~ (redist1_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl_34_fifo_stall_out) & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_StallValid = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_backStall & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_or0 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_or1 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_or1);
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_backStall = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V0 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V1 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_V2 = SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_wireValid = i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1(BITJOIN,243)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1(BITSELECT,244)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_q[0:0]);

    // i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x(BLACKBOX,125)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready@20000000
    // out out_o_stall@20000000
    ff_snow_horizontal_compose97i_i_iord_bl_A000000Zrizontal_compose97i0 thei_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_b),
        .in_i_stall(SE_out_i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_V0),
        .in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifodata(in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifodata),
        .in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifovalid(in_iord_bl_call_ff_snow_horizontal_compose97i_i_fifovalid),
        .out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready(i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready),
        .out_o_stall(i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1(STALLENABLE,280)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_backStall = i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1(BLACKBOX,37)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_backStall),
        .in_valid_in(SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,293)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ff_snow_horizontal_compose97i_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ff_snow_horizontal_compose97i_B1_start_merge_reg(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    ff_snow_horizontal_compose97i_B1_start_merge_reg theff_snow_horizontal_compose97i_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(ff_snow_horizontal_compose97i_B1_start_merge_reg_out_stall_out),
        .out_valid_out(ff_snow_horizontal_compose97i_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg(STALLENABLE,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg0 <= SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg1 <= SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_stall_out) & SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireValid) | SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg0;
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_o_stall) & SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireValid) | SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_StallValid = SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_backStall & SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireValid;
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_toReg0 = SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_StallValid & SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed0;
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_toReg1 = SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_StallValid & SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_or0 = SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed0;
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireStall = ~ (SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_consumed1 & SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_or0);
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_backStall = SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_V0 = SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg0);
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_V1 = SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_wireValid = ff_snow_horizontal_compose97i_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x(STALLENABLE,309)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x(BLACKBOX,126)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    ff_snow_horizontal_compose97i_i_sfc_s_c0A000000Zrizontal_compose97i0 thei_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_backStall),
        .in_i_valid(SE_out_ff_snow_horizontal_compose97i_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_ff_snow_horizontal_compose97i0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,18)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_ff_snow_horizontal_compose97i1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,20)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_snow_horizontal_compose97i1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,84)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,86)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i4_ff_snow_horizontal_compose97i5_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,90)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,101)
    assign out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready = i_iord_bl_call_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i2_ff_snow_horizontal_compose97i2_aunroll_x_out_iord_bl_call_ff_snow_horizontal_compose97i_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,102)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_snow_horizontal_compose97i5_ff_snow_horizontal_compose97i6_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,103)@41
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_snow_horizontal_compose97is_c0_enter1_ff_snow_horizontal_compose97i0_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,105)
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_address;
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_read;
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_write;
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i4_out_unnamed_ff_snow_horizontal_compose97i3_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,106)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i6_ff_snow_horizontal_compose97i11_out_intel_reserved_ffwd_2_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,108)
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_address;
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_read;
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_write;
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i21_out_unnamed_ff_snow_horizontal_compose97i9_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,109)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i8_ff_snow_horizontal_compose97i17_out_intel_reserved_ffwd_3_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,110)
    assign out_memdep_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_memdep_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,111)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i7_ff_snow_horizontal_compose97i15_out_intel_reserved_ffwd_4_0;

    // dupName_4_ext_sig_sync_out_x(GPOUT,112)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_ff_snow_horizontal_compose97i30_out_lsu_memdep_o_active;

    // dupName_4_regfree_osync_x(GPOUT,113)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i33_unnamed_ff_snow_horizontal_compose97i10_ff_snow_horizontal_compose97i26_out_intel_reserved_ffwd_5_0;

endmodule
