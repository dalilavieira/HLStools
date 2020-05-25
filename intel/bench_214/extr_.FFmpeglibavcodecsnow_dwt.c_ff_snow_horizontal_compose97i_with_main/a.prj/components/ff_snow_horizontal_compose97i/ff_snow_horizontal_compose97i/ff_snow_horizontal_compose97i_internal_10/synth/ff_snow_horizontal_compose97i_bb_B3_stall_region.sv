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

// SystemVerilog created from ff_snow_horizontal_compose97i_bb_B3_stall_region
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_bb_B3_stall_region (
    input wire [63:0] in_lm8_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm8_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm8_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm8_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm8_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm8_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm8_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    output wire [0:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm19_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm19_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm19_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm19_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm19_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm19_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm19_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    input wire [63:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_32_o_active,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire [63:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_33_o_active,
    input wire [63:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [63:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [63:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_lsu_memdep_34_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_168_q;
    wire [31:0] c_i32_169_q;
    wire [31:0] c_i32_271_q;
    wire [31:0] c_i32_273_q;
    wire [32:0] i_add42_ff_snow_horizontal_compose97i14_a;
    wire [32:0] i_add42_ff_snow_horizontal_compose97i14_b;
    logic [32:0] i_add42_ff_snow_horizontal_compose97i14_o;
    wire [32:0] i_add42_ff_snow_horizontal_compose97i14_q;
    wire [32:0] i_add47_ff_snow_horizontal_compose97i49_a;
    wire [32:0] i_add47_ff_snow_horizontal_compose97i49_b;
    logic [32:0] i_add47_ff_snow_horizontal_compose97i49_o;
    wire [32:0] i_add47_ff_snow_horizontal_compose97i49_q;
    wire [63:0] i_addr_v_ff_snow_horizontal_compose97i37_vt_join_q;
    wire [62:0] i_addr_v_ff_snow_horizontal_compose97i37_vt_select_63_b;
    wire [32:0] i_addr_v_v_ff_snow_horizontal_compose97i30_a;
    wire [32:0] i_addr_v_v_ff_snow_horizontal_compose97i30_b;
    logic [32:0] i_addr_v_v_ff_snow_horizontal_compose97i30_o;
    wire [32:0] i_addr_v_v_ff_snow_horizontal_compose97i30_q;
    wire [31:0] i_addr_v_v_ff_snow_horizontal_compose97i30_vt_join_q;
    wire [30:0] i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b;
    wire [31:0] i_and_ff_snow_horizontal_compose97i13_q;
    wire [30:0] i_and_ff_snow_horizontal_compose97i13_vt_const_31_q;
    wire [31:0] i_and_ff_snow_horizontal_compose97i13_vt_join_q;
    wire [0:0] i_and_ff_snow_horizontal_compose97i13_vt_select_0_b;
    wire [33:0] i_cmp9594_ff_snow_horizontal_compose97i24_a;
    wire [33:0] i_cmp9594_ff_snow_horizontal_compose97i24_b;
    logic [33:0] i_cmp9594_ff_snow_horizontal_compose97i24_o;
    wire [0:0] i_cmp9594_ff_snow_horizontal_compose97i24_c;
    wire [31:0] i_idxprom40_ff_snow_horizontal_compose97i18_vt_const_63_q;
    wire [63:0] i_idxprom40_ff_snow_horizontal_compose97i18_vt_join_q;
    wire [31:0] i_idxprom40_ff_snow_horizontal_compose97i18_vt_select_31_b;
    wire [63:0] i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_q;
    wire [30:0] i_idxprom51_ff_snow_horizontal_compose97i28_vt_select_31_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_lsu_memdep_32_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_writeack;
    wire [32:0] i_mul46_add51_ff_snow_horizontal_compose97i48_a;
    wire [32:0] i_mul46_add51_ff_snow_horizontal_compose97i48_b;
    logic [32:0] i_mul46_add51_ff_snow_horizontal_compose97i48_o;
    wire [32:0] i_mul46_add51_ff_snow_horizontal_compose97i48_q;
    wire [31:0] i_mul50_ff_snow_horizontal_compose97i19_vt_join_q;
    wire [30:0] i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b;
    wire [31:0] i_mul78_ff_snow_horizontal_compose97i58_vt_join_q;
    wire [30:0] i_mul78_ff_snow_horizontal_compose97i58_vt_select_31_b;
    wire [0:0] i_select58_ff_snow_horizontal_compose97i12_s;
    reg [31:0] i_select58_ff_snow_horizontal_compose97i12_q;
    wire [32:0] i_sub43_ff_snow_horizontal_compose97i22_a;
    wire [32:0] i_sub43_ff_snow_horizontal_compose97i22_b;
    logic [32:0] i_sub43_ff_snow_horizontal_compose97i22_o;
    wire [32:0] i_sub43_ff_snow_horizontal_compose97i22_q;
    wire [32:0] i_sub49_ff_snow_horizontal_compose97i51_a;
    wire [32:0] i_sub49_ff_snow_horizontal_compose97i51_b;
    logic [32:0] i_sub49_ff_snow_horizontal_compose97i51_o;
    wire [32:0] i_sub49_ff_snow_horizontal_compose97i51_q;
    wire [32:0] i_sub61_ff_snow_horizontal_compose97i57_a;
    wire [32:0] i_sub61_ff_snow_horizontal_compose97i57_b;
    logic [32:0] i_sub61_ff_snow_horizontal_compose97i57_o;
    wire [32:0] i_sub61_ff_snow_horizontal_compose97i57_q;
    wire [32:0] i_sub65_ff_snow_horizontal_compose97i59_a;
    wire [32:0] i_sub65_ff_snow_horizontal_compose97i59_b;
    logic [32:0] i_sub65_ff_snow_horizontal_compose97i59_o;
    wire [32:0] i_sub65_ff_snow_horizontal_compose97i59_q;
    wire [32:0] i_sub79_ff_snow_horizontal_compose97i60_a;
    wire [32:0] i_sub79_ff_snow_horizontal_compose97i60_b;
    logic [32:0] i_sub79_ff_snow_horizontal_compose97i60_o;
    wire [32:0] i_sub79_ff_snow_horizontal_compose97i60_q;
    wire [32:0] i_sub94_ff_snow_horizontal_compose97i17_a;
    wire [32:0] i_sub94_ff_snow_horizontal_compose97i17_b;
    logic [32:0] i_sub94_ff_snow_horizontal_compose97i17_o;
    wire [32:0] i_sub94_ff_snow_horizontal_compose97i17_q;
    wire [0:0] i_tobool_ff_snow_horizontal_compose97i20_q;
    wire [0:0] i_unnamed_ff_snow_horizontal_compose97i31_q;
    wire [31:0] i_unnamed_ff_snow_horizontal_compose97i47_vt_join_q;
    wire [30:0] i_unnamed_ff_snow_horizontal_compose97i47_vt_select_31_b;
    wire [63:0] i_v_v_ff_snow_horizontal_compose97i36_vt_join_q;
    wire [62:0] i_v_v_ff_snow_horizontal_compose97i36_vt_select_63_b;
    wire [32:0] i_v_v_v_ff_snow_horizontal_compose97i29_a;
    wire [32:0] i_v_v_v_ff_snow_horizontal_compose97i29_b;
    logic [32:0] i_v_v_v_ff_snow_horizontal_compose97i29_o;
    wire [32:0] i_v_v_v_ff_snow_horizontal_compose97i29_q;
    wire [31:0] i_v_v_v_ff_snow_horizontal_compose97i29_vt_join_q;
    wire [30:0] i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b;
    wire [0:0] i_val_ff_snow_horizontal_compose97i61_s;
    reg [31:0] i_val_ff_snow_horizontal_compose97i61_q;
    wire [31:0] bgTrunc_i_add42_ff_snow_horizontal_compose97i14_sel_x_b;
    wire [31:0] bgTrunc_i_add47_ff_snow_horizontal_compose97i49_sel_x_b;
    wire [31:0] bgTrunc_i_addr_v_v_ff_snow_horizontal_compose97i30_sel_x_b;
    wire [31:0] bgTrunc_i_mul46_add51_ff_snow_horizontal_compose97i48_sel_x_b;
    wire [31:0] bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b;
    wire [31:0] bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b;
    wire [31:0] bgTrunc_i_sub61_ff_snow_horizontal_compose97i57_sel_x_b;
    wire [31:0] bgTrunc_i_sub65_ff_snow_horizontal_compose97i59_sel_x_b;
    wire [31:0] bgTrunc_i_sub79_ff_snow_horizontal_compose97i60_sel_x_b;
    wire [31:0] bgTrunc_i_sub94_ff_snow_horizontal_compose97i17_sel_x_b;
    wire [31:0] bgTrunc_i_v_v_v_ff_snow_horizontal_compose97i29_sel_x_b;
    wire [64:0] i_addr_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_addr_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_addr_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_addr_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_addr_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [60:0] i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x_q;
    wire [63:0] i_addr_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_addr_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_addr_v_ff_snow_horizontal_compose97i37_sel_x_b;
    wire [64:0] i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx41_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx41_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx45_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx52_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx52_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_q;
    wire [63:0] i_arrayidx87_ff_snow_horizontal_compose97i0_c_i64_41_x_q;
    wire [63:0] i_arrayidx87_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_idxprom40_ff_snow_horizontal_compose97i18_sel_x_b;
    wire [63:0] i_idxprom44_ff_snow_horizontal_compose97i33_sel_x_b;
    wire [63:0] i_idxprom51_ff_snow_horizontal_compose97i28_sel_x_b;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_lsu_memdep_33_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_readdata_0_tpl;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_readdata_0_tpl;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_readdata_0_tpl;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_readdata_0_tpl;
    wire [64:0] i_v_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_v_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_v_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_v_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_v_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_v_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_v_v_ff_snow_horizontal_compose97i36_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_lsu_memdep_34_o_active;
    wire [63:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_o_valid;
    wire [35:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid379_i_mul50_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid379_i_mul50_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid380_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid387_i_mul78_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid387_i_mul78_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid388_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid392_i_shr48_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [1:0] seMsb_to2_uid394_in;
    wire [1:0] seMsb_to2_uid394_b;
    wire [29:0] rightShiftStage0Idx1Rng2_uid395_i_shr48_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid396_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [35:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid421_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid421_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid422_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [11:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [9:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [63:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in;
    wire redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in;
    wire redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_in;
    wire [0:0] redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out;
    wire redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out;
    wire redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_out;
    wire [0:0] redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_in;
    wire redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_in;
    wire redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_data_in;
    wire [0:0] redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_out;
    wire redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_out;
    wire redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_data_out;
    reg [31:0] redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q;
    reg [30:0] redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_q;
    reg [0:0] redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_q;
    wire [0:0] redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_in;
    wire redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_in;
    wire redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_data_in;
    wire [0:0] redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_out;
    wire redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_out;
    wire redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_data_out;
    wire [0:0] redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_in;
    wire redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_in;
    wire redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_data_in;
    wire [0:0] redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_out;
    wire redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_out;
    wire redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_data_out;
    reg [31:0] redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_q;
    reg [31:0] redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_q;
    wire [0:0] redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_in;
    wire redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_in;
    wire redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_in_bitsignaltemp;
    wire [30:0] redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_data_in;
    wire [0:0] redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_out;
    wire redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_out;
    wire redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_out_bitsignaltemp;
    wire [30:0] redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_data_out;
    reg [31:0] redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_q;
    reg [31:0] redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_q;
    reg [31:0] redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_q;
    reg [31:0] redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_q;
    reg [0:0] redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_q;
    wire [0:0] redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_in;
    wire redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_in;
    wire redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_in_bitsignaltemp;
    wire [30:0] redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_data_in;
    wire [0:0] redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_out;
    wire redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_out;
    wire redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_out_bitsignaltemp;
    wire [30:0] redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_data_out;
    reg [63:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_b;
    wire [63:0] bubble_join_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_q;
    wire [63:0] bubble_select_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_b;
    wire [31:0] bubble_join_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_q;
    wire [31:0] bubble_select_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_b;
    wire [0:0] bubble_join_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_q;
    wire [0:0] bubble_select_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_b;
    wire [0:0] bubble_join_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_q;
    wire [0:0] bubble_select_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_b;
    wire [30:0] bubble_join_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_q;
    wire [30:0] bubble_select_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_b;
    wire [30:0] bubble_join_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_q;
    wire [30:0] bubble_select_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_b;
    wire [0:0] SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_wireValid;
    wire [0:0] SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and0;
    wire [0:0] SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and1;
    wire [0:0] SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and2;
    wire [0:0] SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_backStall;
    wire [0:0] SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_V1;
    wire [0:0] SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_wireValid;
    wire [0:0] SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_and0;
    wire [0:0] SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_and1;
    wire [0:0] SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_backStall;
    wire [0:0] SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_V0;
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
    wire [0:0] SE_stall_entry_toReg9;
    reg [0:0] SE_stall_entry_fromReg9;
    wire [0:0] SE_stall_entry_consumed9;
    wire [0:0] SE_stall_entry_toReg10;
    reg [0:0] SE_stall_entry_fromReg10;
    wire [0:0] SE_stall_entry_consumed10;
    wire [0:0] SE_stall_entry_toReg11;
    reg [0:0] SE_stall_entry_fromReg11;
    wire [0:0] SE_stall_entry_consumed11;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_or8;
    wire [0:0] SE_stall_entry_or9;
    wire [0:0] SE_stall_entry_or10;
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
    wire [0:0] SE_stall_entry_V9;
    wire [0:0] SE_stall_entry_V10;
    wire [0:0] SE_stall_entry_V11;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireStall;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_StallValid;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_toReg0;
    reg [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg0;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed0;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_toReg1;
    reg [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg1;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed1;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_and0;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_or0;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_backStall;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_V0;
    wire [0:0] SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_V0;
    reg [0:0] SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    wire [0:0] SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_v_s_0;
    wire [0:0] SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_s_tv_0;
    wire [0:0] SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backEN;
    wire [0:0] SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backStall;
    wire [0:0] SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_V0;
    wire [0:0] SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_and0;
    wire [0:0] SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall;
    wire [0:0] SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_V0;
    wire [0:0] SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_wireValid;
    wire [0:0] SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_and0;
    wire [0:0] SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_and1;
    wire [0:0] SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_backStall;
    wire [0:0] SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_V0;
    reg [0:0] SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V0;
    reg [0:0] SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_V0;
    reg [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_0;
    reg [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_1;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_v_s_0;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_1;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backEN;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_or0;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backStall;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_V0;
    wire [0:0] SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_V1;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_or0;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_backStall;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_V0;
    wire [0:0] SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_V1;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireStall;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_StallValid;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_toReg0;
    reg [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg0;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed0;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_toReg1;
    reg [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg1;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed1;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_or0;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_backStall;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_V0;
    wire [0:0] SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_V1;
    reg [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_R_v_0;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_v_s_0;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_s_tv_0;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backEN;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backStall;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_V0;
    reg [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_0;
    reg [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_1;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_v_s_0;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_0;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_1;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backEN;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_or0;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backStall;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_V0;
    wire [0:0] SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_V1;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireStall;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_StallValid;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_toReg0;
    reg [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg0;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed0;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_toReg1;
    reg [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg1;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed1;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_or0;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_backStall;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_V0;
    wire [0:0] SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_V1;
    reg [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_R_v_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_v_s_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_s_tv_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backEN;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backStall;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_V0;
    reg [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_R_v_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_v_s_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_s_tv_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backEN;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backStall;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_V0;
    reg [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_R_v_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_v_s_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_s_tv_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backEN;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backStall;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_V0;
    reg [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_0;
    reg [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_1;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_v_s_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_1;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backEN;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_or0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backStall;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_V0;
    wire [0:0] SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_V1;
    reg [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_0;
    reg [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_1;
    reg [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_2;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_v_s_0;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_1;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_2;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backEN;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_or0;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_or1;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backStall;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V0;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V1;
    wire [0:0] SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V2;
    wire [0:0] SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and0;
    wire [0:0] SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and1;
    wire [0:0] SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and2;
    wire [0:0] SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_backStall;
    wire [0:0] SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_4_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_4_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_4_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_7_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_7_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_7_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_8_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_8_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_8_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_9_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_9_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_9_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_10_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_10_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_10_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_11_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_11_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_11_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_12_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_12_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_12_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_valid_in;
    wire bubble_out_stall_entry_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_stall_in;
    wire bubble_out_stall_entry_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_valid_out;
    wire bubble_out_stall_entry_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_stall_out;
    wire bubble_out_stall_entry_4_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_stall_entry_6_reg_R_v_0;
    wire [0:0] bubble_out_stall_entry_6_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_6_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_6_reg_backEN;
    wire [0:0] bubble_out_stall_entry_6_reg_backStall;
    wire [0:0] bubble_out_stall_entry_6_reg_V0;
    wire [0:0] bubble_out_stall_entry_7_reg_valid_in;
    wire bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_stall_in;
    wire bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_valid_out;
    wire bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_stall_out;
    wire bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_8_reg_valid_in;
    wire bubble_out_stall_entry_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_8_reg_stall_in;
    wire bubble_out_stall_entry_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_8_reg_valid_out;
    wire bubble_out_stall_entry_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_8_reg_stall_out;
    wire bubble_out_stall_entry_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_valid_in;
    wire bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_stall_in;
    wire bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_valid_out;
    wire bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_stall_out;
    wire bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_valid_in;
    wire bubble_out_stall_entry_10_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_stall_in;
    wire bubble_out_stall_entry_10_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_valid_out;
    wire bubble_out_stall_entry_10_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_stall_out;
    wire bubble_out_stall_entry_10_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_valid_in;
    wire bubble_out_stall_entry_11_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_stall_in;
    wire bubble_out_stall_entry_11_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_valid_out;
    wire bubble_out_stall_entry_11_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_stall_out;
    wire bubble_out_stall_entry_11_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_valid_in;
    wire bubble_out_stall_entry_12_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_stall_in;
    wire bubble_out_stall_entry_12_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_valid_out;
    wire bubble_out_stall_entry_12_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_stall_out;
    wire bubble_out_stall_entry_12_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_i_valid;
    reg [0:0] SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid;
    reg [31:0] SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_data0;
    wire [0:0] SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backStall;
    wire [0:0] SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_V;
    wire [31:0] SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_D0;


    // SE_out_bubble_out_stall_entry_10(STALLENABLE,887)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_10_V0 = SE_out_bubble_out_stall_entry_10_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_10_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_stall_out | ~ (SE_out_bubble_out_stall_entry_10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_10_wireValid = bubble_out_stall_entry_10_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9(BLACKBOX,57)@77
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10076_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_10_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9(STALLENABLE,611)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_backStall = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_and0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_wireValid = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9(BITJOIN,509)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9(BITSELECT,510)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_q[63:0]);

    // i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x(BLACKBOX,251)@77
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@109
    // out out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata_0_tpl@109
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_unmaskedload11912_0 thei_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_V0),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_valid),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x(STALLENABLE,698)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_backStall = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_and0 = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_wireValid = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_valid & SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_and0;

    // SE_out_bubble_out_stall_entry_8(STALLENABLE,883)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_8_V0 = SE_out_bubble_out_stall_entry_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_8_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_stall_out | ~ (SE_out_bubble_out_stall_entry_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_8_wireValid = bubble_out_stall_entry_8_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7(BLACKBOX,59)@39
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10078_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_8_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_169(CONSTANT,16)
    assign c_i32_169_q = $unsigned(32'b11111111111111111111111111111111);

    // SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1(STALLENABLE,793)
    // Valid signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_V0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_s_tv_0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backStall & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backEN = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_v_s_0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backEN & SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_V;
    // Backward Stall generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backStall = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backEN == 1'b0)
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_R_v_0 & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_s_tv_0;
            end
            else
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_v_s_0;
            end

        end
    end

    // leftShiftStage0Idx1Rng1_uid379_i_mul50_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,378)@2
    assign leftShiftStage0Idx1Rng1_uid379_i_mul50_ff_snow_horizontal_compose97i0_shift_x_in = redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid379_i_mul50_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid379_i_mul50_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid380_i_mul50_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,379)@2
    assign leftShiftStage0Idx1_uid380_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid379_i_mul50_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x(STALLENABLE,740)
    // Valid signal propagation
    assign SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_V0 = SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    // Stall signal propagation
    assign SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_s_tv_0 = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_backStall & SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    // Backward Enable generation
    assign SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backEN = ~ (SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_v_s_0 = SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backEN & SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_V0;
    // Backward Stall generation
    assign SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backStall = ~ (SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backEN == 1'b0)
            begin
                SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_R_v_0 & SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_s_tv_0;
            end
            else
            begin
                SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44(STALLENABLE,627)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_V0 = SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_backStall = SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backStall | ~ (SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_valid;

    // i_idxprom40_ff_snow_horizontal_compose97i18_vt_const_63(CONSTANT,39)
    assign i_idxprom40_ff_snow_horizontal_compose97i18_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_and_ff_snow_horizontal_compose97i13_vt_const_31(CONSTANT,34)
    assign i_and_ff_snow_horizontal_compose97i13_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i32_168(CONSTANT,15)
    assign c_i32_168_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2(BITJOIN,497)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_q = i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2(BITSELECT,498)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_q[31:0]);

    // i_and_ff_snow_horizontal_compose97i13(LOGICAL,33)@0
    assign i_and_ff_snow_horizontal_compose97i13_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_b & c_i32_168_q;

    // i_and_ff_snow_horizontal_compose97i13_vt_select_0(BITSELECT,36)@0
    assign i_and_ff_snow_horizontal_compose97i13_vt_select_0_b = i_and_ff_snow_horizontal_compose97i13_q[0:0];

    // redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0(REG,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backEN == 1'b1)
        begin
            redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_q <= $unsigned(i_and_ff_snow_horizontal_compose97i13_vt_select_0_b);
        end
    end

    // i_and_ff_snow_horizontal_compose97i13_vt_join(BITJOIN,35)@1
    assign i_and_ff_snow_horizontal_compose97i13_vt_join_q = {i_and_ff_snow_horizontal_compose97i13_vt_const_31_q, redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_q};

    // i_tobool_ff_snow_horizontal_compose97i20(LOGICAL,82)@1
    assign i_tobool_ff_snow_horizontal_compose97i20_q = $unsigned(i_and_ff_snow_horizontal_compose97i13_vt_join_q != i_idxprom40_ff_snow_horizontal_compose97i18_vt_const_63_q ? 1'b1 : 1'b0);

    // i_unnamed_ff_snow_horizontal_compose97i31(LOGICAL,83)@1
    assign i_unnamed_ff_snow_horizontal_compose97i31_q = i_tobool_ff_snow_horizontal_compose97i20_q ^ VCC_q;

    // i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x(CONSTANT,207)
    assign i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4(BITJOIN,491)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_q = i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4(BITSELECT,492)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_q[31:0]);

    // i_add42_ff_snow_horizontal_compose97i14(ADD,23)@0
    assign i_add42_ff_snow_horizontal_compose97i14_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_b};
    assign i_add42_ff_snow_horizontal_compose97i14_b = {1'b0, c_i32_169_q};
    assign i_add42_ff_snow_horizontal_compose97i14_o = $unsigned(i_add42_ff_snow_horizontal_compose97i14_a) + $unsigned(i_add42_ff_snow_horizontal_compose97i14_b);
    assign i_add42_ff_snow_horizontal_compose97i14_q = i_add42_ff_snow_horizontal_compose97i14_o[32:0];

    // bgTrunc_i_add42_ff_snow_horizontal_compose97i14_sel_x(BITSELECT,162)@0
    assign bgTrunc_i_add42_ff_snow_horizontal_compose97i14_sel_x_b = i_add42_ff_snow_horizontal_compose97i14_q[31:0];

    // i_sub43_ff_snow_horizontal_compose97i22(ADD,76)@0
    assign i_sub43_ff_snow_horizontal_compose97i22_a = {1'b0, bgTrunc_i_add42_ff_snow_horizontal_compose97i14_sel_x_b};
    assign i_sub43_ff_snow_horizontal_compose97i22_b = {1'b0, i_select58_ff_snow_horizontal_compose97i12_q};
    assign i_sub43_ff_snow_horizontal_compose97i22_o = $unsigned(i_sub43_ff_snow_horizontal_compose97i22_a) + $unsigned(i_sub43_ff_snow_horizontal_compose97i22_b);
    assign i_sub43_ff_snow_horizontal_compose97i22_q = i_sub43_ff_snow_horizontal_compose97i22_o[32:0];

    // bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x(BITSELECT,166)@0
    assign bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b = i_sub43_ff_snow_horizontal_compose97i22_q[31:0];

    // redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b);
        end
    end

    // i_idxprom44_ff_snow_horizontal_compose97i33_sel_x(BITSELECT,246)@1
    assign i_idxprom44_ff_snow_horizontal_compose97i33_sel_x_b = $unsigned({{32{redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q[31]}}, redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q[31:0]});

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,449)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom44_ff_snow_horizontal_compose97i33_sel_x_b[63:54];
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom44_ff_snow_horizontal_compose97i33_sel_x_b[53:36];
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom44_ff_snow_horizontal_compose97i33_sel_x_b[35:18];
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom44_ff_snow_horizontal_compose97i33_sel_x_b[17:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,433)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,354)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,435)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,353)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,355)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,434)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,351)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,436)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,352)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,356)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,227)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx45_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx45_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,229)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5(BITJOIN,500)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_q = i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5(BITSELECT,501)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_q[63:0]);

    // i_arrayidx45_ff_snow_horizontal_compose97i0_add_x(ADD,221)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_b};
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx45_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,230)@1
    assign i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx45_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44(BLACKBOX,65)@1
    // in in_i_stall@20000000
    // out out_lm19_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm19_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm19_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm19_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm19_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm19_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm19_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm19_0 thei_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_ff_snow_horizontal_compose97i31_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_V0),
        .in_lm19_ff_snow_horizontal_compose97i_avm_readdata(in_lm19_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm19_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm19_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm19_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm19_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm19_ff_snow_horizontal_compose97i_avm_writeack(in_lm19_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm19_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_address),
        .out_lm19_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm19_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm19_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm19_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_read),
        .out_lm19_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_write),
        .out_lm19_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44(STALLENABLE,626)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_V0 = SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_backStall = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_and0 = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V0;
    assign SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_wireValid = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_V0 & SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_and0;

    // i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5(BLACKBOX,54)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9965_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_backStall),
        .in_valid_in(bubble_out_stall_entry_6_reg_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x(STALLENABLE,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg0 <= '0;
            SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg0 <= SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_toReg0;
            // Successor 1
            SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg1 <= SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_backStall) & SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid) | SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg0;
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed1 = (~ (redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out) & SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid) | SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg1;
    // Consuming
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_StallValid = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_backStall & SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid;
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_toReg0 = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_StallValid & SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed0;
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_toReg1 = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_StallValid & SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_or0 = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed0;
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireStall = ~ (SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_consumed1 & SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_or0);
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_backStall = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_V0 = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid & ~ (SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg0);
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_V1 = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid & ~ (SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_and0 = SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V0;
    assign SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_wireValid = i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_valid_out & SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_and0;

    // SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0(STALLENABLE,781)
    // Valid signal propagation
    assign SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V0 = SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0 = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_backStall & SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN = ~ (SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0 = SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_V0;
    // Backward Stall generation
    assign SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backStall = ~ (SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 <= SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 & SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 <= SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4(STALLENABLE,599)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_backStall = SE_redist4_bgTrunc_i_sub43_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_and0 = i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1(STALLENABLE,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed1 = (~ (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_and0 = i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_and0;

    // SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0(STALLENABLE,788)
    // Valid signal propagation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_V0 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_s_tv_0 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backStall & SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backEN = ~ (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_v_s_0 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_V1;
    // Backward Stall generation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backStall = ~ (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backEN == 1'b0)
            begin
                SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_R_v_0 <= SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_R_v_0 & SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_R_v_0 <= SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1(BITJOIN,488)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_q = i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1(BITSELECT,489)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0(BITJOIN,485)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_q = i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0(BITSELECT,486)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_q[0:0]);

    // i_select58_ff_snow_horizontal_compose97i12(MUX,75)@0
    assign i_select58_ff_snow_horizontal_compose97i12_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_b;
    always @(i_select58_ff_snow_horizontal_compose97i12_s or c_i32_168_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_b)
    begin
        unique case (i_select58_ff_snow_horizontal_compose97i12_s)
            1'b0 : i_select58_ff_snow_horizontal_compose97i12_q = c_i32_168_q;
            1'b1 : i_select58_ff_snow_horizontal_compose97i12_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_b;
            default : i_select58_ff_snow_horizontal_compose97i12_q = 32'b0;
        endcase
    end

    // redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0(REG,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_backEN == 1'b1)
        begin
            redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_q <= $unsigned(i_select58_ff_snow_horizontal_compose97i12_q);
        end
    end

    // redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1(REG,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backEN == 1'b1)
        begin
            redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_q <= $unsigned(redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_q);
        end
    end

    // leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x(MUX,381)@2
    assign leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_s or redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_q or leftShiftStage0Idx1_uid380_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q = redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_q;
            1'b1 : leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid380_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul50_ff_snow_horizontal_compose97i19_vt_select_31(BITSELECT,71)@2
    assign i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b = leftShiftStage0_uid382_i_mul50_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo(STALLENABLE,791)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg0 <= '0;
            SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg0 <= SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_toReg0;
            // Successor 1
            SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg1 <= SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed0 = (~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backStall) & SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireValid) | SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg0;
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed1 = (~ (SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_backStall) & SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireValid) | SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_StallValid = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_backStall & SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireValid;
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_toReg0 = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_StallValid & SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed0;
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_toReg1 = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_StallValid & SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_or0 = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed0;
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireStall = ~ (SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_consumed1 & SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_or0);
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_backStall = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_V0 = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireValid & ~ (SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg0);
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_V1 = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireValid & ~ (SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_wireValid = redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_out;

    // redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo(STALLFIFO,476)
    assign redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_in = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_V0;
    assign redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_in = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_backStall;
    assign redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_data_in = i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b;
    assign redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_in_bitsignaltemp = redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_in[0];
    assign redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_in_bitsignaltemp = redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_in[0];
    assign redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_out[0] = redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_out_bitsignaltemp;
    assign redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_out[0] = redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(31),
        .IMPL("ram")
    ) theredist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo (
        .valid_in(redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b),
        .valid_out(redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo(BITJOIN,574)
    assign bubble_join_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_q = redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_data_out;

    // bubble_select_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo(BITSELECT,575)
    assign bubble_select_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_b = $unsigned(bubble_join_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_q[30:0]);

    // i_mul50_ff_snow_horizontal_compose97i19_vt_join(BITJOIN,70)@34
    assign i_mul50_ff_snow_horizontal_compose97i19_vt_join_q = {bubble_select_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_b, GND_q};

    // redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0(REG,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backEN == 1'b1)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_q <= $unsigned(i_mul50_ff_snow_horizontal_compose97i19_vt_join_q);
        end
    end

    // SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0(STALLENABLE,792)
    // Valid signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_V0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_s_tv_0 = SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backStall & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backEN = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_v_s_0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backEN & SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_V0;
    // Backward Stall generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backStall = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_backEN == 1'b0)
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_R_v_0 & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_v_s_0;
            end

        end
    end

    // SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1(STALLREG,948)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid <= 1'b0;
            SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backStall & (SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid | SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_i_valid);

            if (SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_data0 <= $unsigned(redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_i_valid = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_V0;
    // Stall signal propagation
    assign SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backStall = SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid | ~ (SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_i_valid);

    // Valid
    assign SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_V = SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid == 1'b1 ? SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid : SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_i_valid;

    assign SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_D0 = SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_valid == 1'b1 ? SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_r_data0 : redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_0_q;

    // redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_backEN == 1'b1)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_q <= $unsigned(SR_SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_D0);
        end
    end

    // redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2(REG,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backEN == 1'b1)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_q <= $unsigned(redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_q);
        end
    end

    // redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backEN == 1'b1)
        begin
            redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_q <= $unsigned(redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_q);
        end
    end

    // i_addr_v_v_ff_snow_horizontal_compose97i30(ADD,29)@38
    assign i_addr_v_v_ff_snow_horizontal_compose97i30_a = {1'b0, redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_q};
    assign i_addr_v_v_ff_snow_horizontal_compose97i30_b = {1'b0, c_i32_169_q};
    assign i_addr_v_v_ff_snow_horizontal_compose97i30_o = $unsigned(i_addr_v_v_ff_snow_horizontal_compose97i30_a) + $unsigned(i_addr_v_v_ff_snow_horizontal_compose97i30_b);
    assign i_addr_v_v_ff_snow_horizontal_compose97i30_q = i_addr_v_v_ff_snow_horizontal_compose97i30_o[32:0];

    // bgTrunc_i_addr_v_v_ff_snow_horizontal_compose97i30_sel_x(BITSELECT,164)@38
    assign bgTrunc_i_addr_v_v_ff_snow_horizontal_compose97i30_sel_x_b = i_addr_v_v_ff_snow_horizontal_compose97i30_q[31:0];

    // i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31(BITSELECT,32)@38
    assign i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b = bgTrunc_i_addr_v_v_ff_snow_horizontal_compose97i30_sel_x_b[31:1];

    // redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo(STALLFIFO,482)
    assign redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_in = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_V0;
    assign redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_in = SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_backStall;
    assign redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_data_in = i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b;
    assign redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_in_bitsignaltemp = redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_in[0];
    assign redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_in_bitsignaltemp = redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_in[0];
    assign redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_out[0] = redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_out_bitsignaltemp;
    assign redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_out[0] = redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(31),
        .IMPL("ram")
    ) theredist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo (
        .valid_in(redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_in_bitsignaltemp),
        .data_in(i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b),
        .valid_out(redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2(STALLENABLE,794)
    // Valid signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_V0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_s_tv_0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backStall & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backEN = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_v_s_0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backEN & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_1_V0;
    // Backward Stall generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backStall = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_backEN == 1'b0)
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_R_v_0 & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_s_tv_0;
            end
            else
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_v_s_0;
            end

        end
    end

    // SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3(STALLENABLE,795)
    // Valid signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_V0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_0;
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_V1 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_1;
    // Stall signal propagation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_0 = redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_stall_out & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_0;
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_1 = SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backStall & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_1;
    // Backward Enable generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_or0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_0;
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backEN = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_1 | SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_v_s_0 = SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backEN & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_2_V0;
    // Backward Stall generation
    assign SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backStall = ~ (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_0 <= 1'b0;
            SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backEN == 1'b0)
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_0 & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_0;
            end
            else
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_0 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_v_s_0;
            end

            if (SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_backEN == 1'b0)
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_1 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_1 & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_s_tv_1;
            end
            else
            begin
                SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_R_v_1 <= SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_v_s_0;
            end

        end
    end

    // SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0(STALLENABLE,782)
    // Valid signal propagation
    assign SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_V0 = SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_s_tv_0 = SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_backStall & SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backEN = ~ (SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_v_s_0 = SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backEN & SE_redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_V1;
    // Backward Stall generation
    assign SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backStall = ~ (SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_R_v_0 <= SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_R_v_0 & SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_R_v_0 <= SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join(STALLENABLE,648)
    // Valid signal propagation
    assign SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_V0 = SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_backStall = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_stall | ~ (SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_and0 = SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_V0;
    assign SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_and1 = i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_valid_out & SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_and0;
    assign SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_wireValid = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_V1 & SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_and1;

    // xMSB_uid392_i_shr48_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,391)@33
    assign xMSB_uid392_i_shr48_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add47_ff_snow_horizontal_compose97i49_sel_x_b[31:31]);

    // seMsb_to2_uid394(BITSELECT,393)@33
    assign seMsb_to2_uid394_in = $unsigned({{1{xMSB_uid392_i_shr48_ff_snow_horizontal_compose97i0_shift_x_b[0]}}, xMSB_uid392_i_shr48_ff_snow_horizontal_compose97i0_shift_x_b});
    assign seMsb_to2_uid394_b = $unsigned(seMsb_to2_uid394_in[1:0]);

    // rightShiftStage0Idx1Rng2_uid395_i_shr48_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,394)@33
    assign rightShiftStage0Idx1Rng2_uid395_i_shr48_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add47_ff_snow_horizontal_compose97i49_sel_x_b[31:2]);

    // rightShiftStage0Idx1_uid396_i_shr48_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,395)@33
    assign rightShiftStage0Idx1_uid396_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q = {seMsb_to2_uid394_b, rightShiftStage0Idx1Rng2_uid395_i_shr48_ff_snow_horizontal_compose97i0_shift_x_b};

    // c_i32_271(CONSTANT,17)
    assign c_i32_271_q = $unsigned(32'b00000000000000000000000000000010);

    // leftShiftStage0Idx1Rng1_uid421_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,420)@33
    assign leftShiftStage0Idx1Rng1_uid421_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in = bubble_select_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid421_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid421_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid422_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,421)@33
    assign leftShiftStage0Idx1_uid422_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid421_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(MUX,423)@33
    assign leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_b or leftShiftStage0Idx1_uid422_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_b;
            1'b1 : leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid422_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_snow_horizontal_compose97i47_vt_select_31(BITSELECT,86)@33
    assign i_unnamed_ff_snow_horizontal_compose97i47_vt_select_31_b = leftShiftStage0_uid424_dupName_1_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_unnamed_ff_snow_horizontal_compose97i47_vt_join(BITJOIN,85)@33
    assign i_unnamed_ff_snow_horizontal_compose97i47_vt_join_q = {i_unnamed_ff_snow_horizontal_compose97i47_vt_select_31_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44(BITJOIN,525)
    assign bubble_join_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_q = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44(BITSELECT,526)
    assign bubble_select_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_q[31:0]);

    // i_mul46_add51_ff_snow_horizontal_compose97i48(ADD,68)@33
    assign i_mul46_add51_ff_snow_horizontal_compose97i48_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_b};
    assign i_mul46_add51_ff_snow_horizontal_compose97i48_b = {1'b0, i_unnamed_ff_snow_horizontal_compose97i47_vt_join_q};
    assign i_mul46_add51_ff_snow_horizontal_compose97i48_o = $unsigned(i_mul46_add51_ff_snow_horizontal_compose97i48_a) + $unsigned(i_mul46_add51_ff_snow_horizontal_compose97i48_b);
    assign i_mul46_add51_ff_snow_horizontal_compose97i48_q = i_mul46_add51_ff_snow_horizontal_compose97i48_o[32:0];

    // bgTrunc_i_mul46_add51_ff_snow_horizontal_compose97i48_sel_x(BITSELECT,165)@33
    assign bgTrunc_i_mul46_add51_ff_snow_horizontal_compose97i48_sel_x_b = i_mul46_add51_ff_snow_horizontal_compose97i48_q[31:0];

    // i_add47_ff_snow_horizontal_compose97i49(ADD,24)@33
    assign i_add47_ff_snow_horizontal_compose97i49_a = {1'b0, bgTrunc_i_mul46_add51_ff_snow_horizontal_compose97i48_sel_x_b};
    assign i_add47_ff_snow_horizontal_compose97i49_b = {1'b0, c_i32_271_q};
    assign i_add47_ff_snow_horizontal_compose97i49_o = $unsigned(i_add47_ff_snow_horizontal_compose97i49_a) + $unsigned(i_add47_ff_snow_horizontal_compose97i49_b);
    assign i_add47_ff_snow_horizontal_compose97i49_q = i_add47_ff_snow_horizontal_compose97i49_o[32:0];

    // bgTrunc_i_add47_ff_snow_horizontal_compose97i49_sel_x(BITSELECT,163)@33
    assign bgTrunc_i_add47_ff_snow_horizontal_compose97i49_sel_x_b = i_add47_ff_snow_horizontal_compose97i49_q[31:0];

    // rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x(MUX,397)@33 + 1
    assign rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
        end
        else if (SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_backEN == 1'b1)
        begin
            unique case (rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_s)
                1'b0 : rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q <= bgTrunc_i_add47_ff_snow_horizontal_compose97i49_sel_x_b;
                1'b1 : rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q <= rightShiftStage0Idx1_uid396_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q;
                default : rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38(BITJOIN,528)
    assign bubble_join_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_q = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38(BITSELECT,529)
    assign bubble_select_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_q[31:0]);

    // i_sub49_ff_snow_horizontal_compose97i51(SUB,77)@34
    assign i_sub49_ff_snow_horizontal_compose97i51_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_b};
    assign i_sub49_ff_snow_horizontal_compose97i51_b = {1'b0, rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_q};
    assign i_sub49_ff_snow_horizontal_compose97i51_o = $unsigned(i_sub49_ff_snow_horizontal_compose97i51_a) - $unsigned(i_sub49_ff_snow_horizontal_compose97i51_b);
    assign i_sub49_ff_snow_horizontal_compose97i51_q = i_sub49_ff_snow_horizontal_compose97i51_o[32:0];

    // bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x(BITSELECT,167)@34
    assign bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b = $unsigned(i_sub49_ff_snow_horizontal_compose97i51_q[31:0]);

    // i_idxprom51_ff_snow_horizontal_compose97i28_sel_x(BITSELECT,247)@34
    assign i_idxprom51_ff_snow_horizontal_compose97i28_sel_x_b = {32'b00000000000000000000000000000000, i_mul50_ff_snow_horizontal_compose97i19_vt_join_q[31:0]};

    // i_idxprom51_ff_snow_horizontal_compose97i28_vt_select_31(BITSELECT,48)@34
    assign i_idxprom51_ff_snow_horizontal_compose97i28_vt_select_31_b = i_idxprom51_ff_snow_horizontal_compose97i28_sel_x_b[31:1];

    // i_idxprom51_ff_snow_horizontal_compose97i28_vt_join(BITJOIN,47)@34
    assign i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_q = {i_idxprom40_ff_snow_horizontal_compose97i18_vt_const_63_q, i_idxprom51_ff_snow_horizontal_compose97i28_vt_select_31_b, GND_q};

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,447)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_q[63:54];
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_q[53:36];
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_q[35:18];
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_q[17:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,437)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,372)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,439)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,371)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,373)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,438)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,369)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,440)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,370)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,374)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,237)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx52_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx52_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,239)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx52_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // SE_out_bubble_out_stall_entry_7(STALLENABLE,881)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_7_V0 = SE_out_bubble_out_stall_entry_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_7_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_stall_out | ~ (SE_out_bubble_out_stall_entry_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_7_wireValid = bubble_out_stall_entry_7_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6(BLACKBOX,60)@34
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10079_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_7_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6(BITJOIN,518)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6(BITSELECT,519)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_q[63:0]);

    // i_arrayidx52_ff_snow_horizontal_compose97i0_add_x(ADD,231)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_b};
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx52_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx52_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,240)@34
    assign i_arrayidx52_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx52_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52(BLACKBOX,67)@34
    // in in_i_stall@20000000
    // out out_lsu_memdep_32_o_active@20000000
    // out out_memdep_32_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_32_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_32_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_32_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@39
    // out out_o_writeack@39
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_32_0 thei_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx52_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(bubble_select_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_backStall),
        .in_i_valid(SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_V0),
        .in_i_writedata(bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_32_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_32_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_32_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_32_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lsu_memdep_32_o_active(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_lsu_memdep_32_o_active),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52(STALLENABLE,631)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed0 = (~ (SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireValid) | SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed1 = (~ (SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_backStall) & SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireValid) | SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_StallValid = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_backStall & SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_toReg0 = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_StallValid & SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_toReg1 = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_StallValid & SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_or0 = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_consumed1 & SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_backStall = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_V0 = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_V1 = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_wireValid = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_valid;

    // redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(STALLFIFO,467)
    assign redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in = SE_i_arrayidx45_ff_snow_horizontal_compose97i0_mult_extender_x_V1;
    assign redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in = SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall;
    assign redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_in = i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    assign redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in_bitsignaltemp = redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in[0];
    assign redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in_bitsignaltemp = redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in[0];
    assign redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out[0] = redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out_bitsignaltemp;
    assign redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out[0] = redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo (
        .valid_in(redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .valid_out(redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(STALLENABLE,778)
    // Valid signal propagation
    assign SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_V0 = SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_backStall = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_stall | ~ (SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_and0 = redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_valid_out;
    assign SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_V0 & SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52(BITJOIN,531)
    assign bubble_join_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_q = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52(BITSELECT,532)
    assign bubble_select_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_q[0:0]);

    // bubble_join_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(BITJOIN,562)
    assign bubble_join_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_q = redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_data_out;

    // bubble_select_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo(BITSELECT,563)
    assign bubble_select_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_b = $unsigned(bubble_join_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_q[63:0]);

    // i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x(BLACKBOX,249)@39
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@71
    // out out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata_0_tpl@71
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_unmaskedload10_0 thei_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_backStall),
        .in_i_valid(SE_out_redist0_i_arrayidx45_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_38_fifo_V0),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_valid),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_273(CONSTANT,18)
    assign c_i32_273_q = $unsigned(32'b11111111111111111111111111111110);

    // i_v_v_v_ff_snow_horizontal_compose97i29(ADD,91)@38
    assign i_v_v_v_ff_snow_horizontal_compose97i29_a = {1'b0, redist11_i_mul50_ff_snow_horizontal_compose97i19_vt_join_q_4_3_q};
    assign i_v_v_v_ff_snow_horizontal_compose97i29_b = {1'b0, c_i32_273_q};
    assign i_v_v_v_ff_snow_horizontal_compose97i29_o = $unsigned(i_v_v_v_ff_snow_horizontal_compose97i29_a) + $unsigned(i_v_v_v_ff_snow_horizontal_compose97i29_b);
    assign i_v_v_v_ff_snow_horizontal_compose97i29_q = i_v_v_v_ff_snow_horizontal_compose97i29_o[32:0];

    // bgTrunc_i_v_v_v_ff_snow_horizontal_compose97i29_sel_x(BITSELECT,172)@38
    assign bgTrunc_i_v_v_v_ff_snow_horizontal_compose97i29_sel_x_b = i_v_v_v_ff_snow_horizontal_compose97i29_q[31:0];

    // i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31(BITSELECT,94)@38
    assign i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b = bgTrunc_i_v_v_v_ff_snow_horizontal_compose97i29_sel_x_b[31:1];

    // redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_q <= $unsigned(i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b);
        end
    end

    // i_v_v_v_ff_snow_horizontal_compose97i29_vt_join(BITJOIN,93)@39
    assign i_v_v_v_ff_snow_horizontal_compose97i29_vt_join_q = {redist5_i_v_v_v_ff_snow_horizontal_compose97i29_vt_select_31_b_1_0_q, GND_q};

    // i_v_v_ff_snow_horizontal_compose97i36_sel_x(BITSELECT,277)@39
    assign i_v_v_ff_snow_horizontal_compose97i36_sel_x_b = $unsigned({{32{i_v_v_v_ff_snow_horizontal_compose97i29_vt_join_q[31]}}, i_v_v_v_ff_snow_horizontal_compose97i29_vt_join_q[31:0]});

    // i_v_v_ff_snow_horizontal_compose97i36_vt_select_63(BITSELECT,90)@39
    assign i_v_v_ff_snow_horizontal_compose97i36_vt_select_63_b = $unsigned(i_v_v_ff_snow_horizontal_compose97i36_sel_x_b[63:1]);

    // i_v_v_ff_snow_horizontal_compose97i36_vt_join(BITJOIN,89)@39
    assign i_v_v_ff_snow_horizontal_compose97i36_vt_join_q = {i_v_v_ff_snow_horizontal_compose97i36_vt_select_63_b, GND_q};

    // i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,448)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_v_v_ff_snow_horizontal_compose97i36_vt_join_q[63:54];
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_v_v_ff_snow_horizontal_compose97i36_vt_join_q[53:36];
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_v_v_ff_snow_horizontal_compose97i36_vt_join_q[35:18];
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_v_v_ff_snow_horizontal_compose97i36_vt_join_q[17:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,441)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,414)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_v_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,443)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,413)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_v_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,415)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,442)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,411)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_v_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,444)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_v_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,412)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_v_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_v_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,416)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_v_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_v_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,273)@39
    assign i_v_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_v_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_v_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,275)@39
    assign i_v_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_v_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7(BITJOIN,515)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7(BITSELECT,516)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_q[63:0]);

    // i_v_ff_snow_horizontal_compose97i0_add_x(ADD,267)@39
    assign i_v_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10078_ff_snow_horizontal_compose97i7_b};
    assign i_v_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_v_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_v_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_v_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_v_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_v_ff_snow_horizontal_compose97i0_add_x_q = i_v_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,276)@39
    assign i_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_v_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x(BLACKBOX,250)@39
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@71
    // out out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata_0_tpl@71
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_unmaskedload11811_0 thei_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_v_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_backStall),
        .in_i_valid(SE_i_v_v_ff_snow_horizontal_compose97i36_vt_join_V0),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_valid),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo(STALLFIFO,468)
    assign redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_V1;
    assign redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_in = SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_backStall;
    assign redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_data_in = bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b;
    assign redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_in_bitsignaltemp = redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_in[0];
    assign redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_in_bitsignaltemp = redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_in[0];
    assign redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_out[0] = redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_out_bitsignaltemp;
    assign redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_out[0] = redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo (
        .valid_in(redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b),
        .valid_out(redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo(STALLENABLE,780)
    // Valid signal propagation
    assign SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_V0 = SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_backStall = SE_coalesced_delay_0_0_backStall | ~ (SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_and0 = redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_valid_out;
    assign SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_and1 = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_valid & SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_and0;
    assign SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_wireValid = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_valid & SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_and1;

    // SE_coalesced_delay_0_0(STALLENABLE,799)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo(BITJOIN,565)
    assign bubble_join_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_q = redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_data_out;

    // bubble_select_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo(BITSELECT,566)
    assign bubble_select_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_b = $unsigned(bubble_join_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x(BITJOIN,552)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_q = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_o_readdata_0_tpl;

    // bubble_select_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x(BITSELECT,553)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x(BITJOIN,549)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_q = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_o_readdata_0_tpl;

    // bubble_select_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x(BITSELECT,550)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_q[31:0]);

    // i_sub61_ff_snow_horizontal_compose97i57(SUB,78)@71
    assign i_sub61_ff_snow_horizontal_compose97i57_a = {1'b0, bubble_select_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_b};
    assign i_sub61_ff_snow_horizontal_compose97i57_b = {1'b0, bubble_select_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_b};
    assign i_sub61_ff_snow_horizontal_compose97i57_o = $unsigned(i_sub61_ff_snow_horizontal_compose97i57_a) - $unsigned(i_sub61_ff_snow_horizontal_compose97i57_b);
    assign i_sub61_ff_snow_horizontal_compose97i57_q = i_sub61_ff_snow_horizontal_compose97i57_o[32:0];

    // bgTrunc_i_sub61_ff_snow_horizontal_compose97i57_sel_x(BITSELECT,168)@71
    assign bgTrunc_i_sub61_ff_snow_horizontal_compose97i57_sel_x_b = $unsigned(i_sub61_ff_snow_horizontal_compose97i57_q[31:0]);

    // i_sub65_ff_snow_horizontal_compose97i59(SUB,79)@71
    assign i_sub65_ff_snow_horizontal_compose97i59_a = {1'b0, bgTrunc_i_sub61_ff_snow_horizontal_compose97i57_sel_x_b};
    assign i_sub65_ff_snow_horizontal_compose97i59_b = {1'b0, bubble_select_redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_b};
    assign i_sub65_ff_snow_horizontal_compose97i59_o = $unsigned(i_sub65_ff_snow_horizontal_compose97i59_a) - $unsigned(i_sub65_ff_snow_horizontal_compose97i59_b);
    assign i_sub65_ff_snow_horizontal_compose97i59_q = i_sub65_ff_snow_horizontal_compose97i59_o[32:0];

    // bgTrunc_i_sub65_ff_snow_horizontal_compose97i59_sel_x(BITSELECT,169)@71
    assign bgTrunc_i_sub65_ff_snow_horizontal_compose97i59_sel_x_b = $unsigned(i_sub65_ff_snow_horizontal_compose97i59_q[31:0]);

    // leftShiftStage0Idx1Rng1_uid387_i_mul78_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,386)@71
    assign leftShiftStage0Idx1Rng1_uid387_i_mul78_ff_snow_horizontal_compose97i0_shift_x_in = bubble_select_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid387_i_mul78_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid387_i_mul78_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid388_i_mul78_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,387)@71
    assign leftShiftStage0Idx1_uid388_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid387_i_mul78_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x(MUX,389)@71
    assign leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_b or leftShiftStage0Idx1_uid388_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_b;
            1'b1 : leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid388_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul78_ff_snow_horizontal_compose97i58_vt_select_31(BITSELECT,74)@71
    assign i_mul78_ff_snow_horizontal_compose97i58_vt_select_31_b = leftShiftStage0_uid390_i_mul78_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_mul78_ff_snow_horizontal_compose97i58_vt_join(BITJOIN,73)@71
    assign i_mul78_ff_snow_horizontal_compose97i58_vt_join_q = {i_mul78_ff_snow_horizontal_compose97i58_vt_select_31_b, GND_q};

    // i_sub79_ff_snow_horizontal_compose97i60(SUB,80)@71
    assign i_sub79_ff_snow_horizontal_compose97i60_a = {1'b0, bubble_select_i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_b};
    assign i_sub79_ff_snow_horizontal_compose97i60_b = {1'b0, i_mul78_ff_snow_horizontal_compose97i58_vt_join_q};
    assign i_sub79_ff_snow_horizontal_compose97i60_o = $unsigned(i_sub79_ff_snow_horizontal_compose97i60_a) - $unsigned(i_sub79_ff_snow_horizontal_compose97i60_b);
    assign i_sub79_ff_snow_horizontal_compose97i60_q = i_sub79_ff_snow_horizontal_compose97i60_o[32:0];

    // bgTrunc_i_sub79_ff_snow_horizontal_compose97i60_sel_x(BITSELECT,170)@71
    assign bgTrunc_i_sub79_ff_snow_horizontal_compose97i60_sel_x_b = $unsigned(i_sub79_ff_snow_horizontal_compose97i60_q[31:0]);

    // join_for_coalesced_delay_0(BITJOIN,465)
    assign join_for_coalesced_delay_0_q = {bgTrunc_i_sub65_ff_snow_horizontal_compose97i59_sel_x_b, bgTrunc_i_sub79_ff_snow_horizontal_compose97i60_sel_x_b};

    // coalesced_delay_0_0(REG,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,466)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32(STALLENABLE,619)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_valid_out;

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32(BLACKBOX,61)@72
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000011Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bubble_select_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_backStall),
        .in_valid_in(SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_V1),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo(STALLENABLE,787)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg0 <= '0;
            SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg0 <= SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_toReg0;
            // Successor 1
            SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg1 <= SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed0 = (~ (SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_backStall) & SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireValid) | SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg0;
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_stall_out) & SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireValid) | SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg1;
    // Consuming
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_StallValid = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_backStall & SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireValid;
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_toReg0 = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_StallValid & SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed0;
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_toReg1 = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_StallValid & SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_or0 = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed0;
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireStall = ~ (SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_consumed1 & SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_or0);
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_backStall = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_V0 = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireValid & ~ (SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg0);
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_V1 = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireValid & ~ (SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_wireValid = redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_out;

    // redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo(STALLFIFO,473)
    assign redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_in = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V2;
    assign redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_in = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_backStall;
    assign redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_data_in = i_tobool_ff_snow_horizontal_compose97i20_q;
    assign redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_in_bitsignaltemp = redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_in[0];
    assign redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_in_bitsignaltemp = redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_in[0];
    assign redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_out[0] = redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_out_bitsignaltemp;
    assign redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_out[0] = redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo (
        .valid_in(redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_in_bitsignaltemp),
        .data_in(i_tobool_ff_snow_horizontal_compose97i20_q),
        .valid_out(redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo(BITJOIN,571)
    assign bubble_join_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_q = redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_data_out;

    // bubble_select_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo(BITSELECT,572)
    assign bubble_select_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_b = $unsigned(bubble_join_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_val_ff_snow_horizontal_compose97i61(MUX,95)@72
    assign i_val_ff_snow_horizontal_compose97i61_s = bubble_select_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_b;
    always @(i_val_ff_snow_horizontal_compose97i61_s or sel_for_coalesced_delay_0_b or sel_for_coalesced_delay_0_c)
    begin
        unique case (i_val_ff_snow_horizontal_compose97i61_s)
            1'b0 : i_val_ff_snow_horizontal_compose97i61_q = sel_for_coalesced_delay_0_b;
            1'b1 : i_val_ff_snow_horizontal_compose97i61_q = sel_for_coalesced_delay_0_c;
            default : i_val_ff_snow_horizontal_compose97i61_q = 32'b0;
        endcase
    end

    // SE_out_bubble_out_stall_entry_9(STALLENABLE,885)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_9_V0 = SE_out_bubble_out_stall_entry_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_9_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_stall_out | ~ (SE_out_bubble_out_stall_entry_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_9_wireValid = bubble_out_stall_entry_9_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8(BLACKBOX,58)@72
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10077_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_9_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo(STALLENABLE,798)
    // Valid signal propagation
    assign SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_V0 = SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_backStall = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_stall | ~ (SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and0 = redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_valid_out;
    assign SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and1 = i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_valid_out & SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and0;
    assign SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and2 = SE_coalesced_delay_0_0_V0 & SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and1;
    assign SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_wireValid = SE_out_redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_V0 & SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_and2;

    // bubble_join_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo(BITJOIN,577)
    assign bubble_join_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_q = redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_data_out;

    // bubble_select_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo(BITSELECT,578)
    assign bubble_select_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_b = $unsigned(bubble_join_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_q[30:0]);

    // i_addr_v_v_ff_snow_horizontal_compose97i30_vt_join(BITJOIN,31)@72
    assign i_addr_v_v_ff_snow_horizontal_compose97i30_vt_join_q = {bubble_select_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_b, VCC_q};

    // i_addr_v_ff_snow_horizontal_compose97i37_sel_x(BITSELECT,210)@72
    assign i_addr_v_ff_snow_horizontal_compose97i37_sel_x_b = $unsigned({{32{i_addr_v_v_ff_snow_horizontal_compose97i30_vt_join_q[31]}}, i_addr_v_v_ff_snow_horizontal_compose97i30_vt_join_q[31:0]});

    // i_addr_v_ff_snow_horizontal_compose97i37_vt_select_63(BITSELECT,28)@72
    assign i_addr_v_ff_snow_horizontal_compose97i37_vt_select_63_b = $unsigned(i_addr_v_ff_snow_horizontal_compose97i37_sel_x_b[63:1]);

    // i_addr_v_ff_snow_horizontal_compose97i37_vt_join(BITJOIN,27)@72
    assign i_addr_v_ff_snow_horizontal_compose97i37_vt_join_q = {i_addr_v_ff_snow_horizontal_compose97i37_vt_select_63_b, VCC_q};

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,445)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_addr_v_ff_snow_horizontal_compose97i37_vt_join_q[63:54];
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_addr_v_ff_snow_horizontal_compose97i37_vt_join_q[53:36];
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_addr_v_ff_snow_horizontal_compose97i37_vt_join_q[35:18];
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_addr_v_ff_snow_horizontal_compose97i37_vt_join_q[17:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,425)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,318)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_addr_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,427)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,317)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_addr_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,319)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,426)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,315)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_addr_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,428)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_addr_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,316)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_addr_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,320)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_addr_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,206)@72
    assign i_addr_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_addr_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_addr_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,208)@72
    assign i_addr_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_addr_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8(BITJOIN,512)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8(BITSELECT,513)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_q[63:0]);

    // i_addr_ff_snow_horizontal_compose97i0_add_x(ADD,200)@72
    assign i_addr_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10077_ff_snow_horizontal_compose97i8_b};
    assign i_addr_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_addr_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_addr_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_addr_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_addr_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_addr_ff_snow_horizontal_compose97i0_add_x_q = i_addr_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_addr_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,209)@72
    assign i_addr_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_addr_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x(BLACKBOX,248)@72
    // in in_i_stall@20000000
    // out out_lsu_memdep_33_o_active@20000000
    // out out_memdep_33_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_33_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_33_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_33_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@77
    // out out_o_writeack@77
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_33_0 thei_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_addr_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_backStall),
        .in_i_valid(SE_out_redist13_i_addr_v_v_ff_snow_horizontal_compose97i30_vt_select_31_b_34_fifo_V0),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_33_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_33_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_33_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_33_ff_snow_horizontal_compose97i_avm_writeack),
        .in_i_writedata_0_tpl(i_val_ff_snow_horizontal_compose97i61_q),
        .out_lsu_memdep_33_o_active(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_lsu_memdep_33_o_active),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x(BITJOIN,546)
    assign bubble_join_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_q = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x(BITSELECT,547)
    assign bubble_select_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_q[0:0]);

    // i_arrayidx87_ff_snow_horizontal_compose97i0_c_i64_41_x(CONSTANT,242)
    assign i_arrayidx87_ff_snow_horizontal_compose97i0_c_i64_41_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10(BITJOIN,506)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10(BITSELECT,507)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_q[63:0]);

    // i_arrayidx87_ff_snow_horizontal_compose97i0_add_x(ADD,241)@77
    assign i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_b};
    assign i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx87_ff_snow_horizontal_compose97i0_c_i64_41_x_q};
    assign i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx87_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,244)@77
    assign i_arrayidx87_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx87_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x(BLACKBOX,252)@77
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@109
    // out out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata_0_tpl@109
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_unmaskedload12013_0 thei_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx87_ff_snow_horizontal_compose97i0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_V0),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_valid),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x(STALLENABLE,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10076_ff_snow_horizontal_compose97i9_backStall) & SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_backStall) & SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_backStall & SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_or0 = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_backStall = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_V1 = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_wireValid = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10(STALLENABLE,609)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_backStall = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_and0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_wireValid = SE_out_i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_and0;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10(BLACKBOX,56)@77
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10075_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_11_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_11(STALLENABLE,889)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_11_V0 = SE_out_bubble_out_stall_entry_11_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_11_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10075_ff_snow_horizontal_compose97i10_out_stall_out | ~ (SE_out_bubble_out_stall_entry_11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_11_wireValid = bubble_out_stall_entry_11_reg_valid_out;

    // bubble_out_stall_entry_11_reg(STALLFIFO,946)
    assign bubble_out_stall_entry_11_reg_valid_in = SE_stall_entry_V10;
    assign bubble_out_stall_entry_11_reg_stall_in = SE_out_bubble_out_stall_entry_11_backStall;
    assign bubble_out_stall_entry_11_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_11_reg_valid_in[0];
    assign bubble_out_stall_entry_11_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_11_reg_stall_in[0];
    assign bubble_out_stall_entry_11_reg_valid_out[0] = bubble_out_stall_entry_11_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_11_reg_stall_out[0] = bubble_out_stall_entry_11_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(78),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_11_reg (
        .valid_in(bubble_out_stall_entry_11_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_11_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_11_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_11_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_10_reg(STALLFIFO,945)
    assign bubble_out_stall_entry_10_reg_valid_in = SE_stall_entry_V9;
    assign bubble_out_stall_entry_10_reg_stall_in = SE_out_bubble_out_stall_entry_10_backStall;
    assign bubble_out_stall_entry_10_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_10_reg_valid_in[0];
    assign bubble_out_stall_entry_10_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_10_reg_stall_in[0];
    assign bubble_out_stall_entry_10_reg_valid_out[0] = bubble_out_stall_entry_10_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_10_reg_stall_out[0] = bubble_out_stall_entry_10_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(78),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_10_reg (
        .valid_in(bubble_out_stall_entry_10_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_10_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_10_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_10_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_9_reg(STALLFIFO,944)
    assign bubble_out_stall_entry_9_reg_valid_in = SE_stall_entry_V8;
    assign bubble_out_stall_entry_9_reg_stall_in = SE_out_bubble_out_stall_entry_9_backStall;
    assign bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_9_reg_valid_in[0];
    assign bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_9_reg_stall_in[0];
    assign bubble_out_stall_entry_9_reg_valid_out[0] = bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_9_reg_stall_out[0] = bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(73),
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

    // bubble_out_stall_entry_8_reg(STALLFIFO,943)
    assign bubble_out_stall_entry_8_reg_valid_in = SE_stall_entry_V7;
    assign bubble_out_stall_entry_8_reg_stall_in = SE_out_bubble_out_stall_entry_8_backStall;
    assign bubble_out_stall_entry_8_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_8_reg_valid_in[0];
    assign bubble_out_stall_entry_8_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_8_reg_stall_in[0];
    assign bubble_out_stall_entry_8_reg_valid_out[0] = bubble_out_stall_entry_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_8_reg_stall_out[0] = bubble_out_stall_entry_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_8_reg (
        .valid_in(bubble_out_stall_entry_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_7_reg(STALLFIFO,942)
    assign bubble_out_stall_entry_7_reg_valid_in = SE_stall_entry_V6;
    assign bubble_out_stall_entry_7_reg_stall_in = SE_out_bubble_out_stall_entry_7_backStall;
    assign bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_7_reg_valid_in[0];
    assign bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_7_reg_stall_in[0];
    assign bubble_out_stall_entry_7_reg_valid_out[0] = bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_7_reg_stall_out[0] = bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(35),
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

    // bubble_out_stall_entry_6_reg(STALLENABLE,941)
    // Valid signal propagation
    assign bubble_out_stall_entry_6_reg_V0 = bubble_out_stall_entry_6_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_stall_entry_6_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_p1024i32_b9965_ff_snow_horizontal_compose97i5_out_stall_out & bubble_out_stall_entry_6_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_stall_entry_6_reg_backEN = ~ (bubble_out_stall_entry_6_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_6_reg_v_s_0 = bubble_out_stall_entry_6_reg_backEN & SE_stall_entry_V5;
    // Backward Stall generation
    assign bubble_out_stall_entry_6_reg_backStall = ~ (bubble_out_stall_entry_6_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_6_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_6_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_6_reg_R_v_0 <= bubble_out_stall_entry_6_reg_R_v_0 & bubble_out_stall_entry_6_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_6_reg_R_v_0 <= bubble_out_stall_entry_6_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_stall_entry_4(STALLENABLE,875)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_4_V0 = SE_out_bubble_out_stall_entry_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_4_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_stall_out | ~ (SE_out_bubble_out_stall_entry_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_4_wireValid = bubble_out_stall_entry_4_reg_valid_out;

    // bubble_out_stall_entry_4_reg(STALLFIFO,940)
    assign bubble_out_stall_entry_4_reg_valid_in = SE_stall_entry_V4;
    assign bubble_out_stall_entry_4_reg_stall_in = SE_out_bubble_out_stall_entry_4_backStall;
    assign bubble_out_stall_entry_4_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_4_reg_valid_in[0];
    assign bubble_out_stall_entry_4_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_4_reg_stall_in[0];
    assign bubble_out_stall_entry_4_reg_valid_out[0] = bubble_out_stall_entry_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_4_reg_stall_out[0] = bubble_out_stall_entry_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_4_reg (
        .valid_in(bubble_out_stall_entry_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2(STALLENABLE,603)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_backStall = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_wireValid = i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2(BLACKBOX,53)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i32_width10184_0 thei_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4(BLACKBOX,51)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i32_shr85_0 thei_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1(BLACKBOX,50)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i32_inc90_0 thei_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0(BLACKBOX,49)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i1_cmp9687_0 thei_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,654)
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
            SE_stall_entry_fromReg9 <= '0;
            SE_stall_entry_fromReg10 <= '0;
            SE_stall_entry_fromReg11 <= '0;
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
            // Successor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
            // Successor 10
            SE_stall_entry_fromReg10 <= SE_stall_entry_toReg10;
            // Successor 11
            SE_stall_entry_fromReg11 <= SE_stall_entry_toReg11;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp9687_ff_snow_horizontal_compose97i0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_inc90_ff_snow_horizontal_compose97i1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_shr85_ff_snow_horizontal_compose97i4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (bubble_out_stall_entry_4_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (bubble_out_stall_entry_6_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (bubble_out_stall_entry_7_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (bubble_out_stall_entry_8_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (bubble_out_stall_entry_9_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (bubble_out_stall_entry_10_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    assign SE_stall_entry_consumed10 = (~ (bubble_out_stall_entry_11_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg10;
    assign SE_stall_entry_consumed11 = (~ (bubble_out_stall_entry_12_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg11;
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
    assign SE_stall_entry_toReg9 = SE_stall_entry_StallValid & SE_stall_entry_consumed9;
    assign SE_stall_entry_toReg10 = SE_stall_entry_StallValid & SE_stall_entry_consumed10;
    assign SE_stall_entry_toReg11 = SE_stall_entry_StallValid & SE_stall_entry_consumed11;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_or8 = SE_stall_entry_consumed8 & SE_stall_entry_or7;
    assign SE_stall_entry_or9 = SE_stall_entry_consumed9 & SE_stall_entry_or8;
    assign SE_stall_entry_or10 = SE_stall_entry_consumed10 & SE_stall_entry_or9;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed11 & SE_stall_entry_or10);
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
    assign SE_stall_entry_V9 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg9);
    assign SE_stall_entry_V10 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg10);
    assign SE_stall_entry_V11 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg11);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_out_stall_entry_12_reg(STALLFIFO,947)
    assign bubble_out_stall_entry_12_reg_valid_in = SE_stall_entry_V11;
    assign bubble_out_stall_entry_12_reg_stall_in = SE_out_bubble_out_stall_entry_12_backStall;
    assign bubble_out_stall_entry_12_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_12_reg_valid_in[0];
    assign bubble_out_stall_entry_12_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_12_reg_stall_in[0];
    assign bubble_out_stall_entry_12_reg_valid_out[0] = bubble_out_stall_entry_12_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_12_reg_stall_out[0] = bubble_out_stall_entry_12_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(119),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_12_reg (
        .valid_in(bubble_out_stall_entry_12_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_12_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_12_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_12_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_12(STALLENABLE,891)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_12_V0 = SE_out_bubble_out_stall_entry_12_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_12_backStall = i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_stall_out | ~ (SE_out_bubble_out_stall_entry_12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_12_wireValid = bubble_out_stall_entry_12_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11(BLACKBOX,52)@118
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i32_width10183_0 thei_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_12_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11(STALLENABLE,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed0 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_wireValid = i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11(BITJOIN,494)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_q = i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11(BITSELECT,495)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_q[31:0]);

    // i_sub94_ff_snow_horizontal_compose97i17(ADD,81)@118
    assign i_sub94_ff_snow_horizontal_compose97i17_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_b};
    assign i_sub94_ff_snow_horizontal_compose97i17_b = {1'b0, c_i32_169_q};
    assign i_sub94_ff_snow_horizontal_compose97i17_o = $unsigned(i_sub94_ff_snow_horizontal_compose97i17_a) + $unsigned(i_sub94_ff_snow_horizontal_compose97i17_b);
    assign i_sub94_ff_snow_horizontal_compose97i17_q = i_sub94_ff_snow_horizontal_compose97i17_o[32:0];

    // bgTrunc_i_sub94_ff_snow_horizontal_compose97i17_sel_x(BITSELECT,171)@118
    assign bgTrunc_i_sub94_ff_snow_horizontal_compose97i17_sel_x_b = i_sub94_ff_snow_horizontal_compose97i17_q[31:0];

    // i_cmp9594_ff_snow_horizontal_compose97i24(COMPARE,37)@118
    assign i_cmp9594_ff_snow_horizontal_compose97i24_a = $unsigned({{2{c_i32_271_q[31]}}, c_i32_271_q});
    assign i_cmp9594_ff_snow_horizontal_compose97i24_b = $unsigned({{2{bgTrunc_i_sub94_ff_snow_horizontal_compose97i17_sel_x_b[31]}}, bgTrunc_i_sub94_ff_snow_horizontal_compose97i17_sel_x_b});
    assign i_cmp9594_ff_snow_horizontal_compose97i24_o = $unsigned($signed(i_cmp9594_ff_snow_horizontal_compose97i24_a) - $signed(i_cmp9594_ff_snow_horizontal_compose97i24_b));
    assign i_cmp9594_ff_snow_horizontal_compose97i24_c[0] = i_cmp9594_ff_snow_horizontal_compose97i24_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34(BLACKBOX,62)@118
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000012Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(i_cmp9594_ff_snow_horizontal_compose97i24_c),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_V1),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26(BLACKBOX,64)@118
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000014Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(bgTrunc_i_sub94_ff_snow_horizontal_compose97i17_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_width10183_ff_snow_horizontal_compose97i11_V0),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x(BITJOIN,558)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_q = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_o_readdata_0_tpl;

    // bubble_select_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x(BITSELECT,559)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x(BITJOIN,555)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_q = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_o_readdata_0_tpl;

    // bubble_select_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x(BITSELECT,556)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_q[31:0]);

    // i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x(BLACKBOX,282)@109
    // in in_i_stall@20000000
    // out out_lsu_memdep_34_o_active@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@118
    // out out_c0_exit132_0_tpl@118
    ff_snow_horizontal_compose97i_i_sfc_s_c0A000000Zizontal_compose97i67 thei_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_0_1_tpl(bubble_select_i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_b),
        .in_c0_eni2_0_2_tpl(bubble_select_i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_b),
        .out_lsu_memdep_34_o_active(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_lsu_memdep_34_o_active),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_address(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_enable(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_read(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_write(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_o_valid),
        .out_c0_exit132_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg(STALLFIFO,938)
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(47),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1(STALLENABLE,853)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and2 = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_and3;

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg(STALLFIFO,939)
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(85),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39(STALLENABLE,623)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_valid_out;

    // bubble_join_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo(BITJOIN,568)
    assign bubble_join_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_q = redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_data_out;

    // bubble_select_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo(BITSELECT,569)
    assign bubble_select_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_b = $unsigned(bubble_join_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39(BLACKBOX,63)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000013Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(bubble_select_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_backStall),
        .in_valid_in(SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_V1),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join(STALLENABLE,592)
    // Valid signal propagation
    assign SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_V0 = SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_backStall = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_o_stall | ~ (SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and0 = SE_out_redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_V1;
    assign SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and1 = i_llvm_fpga_ffwd_dest_p1024i32_temp10079_ff_snow_horizontal_compose97i6_out_valid_out & SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and0;
    assign SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and2 = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_V0 & SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and1;
    assign SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_wireValid = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_V0 & SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_and2;

    // SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo(STALLENABLE,785)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg0 <= '0;
            SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg0 <= SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg1 <= SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed0 = (~ (SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_backStall) & SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireValid) | SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg0;
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_stall_out) & SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireValid) | SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_StallValid = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_backStall & SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireValid;
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_toReg0 = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_StallValid & SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed0;
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_toReg1 = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_StallValid & SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_or0 = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed0;
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireStall = ~ (SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_consumed1 & SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_or0);
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_backStall = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_V0 = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireValid & ~ (SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg0);
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_V1 = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireValid & ~ (SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_wireValid = redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_out;

    // redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo(STALLFIFO,472)
    assign redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_in = SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_V1;
    assign redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_in = SE_out_redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_backStall;
    assign redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_data_in = redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_q;
    assign redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_in_bitsignaltemp = redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_in[0];
    assign redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_in_bitsignaltemp = redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_in[0];
    assign redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_out[0] = redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_out_bitsignaltemp;
    assign redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_out[0] = redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo (
        .valid_in(redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_q),
        .valid_out(redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0(STALLENABLE,796)
    // Valid signal propagation
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V0 = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_0;
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V1 = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_1;
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V2 = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_0 = SE_in_i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_backStall & SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_0;
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_1 = SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backStall & SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_1;
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_2 = redist8_i_tobool_ff_snow_horizontal_compose97i20_q_71_fifo_stall_out & SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_or0 = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_0;
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_or1 = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_1 | SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_or0;
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backEN = ~ (SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_2 | SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_v_s_0 = SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_width10184_ff_snow_horizontal_compose97i2_V0;
    // Backward Stall generation
    assign SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backStall = ~ (SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_0 <= 1'b0;
            SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_1 <= 1'b0;
            SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_0 <= SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_0 & SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_0 <= SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_v_s_0;
            end

            if (SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_1 <= SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_1 & SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_1 <= SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_v_s_0;
            end

            if (SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_2 <= SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_2 & SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_R_v_2 <= SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0(STALLENABLE,783)
    // Valid signal propagation
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_V0 = SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_0;
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_V1 = SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_backStall & SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_0;
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_1 = redist7_i_unnamed_ff_snow_horizontal_compose97i31_q_33_fifo_stall_out & SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_or0 = SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_0;
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backEN = ~ (SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_1 | SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_v_s_0 = SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backEN & SE_redist12_i_and_ff_snow_horizontal_compose97i13_vt_select_0_b_1_0_V1;
    // Backward Stall generation
    assign SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backStall = ~ (SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_0 <= 1'b0;
            SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_0 <= SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_0 & SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_0 <= SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_v_s_0;
            end

            if (SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_1 <= SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_1 & SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_R_v_1 <= SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_v_s_0;
            end

        end
    end

    // SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1(STALLENABLE,789)
    // Valid signal propagation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_V0 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_0;
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_V1 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_0 = redist10_i_mul50_ff_snow_horizontal_compose97i19_vt_select_31_b_32_fifo_stall_out & SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_0;
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_backStall & SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_or0 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_0;
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backEN = ~ (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_1 | SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_v_s_0 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backEN & SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_0_V0;
    // Backward Stall generation
    assign SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backStall = ~ (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_0 <= 1'b0;
            SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backEN == 1'b0)
            begin
                SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_0 <= SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_0 & SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_0;
            end
            else
            begin
                SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_0 <= SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_v_s_0;
            end

            if (SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_backEN == 1'b0)
            begin
                SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_1 <= SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_1 & SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_s_tv_1;
            end
            else
            begin
                SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_R_v_1 <= SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3(BLACKBOX,55)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9966_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_4_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3(STALLENABLE,607)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_backStall = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_and1 = SE_redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_wireValid = SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_and1;

    // SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38(STALLENABLE,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg0 <= SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg1 <= SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed0 = (~ (SE_i_idxprom51_ff_snow_horizontal_compose97i28_vt_join_backStall) & SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireValid) | SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed1 = (~ (redist3_bgTrunc_i_sub49_ff_snow_horizontal_compose97i51_sel_x_b_37_fifo_stall_out) & SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireValid) | SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_StallValid = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_backStall & SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_toReg0 = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_StallValid & SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_toReg1 = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_StallValid & SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_or0 = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_consumed1 & SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_or0);
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_backStall = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_V0 = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_V1 = SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_and0 = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_wireValid = SE_rightShiftStage0_uid398_i_shr48_ff_snow_horizontal_compose97i0_shift_x_V0 & SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_and0;

    // redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0(REG,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_backEN == 1'b1)
        begin
            redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_q <= $unsigned(i_unnamed_ff_snow_horizontal_compose97i31_q);
        end
    end

    // i_idxprom40_ff_snow_horizontal_compose97i18_sel_x(BITSELECT,245)@2
    assign i_idxprom40_ff_snow_horizontal_compose97i18_sel_x_b = {32'b00000000000000000000000000000000, redist9_i_select58_ff_snow_horizontal_compose97i12_q_2_1_q[31:0]};

    // i_idxprom40_ff_snow_horizontal_compose97i18_vt_select_31(BITSELECT,41)@2
    assign i_idxprom40_ff_snow_horizontal_compose97i18_vt_select_31_b = i_idxprom40_ff_snow_horizontal_compose97i18_sel_x_b[31:0];

    // i_idxprom40_ff_snow_horizontal_compose97i18_vt_join(BITJOIN,40)@2
    assign i_idxprom40_ff_snow_horizontal_compose97i18_vt_join_q = {i_idxprom40_ff_snow_horizontal_compose97i18_vt_const_63_q, i_idxprom40_ff_snow_horizontal_compose97i18_vt_select_31_b};

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,446)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom40_ff_snow_horizontal_compose97i18_vt_join_q[63:54];
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom40_ff_snow_horizontal_compose97i18_vt_join_q[53:36];
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom40_ff_snow_horizontal_compose97i18_vt_join_q[35:18];
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom40_ff_snow_horizontal_compose97i18_vt_join_q[17:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,429)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,336)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,431)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,335)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,337)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,430)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,333)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,432)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,334)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,338)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,217)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_addr_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx41_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx41_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,219)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx41_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3(BITJOIN,503)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_q = i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3(BITSELECT,504)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_q[63:0]);

    // i_arrayidx41_ff_snow_horizontal_compose97i0_add_x(ADD,211)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_b};
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx41_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx41_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,220)@2
    assign i_arrayidx41_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx41_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38(BLACKBOX,66)@2
    // in in_i_stall@20000000
    // out out_lm8_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm8_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm8_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm8_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm8_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm8_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm8_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm8_0 thei_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx41_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(redist6_i_unnamed_ff_snow_horizontal_compose97i31_q_1_0_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9966_ff_snow_horizontal_compose97i3_V0),
        .in_lm8_ff_snow_horizontal_compose97i_avm_readdata(in_lm8_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm8_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm8_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm8_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm8_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm8_ff_snow_horizontal_compose97i_avm_writeack(in_lm8_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm8_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_address),
        .out_lm8_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm8_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm8_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm8_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_read),
        .out_lm8_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_write),
        .out_lm8_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,22)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm8_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm8_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm8_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm8_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm8_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm8_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm8_ff_snow_horizontal_compose97i38_out_lm8_ff_snow_horizontal_compose97i_avm_burstcount;

    // regfree_osync(GPOUT,156)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i15_ff_snow_horizontal_compose97i34_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,160)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,176)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm19_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm19_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm19_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm19_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm19_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm19_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm19_ff_snow_horizontal_compose97i44_out_lm19_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,178)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i14_ff_snow_horizontal_compose97i32_out_intel_reserved_ffwd_7_0;

    // dupName_0_sync_out_x(GPOUT,179)@118
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,181)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,183)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_snow_horizontal_compose97i16_ff_snow_horizontal_compose97i39_out_intel_reserved_ffwd_8_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,185)
    assign out_lsu_memdep_32_o_active = i_llvm_fpga_mem_memdep_32_ff_snow_horizontal_compose97i52_out_lsu_memdep_32_o_active;

    // dupName_2_regfree_osync_x(GPOUT,186)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i13_ff_snow_horizontal_compose97i26_out_intel_reserved_ffwd_9_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,188)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address;
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read;
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write;
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unmaskedload10_ff_snow_horizontal_compose97i53_vunroll_x_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,190)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address;
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read;
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write;
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unmaskedload11811_ff_snow_horizontal_compose97i54_vunroll_x_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,192)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,194)
    assign out_lsu_memdep_33_o_active = i_llvm_fpga_mem_memdep_33_ff_snow_horizontal_compose97i63_vunroll_x_out_lsu_memdep_33_o_active;

    // dupName_7_ext_sig_sync_out_x(GPOUT,196)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address;
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read;
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write;
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unmaskedload11912_ff_snow_horizontal_compose97i64_vunroll_x_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,197)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address;
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable;
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read;
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write;
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_unmaskedload12013_ff_snow_horizontal_compose97i65_vunroll_x_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,198)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_address = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_enable = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_read = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_write = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_10_ext_sig_sync_out_x(GPOUT,199)
    assign out_lsu_memdep_34_o_active = i_sfc_s_c0_in_for_end_loopexit_loopexit_ff_snow_horizontal_compose97is_c0_enter131_ff_snow_horizontal_compose97i67_aunroll_vunroll_x_out_lsu_memdep_34_o_active;

endmodule
