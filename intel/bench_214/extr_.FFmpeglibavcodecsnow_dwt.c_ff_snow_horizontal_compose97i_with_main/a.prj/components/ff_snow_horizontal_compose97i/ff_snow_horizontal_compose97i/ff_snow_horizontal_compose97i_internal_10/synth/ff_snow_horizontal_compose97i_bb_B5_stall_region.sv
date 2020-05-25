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

// SystemVerilog created from ff_snow_horizontal_compose97i_bb_B5_stall_region
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_bb_B5_stall_region (
    input wire [63:0] in_lm1519_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm1519_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm1519_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm1519_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm1519_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm1519_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm1519_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm1519_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm1519_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm1519_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm1519_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm1720_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm1720_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm1720_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm1720_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm1720_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm1720_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm1720_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm1720_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm1720_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm1720_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm1720_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_1481_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_1481_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_1481_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_1481_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_memdep_1481_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_1481_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_1481_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_1481_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_1481_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_1481_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_1481_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_1481_o_active,
    input wire [63:0] in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [0:0] in_iowr_bl_return_ff_snow_horizontal_compose97i_i_fifoready,
    output wire [63:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_lsu_memdep_2_o_active,
    output wire [0:0] out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifodata,
    output wire [0:0] out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_139_q;
    wire [31:0] c_i32_238_q;
    wire [31:0] c_i32_240_q;
    wire [31:0] c_i32_442_q;
    wire [32:0] i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_a;
    wire [32:0] i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_b;
    logic [32:0] i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_o;
    wire [32:0] i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_q;
    wire [32:0] i_add144_ff_snow_horizontal_compose97i26_a;
    wire [32:0] i_add144_ff_snow_horizontal_compose97i26_b;
    logic [32:0] i_add144_ff_snow_horizontal_compose97i26_o;
    wire [32:0] i_add144_ff_snow_horizontal_compose97i26_q;
    wire [32:0] i_add145_ff_snow_horizontal_compose97i27_a;
    wire [32:0] i_add145_ff_snow_horizontal_compose97i27_b;
    logic [32:0] i_add145_ff_snow_horizontal_compose97i27_o;
    wire [32:0] i_add145_ff_snow_horizontal_compose97i27_q;
    wire [32:0] i_add147_ff_snow_horizontal_compose97i29_a;
    wire [32:0] i_add147_ff_snow_horizontal_compose97i29_b;
    logic [32:0] i_add147_ff_snow_horizontal_compose97i29_o;
    wire [32:0] i_add147_ff_snow_horizontal_compose97i29_q;
    wire [31:0] i_idxprom136_ff_snow_horizontal_compose97i11_vt_const_63_q;
    wire [63:0] i_idxprom136_ff_snow_horizontal_compose97i11_vt_join_q;
    wire [31:0] i_idxprom136_ff_snow_horizontal_compose97i11_vt_select_31_b;
    wire [0:0] i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifodata;
    wire [0:0] i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifovalid;
    wire [0:0] i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_ack;
    wire [0:0] i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_stall;
    wire [0:0] i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_valid;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_lsu_memdep_1481_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_valid_out;
    wire [31:0] i_mul140_ff_snow_horizontal_compose97i22_vt_join_q;
    wire [30:0] i_mul140_ff_snow_horizontal_compose97i22_vt_select_31_b;
    wire [0:0] i_select36_ff_snow_horizontal_compose97i10_s;
    reg [31:0] i_select36_ff_snow_horizontal_compose97i10_q;
    wire [32:0] i_sub141_ff_snow_horizontal_compose97i12_a;
    wire [32:0] i_sub141_ff_snow_horizontal_compose97i12_b;
    logic [32:0] i_sub141_ff_snow_horizontal_compose97i12_o;
    wire [32:0] i_sub141_ff_snow_horizontal_compose97i12_q;
    wire [31:0] bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b;
    wire [31:0] bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b;
    wire [31:0] bgTrunc_i_add145_ff_snow_horizontal_compose97i27_sel_x_b;
    wire [31:0] bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b;
    wire [31:0] bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b;
    wire [64:0] i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [60:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x_q;
    wire [63:0] i_acl_31_v_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_acl_31_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_acl_31_v_v_ff_snow_horizontal_compose97i17_sel_x_b;
    wire [64:0] i_addr28_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_addr28_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_addr28_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_addr28_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_addr28_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_addr28_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx137_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx137_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx143_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx149_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom136_ff_snow_horizontal_compose97i11_sel_x_b;
    wire [63:0] i_idxprom142_ff_snow_horizontal_compose97i16_sel_x_b;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_readdata_0_tpl;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_readdata_0_tpl;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_lsu_memdep_2_o_active;
    wire [63:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_c0_exit139_1_tpl;
    wire [35:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid294_i_mul140_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid294_i_mul140_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid295_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid299_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid301_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid302_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [1:0] seMsb_to2_uid305_in;
    wire [1:0] seMsb_to2_uid305_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid306_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid307_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [11:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [0:0] redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_in;
    wire redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_in;
    wire redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_data_in;
    wire [0:0] redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_out;
    wire redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_out;
    wire redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_data_out;
    wire [0:0] redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in;
    wire redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in;
    wire redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_in;
    wire [0:0] redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out;
    wire redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out;
    wire redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_out;
    wire [0:0] redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_in;
    wire redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_in;
    wire redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_data_in;
    wire [0:0] redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_out;
    wire redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_out;
    wire redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_data_out;
    reg [31:0] redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_q;
    wire [0:0] redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_in;
    wire redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_in;
    wire redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_data_in;
    wire [0:0] redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_out;
    wire redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_out;
    wire redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_data_out;
    reg [31:0] redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q;
    reg [31:0] redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_q;
    reg [31:0] redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_0_q;
    reg [31:0] redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_q;
    wire [0:0] redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_in;
    wire redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_in;
    wire redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_data_in;
    wire [0:0] redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_out;
    wire redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_out;
    wire redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_data_out;
    wire [0:0] redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_in;
    wire redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_in;
    wire redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_data_in;
    wire [0:0] redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_out;
    wire redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_out;
    wire redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_data_out;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_in;
    wire redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_in;
    wire redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_data_in;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_out;
    wire redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_out;
    wire redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_data_out;
    reg [0:0] redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_q;
    reg [0:0] redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_q;
    reg [0:0] redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_q;
    wire [0:0] bubble_join_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_q;
    wire [0:0] bubble_select_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_b;
    wire [63:0] bubble_join_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_q;
    wire [63:0] bubble_select_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_b;
    wire [63:0] bubble_join_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_q;
    wire [63:0] bubble_select_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_b;
    wire [63:0] bubble_join_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_q;
    wire [63:0] bubble_select_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_b;
    wire [31:0] bubble_join_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_q;
    wire [31:0] bubble_select_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_b;
    wire [31:0] bubble_join_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_q;
    wire [31:0] bubble_select_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_b;
    wire [0:0] bubble_join_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_q;
    wire [0:0] bubble_select_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_b;
    wire [0:0] bubble_join_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_q;
    wire [0:0] bubble_select_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_b;
    wire [0:0] SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V2;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_toReg8;
    reg [0:0] SE_stall_entry_fromReg8;
    wire [0:0] SE_stall_entry_consumed8;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_stall_entry_V8;
    wire [0:0] SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid;
    wire [0:0] SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_and0;
    wire [0:0] SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_and1;
    wire [0:0] SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_backStall;
    wire [0:0] SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_V1;
    wire [0:0] SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid;
    wire [0:0] SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_and0;
    wire [0:0] SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall;
    wire [0:0] SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_V0;
    reg [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_2;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_or0;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_or1;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V0;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V1;
    wire [0:0] SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V2;
    reg [0:0] SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V0;
    reg [0:0] SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_V0;
    reg [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_0;
    reg [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_1;
    reg [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_2;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_v_s_0;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_0;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_1;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_2;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backEN;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_or0;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_or1;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backStall;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V0;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V1;
    wire [0:0] SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V2;
    wire [0:0] SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_backStall;
    wire [0:0] SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_V0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_wireValid;
    wire [0:0] SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and1;
    wire [0:0] SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and2;
    wire [0:0] SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and3;
    wire [0:0] SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_backStall;
    wire [0:0] SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_V0;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_wireValid;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_and0;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_and1;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_backStall;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_R_v_0;
    wire [0:0] SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_V0;
    reg [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_R_v_0;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_v_s_0;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_s_tv_0;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backEN;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backStall;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_V0;
    reg [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_R_v_0;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_v_s_0;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_s_tv_0;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backEN;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backStall;
    wire [0:0] SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_3_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_3_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_3_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_7_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_7_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_7_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_9_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_9_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_9_V0;
    wire [0:0] bubble_out_stall_entry_3_reg_valid_in;
    wire bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_3_reg_stall_in;
    wire bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_3_reg_valid_out;
    wire bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_3_reg_stall_out;
    wire bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_stall_entry_5_reg_R_v_0;
    reg [0:0] bubble_out_stall_entry_5_reg_R_v_1;
    wire [0:0] bubble_out_stall_entry_5_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_5_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_5_reg_s_tv_1;
    wire [0:0] bubble_out_stall_entry_5_reg_backEN;
    wire [0:0] bubble_out_stall_entry_5_reg_or0;
    wire [0:0] bubble_out_stall_entry_5_reg_backStall;
    wire [0:0] bubble_out_stall_entry_5_reg_V0;
    wire [0:0] bubble_out_stall_entry_5_reg_V1;
    wire [0:0] bubble_out_stall_entry_7_reg_valid_in;
    wire bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_stall_in;
    wire bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_valid_out;
    wire bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_stall_out;
    wire bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_valid_in;
    wire bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_stall_in;
    wire bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_valid_out;
    wire bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_stall_out;
    wire bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp;


    // bubble_join_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo(BITJOIN,439)
    assign bubble_join_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_q = redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_data_out;

    // bubble_select_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo(BITSELECT,440)
    assign bubble_select_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_b = $unsigned(bubble_join_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_q[0:0]);

    // bubble_join_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo(BITJOIN,430)
    assign bubble_join_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_q = redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_data_out;

    // bubble_select_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo(BITSELECT,431)
    assign bubble_select_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_b = $unsigned(bubble_join_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_q[63:0]);

    // bubble_join_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo(BITJOIN,433)
    assign bubble_join_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_q = redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_data_out;

    // bubble_select_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo(BITSELECT,434)
    assign bubble_select_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_b = $unsigned(bubble_join_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x(BITJOIN,417)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_q = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_readdata_0_tpl;

    // bubble_select_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x(BITSELECT,418)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x(BITJOIN,414)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_q = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_readdata_0_tpl;

    // bubble_select_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x(BITSELECT,415)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_q[31:0]);

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37(STALLENABLE,479)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_wireValid = i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_valid_out;

    // bubble_join_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36(BITJOIN,362)
    assign bubble_join_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_q = i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_ack;

    // bubble_select_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36(BITSELECT,363)
    assign bubble_select_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_b = $unsigned(bubble_join_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37(BLACKBOX,48)@80
    // in in_stall_in@20000000
    // out out_data_out@81
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@81
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zn_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37 (
        .in_data_in(bubble_select_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36(STALLENABLE,451)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_V0 = SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_backStall = i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_stall_out | ~ (SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_wireValid = i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x(BITJOIN,420)
    assign bubble_join_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_q = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_c0_exit139_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x(BITSELECT,421)
    assign bubble_select_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_q[0:0]);

    // i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36(BLACKBOX,34)@80
    // in in_i_stall@20000000
    // out out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifodata@20000000
    // out out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifovalid@20000000
    // out out_o_stall@20000000
    ff_snow_horizontal_compose97i_i_iowr_bl_A000000Zrizontal_compose97i0 thei_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_V1),
        .in_iowr_bl_return_ff_snow_horizontal_compose97i_i_fifoready(in_iowr_bl_return_ff_snow_horizontal_compose97i_i_fifoready),
        .out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifodata(i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifodata),
        .out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifovalid(i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_ack),
        .out_o_stall(i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_stall),
        .out_o_valid(i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x(STALLENABLE,519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed0 = (~ (in_stall_in) & SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed1 = (~ (i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_o_stall) & SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_wireValid = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x(BLACKBOX,189)@71
    // in in_i_stall@20000000
    // out out_lsu_memdep_2_o_active@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@80
    // out out_c0_exit139_0_tpl@80
    // out out_c0_exit139_1_tpl@80
    ff_snow_horizontal_compose97i_i_sfc_s_c0A000000Zizontal_compose97i34 thei_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_backStall),
        .in_i_valid(SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_V0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_2_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_2_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_2_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_2_ff_snow_horizontal_compose97i_avm_writeack),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_0_1_tpl(bubble_select_i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_b),
        .in_c0_eni5_0_2_tpl(bubble_select_i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_b),
        .in_c0_eni5_3_tpl(bubble_select_redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_b),
        .in_c0_eni5_4_tpl(bubble_select_redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_b),
        .in_c0_eni5_5_tpl(bubble_select_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_b),
        .out_lsu_memdep_2_o_active(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_lsu_memdep_2_o_active),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_address(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_enable(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_read(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_write(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_o_valid),
        .out_c0_exit139_0_tpl(),
        .out_c0_exit139_1_tpl(i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_c0_exit139_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x(CONSTANT,131)
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9(BLACKBOX,40)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9958_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_backStall),
        .in_valid_in(bubble_out_stall_entry_5_reg_V1),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9(STALLENABLE,463)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_backStall = redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_wireValid = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1(STALLENABLE,461)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_backStall = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_and0 = i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_and0;

    // SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0(STALLENABLE,590)
    // Valid signal propagation
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V0 = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_0;
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V1 = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_1;
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V2 = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_0 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backStall & SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_0;
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_backStall & SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_1;
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_2 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_backStall & SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_or0 = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_0;
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_or1 = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_1 | SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_or0;
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN = ~ (SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_2 | SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_v_s_0 = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_V0;
    // Backward Stall generation
    assign SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backStall = ~ (SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_0 & SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_1 <= SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_1 & SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_1 <= SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_2 <= SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_2 & SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_R_v_2 <= SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // c_i32_139(CONSTANT,9)
    assign c_i32_139_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1(BITJOIN,377)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_q = i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1(BITSELECT,378)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_q[31:0]);

    // c_i32_238(CONSTANT,11)
    assign c_i32_238_q = $unsigned(32'b00000000000000000000000000000010);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0(BITJOIN,365)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_q = i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_dest_data_out_10_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0(BITSELECT,366)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_q[0:0]);

    // i_select36_ff_snow_horizontal_compose97i10(MUX,52)@0
    assign i_select36_ff_snow_horizontal_compose97i10_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_b;
    always @(i_select36_ff_snow_horizontal_compose97i10_s or c_i32_238_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_b)
    begin
        unique case (i_select36_ff_snow_horizontal_compose97i10_s)
            1'b0 : i_select36_ff_snow_horizontal_compose97i10_q = c_i32_238_q;
            1'b1 : i_select36_ff_snow_horizontal_compose97i10_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_b;
            default : i_select36_ff_snow_horizontal_compose97i10_q = 32'b0;
        endcase
    end

    // i_sub141_ff_snow_horizontal_compose97i12(ADD,53)@0
    assign i_sub141_ff_snow_horizontal_compose97i12_a = {1'b0, i_select36_ff_snow_horizontal_compose97i10_q};
    assign i_sub141_ff_snow_horizontal_compose97i12_b = {1'b0, c_i32_139_q};
    assign i_sub141_ff_snow_horizontal_compose97i12_o = $unsigned(i_sub141_ff_snow_horizontal_compose97i12_a) + $unsigned(i_sub141_ff_snow_horizontal_compose97i12_b);
    assign i_sub141_ff_snow_horizontal_compose97i12_q = i_sub141_ff_snow_horizontal_compose97i12_o[32:0];

    // bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x(BITSELECT,107)@0
    assign bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b = i_sub141_ff_snow_horizontal_compose97i12_q[31:0];

    // redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b);
        end
    end

    // i_idxprom142_ff_snow_horizontal_compose97i16_sel_x(BITSELECT,176)@1
    assign i_idxprom142_ff_snow_horizontal_compose97i16_sel_x_b = $unsigned({{32{redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_q[31]}}, redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_q[31:0]});

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,332)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom142_ff_snow_horizontal_compose97i16_sel_x_b[63:54];
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom142_ff_snow_horizontal_compose97i16_sel_x_b[53:36];
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom142_ff_snow_horizontal_compose97i16_sel_x_b[35:18];
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom142_ff_snow_horizontal_compose97i16_sel_x_b[17:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,322)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,269)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,324)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,268)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,270)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,323)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,266)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,325)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,267)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,271)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,161)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx143_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx143_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,163)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx143_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4(BLACKBOX,43)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10070_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_backStall),
        .in_valid_in(bubble_out_stall_entry_5_reg_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4(BITJOIN,389)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4(BITSELECT,390)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_q[63:0]);

    // i_arrayidx143_ff_snow_horizontal_compose97i0_add_x(ADD,155)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_b};
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx143_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,164)@1
    assign i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx143_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0(STALLENABLE,593)
    // Valid signal propagation
    assign SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V0 = SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_backStall & SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN = ~ (SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0 = SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_V0;
    // Backward Stall generation
    assign SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backStall = ~ (SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 <= SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 & SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 <= SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24(STALLENABLE,475)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_V0 = SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_backStall = SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5(BITJOIN,371)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_q = i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5(BITSELECT,372)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_q[0:0]);

    // redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_b);
        end
    end

    // i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24(BLACKBOX,46)@1
    // in in_i_stall@20000000
    // out out_lm1720_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm1720_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm1720_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm1720_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm1720_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm1720_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm1720_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm1720_0 thei_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_V0),
        .in_lm1720_ff_snow_horizontal_compose97i_avm_readdata(in_lm1720_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm1720_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm1720_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm1720_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm1720_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm1720_ff_snow_horizontal_compose97i_avm_writeack(in_lm1720_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm1720_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_address),
        .out_lm1720_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm1720_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm1720_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm1720_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_read),
        .out_lm1720_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_write),
        .out_lm1720_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5(STALLENABLE,457)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_backStall = SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_valid_out;

    // SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0(STALLENABLE,603)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_V0 = SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_s_tv_0 = SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_backStall & SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backEN = ~ (SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_v_s_0 = SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_V0;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backStall = ~ (SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_R_v_0 <= SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_R_v_0 & SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_R_v_0 <= SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24(STALLENABLE,474)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_V0 = SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_backStall = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_and0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_V0;
    assign SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_wireValid = SE_redist11_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0_1_0_V0 & SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4(STALLENABLE,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed1 = (~ (redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_and0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_wireValid = SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_and0;

    // redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(STALLFIFO,347)
    assign redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_V1;
    assign redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in = SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall;
    assign redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_in = i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    assign redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in_bitsignaltemp = redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in[0];
    assign redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in_bitsignaltemp = redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in[0];
    assign redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out[0] = redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out_bitsignaltemp;
    assign redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out[0] = redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo (
        .valid_in(redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .valid_out(redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(STALLENABLE,587)
    // Valid signal propagation
    assign SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_V0 = SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_stall | ~ (SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_and0 = redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out;
    assign SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V0 & SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_and0;

    // bubble_join_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(BITJOIN,427)
    assign bubble_join_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_q = redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_out;

    // bubble_select_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(BITSELECT,428)
    assign bubble_select_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_b = $unsigned(bubble_join_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_q[63:0]);

    // i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x(BLACKBOX,177)@39
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@71
    // out out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata_0_tpl@71
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_unmaskedload12121_0 thei_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_backStall),
        .in_i_valid(SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_V0),
        .in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_valid),
        .out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,314)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,233)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_addr28_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,316)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,232)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_addr28_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,234)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,315)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,230)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_addr28_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,317)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_addr28_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,231)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_addr28_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,235)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_addr28_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,141)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_addr28_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_addr28_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,143)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_addr28_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9(BITJOIN,380)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_q = i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9(BITSELECT,381)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_q[63:0]);

    // i_addr28_ff_snow_horizontal_compose97i0_add_x(ADD,135)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_b};
    assign i_addr28_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_addr28_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_addr28_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_addr28_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_addr28_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_addr28_ff_snow_horizontal_compose97i0_add_x_q = i_addr28_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,144)@1
    assign i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_addr28_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo(STALLFIFO,348)
    assign redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_V0;
    assign redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_in = SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_backStall;
    assign redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_data_in = i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    assign redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_in_bitsignaltemp = redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_in[0];
    assign redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_in_bitsignaltemp = redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_in[0];
    assign redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_out[0] = redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_out_bitsignaltemp;
    assign redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_out[0] = redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(71),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo (
        .valid_in(redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_in_bitsignaltemp),
        .data_in(i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .valid_out(redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18(BITJOIN,395)
    assign bubble_join_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_q = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18(BITSELECT,396)
    assign bubble_select_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_q[31:0]);

    // leftShiftStage0Idx1Rng1_uid294_i_mul140_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,293)@34
    assign leftShiftStage0Idx1Rng1_uid294_i_mul140_ff_snow_horizontal_compose97i0_shift_x_in = bubble_select_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid294_i_mul140_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid294_i_mul140_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid295_i_mul140_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,294)@34
    assign leftShiftStage0Idx1_uid295_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid294_i_mul140_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x(MUX,296)@34
    assign leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_b or leftShiftStage0Idx1_uid295_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_b;
            1'b1 : leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid295_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul140_ff_snow_horizontal_compose97i22_vt_select_31(BITSELECT,51)@34
    assign i_mul140_ff_snow_horizontal_compose97i22_vt_select_31_b = leftShiftStage0_uid297_i_mul140_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_mul140_ff_snow_horizontal_compose97i22_vt_join(BITJOIN,50)@34
    assign i_mul140_ff_snow_horizontal_compose97i22_vt_join_q = {i_mul140_ff_snow_horizontal_compose97i22_vt_select_31_b, GND_q};

    // c_i32_442(CONSTANT,14)
    assign c_i32_442_q = $unsigned(32'b00000000000000000000000000000100);

    // bubble_join_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24(BITJOIN,398)
    assign bubble_join_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_q = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24(BITSELECT,399)
    assign bubble_select_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_q[31:0]);

    // i_add144_ff_snow_horizontal_compose97i26(ADD,25)@33
    assign i_add144_ff_snow_horizontal_compose97i26_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_b};
    assign i_add144_ff_snow_horizontal_compose97i26_b = {1'b0, c_i32_442_q};
    assign i_add144_ff_snow_horizontal_compose97i26_o = $unsigned(i_add144_ff_snow_horizontal_compose97i26_a) + $unsigned(i_add144_ff_snow_horizontal_compose97i26_b);
    assign i_add144_ff_snow_horizontal_compose97i26_q = i_add144_ff_snow_horizontal_compose97i26_o[32:0];

    // bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x(BITSELECT,104)@33
    assign bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b = i_add144_ff_snow_horizontal_compose97i26_q[31:0];

    // redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b);
        end
    end

    // i_add145_ff_snow_horizontal_compose97i27(ADD,26)@34
    assign i_add145_ff_snow_horizontal_compose97i27_a = {1'b0, redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q};
    assign i_add145_ff_snow_horizontal_compose97i27_b = {1'b0, i_mul140_ff_snow_horizontal_compose97i22_vt_join_q};
    assign i_add145_ff_snow_horizontal_compose97i27_o = $unsigned(i_add145_ff_snow_horizontal_compose97i27_a) + $unsigned(i_add145_ff_snow_horizontal_compose97i27_b);
    assign i_add145_ff_snow_horizontal_compose97i27_q = i_add145_ff_snow_horizontal_compose97i27_o[32:0];

    // bgTrunc_i_add145_ff_snow_horizontal_compose97i27_sel_x(BITSELECT,105)@34
    assign bgTrunc_i_add145_ff_snow_horizontal_compose97i27_sel_x_b = i_add145_ff_snow_horizontal_compose97i27_q[31:0];

    // xMSB_uid299_i_shr146_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,298)@34
    assign xMSB_uid299_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add145_ff_snow_horizontal_compose97i27_sel_x_b[31:31]);

    // seMsb_to2_uid305(BITSELECT,304)@34
    assign seMsb_to2_uid305_in = $unsigned({{1{xMSB_uid299_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b[0]}}, xMSB_uid299_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b});
    assign seMsb_to2_uid305_b = $unsigned(seMsb_to2_uid305_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid306_i_shr146_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,305)@34
    assign rightShiftStage1Idx1Rng2_uid306_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid307_i_shr146_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,306)@34
    assign rightShiftStage1Idx1_uid307_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = {seMsb_to2_uid305_b, rightShiftStage1Idx1Rng2_uid306_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid301_i_shr146_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,300)@34
    assign rightShiftStage0Idx1Rng1_uid301_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add145_ff_snow_horizontal_compose97i27_sel_x_b[31:1]);

    // rightShiftStage0Idx1_uid302_i_shr146_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,301)@34
    assign rightShiftStage0Idx1_uid302_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = {xMSB_uid299_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b, rightShiftStage0Idx1Rng1_uid301_i_shr146_ff_snow_horizontal_compose97i0_shift_x_b};

    // rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x(MUX,303)@34
    assign rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s or bgTrunc_i_add145_ff_snow_horizontal_compose97i27_sel_x_b or rightShiftStage0Idx1_uid302_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = bgTrunc_i_add145_ff_snow_horizontal_compose97i27_sel_x_b;
            1'b1 : rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0Idx1_uid302_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x(MUX,308)@34
    assign rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s or rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q or rightShiftStage1Idx1_uid307_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0_uid304_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q;
            1'b1 : rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage1Idx1_uid307_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_add147_ff_snow_horizontal_compose97i29(ADD,27)@34
    assign i_add147_ff_snow_horizontal_compose97i29_a = {1'b0, rightShiftStage1_uid309_i_shr146_ff_snow_horizontal_compose97i0_shift_x_q};
    assign i_add147_ff_snow_horizontal_compose97i29_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_b};
    assign i_add147_ff_snow_horizontal_compose97i29_o = $unsigned(i_add147_ff_snow_horizontal_compose97i29_a) + $unsigned(i_add147_ff_snow_horizontal_compose97i29_b);
    assign i_add147_ff_snow_horizontal_compose97i29_q = i_add147_ff_snow_horizontal_compose97i29_o[32:0];

    // bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x(BITSELECT,106)@34
    assign bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b = i_add147_ff_snow_horizontal_compose97i29_q[31:0];

    // redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo(STALLFIFO,350)
    assign redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_V1;
    assign redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_in = SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_backStall;
    assign redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_data_in = bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b;
    assign redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_in_bitsignaltemp = redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_in[0];
    assign redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_in_bitsignaltemp = redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_in[0];
    assign redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_out[0] = redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_out_bitsignaltemp;
    assign redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_out[0] = redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo (
        .valid_in(redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b),
        .valid_out(redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo(STALLFIFO,356)
    assign redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_in = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V2;
    assign redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_in = SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_backStall;
    assign redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_data_in = bubble_select_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_b;
    assign redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_in_bitsignaltemp = redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_in[0];
    assign redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_in_bitsignaltemp = redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_in[0];
    assign redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_out[0] = redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_out_bitsignaltemp;
    assign redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_out[0] = redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo (
        .valid_in(redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_b),
        .valid_out(redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo(STALLENABLE,600)
    // Valid signal propagation
    assign SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_V0 = SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_backStall = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_o_stall | ~ (SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and0 = redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_valid_out;
    assign SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and1 = redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_valid_out & SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and0;
    assign SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and2 = redist2_i_addr28_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_70_fifo_valid_out & SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and1;
    assign SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and3 = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_valid & SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and2;
    assign SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_wireValid = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_o_valid & SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_and3;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_idxprom136_ff_snow_horizontal_compose97i11_vt_const_63(CONSTANT,29)
    assign i_idxprom136_ff_snow_horizontal_compose97i11_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_0(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_0_q <= $unsigned(i_select36_ff_snow_horizontal_compose97i10_q);
        end
    end

    // redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backEN == 1'b1)
        begin
            redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_q <= $unsigned(redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_0_q);
        end
    end

    // i_idxprom136_ff_snow_horizontal_compose97i11_sel_x(BITSELECT,175)@2
    assign i_idxprom136_ff_snow_horizontal_compose97i11_sel_x_b = {32'b00000000000000000000000000000000, redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_q[31:0]};

    // i_idxprom136_ff_snow_horizontal_compose97i11_vt_select_31(BITSELECT,31)@2
    assign i_idxprom136_ff_snow_horizontal_compose97i11_vt_select_31_b = i_idxprom136_ff_snow_horizontal_compose97i11_sel_x_b[31:0];

    // i_idxprom136_ff_snow_horizontal_compose97i11_vt_join(BITJOIN,30)@2
    assign i_idxprom136_ff_snow_horizontal_compose97i11_vt_join_q = {i_idxprom136_ff_snow_horizontal_compose97i11_vt_const_63_q, i_idxprom136_ff_snow_horizontal_compose97i11_vt_select_31_b};

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,330)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom136_ff_snow_horizontal_compose97i11_vt_join_q[63:54];
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom136_ff_snow_horizontal_compose97i11_vt_join_q[53:36];
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom136_ff_snow_horizontal_compose97i11_vt_join_q[35:18];
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom136_ff_snow_horizontal_compose97i11_vt_join_q[17:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,326)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,287)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,328)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,286)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,288)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,327)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,284)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,329)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,285)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,289)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,171)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx149_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx149_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,173)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx149_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // SE_out_bubble_out_stall_entry_7(STALLENABLE,675)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_7_V0 = SE_out_bubble_out_stall_entry_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_7_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_stall_out | ~ (SE_out_bubble_out_stall_entry_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_7_wireValid = bubble_out_stall_entry_7_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6(BLACKBOX,42)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9960_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_7_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6(BITJOIN,386)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_q = i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6(BITSELECT,387)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_q[63:0]);

    // i_arrayidx149_ff_snow_horizontal_compose97i0_add_x(ADD,165)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_b};
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx149_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,174)@2
    assign i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx149_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6(STALLENABLE,467)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_backStall = redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_wireValid = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_and0;

    // redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo(STALLFIFO,346)
    assign redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_V0;
    assign redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_in = SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_backStall;
    assign redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_data_in = i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    assign redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_in[0];
    assign redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_in[0];
    assign redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_out[0] = redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_out[0] = redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo (
        .valid_in(redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .valid_out(redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7(BITJOIN,374)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_q = i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7(BITSELECT,375)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_q[0:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7(STALLENABLE,459)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_backStall = redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_valid_out;

    // redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo(STALLFIFO,357)
    assign redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_V0;
    assign redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_in = SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_backStall;
    assign redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_data_in = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_b;
    assign redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_in_bitsignaltemp = redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_in[0];
    assign redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_in_bitsignaltemp = redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_in[0];
    assign redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_out[0] = redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_out_bitsignaltemp;
    assign redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_out[0] = redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo (
        .valid_in(redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_b),
        .valid_out(redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo(STALLENABLE,602)
    // Valid signal propagation
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_V0 = SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_backStall = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_stall | ~ (SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_and0 = redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_valid_out;
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_and1 = redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_valid_out & SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_and0;
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_wireValid = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_V0 & SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_and1;

    // bubble_join_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo(BITJOIN,442)
    assign bubble_join_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_q = redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_data_out;

    // bubble_select_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo(BITSELECT,443)
    assign bubble_select_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_b = $unsigned(bubble_join_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_q[0:0]);

    // bubble_join_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo(BITJOIN,424)
    assign bubble_join_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_q = redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_data_out;

    // bubble_select_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo(BITSELECT,425)
    assign bubble_select_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30(BLACKBOX,47)@34
    // in in_i_stall@20000000
    // out out_lsu_memdep_1481_o_active@20000000
    // out out_memdep_1481_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_1481_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_1481_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_1481_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_1481_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_1481_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_1481_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@39
    // out out_o_writeack@39
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_1481_0 thei_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist0_i_arrayidx149_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_32_fifo_b),
        .in_i_predicate(bubble_select_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_backStall),
        .in_i_valid(SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_V0),
        .in_i_writedata(bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b),
        .in_memdep_1481_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_1481_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_1481_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_1481_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_1481_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_1481_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_1481_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_1481_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lsu_memdep_1481_o_active(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_lsu_memdep_1481_o_active),
        .out_memdep_1481_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_1481_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_1481_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_1481_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_1481_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_1481_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_1481_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30(BITJOIN,401)
    assign bubble_join_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_q = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30(BITSELECT,402)
    assign bubble_select_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_q[0:0]);

    // c_i32_240(CONSTANT,12)
    assign c_i32_240_q = $unsigned(32'b11111111111111111111111111111110);

    // SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo(STALLENABLE,598)
    // Valid signal propagation
    assign SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_V0 = SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_backStall = SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backStall | ~ (SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_wireValid = redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_out;

    // redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo(STALLFIFO,355)
    assign redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_in = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V0;
    assign redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_in = SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_backStall;
    assign redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_data_in = redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_q;
    assign redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_in_bitsignaltemp = redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_in[0];
    assign redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_in_bitsignaltemp = redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_in[0];
    assign redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_out[0] = redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_out_bitsignaltemp;
    assign redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_out[0] = redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo (
        .valid_in(redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_in_bitsignaltemp),
        .data_in(redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_q),
        .valid_out(redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo(BITJOIN,436)
    assign bubble_join_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_q = redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_data_out;

    // bubble_select_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo(BITSELECT,437)
    assign bubble_select_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_b = $unsigned(bubble_join_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_q[31:0]);

    // i_acl_31_v_v_v_ff_snow_horizontal_compose97i13(ADD,24)@38
    assign i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_a = {1'b0, bubble_select_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_b};
    assign i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_b = {1'b0, c_i32_240_q};
    assign i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_o = $unsigned(i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_a) + $unsigned(i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_b);
    assign i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_q = i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_o[32:0];

    // bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x(BITSELECT,103)@38
    assign bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b = i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_q[31:0];

    // redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b);
        end
    end

    // i_acl_31_v_v_ff_snow_horizontal_compose97i17_sel_x(BITSELECT,134)@39
    assign i_acl_31_v_v_ff_snow_horizontal_compose97i17_sel_x_b = $unsigned({{32{redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_q[31]}}, redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_q[31:0]});

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,331)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_acl_31_v_v_ff_snow_horizontal_compose97i17_sel_x_b[63:54];
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_acl_31_v_v_ff_snow_horizontal_compose97i17_sel_x_b[53:36];
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_acl_31_v_v_ff_snow_horizontal_compose97i17_sel_x_b[35:18];
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_acl_31_v_v_ff_snow_horizontal_compose97i17_sel_x_b[17:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,310)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,215)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,312)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,214)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,216)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,311)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,212)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,313)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,213)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,217)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,130)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_acl_31_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_acl_31_v_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,132)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8(BITJOIN,383)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_q = i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8(BITSELECT,384)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_q[63:0]);

    // i_acl_31_v_ff_snow_horizontal_compose97i0_add_x(ADD,124)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_b};
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_acl_31_v_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_q = i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_acl_31_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,133)@39
    assign i_acl_31_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_acl_31_v_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x(BLACKBOX,178)@39
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@71
    // out out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata_0_tpl@71
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_unmaskedload12222_0 thei_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_acl_31_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_backStall),
        .in_i_valid(SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_V0),
        .in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_valid),
        .out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30(STALLENABLE,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg2 <= SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed0 = (~ (SE_out_redist1_i_arrayidx143_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed1 = (~ (SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_backStall) & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed2 = (~ (redist9_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_writeack_32_fifo_stall_out) & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_StallValid = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_backStall & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg0 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_StallValid & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg1 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_StallValid & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed1;
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_toReg2 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_StallValid & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_or0 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_or1 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed1 & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_or0;
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_consumed2 & SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_or1);
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_backStall = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V0 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V1 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V2 = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_wireValid = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_o_valid;

    // SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0(STALLENABLE,594)
    // Valid signal propagation
    assign SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_V0 = SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_s_tv_0 = SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_backStall & SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backEN = ~ (SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_v_s_0 = SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backEN & SE_out_redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_V0;
    // Backward Stall generation
    assign SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backStall = ~ (SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_R_v_0 <= SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_R_v_0 & SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_R_v_0 <= SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x(STALLENABLE,492)
    // Valid signal propagation
    assign SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_V0 = SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid;
    // Backward Stall generation
    assign SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_backStall = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_o_stall | ~ (SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_and0 = SE_redist6_bgTrunc_i_acl_31_v_v_v_ff_snow_horizontal_compose97i13_sel_x_b_1_0_V0;
    assign SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_and1 = i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_valid_out & SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_and0;
    assign SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid = SE_out_i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_V1 & SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_and1;

    // i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8(BLACKBOX,41)@39
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9959_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_i_acl_31_v_ff_snow_horizontal_compose97i0_mult_extender_x_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_9_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_9(STALLENABLE,679)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_9_V0 = SE_out_bubble_out_stall_entry_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_9_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9959_ff_snow_horizontal_compose97i8_out_stall_out | ~ (SE_out_bubble_out_stall_entry_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_9_wireValid = bubble_out_stall_entry_9_reg_valid_out;

    // bubble_out_stall_entry_9_reg(STALLFIFO,727)
    assign bubble_out_stall_entry_9_reg_valid_in = SE_stall_entry_V8;
    assign bubble_out_stall_entry_9_reg_stall_in = SE_out_bubble_out_stall_entry_9_backStall;
    assign bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_9_reg_valid_in[0];
    assign bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_9_reg_stall_in[0];
    assign bubble_out_stall_entry_9_reg_valid_out[0] = bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_9_reg_stall_out[0] = bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_9_reg (
        .valid_in(bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_7_reg(STALLFIFO,726)
    assign bubble_out_stall_entry_7_reg_valid_in = SE_stall_entry_V7;
    assign bubble_out_stall_entry_7_reg_stall_in = SE_out_bubble_out_stall_entry_7_backStall;
    assign bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_7_reg_valid_in[0];
    assign bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_7_reg_stall_in[0];
    assign bubble_out_stall_entry_7_reg_valid_out[0] = bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_7_reg_stall_out[0] = bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_7_reg (
        .valid_in(bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_5_reg(STALLENABLE,725)
    // Valid signal propagation
    assign bubble_out_stall_entry_5_reg_V0 = bubble_out_stall_entry_5_reg_R_v_0;
    assign bubble_out_stall_entry_5_reg_V1 = bubble_out_stall_entry_5_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_stall_entry_5_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10070_ff_snow_horizontal_compose97i4_out_stall_out & bubble_out_stall_entry_5_reg_R_v_0;
    assign bubble_out_stall_entry_5_reg_s_tv_1 = i_llvm_fpga_ffwd_dest_p1024i32_b9958_ff_snow_horizontal_compose97i9_out_stall_out & bubble_out_stall_entry_5_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_stall_entry_5_reg_or0 = bubble_out_stall_entry_5_reg_s_tv_0;
    assign bubble_out_stall_entry_5_reg_backEN = ~ (bubble_out_stall_entry_5_reg_s_tv_1 | bubble_out_stall_entry_5_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_5_reg_v_s_0 = bubble_out_stall_entry_5_reg_backEN & SE_stall_entry_V6;
    // Backward Stall generation
    assign bubble_out_stall_entry_5_reg_backStall = ~ (bubble_out_stall_entry_5_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_5_reg_R_v_0 <= 1'b0;
            bubble_out_stall_entry_5_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_5_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_5_reg_R_v_0 <= bubble_out_stall_entry_5_reg_R_v_0 & bubble_out_stall_entry_5_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_5_reg_R_v_0 <= bubble_out_stall_entry_5_reg_v_s_0;
            end

            if (bubble_out_stall_entry_5_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_5_reg_R_v_1 <= bubble_out_stall_entry_5_reg_R_v_1 & bubble_out_stall_entry_5_reg_s_tv_1;
            end
            else
            begin
                bubble_out_stall_entry_5_reg_R_v_1 <= bubble_out_stall_entry_5_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_stall_entry_3(STALLENABLE,667)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_3_V0 = SE_out_bubble_out_stall_entry_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_3_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_stall_out | ~ (SE_out_bubble_out_stall_entry_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_3_wireValid = bubble_out_stall_entry_3_reg_valid_out;

    // bubble_out_stall_entry_3_reg(STALLFIFO,724)
    assign bubble_out_stall_entry_3_reg_valid_in = SE_stall_entry_V5;
    assign bubble_out_stall_entry_3_reg_stall_in = SE_out_bubble_out_stall_entry_3_backStall;
    assign bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_3_reg_valid_in[0];
    assign bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_3_reg_stall_in[0];
    assign bubble_out_stall_entry_3_reg_valid_out[0] = bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_3_reg_stall_out[0] = bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_3_reg (
        .valid_in(bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1(BLACKBOX,39)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i32_add13196_0 thei_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7(BLACKBOX,38)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000019Zrizontal_compose97i0 thei_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5(BLACKBOX,37)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000018Zrizontal_compose97i0 thei_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0(BLACKBOX,35)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i1_cmp959493_0 thei_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_dest_data_out_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
            SE_stall_entry_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            // Successor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp959493_ff_snow_horizontal_compose97i0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i20_ff_snow_horizontal_compose97i5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_add13196_ff_snow_horizontal_compose97i1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (bubble_out_stall_entry_3_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (bubble_out_stall_entry_5_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (bubble_out_stall_entry_7_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (bubble_out_stall_entry_9_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    assign SE_stall_entry_toReg8 = SE_stall_entry_StallValid & SE_stall_entry_consumed8;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed8 & SE_stall_entry_or7);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    assign SE_stall_entry_V8 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg8);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000017Zrizontal_compose97i0 thei_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3(STALLENABLE,455)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_backStall = SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_valid_out;

    // SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0(STALLENABLE,604)
    // Valid signal propagation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_V0 = SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_s_tv_0 = SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backStall & SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backEN = ~ (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_v_s_0 = SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_V0;
    // Backward Stall generation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backStall = ~ (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backEN == 1'b0)
            begin
                SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_R_v_0 <= SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_R_v_0 & SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_R_v_0 <= SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_v_s_0;
            end

        end
    end

    // SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1(STALLENABLE,605)
    // Valid signal propagation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_V0 = SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_backStall & SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backEN = ~ (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_v_s_0 = SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backEN & SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_V0;
    // Backward Stall generation
    assign SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backStall = ~ (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backEN == 1'b0)
            begin
                SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_R_v_0 <= SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_R_v_0 & SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_s_tv_0;
            end
            else
            begin
                SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_R_v_0 <= SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_v_s_0;
            end

        end
    end

    // SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1(STALLENABLE,596)
    // Valid signal propagation
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V0 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_0;
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V1 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_1;
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V2 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_0 = redist8_i_select36_ff_snow_horizontal_compose97i10_q_38_fifo_stall_out & SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_0;
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_backStall & SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_1;
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_2 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9960_ff_snow_horizontal_compose97i6_backStall & SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_or0 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_0;
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_or1 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_1 | SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_or0;
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backEN = ~ (SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_2 | SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_v_s_0 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backEN & SE_redist3_bgTrunc_i_sub141_ff_snow_horizontal_compose97i12_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backStall = ~ (SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_0 <= 1'b0;
            SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_1 <= 1'b0;
            SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backEN == 1'b0)
            begin
                SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_0 <= SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_0 & SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_0;
            end
            else
            begin
                SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_0 <= SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_v_s_0;
            end

            if (SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backEN == 1'b0)
            begin
                SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_1 <= SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_1 & SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_1;
            end
            else
            begin
                SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_1 <= SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_v_s_0;
            end

            if (SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_backEN == 1'b0)
            begin
                SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_2 <= SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_2 & SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_s_tv_2;
            end
            else
            begin
                SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_R_v_2 <= SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2(BLACKBOX,44)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10071_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_3_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2(STALLENABLE,471)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_backStall = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_and0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_and1 = SE_redist7_i_select36_ff_snow_horizontal_compose97i10_q_2_1_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_wireValid = SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_and1;

    // SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18(STALLENABLE,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed0 = (~ (SE_out_redist10_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i21_ff_snow_horizontal_compose97i7_out_dest_data_out_8_0_34_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireValid) | SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed1 = (~ (redist4_bgTrunc_i_add147_ff_snow_horizontal_compose97i29_sel_x_b_37_fifo_stall_out) & SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireValid) | SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_StallValid = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_backStall & SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_toReg0 = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_StallValid & SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_toReg1 = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_StallValid & SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_or0 = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_consumed1 & SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_or0);
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_backStall = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_V0 = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_V1 = SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_and0 = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_wireValid = SE_redist5_bgTrunc_i_add144_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3(BITJOIN,368)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_q = i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3(BITSELECT,369)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_q[0:0]);

    // redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0(REG,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_backEN == 1'b1)
        begin
            redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_b);
        end
    end

    // redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1(REG,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_backEN == 1'b1)
        begin
            redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_q <= $unsigned(redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_0_q);
        end
    end

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,318)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,251)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,320)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,250)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,252)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,319)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,248)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,321)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,249)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,253)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,151)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_acl_31_v_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx137_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx137_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,153)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx137_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2(BITJOIN,392)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2(BITSELECT,393)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_q[63:0]);

    // i_arrayidx137_ff_snow_horizontal_compose97i0_add_x(ADD,145)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_b};
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx137_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx137_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,154)@2
    assign i_arrayidx137_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx137_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18(BLACKBOX,45)@2
    // in in_i_stall@20000000
    // out out_lm1519_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm1519_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm1519_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm1519_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm1519_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm1519_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm1519_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm1519_0 thei_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx137_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(redist12_i_llvm_fpga_ffwd_dest_i1_unnamed_ff_snow_horizontal_compose97i19_ff_snow_horizontal_compose97i3_out_dest_data_out_8_0_2_1_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10071_ff_snow_horizontal_compose97i2_V0),
        .in_lm1519_ff_snow_horizontal_compose97i_avm_readdata(in_lm1519_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm1519_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm1519_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm1519_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm1519_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm1519_ff_snow_horizontal_compose97i_avm_writeack(in_lm1519_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm1519_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_address),
        .out_lm1519_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm1519_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm1519_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm1519_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_read),
        .out_lm1519_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_write),
        .out_lm1519_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,18)
    assign out_lm1519_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm1519_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm1519_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm1519_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm1519_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm1519_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm1519_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm1519_ff_snow_horizontal_compose97i18_out_lm1519_ff_snow_horizontal_compose97i_avm_burstcount;

    // feedback_out_1_sync(GPOUT,19)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,21)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_ff_snow_horizontal_compose97i37_out_feedback_valid_out_1;

    // sync_out(GPOUT,101)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,109)
    assign out_lm1720_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm1720_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm1720_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm1720_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm1720_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm1720_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm1720_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm1720_ff_snow_horizontal_compose97i24_out_lm1720_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_0_sync_out_x(GPOUT,111)@80
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,113)
    assign out_memdep_1481_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_1481_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_1481_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_1481_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_1481_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_1481_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_1481_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_memdep_1481_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,115)
    assign out_lsu_memdep_1481_o_active = i_llvm_fpga_mem_memdep_1481_ff_snow_horizontal_compose97i30_out_lsu_memdep_1481_o_active;

    // dupName_3_ext_sig_sync_out_x(GPOUT,117)
    assign out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_address;
    assign out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_read;
    assign out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_write;
    assign out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unmaskedload12121_ff_snow_horizontal_compose97i31_vunroll_x_out_unmaskedload12121_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,119)
    assign out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_address;
    assign out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_read;
    assign out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_write;
    assign out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unmaskedload12222_ff_snow_horizontal_compose97i32_vunroll_x_out_unmaskedload12222_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,121)
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_address = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_enable = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_read = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_write = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,122)
    assign out_lsu_memdep_2_o_active = i_sfc_s_c0_in_for_end132_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter135_ff_snow_horizontal_compose97i34_aunroll_vunroll_x_out_lsu_memdep_2_o_active;

    // dupName_7_ext_sig_sync_out_x(GPOUT,123)
    assign out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifodata = i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifodata;
    assign out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifovalid = i_iowr_bl_return_ff_snow_horizontal_compose97i_unnamed_ff_snow_horizontal_compose97i22_ff_snow_horizontal_compose97i36_out_iowr_bl_return_ff_snow_horizontal_compose97i_o_fifovalid;

endmodule
