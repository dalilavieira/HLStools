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

// SystemVerilog created from ff_snow_horizontal_compose97i_bb_B4_stall_region
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_bb_B4_stall_region (
    input wire [63:0] in_lm10614_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm10614_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm10614_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm10614_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked97,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm10815_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm10815_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm10815_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm10815_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm10614_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm10614_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm10614_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm10614_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm10614_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm10614_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm10614_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_lm11016_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm11016_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm11016_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm11016_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm10815_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm10815_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm10815_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm10815_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm10815_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm10815_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm10815_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_memdep_35_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_35_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_35_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_35_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm11016_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm11016_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm11016_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm11016_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm11016_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm11016_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm11016_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_lm11217_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm11217_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm11217_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm11217_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_memdep_35_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_35_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_35_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_35_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_35_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_35_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_35_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_lm11418_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm11418_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm11418_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm11418_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_35_o_active,
    input wire [63:0] in_memdep_39_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_39_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_39_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_39_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm11217_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm11217_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm11217_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm11217_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm11217_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm11217_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm11217_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [63:0] out_lm11418_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm11418_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm11418_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm11418_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm11418_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm11418_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm11418_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [63:0] out_memdep_39_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_39_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_39_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_39_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_39_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_39_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_39_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_lsu_memdep_39_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_184_q;
    wire [31:0] c_i32_185_q;
    wire [31:0] c_i32_283_q;
    wire [31:0] c_i32_288_q;
    wire [31:0] c_i32_886_q;
    wire [3:0] c_i4_779_q;
    wire [31:0] i_add106_ff_snow_horizontal_compose97i27_q;
    wire [31:0] i_add106_ff_snow_horizontal_compose97i27_vt_join_q;
    wire [30:0] i_add106_ff_snow_horizontal_compose97i27_vt_select_31_b;
    wire [32:0] i_add112_ff_snow_horizontal_compose97i36_a;
    wire [32:0] i_add112_ff_snow_horizontal_compose97i36_b;
    logic [32:0] i_add112_ff_snow_horizontal_compose97i36_o;
    wire [32:0] i_add112_ff_snow_horizontal_compose97i36_q;
    wire [32:0] i_add123_ff_snow_horizontal_compose97i56_a;
    wire [32:0] i_add123_ff_snow_horizontal_compose97i56_b;
    logic [32:0] i_add123_ff_snow_horizontal_compose97i56_o;
    wire [32:0] i_add123_ff_snow_horizontal_compose97i56_q;
    wire [32:0] i_add126_ff_snow_horizontal_compose97i60_a;
    wire [32:0] i_add126_ff_snow_horizontal_compose97i60_b;
    logic [32:0] i_add126_ff_snow_horizontal_compose97i60_o;
    wire [32:0] i_add126_ff_snow_horizontal_compose97i60_q;
    wire [32:0] i_add131_ff_snow_horizontal_compose97i65_a;
    wire [32:0] i_add131_ff_snow_horizontal_compose97i65_b;
    logic [32:0] i_add131_ff_snow_horizontal_compose97i65_o;
    wire [32:0] i_add131_ff_snow_horizontal_compose97i65_q;
    wire [3:0] i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_join_q;
    wire [2:0] i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_select_3_b;
    wire [33:0] i_cmp95_ff_snow_horizontal_compose97i68_a;
    wire [33:0] i_cmp95_ff_snow_horizontal_compose97i68_b;
    logic [33:0] i_cmp95_ff_snow_horizontal_compose97i68_o;
    wire [0:0] i_cmp95_ff_snow_horizontal_compose97i68_c;
    wire [0:0] i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q;
    wire [31:0] i_idxprom107_ff_snow_horizontal_compose97i28_vt_const_63_q;
    wire [63:0] i_idxprom107_ff_snow_horizontal_compose97i28_vt_join_q;
    wire [30:0] i_idxprom107_ff_snow_horizontal_compose97i28_vt_select_31_b;
    wire [63:0] i_idxprom97_ff_snow_horizontal_compose97i13_vt_join_q;
    wire [31:0] i_idxprom97_ff_snow_horizontal_compose97i13_vt_select_31_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_lsu_memdep_35_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_lsu_memdep_39_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_valid_out;
    wire [0:0] i_masked_ff_snow_horizontal_compose97i78_qi;
    reg [0:0] i_masked_ff_snow_horizontal_compose97i78_q;
    wire [0:0] i_memdep_phi40_or44_ff_snow_horizontal_compose97i45_q;
    wire [0:0] i_memdep_phi40_or_ff_snow_horizontal_compose97i18_q;
    wire [1:0] i_mul101_ff_snow_horizontal_compose97i21_vt_const_1_q;
    wire [31:0] i_mul101_ff_snow_horizontal_compose97i21_vt_join_q;
    wire [29:0] i_mul101_ff_snow_horizontal_compose97i21_vt_select_31_b;
    wire [32:0] i_mul124_add53_ff_snow_horizontal_compose97i58_a;
    wire [32:0] i_mul124_add53_ff_snow_horizontal_compose97i58_b;
    logic [32:0] i_mul124_add53_ff_snow_horizontal_compose97i58_o;
    wire [32:0] i_mul124_add53_ff_snow_horizontal_compose97i58_q;
    wire [0:0] i_next_cleanups_ff_snow_horizontal_compose97i75_s;
    reg [3:0] i_next_cleanups_ff_snow_horizontal_compose97i75_q;
    wire [3:0] i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_q;
    wire [2:0] i_next_initerations_ff_snow_horizontal_compose97i6_vt_select_2_b;
    wire [0:0] i_notcmp_ff_snow_horizontal_compose97i72_q;
    wire [0:0] i_or_ff_snow_horizontal_compose97i74_q;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_a;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_b;
    logic [32:0] i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_o;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_q;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_a;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_b;
    logic [32:0] i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_o;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_q;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_a;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_b;
    logic [32:0] i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_o;
    wire [32:0] i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_q;
    wire [0:0] i_reduction_ff_snow_horizontal_compose97i_5_ff_snow_horizontal_compose97i41_q;
    wire [0:0] i_reduction_ff_snow_horizontal_compose97i_6_ff_snow_horizontal_compose97i42_q;
    wire [32:0] i_sub102_ff_snow_horizontal_compose97i22_a;
    wire [32:0] i_sub102_ff_snow_horizontal_compose97i22_b;
    logic [32:0] i_sub102_ff_snow_horizontal_compose97i22_o;
    wire [32:0] i_sub102_ff_snow_horizontal_compose97i22_q;
    wire [32:0] i_sub118_ff_snow_horizontal_compose97i49_a;
    wire [32:0] i_sub118_ff_snow_horizontal_compose97i49_b;
    logic [32:0] i_sub118_ff_snow_horizontal_compose97i49_o;
    wire [32:0] i_sub118_ff_snow_horizontal_compose97i49_q;
    wire [0:0] i_unnamed_ff_snow_horizontal_compose97i11_q;
    wire [31:0] i_unnamed_ff_snow_horizontal_compose97i57_vt_join_q;
    wire [30:0] i_unnamed_ff_snow_horizontal_compose97i57_vt_select_31_b;
    wire [0:0] i_unnamed_ff_snow_horizontal_compose97i71_q;
    wire [0:0] i_xor_ff_snow_horizontal_compose97i2_q;
    wire [31:0] bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b;
    wire [31:0] bgTrunc_i_add123_ff_snow_horizontal_compose97i56_sel_x_b;
    wire [31:0] bgTrunc_i_add126_ff_snow_horizontal_compose97i60_sel_x_b;
    wire [31:0] bgTrunc_i_add131_ff_snow_horizontal_compose97i65_sel_x_b;
    wire [31:0] bgTrunc_i_mul124_add53_ff_snow_horizontal_compose97i58_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_sel_x_b;
    wire [31:0] bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b;
    wire [31:0] bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b;
    wire [0:0] ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [64:0] i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [60:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q;
    wire [63:0] i_arrayidx104_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx108_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx108_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx114_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx120_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx120_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx129_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx129_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx98_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx98_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b;
    wire [63:0] i_idxprom103_ff_snow_horizontal_compose97i23_sel_x_b;
    wire [63:0] i_idxprom107_ff_snow_horizontal_compose97i28_sel_x_b;
    wire [63:0] i_idxprom119_ff_snow_horizontal_compose97i50_sel_x_b;
    wire [63:0] i_idxprom97_ff_snow_horizontal_compose97i13_sel_x_b;
    wire [0:0] i_last_initeration_ff_snow_horizontal_compose97i8_sel_x_b;
    wire [0:0] i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_b;
    wire [0:0] i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_b;
    wire [35:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid463_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [3:0] leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid470_i_mul101_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid470_i_mul101_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid471_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid477_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid479_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [3:0] rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid483_i_shr111_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [3:0] seMsb_to4_uid485_in;
    wire [3:0] seMsb_to4_uid485_b;
    wire [27:0] rightShiftStage0Idx1Rng4_uid486_i_shr111_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid487_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid491_i_shr125_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid493_i_shr125_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid494_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid501_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid501_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid502_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [11:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_q;
    wire [0:0] redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_in;
    wire redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_in;
    wire redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_data_in;
    wire [0:0] redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_out;
    wire redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_out;
    wire redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_data_out;
    wire [0:0] redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in;
    wire redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in;
    wire redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_in;
    wire [0:0] redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out;
    wire redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out;
    wire redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_out;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in;
    wire redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in;
    wire redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_in;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out;
    wire redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out;
    wire redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_out;
    reg [0:0] redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_in;
    wire redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_in;
    wire redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_data_in;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_out;
    wire redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_out;
    wire redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_data_out;
    wire [0:0] redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_in;
    wire redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_in;
    wire redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_data_in;
    wire [0:0] redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_out;
    wire redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_out;
    wire redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_data_out;
    reg [31:0] redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q;
    wire [0:0] redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_in;
    wire redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_in;
    wire redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_data_in;
    wire [0:0] redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_out;
    wire redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_out;
    wire redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_data_out;
    reg [0:0] redist10_i_xor_ff_snow_horizontal_compose97i2_q_1_0_q;
    wire [0:0] redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_in;
    wire redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_in;
    wire redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_data_in;
    wire [0:0] redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_out;
    wire redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_out;
    wire redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_data_out;
    reg [3:0] redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_in;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_in;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_data_in;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_out;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_out;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_data_out;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_in;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_in;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_out;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_out;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_data_out;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_q;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_in;
    wire redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_in;
    wire redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_data_in;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_out;
    wire redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_out;
    wire redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_data_out;
    wire [0:0] redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_in;
    wire redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_in;
    wire redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_data_in;
    wire [0:0] redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_out;
    wire redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_out;
    wire redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_data_out;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_in;
    wire redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_in;
    wire redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_data_in;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_out;
    wire redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_out;
    wire redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_data_out;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_data_in;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_data_out;
    reg [31:0] redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_q;
    reg [31:0] redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_q;
    wire [0:0] redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_in;
    wire redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_in;
    wire redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_data_in;
    wire [0:0] redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_out;
    wire redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_out;
    wire redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_data_out;
    wire [0:0] redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_in;
    wire redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_in;
    wire redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_data_in;
    wire [0:0] redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_out;
    wire redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_out;
    wire redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_data_out;
    wire [0:0] redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_in;
    wire redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_in;
    wire redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_data_in;
    wire [0:0] redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_out;
    wire redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_out;
    wire redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_q;
    wire [63:0] bubble_select_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_b;
    wire [63:0] bubble_join_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_q;
    wire [63:0] bubble_select_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_b;
    wire [0:0] bubble_join_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_q;
    wire [0:0] bubble_select_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b;
    wire [0:0] bubble_join_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_q;
    wire [0:0] bubble_select_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_b;
    wire [31:0] bubble_join_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_q;
    wire [31:0] bubble_select_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_b;
    wire [31:0] bubble_join_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_q;
    wire [31:0] bubble_select_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_b;
    wire [0:0] bubble_join_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_q;
    wire [0:0] bubble_select_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_b;
    wire [0:0] bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_q;
    wire [0:0] bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_b;
    wire [0:0] bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_q;
    wire [0:0] bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_b;
    wire [0:0] bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_q;
    wire [0:0] bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_b;
    wire [0:0] bubble_join_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_q;
    wire [0:0] bubble_select_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_b;
    wire [0:0] bubble_join_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_q;
    wire [0:0] bubble_select_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_b;
    wire [0:0] bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_q;
    wire [0:0] bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_b;
    wire [0:0] bubble_join_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_q;
    wire [0:0] bubble_select_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_b;
    wire [0:0] bubble_join_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_q;
    wire [0:0] bubble_select_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_b;
    wire [0:0] bubble_join_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_q;
    wire [0:0] bubble_select_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_wireValid;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_wireStall;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_StallValid;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_toReg0;
    reg [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_fromReg0;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_consumed0;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_toReg1;
    reg [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_fromReg1;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_consumed1;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_and0;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_or0;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_backStall;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_V0;
    wire [0:0] SE_i_add112_ff_snow_horizontal_compose97i36_V1;
    reg [0:0] SE_i_cmp95_ff_snow_horizontal_compose97i68_R_v_0;
    wire [0:0] SE_i_cmp95_ff_snow_horizontal_compose97i68_v_s_0;
    wire [0:0] SE_i_cmp95_ff_snow_horizontal_compose97i68_s_tv_0;
    wire [0:0] SE_i_cmp95_ff_snow_horizontal_compose97i68_backEN;
    wire [0:0] SE_i_cmp95_ff_snow_horizontal_compose97i68_and0;
    wire [0:0] SE_i_cmp95_ff_snow_horizontal_compose97i68_backStall;
    wire [0:0] SE_i_cmp95_ff_snow_horizontal_compose97i68_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_V0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_backStall;
    reg [0:0] SE_i_masked_ff_snow_horizontal_compose97i78_R_v_0;
    wire [0:0] SE_i_masked_ff_snow_horizontal_compose97i78_v_s_0;
    wire [0:0] SE_i_masked_ff_snow_horizontal_compose97i78_s_tv_0;
    wire [0:0] SE_i_masked_ff_snow_horizontal_compose97i78_backEN;
    wire [0:0] SE_i_masked_ff_snow_horizontal_compose97i78_and0;
    wire [0:0] SE_i_masked_ff_snow_horizontal_compose97i78_backStall;
    wire [0:0] SE_i_masked_ff_snow_horizontal_compose97i78_V0;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireStall;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_StallValid;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg0;
    reg [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg0;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed0;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg1;
    reg [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg1;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed1;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg2;
    reg [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg2;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed2;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_and0;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_or0;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_or1;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_backStall;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V0;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V1;
    wire [0:0] SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V2;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_and0;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_or0;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_V0;
    wire [0:0] SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_V1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_wireValid;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_wireStall;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_StallValid;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_toReg0;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_toReg1;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_and0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_or0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_backStall;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_V0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i71_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V9;
    wire [0:0] SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_wireValid;
    wire [0:0] SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_and0;
    wire [0:0] SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_backStall;
    wire [0:0] SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_V0;
    wire [0:0] SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_wireValid;
    wire [0:0] SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_and0;
    wire [0:0] SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_backStall;
    wire [0:0] SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_V0;
    wire [0:0] SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_V0;
    reg [0:0] SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    wire [0:0] SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_v_s_0;
    wire [0:0] SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_s_tv_0;
    wire [0:0] SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backEN;
    wire [0:0] SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backStall;
    wire [0:0] SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_V0;
    reg [0:0] SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    wire [0:0] SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_v_s_0;
    wire [0:0] SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_s_tv_0;
    wire [0:0] SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backEN;
    wire [0:0] SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backStall;
    wire [0:0] SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_V0;
    reg [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_2;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_or0;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_or1;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V0;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V1;
    wire [0:0] SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V2;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and0;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and1;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and2;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and3;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and4;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall;
    wire [0:0] SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_V0;
    wire [0:0] SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_and0;
    wire [0:0] SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_and1;
    wire [0:0] SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_backStall;
    wire [0:0] SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_V0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireStall;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg0;
    reg [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg1;
    reg [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V1;
    reg [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0;
    reg [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1;
    reg [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_2;
    reg [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_3;
    reg [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_4;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_2;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_3;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_4;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or1;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or2;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or3;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V1;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V2;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V3;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V4;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireStall;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_StallValid;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg0;
    reg [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg0;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed0;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg1;
    reg [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg1;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed1;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg2;
    reg [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg2;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed2;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_or0;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_or1;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_backStall;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V0;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V1;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V2;
    wire [0:0] SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_wireValid;
    wire [0:0] SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and0;
    wire [0:0] SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and1;
    wire [0:0] SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and2;
    wire [0:0] SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_backStall;
    wire [0:0] SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_V0;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_2;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_3;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_4;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_5;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_6;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_7;
    reg [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_8;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_3;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_4;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_5;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_6;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_7;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_8;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or0;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or1;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or2;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or3;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or4;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or5;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or6;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or7;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V0;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V1;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V2;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V3;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V4;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V5;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V6;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V7;
    wire [0:0] SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V8;
    wire [0:0] SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_wireValid;
    wire [0:0] SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_and0;
    wire [0:0] SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_backStall;
    wire [0:0] SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_V0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_StallValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_toReg0;
    reg [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_toReg1;
    reg [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_or0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_backStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_V0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_V1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_StallValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_toReg0;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_toReg1;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_and0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_or0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_backStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_V0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_V1;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_1;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_or0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_V0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_V1;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireStall;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_StallValid;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_toReg0;
    reg [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_toReg1;
    reg [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg1;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed1;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_or0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_backStall;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_V0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_V1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_StallValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_toReg0;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_toReg1;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_or0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_backStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_V0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_V1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireStall;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_StallValid;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg0;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg1;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg2;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg2;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed2;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_or0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_or1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_backStall;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V2;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_and0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_backStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_V0;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireStall;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_StallValid;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_toReg0;
    reg [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg0;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed0;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_toReg1;
    reg [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg1;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed1;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_or0;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_backStall;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_V0;
    wire [0:0] SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_V1;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireStall;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_StallValid;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg0;
    reg [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg0;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed0;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg1;
    reg [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg1;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed1;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg2;
    reg [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg2;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed2;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_or0;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_or1;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_backStall;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V0;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V1;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;


    // bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo(BITJOIN,711)
    assign bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_q = redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_data_out;

    // bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo(BITSELECT,712)
    assign bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_b = $unsigned(bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_q[0:0]);

    // bubble_join_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo(BITJOIN,714)
    assign bubble_join_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_q = redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_data_out;

    // bubble_select_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo(BITSELECT,715)
    assign bubble_select_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_b = $unsigned(bubble_join_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_q[0:0]);

    // bubble_join_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo(BITJOIN,717)
    assign bubble_join_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_q = redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_data_out;

    // bubble_select_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo(BITSELECT,718)
    assign bubble_select_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_b = $unsigned(bubble_join_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64(STALLENABLE,808)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_wireValid = i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_valid_out;

    // bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo(BITJOIN,720)
    assign bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_q = redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_data_out;

    // bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo(BITSELECT,721)
    assign bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_b = $unsigned(bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_q[0:0]);

    // redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo(STALLFIFO,587)
    assign redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_in = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V2;
    assign redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_data_in = bubble_select_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_b;
    assign redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_in_bitsignaltemp = redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_in[0];
    assign redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_in_bitsignaltemp = redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_in[0];
    assign redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_out[0] = redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_out_bitsignaltemp;
    assign redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_out[0] = redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo (
        .valid_in(redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_in_bitsignaltemp),
        .stall_in(redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_b),
        .valid_out(redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_out_bitsignaltemp),
        .stall_out(redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_out_bitsignaltemp),
        .data_out(redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x(STALLENABLE,939)
    // Valid signal propagation
    assign SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_V0 = SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    // Stall signal propagation
    assign SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_s_tv_0 = SE_out_coalesced_delay_0_fifo_backStall & SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    // Backward Enable generation
    assign SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backEN = ~ (SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_v_s_0 = SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backEN & SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_V0;
    // Backward Stall generation
    assign SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backStall = ~ (SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backEN == 1'b0)
            begin
                SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_R_v_0 & SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_s_tv_0;
            end
            else
            begin
                SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_v_s_0;
            end

        end
    end

    // SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x(STALLENABLE,935)
    // Valid signal propagation
    assign SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_V0 = SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    // Stall signal propagation
    assign SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_s_tv_0 = SE_i_add112_ff_snow_horizontal_compose97i36_backStall & SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_R_v_0;
    // Backward Enable generation
    assign SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backEN = ~ (SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_v_s_0 = SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backEN & SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_V0;
    // Backward Stall generation
    assign SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backStall = ~ (SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backEN == 1'b0)
            begin
                SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_R_v_0 & SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_s_tv_0;
            end
            else
            begin
                SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_R_v_0 <= SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_v_s_0;
            end

        end
    end

    // bubble_join_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x(BITJOIN,672)
    assign bubble_join_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_q = ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x(BITSELECT,673)
    assign bubble_select_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_q[0:0]);

    // redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(STALLFIFO,566)
    assign redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V9;
    assign redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall;
    assign redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_in = bubble_select_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_b;
    assign redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in_bitsignaltemp = redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in[0];
    assign redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in_bitsignaltemp = redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in[0];
    assign redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out[0] = redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out_bitsignaltemp;
    assign redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out[0] = redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(128),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo (
        .valid_in(redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_b),
        .valid_out(redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0(BITJOIN,661)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_q = i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0(BITSELECT,662)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_q[3:0]);

    // i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x(BITSELECT,294)@130
    assign i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_b[0:0];

    // redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0(REG,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_q <= $unsigned(i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8(STALLENABLE,1149)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_backStall = i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg(STALLFIFO,1221)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(129),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67(STALLENABLE,754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed1 = (~ (SE_i_cmp95_ff_snow_horizontal_compose97i68_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_wireValid = i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67(BLACKBOX,56)@130
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i32_sub9492_0 thei_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_V0),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67(BITJOIN,597)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_q = i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67(BITSELECT,598)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_q[31:0]);

    // c_i32_283(CONSTANT,16)
    assign c_i32_283_q = $unsigned(32'b00000000000000000000000000000010);

    // SE_out_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66(STALLENABLE,812)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_wireValid = i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4(BITJOIN,642)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_q = i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4(BITSELECT,643)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_q[0:0]);

    // i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66(BLACKBOX,85)@130
    // in in_stall_in@20000000
    // out out_data_out@131
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@131
    ff_snow_horizontal_compose97i_i_llvm_fpga_push_i32_x_195_push16_0 thei_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66 (
        .in_data_in(bgTrunc_i_add131_ff_snow_horizontal_compose97i65_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_feedback_stall_out_16),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(BITJOIN,690)
    assign bubble_join_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_q = redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_out;

    // bubble_select_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(BITSELECT,691)
    assign bubble_select_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b = $unsigned(bubble_join_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_q[0:0]);

    // i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12(BLACKBOX,76)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    ff_snow_horizontal_compose97i_i_llvm_fpga_pop_i32_x_195_pop16_0 thei_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12 (
        .in_data_in(c_i32_283_q),
        .in_dir(bubble_select_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b),
        .in_feedback_in_16(i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_backStall),
        .in_valid_in(SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12(BITJOIN,658)
    assign bubble_join_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_q = i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12(BITSELECT,659)
    assign bubble_select_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_q[31:0]);

    // redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0(REG,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_b);
        end
    end

    // i_add131_ff_snow_horizontal_compose97i65(ADD,33)@130
    assign i_add131_ff_snow_horizontal_compose97i65_a = {1'b0, redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0_q};
    assign i_add131_ff_snow_horizontal_compose97i65_b = {1'b0, c_i32_283_q};
    assign i_add131_ff_snow_horizontal_compose97i65_o = $unsigned(i_add131_ff_snow_horizontal_compose97i65_a) + $unsigned(i_add131_ff_snow_horizontal_compose97i65_b);
    assign i_add131_ff_snow_horizontal_compose97i65_q = i_add131_ff_snow_horizontal_compose97i65_o[32:0];

    // bgTrunc_i_add131_ff_snow_horizontal_compose97i65_sel_x(BITSELECT,205)@130
    assign bgTrunc_i_add131_ff_snow_horizontal_compose97i65_sel_x_b = i_add131_ff_snow_horizontal_compose97i65_q[31:0];

    // i_cmp95_ff_snow_horizontal_compose97i68(COMPARE,37)@130 + 1
    assign i_cmp95_ff_snow_horizontal_compose97i68_a = $unsigned({{2{bgTrunc_i_add131_ff_snow_horizontal_compose97i65_sel_x_b[31]}}, bgTrunc_i_add131_ff_snow_horizontal_compose97i65_sel_x_b});
    assign i_cmp95_ff_snow_horizontal_compose97i68_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp95_ff_snow_horizontal_compose97i68_o <= 34'b0;
        end
        else if (SE_i_cmp95_ff_snow_horizontal_compose97i68_backEN == 1'b1)
        begin
            i_cmp95_ff_snow_horizontal_compose97i68_o <= $unsigned($signed(i_cmp95_ff_snow_horizontal_compose97i68_a) - $signed(i_cmp95_ff_snow_horizontal_compose97i68_b));
        end
    end
    assign i_cmp95_ff_snow_horizontal_compose97i68_c[0] = i_cmp95_ff_snow_horizontal_compose97i68_o[33];

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70(BITJOIN,590)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_q = i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_dest_data_out_10_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70(BITSELECT,591)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_q[0:0]);

    // i_unnamed_ff_snow_horizontal_compose97i71(LOGICAL,114)@131
    assign i_unnamed_ff_snow_horizontal_compose97i71_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_b & i_cmp95_ff_snow_horizontal_compose97i68_c;

    // i_notcmp_ff_snow_horizontal_compose97i72(LOGICAL,101)@131
    assign i_notcmp_ff_snow_horizontal_compose97i72_q = i_unnamed_ff_snow_horizontal_compose97i71_q ^ VCC_q;

    // i_masked_ff_snow_horizontal_compose97i78(LOGICAL,90)@131 + 1
    assign i_masked_ff_snow_horizontal_compose97i78_qi = i_notcmp_ff_snow_horizontal_compose97i72_q & redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_ff_snow_horizontal_compose97i78_delay ( .xin(i_masked_ff_snow_horizontal_compose97i78_qi), .xout(i_masked_ff_snow_horizontal_compose97i78_q), .ena(SE_i_masked_ff_snow_horizontal_compose97i78_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_xor_ff_snow_horizontal_compose97i2(LOGICAL,115)@130
    assign i_xor_ff_snow_horizontal_compose97i2_q = i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77(BLACKBOX,63)@130
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000016Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77 (
        .in_predicate_in(i_xor_ff_snow_horizontal_compose97i2_q),
        .in_src_data_in_11_0(bgTrunc_i_add131_ff_snow_horizontal_compose97i65_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_V0),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77(STALLENABLE,768)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg(STALLFIFO,1222)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(129),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg(STALLFIFO,1223)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(129),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1(STALLENABLE,1123)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and0 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and3 = redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and5 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_and5;

    // redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo(STALLFIFO,573)
    assign redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_in = SE_i_masked_ff_snow_horizontal_compose97i78_V0;
    assign redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall;
    assign redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_data_in = i_masked_ff_snow_horizontal_compose97i78_q;
    assign redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_in_bitsignaltemp = redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_in[0];
    assign redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_in_bitsignaltemp = redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_in[0];
    assign redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_out[0] = redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_out_bitsignaltemp;
    assign redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_out[0] = redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(127),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo (
        .valid_in(redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_ff_snow_horizontal_compose97i78_q),
        .valid_out(redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76(STALLENABLE,814)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_wireValid = i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_valid_out;

    // redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0(REG,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_b);
        end
    end

    // leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,461)@131
    assign leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_in = redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q[2:0];
    assign leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid463_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,462)@131
    assign leftShiftStage0Idx1_uid463_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x(MUX,464)@131
    assign leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_s or redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q or leftShiftStage0Idx1_uid463_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q = redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q;
            1'b1 : leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid463_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_select_3(BITSELECT,36)@131
    assign i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_select_3_b = leftShiftStage0_uid465_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_q[3:1];

    // i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_join(BITJOIN,35)@131
    assign i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_join_q = {i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_select_3_b, GND_q};

    // redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0(REG,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_b);
        end
    end

    // redist10_i_xor_ff_snow_horizontal_compose97i2_q_1_0(REG,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_xor_ff_snow_horizontal_compose97i2_q_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist10_i_xor_ff_snow_horizontal_compose97i2_q_1_0_q <= $unsigned(i_xor_ff_snow_horizontal_compose97i2_q);
        end
    end

    // i_or_ff_snow_horizontal_compose97i74(LOGICAL,102)@131
    assign i_or_ff_snow_horizontal_compose97i74_q = i_notcmp_ff_snow_horizontal_compose97i72_q | redist10_i_xor_ff_snow_horizontal_compose97i2_q_1_0_q;

    // i_next_cleanups_ff_snow_horizontal_compose97i75(MUX,97)@131
    assign i_next_cleanups_ff_snow_horizontal_compose97i75_s = i_or_ff_snow_horizontal_compose97i74_q;
    always @(i_next_cleanups_ff_snow_horizontal_compose97i75_s or redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q or i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_join_q)
    begin
        unique case (i_next_cleanups_ff_snow_horizontal_compose97i75_s)
            1'b0 : i_next_cleanups_ff_snow_horizontal_compose97i75_q = redist12_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out_1_0_q;
            1'b1 : i_next_cleanups_ff_snow_horizontal_compose97i75_q = i_cleanups_shl_ff_snow_horizontal_compose97i3_vt_join_q;
            default : i_next_cleanups_ff_snow_horizontal_compose97i75_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76(BLACKBOX,86)@131
    // in in_stall_in@20000000
    // out out_data_out@132
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@132
    ff_snow_horizontal_compose97i_i_llvm_fpga_push_i4_cleanups_push22_0 thei_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76 (
        .in_data_in(i_next_cleanups_ff_snow_horizontal_compose97i75_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_feedback_stall_out_22),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_backStall),
        .in_valid_in(SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0(STALLENABLE,997)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_V0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_0;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_V1 = SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_0 = SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_0;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_1 = redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_out & SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_or0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_0;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backEN = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_1 | SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_v_s_0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V2;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backStall = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_0 & SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_v_s_0;
            end

            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_1 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_1 & SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_R_v_1 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x(STALLENABLE,922)
    // Valid signal propagation
    assign SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_V0 = SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_stall_out | ~ (SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_V1;
    assign SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_and1 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V2 & SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_and0;
    assign SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_wireValid = SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_V0 & SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_and1;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0(STALLENABLE,796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed0 = (~ (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed2 = (~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_or1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_wireValid = i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_valid_out;

    // SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0(STALLENABLE,973)
    // Valid signal propagation
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V0 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_0;
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V1 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_1;
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V2 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_0 = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall & SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_0;
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_1 = SE_i_masked_ff_snow_horizontal_compose97i78_backStall & SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_1;
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_2 = SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_backStall & SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_or0 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_0;
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_or1 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_1 | SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_or0;
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN = ~ (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_2 | SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_v_s_0 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V0;
    // Backward Stall generation
    assign SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backStall = ~ (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_0 <= SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_0 & SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_0 <= SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_1 <= SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_1 & SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_1 <= SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_2 <= SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_2 & SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_R_v_2 <= SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_masked_ff_snow_horizontal_compose97i78(STALLENABLE,817)
    // Valid signal propagation
    assign SE_i_masked_ff_snow_horizontal_compose97i78_V0 = SE_i_masked_ff_snow_horizontal_compose97i78_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_ff_snow_horizontal_compose97i78_s_tv_0 = redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_stall_out & SE_i_masked_ff_snow_horizontal_compose97i78_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_ff_snow_horizontal_compose97i78_backEN = ~ (SE_i_masked_ff_snow_horizontal_compose97i78_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_ff_snow_horizontal_compose97i78_and0 = SE_i_unnamed_ff_snow_horizontal_compose97i71_V1 & SE_i_masked_ff_snow_horizontal_compose97i78_backEN;
    assign SE_i_masked_ff_snow_horizontal_compose97i78_v_s_0 = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V1 & SE_i_masked_ff_snow_horizontal_compose97i78_and0;
    // Backward Stall generation
    assign SE_i_masked_ff_snow_horizontal_compose97i78_backStall = ~ (SE_i_masked_ff_snow_horizontal_compose97i78_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_ff_snow_horizontal_compose97i78_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_ff_snow_horizontal_compose97i78_backEN == 1'b0)
            begin
                SE_i_masked_ff_snow_horizontal_compose97i78_R_v_0 <= SE_i_masked_ff_snow_horizontal_compose97i78_R_v_0 & SE_i_masked_ff_snow_horizontal_compose97i78_s_tv_0;
            end
            else
            begin
                SE_i_masked_ff_snow_horizontal_compose97i78_R_v_0 <= SE_i_masked_ff_snow_horizontal_compose97i78_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73(STALLENABLE,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed1 = (~ (SE_leftShiftStage0Idx1Rng1_uid462_i_cleanups_shl_ff_snow_horizontal_compose97i0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_and0 = SE_i_unnamed_ff_snow_horizontal_compose97i71_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid = SE_redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_and0;

    // SE_i_unnamed_ff_snow_horizontal_compose97i71(STALLENABLE,838)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg0 <= '0;
            SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg0 <= SE_i_unnamed_ff_snow_horizontal_compose97i71_toReg0;
            // Successor 1
            SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg1 <= SE_i_unnamed_ff_snow_horizontal_compose97i71_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i71_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed1 = (~ (SE_i_masked_ff_snow_horizontal_compose97i78_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i71_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg1;
    // Consuming
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_StallValid = SE_i_unnamed_ff_snow_horizontal_compose97i71_backStall & SE_i_unnamed_ff_snow_horizontal_compose97i71_wireValid;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_toReg0 = SE_i_unnamed_ff_snow_horizontal_compose97i71_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_toReg1 = SE_i_unnamed_ff_snow_horizontal_compose97i71_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_or0 = SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_wireStall = ~ (SE_i_unnamed_ff_snow_horizontal_compose97i71_consumed1 & SE_i_unnamed_ff_snow_horizontal_compose97i71_or0);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_backStall = SE_i_unnamed_ff_snow_horizontal_compose97i71_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_V0 = SE_i_unnamed_ff_snow_horizontal_compose97i71_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg0);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_V1 = SE_i_unnamed_ff_snow_horizontal_compose97i71_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i71_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_and0 = SE_i_cmp95_ff_snow_horizontal_compose97i68_V0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i71_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_V1 & SE_i_unnamed_ff_snow_horizontal_compose97i71_and0;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg(STALLFIFO,1220)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(128),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70(STALLENABLE,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed1 = (~ (SE_i_unnamed_ff_snow_horizontal_compose97i71_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70(BLACKBOX,54)@131
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i1_cmp959494_0 thei_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_V0),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_dest_data_out_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9(STALLENABLE,1151)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_backStall = i_llvm_fpga_ffwd_dest_i1_cmp959494_ff_snow_horizontal_compose97i70_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg(STALLFIFO,1233)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V8;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(131),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg(STALLFIFO,1232)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V7;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61(BLACKBOX,57)@130
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9961_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7(STALLENABLE,1147)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg(STALLFIFO,1231)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V6;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6(STALLENABLE,1145)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg(STALLFIFO,1230)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V5;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(194),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37(BLACKBOX,59)@130
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9963_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5(STALLENABLE,1143)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg(STALLFIFO,1229)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V4;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29(BLACKBOX,60)@130
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10072_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4(STALLENABLE,1141)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg(STALLFIFO,1228)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V3;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3(STALLENABLE,1139)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg(STALLFIFO,1227)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V2;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10(BLACKBOX,55)@130
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i1_cmp959495_0 thei_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_dest_data_out_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1(STALLENABLE,1135)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,1225)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,668)
    assign bubble_join_stall_entry_q = in_forked97;

    // bubble_select_stall_entry(BITSELECT,669)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,840)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x(BLACKBOX,229)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    ff_snow_horizontal_compose97i_B4_merge_reg theff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x(STALLENABLE,853)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg8 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg9 <= SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg9;
        end
    end
    // Input Stall processing
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed6 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_7_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed7 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_8_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg7;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed8 = (~ (bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_9_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg8;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed9 = (~ (redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out) & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg9;
    // Consuming
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_backStall & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg0 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg1 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg2 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg3 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg4 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg5 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg6 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg7 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed7;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg8 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed8;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_toReg9 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed9;
    // Backward Stall generation
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or0 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or1 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed1 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or0;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or2 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed2 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or1;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or3 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed3 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or2;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or4 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed4 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or3;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or5 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed5 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or4;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or6 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed6 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or5;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or7 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed7 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or6;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or8 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed8 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or7;
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_consumed9 & SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_or8);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_backStall = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V0 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V1 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V2 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V3 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V4 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V5 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V6 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V7 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg7);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V8 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg8);
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V9 = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_fromReg9);
    // Computing multiple Valid(s)
    assign SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_wireValid = ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,1226)
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2(STALLENABLE,1137)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14(BLACKBOX,62)@130
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10074_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14(STALLENABLE,766)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_backStall = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and1 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V8 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_wireValid = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_and2;

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x(CONSTANT,237)
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom107_ff_snow_horizontal_compose97i28_vt_const_63(CONSTANT,44)
    assign i_idxprom107_ff_snow_horizontal_compose97i28_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom97_ff_snow_horizontal_compose97i13_sel_x(BITSELECT,298)@130
    assign i_idxprom97_ff_snow_horizontal_compose97i13_sel_x_b = {32'b00000000000000000000000000000000, redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0_q[31:0]};

    // i_idxprom97_ff_snow_horizontal_compose97i13_vt_select_31(BITSELECT,52)@130
    assign i_idxprom97_ff_snow_horizontal_compose97i13_vt_select_31_b = i_idxprom97_ff_snow_horizontal_compose97i13_sel_x_b[31:0];

    // i_idxprom97_ff_snow_horizontal_compose97i13_vt_join(BITJOIN,51)@130
    assign i_idxprom97_ff_snow_horizontal_compose97i13_vt_join_q = {i_idxprom107_ff_snow_horizontal_compose97i28_vt_const_63_q, i_idxprom97_ff_snow_horizontal_compose97i13_vt_select_31_b};

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,530)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom97_ff_snow_horizontal_compose97i13_vt_join_q[63:54];
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom97_ff_snow_horizontal_compose97i13_vt_join_q[53:36];
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom97_ff_snow_horizontal_compose97i13_vt_join_q[35:18];
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom97_ff_snow_horizontal_compose97i13_vt_join_q[17:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,513)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,401)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,515)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,400)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,402)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,514)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,398)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,516)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,399)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,403)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,256)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx114_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,258)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx114_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37(BITJOIN,607)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_q = i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37(BITSELECT,608)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_q[63:0]);

    // i_arrayidx114_ff_snow_horizontal_compose97i0_add_x(ADD,250)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_b};
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx114_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,259)@130
    assign i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx114_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43(STALLENABLE,780)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_backStall) & SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireValid) | SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed1 = (~ (SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireValid) | SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_StallValid = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_backStall & SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_toReg0 = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_StallValid & SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_toReg1 = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_StallValid & SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_or0 = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_consumed1 & SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_backStall = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_V0 = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_V1 = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_wireValid = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_valid;

    // redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo(STALLFIFO,585)
    assign redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V3;
    assign redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_in = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_backStall;
    assign redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_data_in = i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q;
    assign redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_in_bitsignaltemp = redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_in[0];
    assign redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_in_bitsignaltemp = redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_in[0];
    assign redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_out[0] = redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_out_bitsignaltemp;
    assign redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_out[0] = redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo (
        .valid_in(redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q),
        .valid_out(redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo(BITJOIN,723)
    assign bubble_join_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_q = redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_data_out;

    // bubble_select_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo(BITSELECT,724)
    assign bubble_select_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_b = $unsigned(bubble_join_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40(BITJOIN,652)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_q = i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40(BITSELECT,653)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39(BITJOIN,649)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_q = i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39(BITSELECT,650)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_q[0:0]);

    // i_reduction_ff_snow_horizontal_compose97i_5_ff_snow_horizontal_compose97i41(LOGICAL,106)@163
    assign i_reduction_ff_snow_horizontal_compose97i_5_ff_snow_horizontal_compose97i41_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17(BITJOIN,655)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_q = i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17(BITSELECT,656)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17(STALLENABLE,792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed0 = (~ (SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed1 = (~ (redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_wireValid = i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_valid_out;

    // redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo(STALLFIFO,576)
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_V1;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_in = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_backStall;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_b;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_in[0];
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_in[0];
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_out[0] = redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_out_bitsignaltemp;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_out[0] = redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo (
        .valid_in(redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_b),
        .valid_out(redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo(BITJOIN,705)
    assign bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_q = redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_data_out;

    // bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo(BITSELECT,706)
    assign bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_b = $unsigned(bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_q[0:0]);

    // i_reduction_ff_snow_horizontal_compose97i_6_ff_snow_horizontal_compose97i42(LOGICAL,107)@163
    assign i_reduction_ff_snow_horizontal_compose97i_6_ff_snow_horizontal_compose97i42_q = bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_b | i_reduction_ff_snow_horizontal_compose97i_5_ff_snow_horizontal_compose97i41_q;

    // bubble_join_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo(BITJOIN,684)
    assign bubble_join_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_q = redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_data_out;

    // bubble_select_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo(BITSELECT,685)
    assign bubble_select_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_b = $unsigned(bubble_join_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43(BLACKBOX,69)@163
    // in in_i_stall@20000000
    // out out_lsu_memdep_35_o_active@20000000
    // out out_memdep_35_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_35_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_35_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_35_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_35_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_35_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_35_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@194
    // out out_o_writeack@194
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_35_0 thei_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_b),
        .in_i_dependence(i_reduction_ff_snow_horizontal_compose97i_6_ff_snow_horizontal_compose97i42_q),
        .in_i_predicate(bubble_select_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_backStall),
        .in_i_valid(SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_V0),
        .in_i_writedata(bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b),
        .in_memdep_35_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_35_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_35_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_35_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_35_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_35_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_35_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_35_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lsu_memdep_35_o_active(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_lsu_memdep_35_o_active),
        .out_memdep_35_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_35_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_35_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_35_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_35_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_35_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_35_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo(STALLENABLE,1009)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg0 <= '0;
            SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg0 <= SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_toReg0;
            // Successor 1
            SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg1 <= SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed0 = (~ (SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall) & SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireValid) | SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg0;
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed1 = (~ (redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_out) & SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireValid) | SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_StallValid = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_backStall & SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireValid;
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_toReg0 = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_StallValid & SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed0;
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_toReg1 = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_StallValid & SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_or0 = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed0;
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireStall = ~ (SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_consumed1 & SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_or0);
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_backStall = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_V0 = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireValid & ~ (SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg0);
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_V1 = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireValid & ~ (SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_wireValid = redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_valid_out;

    // redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo(STALLFIFO,577)
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_in = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_V1;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_in = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_backStall;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_data_in = bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_b;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_out[0] = redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_out[0] = redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo (
        .valid_in(redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_b),
        .valid_out(redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo(STALLENABLE,994)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg0 <= '0;
            SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg0 <= SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_toReg0;
            // Successor 1
            SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg1 <= SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed0 = (~ (SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall) & SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireValid) | SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg0;
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed1 = (~ (redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_stall_out) & SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireValid) | SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_StallValid = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_backStall & SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireValid;
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_toReg0 = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_StallValid & SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed0;
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_toReg1 = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_StallValid & SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_or0 = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed0;
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireStall = ~ (SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_consumed1 & SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_or0);
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_backStall = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_V0 = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireValid & ~ (SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg0);
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_V1 = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireValid & ~ (SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_wireValid = redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_valid_out;

    // SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo(STALLENABLE,975)
    // Valid signal propagation
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_V0 = SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_stall | ~ (SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and0 = redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_out;
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and1 = i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_valid_out & SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and0;
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and2 = i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_valid_out & SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and1;
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and3 = SE_out_redist14_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_33_fifo_V0 & SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and2;
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and4 = SE_i_add112_ff_snow_horizontal_compose97i36_V0 & SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and3;
    assign SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_wireValid = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_V0 & SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_and4;

    // redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo(STALLFIFO,564)
    assign redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_V0;
    assign redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_in = SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall;
    assign redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_data_in = i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    assign redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_in_bitsignaltemp = redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_in[0];
    assign redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_in_bitsignaltemp = redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_in[0];
    assign redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_out[0] = redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_out_bitsignaltemp;
    assign redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_out[0] = redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo (
        .valid_in(redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .valid_out(redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37(STALLENABLE,760)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_backStall = redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_wireValid = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V7 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16(BITJOIN,646)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_q = i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16(BITSELECT,647)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_q[0:0]);

    // c_i32_184(CONSTANT,14)
    assign c_i32_184_q = $unsigned(32'b11111111111111111111111111111111);

    // i_sub102_ff_snow_horizontal_compose97i22(ADD,108)@129
    assign i_sub102_ff_snow_horizontal_compose97i22_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_b};
    assign i_sub102_ff_snow_horizontal_compose97i22_b = {1'b0, c_i32_184_q};
    assign i_sub102_ff_snow_horizontal_compose97i22_o = $unsigned(i_sub102_ff_snow_horizontal_compose97i22_a) + $unsigned(i_sub102_ff_snow_horizontal_compose97i22_b);
    assign i_sub102_ff_snow_horizontal_compose97i22_q = i_sub102_ff_snow_horizontal_compose97i22_o[32:0];

    // bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x(BITSELECT,210)@129
    assign bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b = i_sub102_ff_snow_horizontal_compose97i22_q[31:0];

    // redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0(REG,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b);
        end
    end

    // i_idxprom103_ff_snow_horizontal_compose97i23_sel_x(BITSELECT,295)@130
    assign i_idxprom103_ff_snow_horizontal_compose97i23_sel_x_b = $unsigned({{32{redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q[31]}}, redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_q[31:0]});

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,531)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom103_ff_snow_horizontal_compose97i23_sel_x_b[63:54];
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom103_ff_snow_horizontal_compose97i23_sel_x_b[53:36];
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom103_ff_snow_horizontal_compose97i23_sel_x_b[35:18];
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom103_ff_snow_horizontal_compose97i23_sel_x_b[17:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,521)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,437)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,523)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,436)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,438)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,522)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,434)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,524)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,435)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,439)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,276)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx129_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx129_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,278)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx129_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61(BITJOIN,601)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_q = i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61(BITSELECT,602)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_q[63:0]);

    // i_arrayidx129_ff_snow_horizontal_compose97i0_add_x(ADD,270)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_b};
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx129_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx129_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,279)@130
    assign i_arrayidx129_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx129_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // join_for_coalesced_delay_0(BITJOIN,561)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_b, i_arrayidx129_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,588)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_V0;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16(STALLENABLE,786)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed0 = (~ (SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_wireValid = i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61(STALLENABLE,756)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_backStall = coalesced_delay_0_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_and1 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V6 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_and1;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29(STALLENABLE,762)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_backStall = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and1 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V4 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_wireValid = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_and2;

    // SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66(STALLENABLE,811)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_V0 = SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_backStall = i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_and0 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V2;
    assign SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V1 & SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_and0;

    // SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77(STALLENABLE,767)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_V0 = SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V2;
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_wireValid = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V1 & SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_and0;

    // SE_i_cmp95_ff_snow_horizontal_compose97i68(STALLENABLE,743)
    // Valid signal propagation
    assign SE_i_cmp95_ff_snow_horizontal_compose97i68_V0 = SE_i_cmp95_ff_snow_horizontal_compose97i68_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp95_ff_snow_horizontal_compose97i68_s_tv_0 = SE_i_unnamed_ff_snow_horizontal_compose97i71_backStall & SE_i_cmp95_ff_snow_horizontal_compose97i68_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp95_ff_snow_horizontal_compose97i68_backEN = ~ (SE_i_cmp95_ff_snow_horizontal_compose97i68_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp95_ff_snow_horizontal_compose97i68_and0 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V0 & SE_i_cmp95_ff_snow_horizontal_compose97i68_backEN;
    assign SE_i_cmp95_ff_snow_horizontal_compose97i68_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sub9492_ff_snow_horizontal_compose97i67_V1 & SE_i_cmp95_ff_snow_horizontal_compose97i68_and0;
    // Backward Stall generation
    assign SE_i_cmp95_ff_snow_horizontal_compose97i68_backStall = ~ (SE_i_cmp95_ff_snow_horizontal_compose97i68_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp95_ff_snow_horizontal_compose97i68_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp95_ff_snow_horizontal_compose97i68_backEN == 1'b0)
            begin
                SE_i_cmp95_ff_snow_horizontal_compose97i68_R_v_0 <= SE_i_cmp95_ff_snow_horizontal_compose97i68_R_v_0 & SE_i_cmp95_ff_snow_horizontal_compose97i68_s_tv_0;
            end
            else
            begin
                SE_i_cmp95_ff_snow_horizontal_compose97i68_R_v_0 <= SE_i_cmp95_ff_snow_horizontal_compose97i68_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12(STALLENABLE,794)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_V0 = SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_backStall = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_wireValid = i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_valid_out;

    // SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0(STALLENABLE,985)
    // Valid signal propagation
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V0 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V1 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_1;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V2 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_2;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V3 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_3;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V4 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_4;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V5 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_5;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V6 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_6;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V7 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_7;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V8 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_8;
    // Stall signal propagation
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0 = SE_i_cmp95_ff_snow_horizontal_compose97i68_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_1 = SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_1;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_2 = SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_2;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_3 = redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_out & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_3;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_4 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_4;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_5 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_5;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_6 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9961_ff_snow_horizontal_compose97i61_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_6;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_7 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9963_ff_snow_horizontal_compose97i37_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_7;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_8 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_backStall & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_8;
    // Backward Enable generation
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or0 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or1 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_1 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or0;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or2 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_2 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or1;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or3 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_3 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or2;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or4 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_4 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or3;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or5 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_5 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or4;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or6 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_6 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or5;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or7 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_7 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or6;
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN = ~ (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_8 | SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_or7);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0 = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_V0;
    // Backward Stall generation
    assign SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backStall = ~ (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_2 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_3 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_4 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_5 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_6 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_7 <= 1'b0;
            SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_8 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_1 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_1 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_1 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_2 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_2 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_2 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_3 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_3 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_3;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_3 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_4 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_4 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_4;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_4 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_5 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_5 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_5;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_5 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_6 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_6 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_6;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_6 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_7 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_7 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_7;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_7 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_8 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_8 & SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_s_tv_8;
            end
            else
            begin
                SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_R_v_8 <= SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24(BLACKBOX,61)@130
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10073_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24(STALLENABLE,764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed1 = (~ (redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_and0 = i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_wireValid = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V5 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_and0;

    // SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18(STALLENABLE,819)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg0 <= '0;
            SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg1 <= '0;
            SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg0 <= SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg0;
            // Successor 1
            SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg1 <= SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg1;
            // Successor 2
            SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg2 <= SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_backStall) & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid) | SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg0;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_backStall) & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid) | SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg1;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_backStall) & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid) | SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg2;
    // Consuming
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_StallValid = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_backStall & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg0 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_StallValid & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed0;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg1 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_StallValid & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed1;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_toReg2 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_StallValid & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed2;
    // Backward Stall generation
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_or0 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed0;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_or1 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed1 & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_or0;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireStall = ~ (SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_consumed2 & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_or1);
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_backStall = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireStall;
    // Valid signal propagation
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V0 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid & ~ (SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg0);
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V1 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid & ~ (SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg1);
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V2 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid & ~ (SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_V0;
    assign SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_V0 & SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10(STALLENABLE,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg2 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg3 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed3 = (~ (redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_toReg3 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_consumed3 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_or2);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg2);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V3 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_and0 = i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_V1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_and0;

    // SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26(STALLENABLE,771)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_V0 = SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_backStall = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_and0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_V1;
    assign SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_and1 = SE_i_memdep_phi40_or_ff_snow_horizontal_compose97i18_V1 & SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_and0;
    assign SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_wireValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_V0 & SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10(BITJOIN,594)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_q = i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_out_dest_data_out_10_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10(BITSELECT,595)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_q[0:0]);

    // i_unnamed_ff_snow_horizontal_compose97i11(LOGICAL,110)@130
    assign i_unnamed_ff_snow_horizontal_compose97i11_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp959495_ff_snow_horizontal_compose97i10_b ^ VCC_q;

    // i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19(LOGICAL,39)@130
    assign i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q = i_unnamed_ff_snow_horizontal_compose97i11_q | i_xor_ff_snow_horizontal_compose97i2_q;

    // i_memdep_phi40_or_ff_snow_horizontal_compose97i18(LOGICAL,92)@130
    assign i_memdep_phi40_or_ff_snow_horizontal_compose97i18_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_b;

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,505)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,365)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,507)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,364)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,366)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,506)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,362)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,508)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,363)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,367)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,236)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx104_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx104_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,238)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx104_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24(BITJOIN,613)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24(BITSELECT,614)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_q[63:0]);

    // i_arrayidx104_ff_snow_horizontal_compose97i0_add_x(ADD,230)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_b};
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx104_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,239)@130
    assign i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx104_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26(BLACKBOX,65)@130
    // in in_i_stall@20000000
    // out out_lm10815_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm10815_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm10815_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm10815_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm10815_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm10815_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm10815_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@162
    // out out_o_stall@20000000
    // out out_o_valid@162
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm10815_0 thei_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi40_or_ff_snow_horizontal_compose97i18_q),
        .in_i_predicate(i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_V0),
        .in_lm10815_ff_snow_horizontal_compose97i_avm_readdata(in_lm10815_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm10815_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm10815_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm10815_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm10815_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm10815_ff_snow_horizontal_compose97i_avm_writeack(in_lm10815_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm10815_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_address),
        .out_lm10815_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm10815_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm10815_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm10815_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_read),
        .out_lm10815_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_write),
        .out_lm10815_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_185(CONSTANT,15)
    assign c_i32_185_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add106_ff_snow_horizontal_compose97i27(LOGICAL,26)@130
    assign i_add106_ff_snow_horizontal_compose97i27_q = redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0_q | c_i32_185_q;

    // i_add106_ff_snow_horizontal_compose97i27_vt_select_31(BITSELECT,29)@130
    assign i_add106_ff_snow_horizontal_compose97i27_vt_select_31_b = i_add106_ff_snow_horizontal_compose97i27_q[31:1];

    // i_add106_ff_snow_horizontal_compose97i27_vt_join(BITJOIN,28)@130
    assign i_add106_ff_snow_horizontal_compose97i27_vt_join_q = {i_add106_ff_snow_horizontal_compose97i27_vt_select_31_b, VCC_q};

    // i_idxprom107_ff_snow_horizontal_compose97i28_sel_x(BITSELECT,296)@130
    assign i_idxprom107_ff_snow_horizontal_compose97i28_sel_x_b = {32'b00000000000000000000000000000000, i_add106_ff_snow_horizontal_compose97i27_vt_join_q[31:0]};

    // i_idxprom107_ff_snow_horizontal_compose97i28_vt_select_31(BITSELECT,46)@130
    assign i_idxprom107_ff_snow_horizontal_compose97i28_vt_select_31_b = i_idxprom107_ff_snow_horizontal_compose97i28_sel_x_b[31:1];

    // i_idxprom107_ff_snow_horizontal_compose97i28_vt_join(BITJOIN,45)@130
    assign i_idxprom107_ff_snow_horizontal_compose97i28_vt_join_q = {i_idxprom107_ff_snow_horizontal_compose97i28_vt_const_63_q, i_idxprom107_ff_snow_horizontal_compose97i28_vt_select_31_b, VCC_q};

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,529)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom107_ff_snow_horizontal_compose97i28_vt_join_q[63:54];
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom107_ff_snow_horizontal_compose97i28_vt_join_q[53:36];
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom107_ff_snow_horizontal_compose97i28_vt_join_q[35:18];
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom107_ff_snow_horizontal_compose97i28_vt_join_q[17:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,509)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,383)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,511)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,382)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,384)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,510)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,380)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,512)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,381)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,385)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,246)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx108_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx108_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,248)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx108_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29(BITJOIN,610)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29(BITSELECT,611)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_q[63:0]);

    // i_arrayidx108_ff_snow_horizontal_compose97i0_add_x(ADD,240)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_b};
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx108_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx108_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,249)@130
    assign i_arrayidx108_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx108_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31(BLACKBOX,66)@130
    // in in_i_stall@20000000
    // out out_lm11016_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm11016_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm11016_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm11016_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm11016_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm11016_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm11016_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@162
    // out out_o_stall@20000000
    // out out_o_valid@162
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm11016_0 thei_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx108_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi40_or_ff_snow_horizontal_compose97i18_q),
        .in_i_predicate(i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10072_ff_snow_horizontal_compose97i29_V0),
        .in_lm11016_ff_snow_horizontal_compose97i_avm_readdata(in_lm11016_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm11016_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm11016_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm11016_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm11016_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm11016_ff_snow_horizontal_compose97i_avm_writeack(in_lm11016_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm11016_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_address),
        .out_lm11016_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm11016_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm11016_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm11016_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_read),
        .out_lm11016_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_write),
        .out_lm11016_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31(STALLENABLE,774)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_V0 = SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_backStall = SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backStall | ~ (SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_and0 = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_and1 = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_V1 & SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_and0;
    assign SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_wireValid = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_valid & SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_and1;

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,525)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,455)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,527)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,454)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,456)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,526)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,452)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,528)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx114_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,453)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,457)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,286)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx98_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx98_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,288)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx98_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14(BITJOIN,616)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14(BITSELECT,617)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_q[63:0]);

    // i_arrayidx98_ff_snow_horizontal_compose97i0_add_x(ADD,280)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_b};
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx98_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx98_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,289)@130
    assign i_arrayidx98_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx98_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20(BLACKBOX,64)@130
    // in in_i_stall@20000000
    // out out_lm10614_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm10614_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm10614_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm10614_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm10614_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm10614_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm10614_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@162
    // out out_o_stall@20000000
    // out out_o_valid@162
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm10614_0 thei_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx98_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi40_or_ff_snow_horizontal_compose97i18_q),
        .in_i_predicate(i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10074_ff_snow_horizontal_compose97i14_V0),
        .in_lm10614_ff_snow_horizontal_compose97i_avm_readdata(in_lm10614_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm10614_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm10614_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm10614_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm10614_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm10614_ff_snow_horizontal_compose97i_avm_writeack(in_lm10614_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm10614_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_address),
        .out_lm10614_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm10614_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm10614_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm10614_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_read),
        .out_lm10614_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_write),
        .out_lm10614_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20(STALLENABLE,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg0 <= SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg1 <= SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed0 = (~ (SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backStall) & SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireValid) | SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed1 = (~ (SE_out_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_backStall) & SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireValid) | SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_StallValid = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_backStall & SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_toReg0 = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_StallValid & SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_toReg1 = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_StallValid & SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_or0 = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_consumed1 & SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_or0);
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_backStall = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_V0 = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_V1 = SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_wireValid = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_valid;

    // SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0(STALLENABLE,1007)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_V0 = SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_s_tv_0 = SE_i_add112_ff_snow_horizontal_compose97i36_backStall & SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backEN = ~ (SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_v_s_0 = SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backEN & SE_out_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backStall = ~ (SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_R_v_0 <= SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_R_v_0 & SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_R_v_0 <= SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20(BITJOIN,620)
    assign bubble_join_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_q = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20(BITSELECT,621)
    assign bubble_select_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_q[31:0]);

    // redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0(REG,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_b);
        end
    end

    // xMSB_uid483_i_shr111_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,482)@162
    assign xMSB_uid483_i_shr111_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_sel_x_b[31:31]);

    // seMsb_to4_uid485(BITSELECT,484)@162
    assign seMsb_to4_uid485_in = $unsigned({{3{xMSB_uid483_i_shr111_ff_snow_horizontal_compose97i0_shift_x_b[0]}}, xMSB_uid483_i_shr111_ff_snow_horizontal_compose97i0_shift_x_b});
    assign seMsb_to4_uid485_b = $unsigned(seMsb_to4_uid485_in[3:0]);

    // rightShiftStage0Idx1Rng4_uid486_i_shr111_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,485)@162
    assign rightShiftStage0Idx1Rng4_uid486_i_shr111_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_sel_x_b[31:4]);

    // rightShiftStage0Idx1_uid487_i_shr111_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,486)@162
    assign rightShiftStage0Idx1_uid487_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q = {seMsb_to4_uid485_b, rightShiftStage0Idx1Rng4_uid486_i_shr111_ff_snow_horizontal_compose97i0_shift_x_b};

    // bubble_join_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31(BITJOIN,626)
    assign bubble_join_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_q = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31(BITSELECT,627)
    assign bubble_select_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_q[31:0]);

    // leftShiftStage0Idx1Rng2_uid470_i_mul101_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,469)@162
    assign leftShiftStage0Idx1Rng2_uid470_i_mul101_ff_snow_horizontal_compose97i0_shift_x_in = bubble_select_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_b[29:0];
    assign leftShiftStage0Idx1Rng2_uid470_i_mul101_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng2_uid470_i_mul101_ff_snow_horizontal_compose97i0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid471_i_mul101_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,470)@162
    assign leftShiftStage0Idx1_uid471_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng2_uid470_i_mul101_ff_snow_horizontal_compose97i0_shift_x_b, i_mul101_ff_snow_horizontal_compose97i21_vt_const_1_q};

    // leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x(MUX,472)@162
    assign leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_b or leftShiftStage0Idx1_uid471_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_b;
            1'b1 : leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid471_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul101_ff_snow_horizontal_compose97i21_vt_select_31(BITSELECT,95)@162
    assign i_mul101_ff_snow_horizontal_compose97i21_vt_select_31_b = leftShiftStage0_uid473_i_mul101_ff_snow_horizontal_compose97i0_shift_x_q[31:2];

    // i_mul101_ff_snow_horizontal_compose97i21_vt_const_1(CONSTANT,93)
    assign i_mul101_ff_snow_horizontal_compose97i21_vt_const_1_q = $unsigned(2'b00);

    // i_mul101_ff_snow_horizontal_compose97i21_vt_join(BITJOIN,94)@162
    assign i_mul101_ff_snow_horizontal_compose97i21_vt_join_q = {i_mul101_ff_snow_horizontal_compose97i21_vt_select_31_b, i_mul101_ff_snow_horizontal_compose97i21_vt_const_1_q};

    // i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33(ADD,104)@162
    assign i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_a = {1'b0, i_mul101_ff_snow_horizontal_compose97i21_vt_join_q};
    assign i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_b};
    assign i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_o = $unsigned(i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_a) + $unsigned(i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_b);
    assign i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_q = i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_o[32:0];

    // bgTrunc_i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_sel_x(BITSELECT,208)@162
    assign bgTrunc_i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_sel_x_b = i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_q[31:0];

    // c_i32_886(CONSTANT,19)
    assign c_i32_886_q = $unsigned(32'b00000000000000000000000000001000);

    // bubble_join_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26(BITJOIN,623)
    assign bubble_join_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_q = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26(BITSELECT,624)
    assign bubble_select_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_q[31:0]);

    // i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32(ADD,103)@162
    assign i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_b};
    assign i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_b = {1'b0, c_i32_886_q};
    assign i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_o = $unsigned(i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_a) + $unsigned(i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_b);
    assign i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_q = i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_o[32:0];

    // bgTrunc_i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_sel_x(BITSELECT,207)@162
    assign bgTrunc_i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_sel_x_b = i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_q[31:0];

    // i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34(ADD,105)@162
    assign i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_a = {1'b0, bgTrunc_i_reduction_ff_snow_horizontal_compose97i_2_ff_snow_horizontal_compose97i32_sel_x_b};
    assign i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_b = {1'b0, bgTrunc_i_reduction_ff_snow_horizontal_compose97i_3_ff_snow_horizontal_compose97i33_sel_x_b};
    assign i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_o = $unsigned(i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_a) + $unsigned(i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_b);
    assign i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_q = i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_o[32:0];

    // bgTrunc_i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_sel_x(BITSELECT,209)@162
    assign bgTrunc_i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_sel_x_b = i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_q[31:0];

    // rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x(MUX,488)@162 + 1
    assign rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
        end
        else if (SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_backEN == 1'b1)
        begin
            unique case (rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_s)
                1'b0 : rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q <= bgTrunc_i_reduction_ff_snow_horizontal_compose97i_4_ff_snow_horizontal_compose97i34_sel_x_b;
                1'b1 : rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q <= rightShiftStage0Idx1_uid487_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q;
                default : rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_add112_ff_snow_horizontal_compose97i36(ADD,30)@163
    assign i_add112_ff_snow_horizontal_compose97i36_a = {1'b0, rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_q};
    assign i_add112_ff_snow_horizontal_compose97i36_b = {1'b0, redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_q};
    assign i_add112_ff_snow_horizontal_compose97i36_o = $unsigned(i_add112_ff_snow_horizontal_compose97i36_a) + $unsigned(i_add112_ff_snow_horizontal_compose97i36_b);
    assign i_add112_ff_snow_horizontal_compose97i36_q = i_add112_ff_snow_horizontal_compose97i36_o[32:0];

    // bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x(BITSELECT,202)@163
    assign bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b = i_add112_ff_snow_horizontal_compose97i36_q[31:0];

    // SE_i_add112_ff_snow_horizontal_compose97i36(STALLENABLE,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add112_ff_snow_horizontal_compose97i36_fromReg0 <= '0;
            SE_i_add112_ff_snow_horizontal_compose97i36_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_add112_ff_snow_horizontal_compose97i36_fromReg0 <= SE_i_add112_ff_snow_horizontal_compose97i36_toReg0;
            // Successor 1
            SE_i_add112_ff_snow_horizontal_compose97i36_fromReg1 <= SE_i_add112_ff_snow_horizontal_compose97i36_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_add112_ff_snow_horizontal_compose97i36_consumed0 = (~ (SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall) & SE_i_add112_ff_snow_horizontal_compose97i36_wireValid) | SE_i_add112_ff_snow_horizontal_compose97i36_fromReg0;
    assign SE_i_add112_ff_snow_horizontal_compose97i36_consumed1 = (~ (redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_out) & SE_i_add112_ff_snow_horizontal_compose97i36_wireValid) | SE_i_add112_ff_snow_horizontal_compose97i36_fromReg1;
    // Consuming
    assign SE_i_add112_ff_snow_horizontal_compose97i36_StallValid = SE_i_add112_ff_snow_horizontal_compose97i36_backStall & SE_i_add112_ff_snow_horizontal_compose97i36_wireValid;
    assign SE_i_add112_ff_snow_horizontal_compose97i36_toReg0 = SE_i_add112_ff_snow_horizontal_compose97i36_StallValid & SE_i_add112_ff_snow_horizontal_compose97i36_consumed0;
    assign SE_i_add112_ff_snow_horizontal_compose97i36_toReg1 = SE_i_add112_ff_snow_horizontal_compose97i36_StallValid & SE_i_add112_ff_snow_horizontal_compose97i36_consumed1;
    // Backward Stall generation
    assign SE_i_add112_ff_snow_horizontal_compose97i36_or0 = SE_i_add112_ff_snow_horizontal_compose97i36_consumed0;
    assign SE_i_add112_ff_snow_horizontal_compose97i36_wireStall = ~ (SE_i_add112_ff_snow_horizontal_compose97i36_consumed1 & SE_i_add112_ff_snow_horizontal_compose97i36_or0);
    assign SE_i_add112_ff_snow_horizontal_compose97i36_backStall = SE_i_add112_ff_snow_horizontal_compose97i36_wireStall;
    // Valid signal propagation
    assign SE_i_add112_ff_snow_horizontal_compose97i36_V0 = SE_i_add112_ff_snow_horizontal_compose97i36_wireValid & ~ (SE_i_add112_ff_snow_horizontal_compose97i36_fromReg0);
    assign SE_i_add112_ff_snow_horizontal_compose97i36_V1 = SE_i_add112_ff_snow_horizontal_compose97i36_wireValid & ~ (SE_i_add112_ff_snow_horizontal_compose97i36_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_add112_ff_snow_horizontal_compose97i36_and0 = SE_rightShiftStage0_uid489_i_shr111_ff_snow_horizontal_compose97i0_shift_x_V0;
    assign SE_i_add112_ff_snow_horizontal_compose97i36_wireValid = SE_redist23_i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_o_readdata_1_0_V0 & SE_i_add112_ff_snow_horizontal_compose97i36_and0;

    // redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo(STALLFIFO,571)
    assign redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_in = SE_i_add112_ff_snow_horizontal_compose97i36_V1;
    assign redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_in = SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_backStall;
    assign redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_data_in = bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b;
    assign redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_in_bitsignaltemp = redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_in[0];
    assign redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_in_bitsignaltemp = redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_in[0];
    assign redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_out[0] = redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    assign redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_out[0] = redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo (
        .valid_in(redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b),
        .valid_out(redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo(STALLENABLE,987)
    // Valid signal propagation
    assign SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_V0 = SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_backStall = SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backStall | ~ (SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_and0 = redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_valid_out;
    assign SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_wireValid = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_V0 & SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_and0;

    // SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53(STALLENABLE,778)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg0 <= SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg1 <= SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed0 = (~ (SE_out_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireValid) | SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed1 = (~ (SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireValid) | SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_StallValid = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_backStall & SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_toReg0 = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_StallValid & SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_toReg1 = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_StallValid & SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_or0 = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_consumed1 & SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_or0);
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_backStall = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_V0 = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_V1 = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_wireValid = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_valid;

    // bubble_join_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo(BITJOIN,696)
    assign bubble_join_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_q = redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_data_out;

    // bubble_select_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo(BITSELECT,697)
    assign bubble_select_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_b = $unsigned(bubble_join_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_q[31:0]);

    // i_idxprom119_ff_snow_horizontal_compose97i50_sel_x(BITSELECT,297)@194
    assign i_idxprom119_ff_snow_horizontal_compose97i50_sel_x_b = $unsigned({{32{bubble_select_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_b[31]}}, bubble_select_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_b[31:0]});

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,532)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom119_ff_snow_horizontal_compose97i50_sel_x_b[63:54];
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom119_ff_snow_horizontal_compose97i50_sel_x_b[53:36];
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom119_ff_snow_horizontal_compose97i50_sel_x_b[35:18];
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom119_ff_snow_horizontal_compose97i50_sel_x_b[17:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,517)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,419)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,519)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,418)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,420)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,518)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,416)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,520)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,417)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,421)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,266)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx104_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx120_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx120_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,268)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx120_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51(BITJOIN,604)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_q = i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51(BITSELECT,605)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_q[63:0]);

    // i_arrayidx120_ff_snow_horizontal_compose97i0_add_x(ADD,260)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_b};
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx120_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx120_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,269)@194
    assign i_arrayidx120_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx120_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53(BLACKBOX,68)@194
    // in in_i_stall@20000000
    // out out_lm11418_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm11418_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm11418_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm11418_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm11418_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm11418_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm11418_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@226
    // out out_o_stall@20000000
    // out out_o_valid@226
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm11418_0 thei_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx120_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi40_or44_ff_snow_horizontal_compose97i45_q),
        .in_i_predicate(bubble_select_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_backStall),
        .in_i_valid(SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_V0),
        .in_lm11418_ff_snow_horizontal_compose97i_avm_readdata(in_lm11418_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm11418_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm11418_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm11418_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm11418_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm11418_ff_snow_horizontal_compose97i_avm_writeack(in_lm11418_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm11418_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_address),
        .out_lm11418_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm11418_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm11418_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm11418_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_read),
        .out_lm11418_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_write),
        .out_lm11418_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51(BLACKBOX,58)@194
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9962_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_288(CONSTANT,17)
    assign c_i32_288_q = $unsigned(32'b11111111111111111111111111111110);

    // i_sub118_ff_snow_horizontal_compose97i49(ADD,109)@130
    assign i_sub118_ff_snow_horizontal_compose97i49_a = {1'b0, redist13_i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_data_out_1_0_q};
    assign i_sub118_ff_snow_horizontal_compose97i49_b = {1'b0, c_i32_288_q};
    assign i_sub118_ff_snow_horizontal_compose97i49_o = $unsigned(i_sub118_ff_snow_horizontal_compose97i49_a) + $unsigned(i_sub118_ff_snow_horizontal_compose97i49_b);
    assign i_sub118_ff_snow_horizontal_compose97i49_q = i_sub118_ff_snow_horizontal_compose97i49_o[32:0];

    // bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x(BITSELECT,211)@130
    assign bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b = i_sub118_ff_snow_horizontal_compose97i49_q[31:0];

    // redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo(STALLFIFO,569)
    assign redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_in = SE_redist8_bgTrunc_i_sub102_ff_snow_horizontal_compose97i22_sel_x_b_1_0_V3;
    assign redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_in = SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_backStall;
    assign redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_data_in = bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b;
    assign redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_in_bitsignaltemp = redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_in[0];
    assign redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_in_bitsignaltemp = redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_in[0];
    assign redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_out[0] = redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    assign redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_out[0] = redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo (
        .valid_in(redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b),
        .valid_out(redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo(STALLENABLE,984)
    // Valid signal propagation
    assign SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_V0 = SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_backStall = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_stall | ~ (SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and0 = redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_valid_out;
    assign SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and1 = i_llvm_fpga_ffwd_dest_p1024i32_b9962_ff_snow_horizontal_compose97i51_out_valid_out & SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and0;
    assign SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and2 = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_V1 & SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and1;
    assign SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_wireValid = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V1 & SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_and2;

    // redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo(STALLFIFO,586)
    assign redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_in = SE_out_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_V1;
    assign redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_in = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_backStall;
    assign redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_data_in = bubble_select_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_b;
    assign redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_in_bitsignaltemp = redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_in[0];
    assign redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_in_bitsignaltemp = redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_in[0];
    assign redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_out[0] = redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_out_bitsignaltemp;
    assign redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_out[0] = redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo (
        .valid_in(redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist24_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_33_fifo_b),
        .valid_out(redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo(STALLENABLE,1011)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg0 <= '0;
            SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg1 <= '0;
            SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg0 <= SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg0;
            // Successor 1
            SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg1 <= SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg1;
            // Successor 2
            SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg2 <= SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed0 = (~ (SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_backStall) & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid) | SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg0;
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed1 = (~ (SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_backStall) & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid) | SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg1;
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed2 = (~ (redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_stall_out) & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid) | SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg2;
    // Consuming
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_StallValid = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_backStall & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid;
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg0 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_StallValid & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed0;
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg1 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_StallValid & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed1;
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_toReg2 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_StallValid & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_or0 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed0;
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_or1 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed1 & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_or0;
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireStall = ~ (SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_consumed2 & SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_or1);
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_backStall = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V0 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid & ~ (SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg0);
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V1 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid & ~ (SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg1);
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V2 = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid & ~ (SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_wireValid = redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_valid_out;

    // SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo(STALLENABLE,996)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg0 <= '0;
            SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg0 <= SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_toReg0;
            // Successor 1
            SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg1 <= SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed0 = (~ (SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_backStall) & SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg0;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed1 = (~ (SE_out_redist7_bgTrunc_i_sub118_ff_snow_horizontal_compose97i49_sel_x_b_64_fifo_backStall) & SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_StallValid = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_backStall & SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireValid;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_toReg0 = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_toReg1 = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_or0 = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireStall = ~ (SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_consumed1 & SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_or0);
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_backStall = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_V0 = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg0);
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_V1 = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_and0 = redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_valid_out;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_V1 & SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_and0;

    // redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo(STALLFIFO,565)
    assign redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_temp10073_ff_snow_horizontal_compose97i24_V1;
    assign redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in = SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_backStall;
    assign redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_in = i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    assign redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in_bitsignaltemp = redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in[0];
    assign redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in_bitsignaltemp = redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in[0];
    assign redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out[0] = redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    assign redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out[0] = redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo (
        .valid_in(redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .valid_out(redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo(STALLENABLE,977)
    // Valid signal propagation
    assign SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_V0 = SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_backStall = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_stall | ~ (SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_and0 = redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out;
    assign SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_and1 = SE_out_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_V0 & SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_and0;
    assign SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_wireValid = SE_out_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_V0 & SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_and1;

    // bubble_join_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo(BITJOIN,726)
    assign bubble_join_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_q = redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_data_out;

    // bubble_select_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo(BITSELECT,727)
    assign bubble_select_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_b = $unsigned(bubble_join_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_q[0:0]);

    // bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo(BITJOIN,708)
    assign bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_q = redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo(BITSELECT,709)
    assign bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43(BITJOIN,635)
    assign bubble_join_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_q = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43(BITSELECT,636)
    assign bubble_select_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_q[0:0]);

    // i_memdep_phi40_or44_ff_snow_horizontal_compose97i45(LOGICAL,91)@194
    assign i_memdep_phi40_or44_ff_snow_horizontal_compose97i45_q = bubble_select_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_b | bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out_64_fifo_b;

    // bubble_join_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo(BITJOIN,687)
    assign bubble_join_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_q = redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_out;

    // bubble_select_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo(BITSELECT,688)
    assign bubble_select_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_b = $unsigned(bubble_join_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_q[63:0]);

    // i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46(BLACKBOX,67)@194
    // in in_i_stall@20000000
    // out out_lm11217_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm11217_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm11217_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm11217_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm11217_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm11217_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm11217_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@226
    // out out_o_stall@20000000
    // out out_o_valid@226
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm11217_0 thei_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_b),
        .in_i_dependence(i_memdep_phi40_or44_ff_snow_horizontal_compose97i45_q),
        .in_i_predicate(bubble_select_redist25_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_64_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_backStall),
        .in_i_valid(SE_out_redist3_i_arrayidx104_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_V0),
        .in_lm11217_ff_snow_horizontal_compose97i_avm_readdata(in_lm11217_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm11217_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm11217_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm11217_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm11217_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm11217_ff_snow_horizontal_compose97i_avm_writeack(in_lm11217_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm11217_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_address),
        .out_lm11217_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm11217_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm11217_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm11217_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_read),
        .out_lm11217_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_write),
        .out_lm11217_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46(STALLENABLE,776)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg0 <= SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg1 <= SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed0 = (~ (SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireValid) | SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed1 = (~ (SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backStall) & SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireValid) | SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_StallValid = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_backStall & SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_toReg0 = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_StallValid & SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_toReg1 = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_StallValid & SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_or0 = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_consumed1 & SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_or0);
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_backStall = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_V0 = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_V1 = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_wireValid = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_valid;

    // SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0(STALLENABLE,1006)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_V0 = SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_s_tv_0 = SE_out_coalesced_delay_0_fifo_backStall & SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backEN = ~ (SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_v_s_0 = SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backEN & SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_V1;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backStall = ~ (SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_R_v_0 <= SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_R_v_0 & SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_R_v_0 <= SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46(BITJOIN,629)
    assign bubble_join_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_q = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46(BITSELECT,630)
    assign bubble_select_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_q[31:0]);

    // redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0(REG,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_b);
        end
    end

    // xMSB_uid491_i_shr125_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,490)@226
    assign xMSB_uid491_i_shr125_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_mul124_add53_ff_snow_horizontal_compose97i58_sel_x_b[31:31]);

    // rightShiftStage0Idx1Rng1_uid493_i_shr125_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,492)@226
    assign rightShiftStage0Idx1Rng1_uid493_i_shr125_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_mul124_add53_ff_snow_horizontal_compose97i58_sel_x_b[31:1]);

    // rightShiftStage0Idx1_uid494_i_shr125_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,493)@226
    assign rightShiftStage0Idx1_uid494_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q = {xMSB_uid491_i_shr125_ff_snow_horizontal_compose97i0_shift_x_b, rightShiftStage0Idx1Rng1_uid493_i_shr125_ff_snow_horizontal_compose97i0_shift_x_b};

    // leftShiftStage0Idx1Rng1_uid501_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,500)@226
    assign leftShiftStage0Idx1Rng1_uid501_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in = bgTrunc_i_add123_ff_snow_horizontal_compose97i56_sel_x_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid501_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid501_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid502_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,501)@226
    assign leftShiftStage0Idx1_uid502_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid501_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(MUX,503)@226
    assign leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s or bgTrunc_i_add123_ff_snow_horizontal_compose97i56_sel_x_b or leftShiftStage0Idx1_uid502_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = bgTrunc_i_add123_ff_snow_horizontal_compose97i56_sel_x_b;
            1'b1 : leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid502_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_snow_horizontal_compose97i57_vt_select_31(BITSELECT,113)@226
    assign i_unnamed_ff_snow_horizontal_compose97i57_vt_select_31_b = leftShiftStage0_uid504_dupName_2_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_unnamed_ff_snow_horizontal_compose97i57_vt_join(BITJOIN,112)@226
    assign i_unnamed_ff_snow_horizontal_compose97i57_vt_join_q = {i_unnamed_ff_snow_horizontal_compose97i57_vt_select_31_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53(BITJOIN,632)
    assign bubble_join_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_q = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53(BITSELECT,633)
    assign bubble_select_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_q[31:0]);

    // bubble_join_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo(BITJOIN,699)
    assign bubble_join_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_q = redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_data_out;

    // bubble_select_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo(BITSELECT,700)
    assign bubble_select_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_b = $unsigned(bubble_join_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_q[31:0]);

    // i_add123_ff_snow_horizontal_compose97i56(ADD,31)@226
    assign i_add123_ff_snow_horizontal_compose97i56_a = {1'b0, bubble_select_redist9_bgTrunc_i_add112_ff_snow_horizontal_compose97i36_sel_x_b_63_fifo_b};
    assign i_add123_ff_snow_horizontal_compose97i56_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_b};
    assign i_add123_ff_snow_horizontal_compose97i56_o = $unsigned(i_add123_ff_snow_horizontal_compose97i56_a) + $unsigned(i_add123_ff_snow_horizontal_compose97i56_b);
    assign i_add123_ff_snow_horizontal_compose97i56_q = i_add123_ff_snow_horizontal_compose97i56_o[32:0];

    // bgTrunc_i_add123_ff_snow_horizontal_compose97i56_sel_x(BITSELECT,203)@226
    assign bgTrunc_i_add123_ff_snow_horizontal_compose97i56_sel_x_b = i_add123_ff_snow_horizontal_compose97i56_q[31:0];

    // i_mul124_add53_ff_snow_horizontal_compose97i58(ADD,96)@226
    assign i_mul124_add53_ff_snow_horizontal_compose97i58_a = {1'b0, bgTrunc_i_add123_ff_snow_horizontal_compose97i56_sel_x_b};
    assign i_mul124_add53_ff_snow_horizontal_compose97i58_b = {1'b0, i_unnamed_ff_snow_horizontal_compose97i57_vt_join_q};
    assign i_mul124_add53_ff_snow_horizontal_compose97i58_o = $unsigned(i_mul124_add53_ff_snow_horizontal_compose97i58_a) + $unsigned(i_mul124_add53_ff_snow_horizontal_compose97i58_b);
    assign i_mul124_add53_ff_snow_horizontal_compose97i58_q = i_mul124_add53_ff_snow_horizontal_compose97i58_o[32:0];

    // bgTrunc_i_mul124_add53_ff_snow_horizontal_compose97i58_sel_x(BITSELECT,206)@226
    assign bgTrunc_i_mul124_add53_ff_snow_horizontal_compose97i58_sel_x_b = i_mul124_add53_ff_snow_horizontal_compose97i58_q[31:0];

    // rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x(MUX,495)@226 + 1
    assign rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
        end
        else if (SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_backEN == 1'b1)
        begin
            unique case (rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_s)
                1'b0 : rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q <= bgTrunc_i_mul124_add53_ff_snow_horizontal_compose97i58_sel_x_b;
                1'b1 : rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q <= rightShiftStage0Idx1_uid494_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q;
                default : rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_add126_ff_snow_horizontal_compose97i60(ADD,32)@227
    assign i_add126_ff_snow_horizontal_compose97i60_a = {1'b0, rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_q};
    assign i_add126_ff_snow_horizontal_compose97i60_b = {1'b0, redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_q};
    assign i_add126_ff_snow_horizontal_compose97i60_o = $unsigned(i_add126_ff_snow_horizontal_compose97i60_a) + $unsigned(i_add126_ff_snow_horizontal_compose97i60_b);
    assign i_add126_ff_snow_horizontal_compose97i60_q = i_add126_ff_snow_horizontal_compose97i60_o[32:0];

    // bgTrunc_i_add126_ff_snow_horizontal_compose97i60_sel_x(BITSELECT,204)@227
    assign bgTrunc_i_add126_ff_snow_horizontal_compose97i60_sel_x_b = i_add126_ff_snow_horizontal_compose97i60_q[31:0];

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,1015)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = SE_rightShiftStage0_uid496_i_shr125_ff_snow_horizontal_compose97i0_shift_x_V0 & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_wireValid = SE_redist22_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_o_readdata_1_0_V0 & SE_out_coalesced_delay_0_fifo_and2;

    // bubble_join_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo(BITJOIN,729)
    assign bubble_join_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_q = redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_data_out;

    // bubble_select_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo(BITSELECT,730)
    assign bubble_select_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_b = $unsigned(bubble_join_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,732)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,733)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[64:0]);

    // sel_for_coalesced_delay_0(BITSELECT,562)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63(BLACKBOX,70)@227
    // in in_i_stall@20000000
    // out out_lsu_memdep_39_o_active@20000000
    // out out_memdep_39_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_39_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_39_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_39_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_39_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_39_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_39_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@258
    // out out_o_writeack@258
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_39_0 thei_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_dependence(sel_for_coalesced_delay_0_c),
        .in_i_predicate(bubble_select_redist26_i_first_cleanup_xor_or_ff_snow_horizontal_compose97i19_q_97_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(bgTrunc_i_add126_ff_snow_horizontal_compose97i60_sel_x_b),
        .in_memdep_39_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_39_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_39_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_39_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_39_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_39_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_39_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_39_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lsu_memdep_39_o_active(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_lsu_memdep_39_o_active),
        .out_memdep_39_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_39_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_39_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_39_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_39_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_39_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_39_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63(BITJOIN,638)
    assign bubble_join_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_q = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63(BITSELECT,639)
    assign bubble_select_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64(BLACKBOX,83)@258
    // in in_stall_in@20000000
    // out out_data_out@259
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@259
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zemdep_phi40_push20_0 thei_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_feedback_stall_out_20),
        .in_keep_going(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_backStall),
        .in_valid_in(SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63(STALLENABLE,782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireValid) | SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed1 = (~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireValid) | SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_StallValid = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_backStall & SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_toReg0 = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_StallValid & SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_toReg1 = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_StallValid & SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_or0 = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_consumed1 & SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_backStall = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_V0 = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_V1 = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_wireValid = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_o_valid;

    // SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo(STALLENABLE,1005)
    // Valid signal propagation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_V0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_stall_out | ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_and0 = redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_out;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_V1 & SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_and0;

    // redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo(STALLFIFO,582)
    assign redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_in = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V2;
    assign redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_in = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_backStall;
    assign redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_data_in = bubble_select_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_b;
    assign redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_out[0] = redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_out_bitsignaltemp;
    assign redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_out[0] = redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo (
        .valid_in(redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_b),
        .valid_out(redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55(STALLENABLE,806)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_wireValid = i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_valid_out;

    // i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x(BITSELECT,301)@226
    assign i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_b = bubble_select_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_b[0:0];

    // i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55(BLACKBOX,82)@226
    // in in_stall_in@20000000
    // out out_data_out@227
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@227
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zemdep_phi38_push19_0 thei_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55 (
        .in_data_in(i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_feedback_stall_out_19),
        .in_keep_going(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_backStall),
        .in_valid_in(SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x(STALLENABLE,885)
    // Valid signal propagation
    assign SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_V0 = SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_wireValid;
    // Backward Stall generation
    assign SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_backStall = i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_stall_out | ~ (SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_V1;
    assign SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_wireValid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V1 & SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48(STALLENABLE,804)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_wireValid = i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_valid_out;

    // i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x(BITSELECT,300)@226
    assign i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_b = bubble_select_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_b[0:0];

    // i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48(BLACKBOX,81)@226
    // in in_stall_in@20000000
    // out out_data_out@227
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@227
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zemdep_phi37_push18_0 thei_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48 (
        .in_data_in(i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_feedback_stall_out_18),
        .in_keep_going(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_backStall),
        .in_valid_in(SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x(STALLENABLE,884)
    // Valid signal propagation
    assign SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_V0 = SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_wireValid;
    // Backward Stall generation
    assign SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_backStall = i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_stall_out | ~ (SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_V0;
    assign SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_wireValid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V0 & SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_and0;

    // SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo(STALLENABLE,1003)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg0 <= '0;
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg1 <= '0;
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg0 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg0;
            // Successor 1
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg1 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg1;
            // Successor 2
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg2 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed0 = (~ (SE_i_lm11217_toi1_intcast_ff_snow_horizontal_compose97i47_sel_x_backStall) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed1 = (~ (SE_i_lm11418_toi1_intcast_ff_snow_horizontal_compose97i54_sel_x_backStall) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg1;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed2 = (~ (redist21_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_128_fifo_stall_out) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg2;
    // Consuming
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_StallValid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_backStall & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg0 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg1 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed1;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_toReg2 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_or0 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_or1 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed1 & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_or0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireStall = ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_consumed2 & SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_or1);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_backStall = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V0 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg0);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V1 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg1);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_V2 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_wireValid = redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_out;

    // redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo(STALLFIFO,581)
    assign redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_in = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_V1;
    assign redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_in = SE_out_redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_backStall;
    assign redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_data_in = bubble_select_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_b;
    assign redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_in_bitsignaltemp = redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_in[0];
    assign redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_in_bitsignaltemp = redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_in[0];
    assign redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_out[0] = redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_out_bitsignaltemp;
    assign redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_out[0] = redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo (
        .valid_in(redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_b),
        .valid_out(redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44(STALLENABLE,802)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_wireValid = i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44(BLACKBOX,80)@194
    // in in_stall_in@20000000
    // out out_data_out@195
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@195
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zemdep_phi36_push17_0 thei_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_feedback_stall_out_17),
        .in_keep_going(bubble_select_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44(STALLENABLE,801)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_backStall = i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_and0 = SE_out_i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_wireValid = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_and0;

    // SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo(STALLENABLE,1001)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg0 <= '0;
            SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg0 <= SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_toReg0;
            // Successor 1
            SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg1 <= SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_backStall) & SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg0;
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed1 = (~ (redist20_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_96_fifo_stall_out) & SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_StallValid = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_backStall & SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireValid;
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_toReg0 = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_toReg1 = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_or0 = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireStall = ~ (SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_consumed1 & SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_or0);
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_backStall = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_V0 = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg0);
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_V1 = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_wireValid = redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_out;

    // redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo(STALLFIFO,580)
    assign redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_in = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_V1;
    assign redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_in = SE_out_redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_backStall;
    assign redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_data_in = bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_b;
    assign redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_in_bitsignaltemp = redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_in[0];
    assign redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_in_bitsignaltemp = redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_in[0];
    assign redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_out[0] = redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_out_bitsignaltemp;
    assign redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_out[0] = redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo (
        .valid_in(redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_b),
        .valid_out(redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo(STALLFIFO,579)
    assign redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_in = SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_V1;
    assign redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_in = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_backStall;
    assign redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_data_in = redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_q;
    assign redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_in_bitsignaltemp = redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_in[0];
    assign redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_in_bitsignaltemp = redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_in[0];
    assign redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_out[0] = redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_out_bitsignaltemp;
    assign redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_out[0] = redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo (
        .valid_in(redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_in_bitsignaltemp),
        .data_in(redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_q),
        .valid_out(redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo(STALLENABLE,999)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg0 <= '0;
            SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg0 <= SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_toReg0;
            // Successor 1
            SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg1 <= SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed0 = (~ (SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_backStall) & SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireValid) | SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg0;
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed1 = (~ (redist19_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_64_fifo_stall_out) & SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireValid) | SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_StallValid = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_backStall & SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireValid;
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_toReg0 = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_StallValid & SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed0;
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_toReg1 = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_StallValid & SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_or0 = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed0;
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireStall = ~ (SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_consumed1 & SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_or0);
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_backStall = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_V0 = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireValid & ~ (SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg0);
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_V1 = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireValid & ~ (SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_wireValid = redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_valid_out;

    // SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join(STALLENABLE,824)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg0 <= SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg1 <= SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_stall_out) & SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireValid) | SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg0;
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_stall_out) & SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireValid) | SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_StallValid = SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_backStall & SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireValid;
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_toReg0 = SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_StallValid & SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed0;
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_toReg1 = SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_StallValid & SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_or0 = SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed0;
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireStall = ~ (SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_consumed1 & SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_or0);
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_backStall = SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_V0 = SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireValid & ~ (SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg0);
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_V1 = SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireValid & ~ (SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_V1;
    assign SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_wireValid = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_V0 & SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_and0;

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg(STALLFIFO,1224)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5(STALLENABLE,798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed1 = (~ (SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_wireValid = i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7(STALLENABLE,816)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_wireValid = i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid477_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,476)@163
    assign rightShiftStage0Idx1Rng1_uid477_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_b[3:1];

    // rightShiftStage0Idx1_uid479_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,478)@163
    assign rightShiftStage0Idx1_uid479_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid477_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5(BITJOIN,664)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_q = i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5(BITSELECT,665)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_q[3:0]);

    // rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x(MUX,480)@163
    assign rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_b or rightShiftStage0Idx1_uid479_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_b;
            1'b1 : rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0Idx1_uid479_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_ff_snow_horizontal_compose97i6_vt_select_2(BITSELECT,100)@163
    assign i_next_initerations_ff_snow_horizontal_compose97i6_vt_select_2_b = rightShiftStage0_uid481_i_next_initerations_ff_snow_horizontal_compose97i0_shift_x_q[2:0];

    // i_next_initerations_ff_snow_horizontal_compose97i6_vt_join(BITJOIN,99)@163
    assign i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_q = {GND_q, i_next_initerations_ff_snow_horizontal_compose97i6_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7(BLACKBOX,87)@163
    // in in_stall_in@20000000
    // out out_data_out@164
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@164
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zniterations_push21_0 thei_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7 (
        .in_data_in(i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_backStall),
        .in_valid_in(SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo(BITJOIN,693)
    assign bubble_join_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_q = redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_data_out;

    // bubble_select_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo(BITSELECT,694)
    assign bubble_select_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_b = $unsigned(bubble_join_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_q[0:0]);

    // c_i4_779(CONSTANT,21)
    assign c_i4_779_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5(BLACKBOX,78)@162
    // in in_stall_in@20000000
    // out out_data_out@163
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@163
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Ziniterations_pop21_0 thei_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5 (
        .in_data_in(c_i4_779_q),
        .in_dir(bubble_select_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_b),
        .in_feedback_in_21(i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i4_initerations_push21_ff_snow_horizontal_compose97i7_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_backStall),
        .in_valid_in(SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40(BLACKBOX,74)@162
    // in in_stall_in@20000000
    // out out_data_out@163
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@163
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zmemdep_phi38_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_b),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi38_push19_ff_snow_horizontal_compose97i55_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall),
        .in_valid_in(SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39(BLACKBOX,73)@162
    // in in_stall_in@20000000
    // out out_data_out@163
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@163
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zmemdep_phi37_pop18_0 thei_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_b),
        .in_feedback_in_18(i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_memdep_phi37_push18_ff_snow_horizontal_compose97i48_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_redist2_i_arrayidx114_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_33_fifo_backStall),
        .in_valid_in(SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo(STALLENABLE,982)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg0 <= '0;
            SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg1 <= '0;
            SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg0 <= SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg0;
            // Successor 1
            SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg1 <= SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg1;
            // Successor 2
            SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg2 <= SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi37_pop18_ff_snow_horizontal_compose97i39_out_stall_out) & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid) | SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg0;
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi38_pop19_ff_snow_horizontal_compose97i40_out_stall_out) & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid) | SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg1;
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed2 = (~ (i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_out_stall_out) & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid) | SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg2;
    // Consuming
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_StallValid = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_backStall & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid;
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg0 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_StallValid & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed0;
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg1 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_StallValid & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed1;
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_toReg2 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_StallValid & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_or0 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed0;
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_or1 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed1 & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_or0;
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireStall = ~ (SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_consumed2 & SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_or1);
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_backStall = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V0 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid & ~ (SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg0);
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V1 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid & ~ (SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg1);
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_V2 = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid & ~ (SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_wireValid = redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_out;

    // redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo(STALLFIFO,568)
    assign redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_in = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V4;
    assign redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_in = SE_out_redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_backStall;
    assign redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_data_in = redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q;
    assign redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_in_bitsignaltemp = redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_in[0];
    assign redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_in_bitsignaltemp = redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_in[0];
    assign redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_out[0] = redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_out_bitsignaltemp;
    assign redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_out[0] = redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo (
        .valid_in(redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_in_bitsignaltemp),
        .data_in(redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q),
        .valid_out(redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0(BLACKBOX,77)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpga_pop_i4_cleanups_pop22_0 thei_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0 (
        .in_data_in(c_i4_779_q),
        .in_dir(redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q),
        .in_feedback_in_22(i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i4_cleanups_push22_ff_snow_horizontal_compose97i76_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_backStall),
        .in_valid_in(SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V3),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17(BLACKBOX,75)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zmemdep_phi40_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17 (
        .in_data_in(GND_q),
        .in_dir(redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_memdep_phi40_push20_ff_snow_horizontal_compose97i64_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_backStall),
        .in_valid_in(SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16(BLACKBOX,72)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zmemdep_phi36_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16 (
        .in_data_in(GND_q),
        .in_dir(redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q),
        .in_feedback_in_17(i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_memdep_phi36_push17_ff_snow_horizontal_compose97i44_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_backStall),
        .in_valid_in(SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(STALLENABLE,979)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0 <= '0;
            SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0 <= SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg0;
            // Successor 1
            SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1 <= SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0 = (~ (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall) & SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid) | SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_x_195_pop16_ff_snow_horizontal_compose97i12_out_stall_out) & SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid) | SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1;
    // Consuming
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall & SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg0 = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid & SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg1 = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid & SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or0 = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireStall = ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1 & SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or0);
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V0 = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid & ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0);
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V1 = SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid & ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid = redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out;

    // SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0(STALLENABLE,980)
    // Valid signal propagation
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V0 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V1 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V2 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_2;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V3 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_3;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V4 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_4;
    // Stall signal propagation
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0 = i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_stall_out & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi36_pop17_ff_snow_horizontal_compose97i16_out_stall_out & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_2 = i_llvm_fpga_pop_i1_memdep_phi40_pop20_ff_snow_horizontal_compose97i17_out_stall_out & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_2;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_3 = i_llvm_fpga_pop_i4_cleanups_pop22_ff_snow_horizontal_compose97i0_out_stall_out & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_3;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_4 = redist6_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_161_fifo_stall_out & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_4;
    // Backward Enable generation
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or0 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or1 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1 | SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or0;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or2 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_2 | SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or1;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or3 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_3 | SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or2;
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN = ~ (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_4 | SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0 = SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN & SE_out_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V0;
    // Backward Stall generation
    assign SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall = ~ (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 <= 1'b0;
            SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 <= 1'b0;
            SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_2 <= 1'b0;
            SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_3 <= 1'b0;
            SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b0)
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0;
            end
            else
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
            end

            if (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b0)
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1;
            end
            else
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
            end

            if (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b0)
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_2 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_2 & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_2;
            end
            else
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_2 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
            end

            if (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b0)
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_3 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_3 & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_3;
            end
            else
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_3 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
            end

            if (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b0)
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_4 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_4 & SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_4;
            end
            else
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_4 <= SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4(STALLENABLE,784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_x_195_push16_ff_snow_horizontal_compose97i66_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed2 = (~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_1_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_or1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_wireValid = i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73(STALLENABLE,810)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_wireValid = i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73(BLACKBOX,84)@131
    // in in_stall_in@20000000
    // out out_data_out@132
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@132
    ff_snow_horizontal_compose97i_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73 (
        .in_data_in(i_unnamed_ff_snow_horizontal_compose97i71_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_not_exitcond_stall_out),
        .in_first_cleanup(redist0_i_first_cleanup_ff_snow_horizontal_compose97i1_sel_x_b_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9(STALLENABLE,800)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_wireValid = i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_valid_out;

    // i_last_initeration_ff_snow_horizontal_compose97i8_sel_x(BITSELECT,299)@163
    assign i_last_initeration_ff_snow_horizontal_compose97i8_sel_x_b = i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9(BLACKBOX,79)@163
    // in in_stall_in@20000000
    // out out_data_out@164
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@164
    ff_snow_horizontal_compose97i_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9 (
        .in_data_in(i_last_initeration_ff_snow_horizontal_compose97i8_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_initeration_stall_out),
        .in_keep_going(bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out_33_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_backStall),
        .in_valid_in(SE_i_next_initerations_ff_snow_horizontal_compose97i6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0(REG,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b1)
        begin
            redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q <= $unsigned(bubble_select_redist4_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4(BLACKBOX,71)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4 (
        .in_data_in(redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_ff_snow_horizontal_compose97i9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_ff_snow_horizontal_compose97i73_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_backStall),
        .in_valid_in(SE_redist5_ff_snow_horizontal_compose97i_B4_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V0),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,189)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_ff_snow_horizontal_compose97i4_out_pipeline_valid_out;

    // regfree_osync(GPOUT,195)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i18_ff_snow_horizontal_compose97i77_out_intel_reserved_ffwd_11_0;

    // sync_out(GPOUT,200)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,213)
    assign out_lm10614_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm10614_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm10614_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm10614_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm10614_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm10614_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm10614_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm10614_ff_snow_horizontal_compose97i20_out_lm10614_ff_snow_horizontal_compose97i_avm_burstcount;

    // bubble_join_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo(BITJOIN,702)
    assign bubble_join_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_q = redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_data_out;

    // bubble_select_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo(BITSELECT,703)
    assign bubble_select_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_b = $unsigned(bubble_join_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,215)@258
    assign out_masked = bubble_select_redist11_i_masked_ff_snow_horizontal_compose97i78_q_127_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop21_ff_snow_horizontal_compose97i5_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,217)
    assign out_lm10815_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm10815_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm10815_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm10815_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm10815_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm10815_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm10815_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm10815_ff_snow_horizontal_compose97i26_out_lm10815_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,219)
    assign out_lm11016_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm11016_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm11016_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm11016_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm11016_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm11016_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm11016_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm11016_ff_snow_horizontal_compose97i31_out_lm11016_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,221)
    assign out_memdep_35_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_35_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_35_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_35_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_35_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_35_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_35_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_memdep_35_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,223)
    assign out_lsu_memdep_35_o_active = i_llvm_fpga_mem_memdep_35_ff_snow_horizontal_compose97i43_out_lsu_memdep_35_o_active;

    // dupName_5_ext_sig_sync_out_x(GPOUT,225)
    assign out_lm11217_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm11217_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm11217_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm11217_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm11217_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm11217_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm11217_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm11217_ff_snow_horizontal_compose97i46_out_lm11217_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,226)
    assign out_lm11418_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm11418_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm11418_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm11418_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm11418_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm11418_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm11418_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm11418_ff_snow_horizontal_compose97i53_out_lm11418_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,227)
    assign out_memdep_39_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_39_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_39_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_39_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_39_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_39_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_39_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_memdep_39_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,228)
    assign out_lsu_memdep_39_o_active = i_llvm_fpga_mem_memdep_39_ff_snow_horizontal_compose97i63_out_lsu_memdep_39_o_active;

endmodule
