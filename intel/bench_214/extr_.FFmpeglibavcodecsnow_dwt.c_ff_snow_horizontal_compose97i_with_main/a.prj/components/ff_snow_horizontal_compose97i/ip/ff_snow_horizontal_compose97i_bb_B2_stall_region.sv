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

// SystemVerilog created from ff_snow_horizontal_compose97i_bb_B2_stall_region
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_bb_B2_stall_region (
    input wire [63:0] in_lm933_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm933_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm933_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm933_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm954_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm954_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm954_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm954_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm933_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm933_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm933_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm933_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm933_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm933_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm933_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_masked117,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_lm975_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm975_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm975_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm975_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm954_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm954_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm954_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm954_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm954_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm954_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm954_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_memdep_23_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_23_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_23_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_23_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm975_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm975_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm975_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm975_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm975_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm975_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm975_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_lm996_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm996_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm996_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm996_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_memdep_23_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_23_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_23_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_23_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_23_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_23_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_23_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [63:0] in_lm1017_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm1017_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_lm1017_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm1017_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_23_o_active,
    input wire [63:0] in_memdep_26_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_26_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_26_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_26_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_lm996_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm996_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm996_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm996_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm996_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm996_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm996_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [63:0] out_lm1017_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm1017_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm1017_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm1017_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm1017_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_lm1017_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm1017_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [63:0] out_memdep_26_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_26_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_26_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_26_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_26_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_26_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_26_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [0:0] out_lsu_memdep_26_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_190_q;
    wire [31:0] c_i32_191_q;
    wire [31:0] c_i32_294_q;
    wire [31:0] c_i32_492_q;
    wire [32:0] c_i33_196_q;
    wire [32:0] c_i33_undef89_q;
    wire [3:0] c_i4_785_q;
    wire [32:0] i_add15_ff_snow_horizontal_compose97i35_a;
    wire [32:0] i_add15_ff_snow_horizontal_compose97i35_b;
    logic [32:0] i_add15_ff_snow_horizontal_compose97i35_o;
    wire [32:0] i_add15_ff_snow_horizontal_compose97i35_q;
    wire [32:0] i_add17_ff_snow_horizontal_compose97i38_a;
    wire [32:0] i_add17_ff_snow_horizontal_compose97i38_b;
    logic [32:0] i_add17_ff_snow_horizontal_compose97i38_o;
    wire [32:0] i_add17_ff_snow_horizontal_compose97i38_q;
    wire [32:0] i_add8_ff_snow_horizontal_compose97i25_a;
    wire [32:0] i_add8_ff_snow_horizontal_compose97i25_b;
    logic [32:0] i_add8_ff_snow_horizontal_compose97i25_o;
    wire [32:0] i_add8_ff_snow_horizontal_compose97i25_q;
    wire [3:0] i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_join_q;
    wire [2:0] i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_select_3_b;
    wire [0:0] i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q;
    wire [33:0] i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_a;
    wire [33:0] i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_b;
    logic [33:0] i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_o;
    wire [33:0] i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_q;
    wire [31:0] i_idxprom21_ff_snow_horizontal_compose97i42_vt_const_63_q;
    wire [63:0] i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_q;
    wire [30:0] i_idxprom21_ff_snow_horizontal_compose97i42_vt_select_31_b;
    wire [63:0] i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_q;
    wire [62:0] i_idxprom29_ff_snow_horizontal_compose97i56_vt_select_63_b;
    wire [63:0] i_idxprom38_ff_snow_horizontal_compose97i65_vt_join_q;
    wire [62:0] i_idxprom38_ff_snow_horizontal_compose97i65_vt_select_63_b;
    wire [63:0] i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_q;
    wire [31:0] i_idxprom6_ff_snow_horizontal_compose97i16_vt_select_31_b;
    wire [32:0] i_inc_ff_snow_horizontal_compose97i70_a;
    wire [32:0] i_inc_ff_snow_horizontal_compose97i70_b;
    logic [32:0] i_inc_ff_snow_horizontal_compose97i70_o;
    wire [32:0] i_inc_ff_snow_horizontal_compose97i70_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_lsu_memdep_23_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_lsu_memdep_26_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_valid_out;
    wire [0:0] i_masked117_ff_snow_horizontal_compose97i84_qi;
    reg [0:0] i_masked117_ff_snow_horizontal_compose97i84_q;
    wire [0:0] i_memdep_phi27_or31_ff_snow_horizontal_compose97i51_q;
    wire [0:0] i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q;
    wire [32:0] i_mul16_add49_ff_snow_horizontal_compose97i37_a;
    wire [32:0] i_mul16_add49_ff_snow_horizontal_compose97i37_b;
    logic [32:0] i_mul16_add49_ff_snow_horizontal_compose97i37_o;
    wire [32:0] i_mul16_add49_ff_snow_horizontal_compose97i37_q;
    wire [31:0] i_mul20_ff_snow_horizontal_compose97i41_vt_join_q;
    wire [30:0] i_mul20_ff_snow_horizontal_compose97i41_vt_select_31_b;
    wire [0:0] i_next_cleanups116_ff_snow_horizontal_compose97i81_s;
    reg [3:0] i_next_cleanups116_ff_snow_horizontal_compose97i81_q;
    wire [3:0] i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_q;
    wire [2:0] i_next_initerations107_ff_snow_horizontal_compose97i6_vt_select_2_b;
    wire [0:0] i_notcmp105_ff_snow_horizontal_compose97i78_q;
    wire [0:0] i_or115_ff_snow_horizontal_compose97i80_q;
    wire [0:0] i_reduction_ff_snow_horizontal_compose97i_0_ff_snow_horizontal_compose97i47_q;
    wire [0:0] i_reduction_ff_snow_horizontal_compose97i_1_ff_snow_horizontal_compose97i48_q;
    wire [32:0] i_sub19_ff_snow_horizontal_compose97i40_a;
    wire [32:0] i_sub19_ff_snow_horizontal_compose97i40_b;
    logic [32:0] i_sub19_ff_snow_horizontal_compose97i40_o;
    wire [32:0] i_sub19_ff_snow_horizontal_compose97i40_q;
    wire [32:0] i_sub28_ff_snow_horizontal_compose97i55_a;
    wire [32:0] i_sub28_ff_snow_horizontal_compose97i55_b;
    logic [32:0] i_sub28_ff_snow_horizontal_compose97i55_o;
    wire [32:0] i_sub28_ff_snow_horizontal_compose97i55_q;
    wire [31:0] i_sub28_ff_snow_horizontal_compose97i55_vt_join_q;
    wire [30:0] i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b;
    wire [32:0] i_sub31_ff_snow_horizontal_compose97i62_a;
    wire [32:0] i_sub31_ff_snow_horizontal_compose97i62_b;
    logic [32:0] i_sub31_ff_snow_horizontal_compose97i62_o;
    wire [32:0] i_sub31_ff_snow_horizontal_compose97i62_q;
    wire [32:0] i_sub35_ff_snow_horizontal_compose97i63_a;
    wire [32:0] i_sub35_ff_snow_horizontal_compose97i63_b;
    logic [32:0] i_sub35_ff_snow_horizontal_compose97i63_o;
    wire [32:0] i_sub35_ff_snow_horizontal_compose97i63_q;
    wire [32:0] i_sub37_ff_snow_horizontal_compose97i64_a;
    wire [32:0] i_sub37_ff_snow_horizontal_compose97i64_b;
    logic [32:0] i_sub37_ff_snow_horizontal_compose97i64_o;
    wire [32:0] i_sub37_ff_snow_horizontal_compose97i64_q;
    wire [31:0] i_sub37_ff_snow_horizontal_compose97i64_vt_join_q;
    wire [30:0] i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b;
    wire [32:0] i_sub9_ff_snow_horizontal_compose97i26_a;
    wire [32:0] i_sub9_ff_snow_horizontal_compose97i26_b;
    logic [32:0] i_sub9_ff_snow_horizontal_compose97i26_o;
    wire [32:0] i_sub9_ff_snow_horizontal_compose97i26_q;
    wire [0:0] i_unnamed_ff_snow_horizontal_compose97i14_q;
    wire [31:0] i_unnamed_ff_snow_horizontal_compose97i36_vt_join_q;
    wire [30:0] i_unnamed_ff_snow_horizontal_compose97i36_vt_select_31_b;
    wire [0:0] i_unnamed_ff_snow_horizontal_compose97i77_q;
    wire [0:0] i_xor114_ff_snow_horizontal_compose97i2_q;
    wire [31:0] bgTrunc_i_add15_ff_snow_horizontal_compose97i35_sel_x_b;
    wire [31:0] bgTrunc_i_add17_ff_snow_horizontal_compose97i38_sel_x_b;
    wire [31:0] bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_sel_x_b;
    wire [31:0] bgTrunc_i_inc_ff_snow_horizontal_compose97i70_sel_x_b;
    wire [31:0] bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b;
    wire [31:0] bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b;
    wire [31:0] bgTrunc_i_sub28_ff_snow_horizontal_compose97i55_sel_x_b;
    wire [31:0] bgTrunc_i_sub31_ff_snow_horizontal_compose97i62_sel_x_b;
    wire [31:0] bgTrunc_i_sub35_ff_snow_horizontal_compose97i63_sel_x_b;
    wire [31:0] bgTrunc_i_sub37_ff_snow_horizontal_compose97i64_sel_x_b;
    wire [31:0] bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b;
    wire [0:0] ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [64:0] i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [60:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q;
    wire [63:0] i_arrayidx11_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx14_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx14_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx22_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx22_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx30_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx30_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx39_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx39_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_a;
    wire [64:0] i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_b;
    logic [64:0] i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_o;
    wire [64:0] i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_q;
    wire [127:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_extender_x_q;
    wire [63:0] i_arrayidx7_ff_snow_horizontal_compose97i0_trunc_sel_x_b;
    wire [63:0] i_arrayidx7_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b;
    wire [63:0] i_idxprom10_ff_snow_horizontal_compose97i27_sel_x_b;
    wire [63:0] i_idxprom13_ff_snow_horizontal_compose97i31_sel_x_b;
    wire [63:0] i_idxprom21_ff_snow_horizontal_compose97i42_sel_x_b;
    wire [63:0] i_idxprom29_ff_snow_horizontal_compose97i56_sel_x_b;
    wire [63:0] i_idxprom38_ff_snow_horizontal_compose97i65_sel_x_b;
    wire [63:0] i_idxprom6_ff_snow_horizontal_compose97i16_sel_x_b;
    wire [0:0] i_last_initeration109_ff_snow_horizontal_compose97i8_sel_x_b;
    wire [0:0] i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_b;
    wire [0:0] i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_b;
    wire [0:0] i_exitcond_ff_snow_horizontal_compose97i72_cmp_nsign_q;
    wire [35:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid493_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid493_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid494_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [3:0] leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid501_i_mul20_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid501_i_mul20_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid502_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid508_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid510_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [3:0] rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid514_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid516_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid517_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [1:0] seMsb_to2_uid520_in;
    wire [1:0] seMsb_to2_uid520_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid521_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid522_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid529_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid529_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid530_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [11:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e;
    wire [0:0] redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_in;
    wire redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_in;
    wire redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_data_in;
    wire [0:0] redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_out;
    wire redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_out;
    wire redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_data_out;
    wire [0:0] redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in;
    wire redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in;
    wire redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_in;
    wire [0:0] redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out;
    wire redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out;
    wire redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_out;
    wire [0:0] redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in;
    wire redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in;
    wire redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_in;
    wire [0:0] redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out;
    wire redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out;
    wire redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_out;
    reg [0:0] redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in;
    wire redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in;
    wire redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_in;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out;
    wire redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out;
    wire redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_out;
    reg [0:0] redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_in;
    wire redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_in;
    wire redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_data_in;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_out;
    wire redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_out;
    wire redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_data_out;
    reg [31:0] redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q;
    wire [0:0] redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_in;
    wire redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_in;
    wire redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_data_in;
    wire [0:0] redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_out;
    wire redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_out;
    wire redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_data_out;
    reg [31:0] redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_q;
    reg [31:0] redist10_bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q;
    wire [0:0] redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_in;
    wire redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_in;
    wire redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_data_in;
    wire [0:0] redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_out;
    wire redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_out;
    wire redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_data_out;
    wire [0:0] redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_in;
    wire redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_in;
    wire redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_in_bitsignaltemp;
    wire [30:0] redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_data_in;
    wire [0:0] redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_out;
    wire redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_out;
    wire redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_out_bitsignaltemp;
    wire [30:0] redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_data_out;
    reg [30:0] redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_q;
    wire [0:0] redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_in;
    wire redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_in;
    wire redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_data_in;
    wire [0:0] redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_out;
    wire redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_out;
    wire redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_data_out;
    reg [0:0] redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_q;
    wire [0:0] redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_in;
    wire redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_in;
    wire redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_data_in;
    wire [0:0] redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_out;
    wire redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_out;
    wire redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_data_out;
    wire [0:0] redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_in;
    wire redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_in;
    wire redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_in_bitsignaltemp;
    wire [3:0] redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_data_in;
    wire [0:0] redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_out;
    wire redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_out;
    wire redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_out_bitsignaltemp;
    wire [3:0] redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_data_out;
    reg [31:0] redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_q;
    reg [31:0] redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_q;
    wire [0:0] redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_in;
    wire redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_in;
    wire redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_data_in;
    wire [0:0] redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_out;
    wire redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_out;
    wire redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_data_out;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_in;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_in;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_data_in;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_out;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_out;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_data_out;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_in;
    wire redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_in;
    wire redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_data_in;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_out;
    wire redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_out;
    wire redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_data_out;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_in;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_in;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_data_in;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_out;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_out;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_data_out;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_in;
    wire redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_in;
    wire redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_data_in;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_out;
    wire redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_out;
    wire redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_data_out;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_in;
    wire redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_in;
    wire redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_data_in;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_out;
    wire redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_out;
    wire redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_data_out;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_in;
    wire redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_in;
    wire redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_data_in;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_out;
    wire redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_out;
    wire redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_data_out;
    reg [0:0] redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_q;
    reg [0:0] redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_q;
    wire [0:0] redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_in;
    wire redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_in;
    wire redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_data_in;
    wire [0:0] redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_out;
    wire redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_out;
    wire redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_data_out;
    wire [0:0] redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_in;
    wire redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_in;
    wire redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_data_in;
    wire [0:0] redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_out;
    wire redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_out;
    wire redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_data_out;
    wire [0:0] redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_in;
    wire redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_in;
    wire redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_data_in;
    wire [0:0] redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_out;
    wire redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_out;
    wire redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_b;
    wire [32:0] bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_q;
    wire [32:0] bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_b;
    wire [32:0] bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_q;
    wire [32:0] bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_q;
    wire [0:0] bubble_select_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_b;
    wire [63:0] bubble_join_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_q;
    wire [63:0] bubble_select_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_b;
    wire [0:0] bubble_join_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_q;
    wire [0:0] bubble_select_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b;
    wire [0:0] bubble_join_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_q;
    wire [0:0] bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b;
    wire [0:0] bubble_join_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_q;
    wire [0:0] bubble_select_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_b;
    wire [31:0] bubble_join_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_q;
    wire [31:0] bubble_select_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_b;
    wire [0:0] bubble_join_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_q;
    wire [0:0] bubble_select_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_b;
    wire [30:0] bubble_join_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_q;
    wire [30:0] bubble_select_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_b;
    wire [31:0] bubble_join_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_q;
    wire [31:0] bubble_select_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_b;
    wire [0:0] bubble_join_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_q;
    wire [0:0] bubble_select_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_b;
    wire [3:0] bubble_join_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_q;
    wire [3:0] bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_b;
    wire [31:0] bubble_join_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_q;
    wire [31:0] bubble_select_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_b;
    wire [0:0] bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_q;
    wire [0:0] bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_b;
    wire [0:0] bubble_join_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_q;
    wire [0:0] bubble_select_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_b;
    wire [0:0] bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_q;
    wire [0:0] bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_b;
    wire [0:0] bubble_join_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_q;
    wire [0:0] bubble_select_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_b;
    wire [0:0] bubble_join_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_q;
    wire [0:0] bubble_select_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_b;
    wire [0:0] bubble_join_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_q;
    wire [0:0] bubble_select_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_b;
    wire [0:0] bubble_join_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_q;
    wire [0:0] bubble_select_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_b;
    wire [0:0] bubble_join_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_q;
    wire [0:0] bubble_select_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_b;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_wireValid;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_wireStall;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_StallValid;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_toReg0;
    reg [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_fromReg0;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_consumed0;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_toReg1;
    reg [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_fromReg1;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_consumed1;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_and0;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_or0;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_backStall;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_V0;
    wire [0:0] SE_i_add17_ff_snow_horizontal_compose97i38_V1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireValid;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireStall;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_StallValid;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_toReg0;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_toReg1;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_and0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_and1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_or0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_backStall;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_V0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_V1;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_wireValid;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and0;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and1;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and2;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and3;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and4;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and5;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall;
    wire [0:0] SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_V0;
    wire [0:0] SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_wireValid;
    wire [0:0] SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and0;
    wire [0:0] SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and1;
    wire [0:0] SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and2;
    wire [0:0] SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_backStall;
    wire [0:0] SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_V0;
    wire [0:0] SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_wireValid;
    wire [0:0] SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and0;
    wire [0:0] SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and1;
    wire [0:0] SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and2;
    wire [0:0] SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_backStall;
    wire [0:0] SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_V1;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_backStall;
    reg [0:0] SE_i_masked117_ff_snow_horizontal_compose97i84_R_v_0;
    wire [0:0] SE_i_masked117_ff_snow_horizontal_compose97i84_v_s_0;
    wire [0:0] SE_i_masked117_ff_snow_horizontal_compose97i84_s_tv_0;
    wire [0:0] SE_i_masked117_ff_snow_horizontal_compose97i84_backEN;
    wire [0:0] SE_i_masked117_ff_snow_horizontal_compose97i84_and0;
    wire [0:0] SE_i_masked117_ff_snow_horizontal_compose97i84_backStall;
    wire [0:0] SE_i_masked117_ff_snow_horizontal_compose97i84_V0;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireStall;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_StallValid;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg0;
    reg [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg0;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed0;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg1;
    reg [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg1;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed1;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg2;
    reg [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg2;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed2;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_and0;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_or0;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_or1;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_backStall;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V0;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V1;
    wire [0:0] SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V2;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_and0;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_or0;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_V0;
    wire [0:0] SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_V1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_wireStall;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_StallValid;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg0;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg1;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg2;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg2;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed2;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_and0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_or0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_or1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_backStall;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_V0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_V1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i14_V2;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_wireStall;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_StallValid;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg0;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg1;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg2;
    reg [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg2;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed2;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_and0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_or0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_or1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_backStall;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_V0;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_V1;
    wire [0:0] SE_i_unnamed_ff_snow_horizontal_compose97i77_V2;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V10;
    wire [0:0] SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_wireValid;
    wire [0:0] SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_and0;
    wire [0:0] SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_backStall;
    wire [0:0] SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_V0;
    wire [0:0] SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_wireValid;
    wire [0:0] SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_and0;
    wire [0:0] SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_backStall;
    wire [0:0] SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_or0;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_backStall;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_V1;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireStall;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg0;
    reg [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg1;
    reg [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_or0;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V0;
    wire [0:0] SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V1;
    reg [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0;
    reg [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1;
    reg [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_2;
    reg [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_3;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_2;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_3;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or0;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or1;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or2;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backStall;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V0;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V1;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V2;
    wire [0:0] SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V3;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireStall;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg0;
    reg [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg1;
    reg [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg2;
    reg [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg2;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed2;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg3;
    reg [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg3;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed3;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg4;
    reg [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg4;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed4;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or1;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or2;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or3;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V0;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V1;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V2;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V3;
    wire [0:0] SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V4;
    reg [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0;
    reg [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V0;
    wire [0:0] SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V1;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_wireValid;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_backStall;
    wire [0:0] SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_V0;
    reg [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_or0;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V0;
    wire [0:0] SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V1;
    reg [0:0] SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_V0;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireValid;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireStall;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_StallValid;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_toReg0;
    reg [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg0;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed0;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_toReg1;
    reg [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg1;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed1;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_or0;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_backStall;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_V0;
    wire [0:0] SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_V1;
    reg [0:0] SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_V0;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireStall;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_StallValid;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_toReg0;
    reg [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg0;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed0;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_toReg1;
    reg [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg1;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed1;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_or0;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_backStall;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_V0;
    wire [0:0] SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_V1;
    reg [0:0] SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_R_v_0;
    wire [0:0] SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_v_s_0;
    wire [0:0] SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backEN;
    wire [0:0] SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backStall;
    wire [0:0] SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_V0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and2;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_backStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_V0;
    reg [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backEN;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backStall;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_V0;
    reg [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_1;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backEN;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_or0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backStall;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_V0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_V1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_StallValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg0;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg1;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg2;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg2;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed2;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg3;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg3;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed3;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or2;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_backStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V2;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V3;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_StallValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_toReg0;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_toReg1;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_or0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_backStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_V0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_V1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and2;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_backStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_V0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireStall;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_StallValid;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_toReg0;
    reg [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_toReg1;
    reg [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_or0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_V1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_StallValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg0;
    reg [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg1;
    reg [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg2;
    reg [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg2;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed2;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_or0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_or1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_backStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V2;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_StallValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_toReg0;
    reg [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_toReg1;
    reg [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_or0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_backStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_V1;
    reg [0:0] SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_V0;
    reg [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_0;
    reg [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_1;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_v_s_0;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_0;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_1;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backEN;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_or0;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backStall;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_V0;
    wire [0:0] SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_V1;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireStall;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_StallValid;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_toReg0;
    reg [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg0;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed0;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_toReg1;
    reg [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg1;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed1;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_or0;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_backStall;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_V0;
    wire [0:0] SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_V1;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireStall;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_StallValid;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg0;
    reg [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg0;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed0;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg1;
    reg [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg1;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed1;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg2;
    reg [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg2;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed2;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_or0;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_or1;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_backStall;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V0;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V1;
    wire [0:0] SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V2;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_wireValid;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and0;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and1;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and2;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and3;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and4;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and5;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall;
    wire [0:0] SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_V0;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_wireValid;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_backStall;
    wire [0:0] SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_in;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_out;
    wire bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_i_valid;
    reg [0:0] SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid;
    reg [0:0] SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_data0;
    wire [0:0] SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall;
    wire [0:0] SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V;
    wire [0:0] SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_D0;


    // SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75(STALLENABLE,876)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_V0 = SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_backStall = i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_and0 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_V1;
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V2 & SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_and0;

    // SE_out_i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82(STALLENABLE,879)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_wireValid = i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4(BITJOIN,682)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_q = i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4(BITSELECT,683)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19(BITJOIN,695)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_q = i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19(BITSELECT,696)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_q[0:0]);

    // bubble_join_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo(BITJOIN,744)
    assign bubble_join_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_q = redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_data_out;

    // bubble_select_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo(BITSELECT,745)
    assign bubble_select_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_b = $unsigned(bubble_join_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_q[31:0]);

    // bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo(BITJOIN,771)
    assign bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_q = redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_data_out;

    // bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo(BITSELECT,772)
    assign bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_b = $unsigned(bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_q[0:0]);

    // i_memdep_phi27_or31_ff_snow_horizontal_compose97i51(LOGICAL,103)@160
    assign i_memdep_phi27_or31_ff_snow_horizontal_compose97i51_q = bubble_select_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_b | bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_b;

    // bubble_join_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo(BITJOIN,732)
    assign bubble_join_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_q = redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_out;

    // bubble_select_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo(BITSELECT,733)
    assign bubble_select_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_b = $unsigned(bubble_join_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_q[63:0]);

    // i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52(BLACKBOX,78)@160
    // in in_i_stall@20000000
    // out out_lm996_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm996_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm996_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm996_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm996_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm996_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm996_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@192
    // out out_o_stall@20000000
    // out out_o_valid@192
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm996_0 thei_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_b),
        .in_i_dependence(i_memdep_phi27_or31_ff_snow_horizontal_compose97i51_q),
        .in_i_predicate(bubble_select_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_backStall),
        .in_i_valid(SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_V0),
        .in_lm996_ff_snow_horizontal_compose97i_avm_readdata(in_lm996_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm996_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm996_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm996_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm996_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm996_ff_snow_horizontal_compose97i_avm_writeack(in_lm996_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm996_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_address),
        .out_lm996_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm996_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm996_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm996_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_read),
        .out_lm996_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_write),
        .out_lm996_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x(CONSTANT,267)
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i32_492(CONSTANT,20)
    assign c_i32_492_q = $unsigned(32'b00000000000000000000000000000100);

    // leftShiftStage0Idx1Rng1_uid529_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,528)@128
    assign leftShiftStage0Idx1Rng1_uid529_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in = bgTrunc_i_add15_ff_snow_horizontal_compose97i35_sel_x_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid529_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid529_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid530_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,529)@128
    assign leftShiftStage0Idx1_uid530_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid529_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(MUX,531)@128
    assign leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s or bgTrunc_i_add15_ff_snow_horizontal_compose97i35_sel_x_b or leftShiftStage0Idx1_uid530_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = bgTrunc_i_add15_ff_snow_horizontal_compose97i35_sel_x_b;
            1'b1 : leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid530_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_snow_horizontal_compose97i36_vt_select_31(BITSELECT,132)@128
    assign i_unnamed_ff_snow_horizontal_compose97i36_vt_select_31_b = leftShiftStage0_uid532_dupName_0_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_unnamed_ff_snow_horizontal_compose97i36_vt_join(BITJOIN,131)@128
    assign i_unnamed_ff_snow_horizontal_compose97i36_vt_join_q = {i_unnamed_ff_snow_horizontal_compose97i36_vt_select_31_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30(BITJOIN,666)
    assign bubble_join_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_q = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30(BITSELECT,667)
    assign bubble_select_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34(BITJOIN,669)
    assign bubble_join_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_q = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34(BITSELECT,670)
    assign bubble_select_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_q[31:0]);

    // i_add15_ff_snow_horizontal_compose97i35(ADD,29)@128
    assign i_add15_ff_snow_horizontal_compose97i35_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_b};
    assign i_add15_ff_snow_horizontal_compose97i35_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_b};
    assign i_add15_ff_snow_horizontal_compose97i35_o = $unsigned(i_add15_ff_snow_horizontal_compose97i35_a) + $unsigned(i_add15_ff_snow_horizontal_compose97i35_b);
    assign i_add15_ff_snow_horizontal_compose97i35_q = i_add15_ff_snow_horizontal_compose97i35_o[32:0];

    // bgTrunc_i_add15_ff_snow_horizontal_compose97i35_sel_x(BITSELECT,227)@128
    assign bgTrunc_i_add15_ff_snow_horizontal_compose97i35_sel_x_b = i_add15_ff_snow_horizontal_compose97i35_q[31:0];

    // i_mul16_add49_ff_snow_horizontal_compose97i37(ADD,105)@128
    assign i_mul16_add49_ff_snow_horizontal_compose97i37_a = {1'b0, bgTrunc_i_add15_ff_snow_horizontal_compose97i35_sel_x_b};
    assign i_mul16_add49_ff_snow_horizontal_compose97i37_b = {1'b0, i_unnamed_ff_snow_horizontal_compose97i36_vt_join_q};
    assign i_mul16_add49_ff_snow_horizontal_compose97i37_o = $unsigned(i_mul16_add49_ff_snow_horizontal_compose97i37_a) + $unsigned(i_mul16_add49_ff_snow_horizontal_compose97i37_b);
    assign i_mul16_add49_ff_snow_horizontal_compose97i37_q = i_mul16_add49_ff_snow_horizontal_compose97i37_o[32:0];

    // bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x(BITSELECT,232)@128
    assign bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b = i_mul16_add49_ff_snow_horizontal_compose97i37_q[31:0];

    // redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0(REG,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b);
        end
    end

    // i_add17_ff_snow_horizontal_compose97i38(ADD,30)@129
    assign i_add17_ff_snow_horizontal_compose97i38_a = {1'b0, redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_q};
    assign i_add17_ff_snow_horizontal_compose97i38_b = {1'b0, c_i32_492_q};
    assign i_add17_ff_snow_horizontal_compose97i38_o = $unsigned(i_add17_ff_snow_horizontal_compose97i38_a) + $unsigned(i_add17_ff_snow_horizontal_compose97i38_b);
    assign i_add17_ff_snow_horizontal_compose97i38_q = i_add17_ff_snow_horizontal_compose97i38_o[32:0];

    // bgTrunc_i_add17_ff_snow_horizontal_compose97i38_sel_x(BITSELECT,228)@129
    assign bgTrunc_i_add17_ff_snow_horizontal_compose97i38_sel_x_b = i_add17_ff_snow_horizontal_compose97i38_q[31:0];

    // xMSB_uid514_i_shr18_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,513)@129
    assign xMSB_uid514_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add17_ff_snow_horizontal_compose97i38_sel_x_b[31:31]);

    // seMsb_to2_uid520(BITSELECT,519)@129
    assign seMsb_to2_uid520_in = $unsigned({{1{xMSB_uid514_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b[0]}}, xMSB_uid514_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b});
    assign seMsb_to2_uid520_b = $unsigned(seMsb_to2_uid520_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid521_i_shr18_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,520)@129
    assign rightShiftStage1Idx1Rng2_uid521_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid522_i_shr18_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,521)@129
    assign rightShiftStage1Idx1_uid522_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = {seMsb_to2_uid520_b, rightShiftStage1Idx1Rng2_uid521_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid516_i_shr18_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,515)@129
    assign rightShiftStage0Idx1Rng1_uid516_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add17_ff_snow_horizontal_compose97i38_sel_x_b[31:1]);

    // rightShiftStage0Idx1_uid517_i_shr18_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,516)@129
    assign rightShiftStage0Idx1_uid517_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = {xMSB_uid514_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b, rightShiftStage0Idx1Rng1_uid516_i_shr18_ff_snow_horizontal_compose97i0_shift_x_b};

    // rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x(MUX,518)@129
    assign rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s or bgTrunc_i_add17_ff_snow_horizontal_compose97i38_sel_x_b or rightShiftStage0Idx1_uid517_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = bgTrunc_i_add17_ff_snow_horizontal_compose97i38_sel_x_b;
            1'b1 : rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0Idx1_uid517_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x(MUX,523)@129
    assign rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s or rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q or rightShiftStage1Idx1_uid522_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0_uid519_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q;
            1'b1 : rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage1Idx1_uid522_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23(BITJOIN,663)
    assign bubble_join_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_q = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23(BITSELECT,664)
    assign bubble_select_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_q[31:0]);

    // i_sub19_ff_snow_horizontal_compose97i40(SUB,117)@129
    assign i_sub19_ff_snow_horizontal_compose97i40_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_b};
    assign i_sub19_ff_snow_horizontal_compose97i40_b = {1'b0, rightShiftStage1_uid524_i_shr18_ff_snow_horizontal_compose97i0_shift_x_q};
    assign i_sub19_ff_snow_horizontal_compose97i40_o = $unsigned(i_sub19_ff_snow_horizontal_compose97i40_a) - $unsigned(i_sub19_ff_snow_horizontal_compose97i40_b);
    assign i_sub19_ff_snow_horizontal_compose97i40_q = i_sub19_ff_snow_horizontal_compose97i40_o[32:0];

    // bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x(BITSELECT,233)@129
    assign bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b = $unsigned(i_sub19_ff_snow_horizontal_compose97i40_q[31:0]);

    // redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0(REG,622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backEN == 1'b1)
        begin
            redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_q <= $unsigned(i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q);
        end
    end

    // SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0(STALLENABLE,1071)
    // Valid signal propagation
    assign SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_V0 = SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_s_tv_0 = SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_backStall & SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backEN = ~ (SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_v_s_0 = SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backEN & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V2;
    // Backward Stall generation
    assign SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backStall = ~ (SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_R_v_0 <= SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_R_v_0 & SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_R_v_0 <= SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_v_s_0;
            end

        end
    end

    // bubble_join_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x(BITJOIN,716)
    assign bubble_join_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_q = ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x(BITSELECT,717)
    assign bubble_select_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_q[0:0]);

    // redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(STALLFIFO,596)
    assign redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V10;
    assign redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall;
    assign redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_in = bubble_select_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_b;
    assign redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in_bitsignaltemp = redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in[0];
    assign redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in_bitsignaltemp = redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in[0];
    assign redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out[0] = redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out_bitsignaltemp;
    assign redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out[0] = redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo (
        .valid_in(redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_b),
        .valid_out(redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76(BLACKBOX,63)@129
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i1_cmp9688_0 thei_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10(STALLENABLE,1247)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg(STALLFIFO,1346)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V9;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(129),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9(STALLENABLE,1245)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg(STALLFIFO,1345)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V8;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(192),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8(STALLENABLE,1243)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg(STALLFIFO,1344)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V7;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(160),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7(STALLENABLE,1241)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_backStall = i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg(STALLFIFO,1343)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V6;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(129),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6(STALLENABLE,1239)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg(STALLFIFO,1342)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V5;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28(BLACKBOX,68)@96
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9968_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5(STALLENABLE,1237)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg(STALLFIFO,1341)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V4;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24(BLACKBOX,65)@95
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i32_shr86_0 thei_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4(STALLENABLE,1235)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg(STALLFIFO,1340)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V3;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0(STALLENABLE,1092)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_V0 = SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_s_tv_0 = SE_i_unnamed_ff_snow_horizontal_compose97i14_backStall & SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backEN = ~ (SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_v_s_0 = SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_V0;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backStall = ~ (SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_R_v_0 <= SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_R_v_0 & SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_R_v_0 <= SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13(STALLENABLE,811)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_backStall = SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13(BLACKBOX,64)@95
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i1_cmp9689_0 thei_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2(STALLENABLE,1231)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg(STALLFIFO,1338)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V1;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10(BLACKBOX,66)@129
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000009Zrizontal_compose97i0 thei_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1(STALLENABLE,1229)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg(STALLFIFO,1337)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V0;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(129),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,712)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,713)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,910)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x(BLACKBOX,259)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    ff_snow_horizontal_compose97i_B2_merge_reg theff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x(STALLENABLE,925)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg10 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg4 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg5 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg6 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg7 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg8 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg9 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg10 <= SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg10;
        end
    end
    // Input Stall processing
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg2;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg3;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg4;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg5;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed6 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg6;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed7 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg7;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed8 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg8;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed9 = (~ (bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_10_reg_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg9;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed10 = (~ (redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out) & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid) | SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg10;
    // Consuming
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_backStall & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg0 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg1 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg2 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed2;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg3 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed3;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg4 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed4;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg5 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed5;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg6 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed6;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg7 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed7;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg8 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed8;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg9 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed9;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_toReg10 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_StallValid & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed10;
    // Backward Stall generation
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or0 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or1 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed1 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or0;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or2 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed2 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or1;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or3 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed3 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or2;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or4 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed4 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or3;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or5 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed5 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or4;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or6 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed6 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or5;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or7 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed7 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or6;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or8 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed8 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or7;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or9 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed9 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or8;
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_consumed10 & SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_or9);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_backStall = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V0 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V1 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V2 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg2);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V3 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg3);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V4 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg4);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V5 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg5);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V6 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg6);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V7 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg7);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V8 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg8);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V9 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg9);
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V10 = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_fromReg10);
    // Computing multiple Valid(s)
    assign SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_wireValid = ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg(STALLFIFO,1339)
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_in = SE_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_V2;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3(STALLENABLE,1233)
    // Valid signal propagation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_stall_out | ~ (SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_wireValid = bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17(BLACKBOX,69)@97
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9969_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15(STALLENABLE,855)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_backStall) & SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireValid) | SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed1 = (~ (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireValid) | SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_StallValid = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_backStall & SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_toReg0 = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_StallValid & SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_toReg1 = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_StallValid & SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_or0 = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_consumed1 & SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_or0);
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_backStall = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_V0 = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_V1 = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_wireValid = i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_valid_out;

    // SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71(STALLENABLE,874)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_V0 = SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_backStall = i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_and0 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V1;
    assign SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V1 & SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_and0;

    // SE_out_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71(STALLENABLE,875)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_wireValid = i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_valid_out;

    // bubble_join_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo(BITJOIN,762)
    assign bubble_join_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_q = redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_data_out;

    // bubble_select_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo(BITSELECT,763)
    assign bubble_select_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_b = $unsigned(bubble_join_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_q[31:0]);

    // i_inc_ff_snow_horizontal_compose97i70(ADD,61)@129
    assign i_inc_ff_snow_horizontal_compose97i70_a = {1'b0, bubble_select_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_b};
    assign i_inc_ff_snow_horizontal_compose97i70_b = {1'b0, c_i32_190_q};
    assign i_inc_ff_snow_horizontal_compose97i70_o = $unsigned(i_inc_ff_snow_horizontal_compose97i70_a) + $unsigned(i_inc_ff_snow_horizontal_compose97i70_b);
    assign i_inc_ff_snow_horizontal_compose97i70_q = i_inc_ff_snow_horizontal_compose97i70_o[32:0];

    // bgTrunc_i_inc_ff_snow_horizontal_compose97i70_sel_x(BITSELECT,231)@129
    assign bgTrunc_i_inc_ff_snow_horizontal_compose97i70_sel_x_b = i_inc_ff_snow_horizontal_compose97i70_q[31:0];

    // i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71(BLACKBOX,96)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpga_push_i32_x_097_push9_0 thei_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71 (
        .in_data_in(bgTrunc_i_inc_ff_snow_horizontal_compose97i70_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_feedback_stall_out_9),
        .in_keep_going108(bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_V0),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_feedback_valid_out_9),
        .out_stall_out(i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(BITJOIN,735)
    assign bubble_join_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_q = redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_out;

    // bubble_select_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(BITSELECT,736)
    assign bubble_select_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b = $unsigned(bubble_join_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_q[0:0]);

    // c_i32_190(CONSTANT,16)
    assign c_i32_190_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15(BLACKBOX,86)@94
    // in in_stall_in@20000000
    // out out_data_out@95
    // out out_feedback_stall_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@95
    ff_snow_horizontal_compose97i_i_llvm_fpga_pop_i32_x_097_pop9_0 thei_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15 (
        .in_data_in(c_i32_190_q),
        .in_dir(bubble_select_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b),
        .in_feedback_in_9(i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_backStall),
        .in_valid_in(SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_feedback_stall_out_9),
        .out_stall_out(i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15(BITJOIN,698)
    assign bubble_join_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_q = i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15(BITSELECT,699)
    assign bubble_select_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_q[31:0]);

    // redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0(REG,612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backEN == 1'b1)
        begin
            redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_b);
        end
    end

    // redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1(REG,613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backEN == 1'b1)
        begin
            redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_q <= $unsigned(redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_q);
        end
    end

    // redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo(STALLFIFO,614)
    assign redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_in = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_V0;
    assign redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_in = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_backStall;
    assign redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_data_in = redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_q;
    assign redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_in[0];
    assign redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_in[0];
    assign redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_out[0] = redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_out_bitsignaltemp;
    assign redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_out[0] = redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo (
        .valid_in(redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_in_bitsignaltemp),
        .data_in(redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_q),
        .valid_out(redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0(STALLENABLE,1076)
    // Valid signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_V0 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_s_tv_0 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backStall & SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backEN = ~ (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_v_s_0 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backEN & SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_V1;
    // Backward Stall generation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backStall = ~ (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_R_v_0 & SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1(STALLENABLE,1077)
    // Valid signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_V0 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_0;
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_V1 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_0 = redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_stall_out & SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_0;
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_1 = SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_backStall & SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_or0 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_0;
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backEN = ~ (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_1 | SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_v_s_0 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backEN & SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_0_V0;
    // Backward Stall generation
    assign SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backStall = ~ (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_0 & SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_v_s_0;
            end

            if (SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_1 <= SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_1 & SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_R_v_1 <= SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join(STALLENABLE,805)
    // Valid signal propagation
    assign SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_V0 = SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_backStall = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_stall | ~ (SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and0 = SE_redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_V1;
    assign SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and1 = i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_valid_out & SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and0;
    assign SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and2 = SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_V0 & SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and1;
    assign SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_wireValid = SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_V0 & SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_and2;

    // SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0(STALLENABLE,1093)
    // Valid signal propagation
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_V0 = SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_0;
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_V1 = SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_0 = SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_backStall & SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_0;
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_1 = redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_out & SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_or0 = SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_0;
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backEN = ~ (SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_1 | SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_v_s_0 = SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backEN & SE_i_unnamed_ff_snow_horizontal_compose97i14_V2;
    // Backward Stall generation
    assign SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backStall = ~ (SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_0 <= 1'b0;
            SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backEN == 1'b0)
            begin
                SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_0 <= SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_0 & SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_0 <= SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_v_s_0;
            end

            if (SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backEN == 1'b0)
            begin
                SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_1 <= SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_1 & SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_R_v_1 <= SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_v_s_0;
            end

        end
    end

    // redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo(STALLFIFO,623)
    assign redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_in = SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_V1;
    assign redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_in = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_backStall;
    assign redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_data_in = redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_q;
    assign redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_in_bitsignaltemp = redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_in[0];
    assign redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_in_bitsignaltemp = redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_in[0];
    assign redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_out[0] = redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_out_bitsignaltemp;
    assign redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_out[0] = redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo (
        .valid_in(redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_q),
        .valid_out(redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo(BITJOIN,783)
    assign bubble_join_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_q = redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_data_out;

    // bubble_select_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo(BITSELECT,784)
    assign bubble_select_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_b = $unsigned(bubble_join_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46(BITJOIN,689)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_q = i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46(BITSELECT,690)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45(BITJOIN,686)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_q = i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45(BITSELECT,687)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_q[0:0]);

    // i_reduction_ff_snow_horizontal_compose97i_0_ff_snow_horizontal_compose97i47(LOGICAL,115)@129
    assign i_reduction_ff_snow_horizontal_compose97i_0_ff_snow_horizontal_compose97i47_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20(BITJOIN,692)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_q = i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20(BITSELECT,693)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20(STALLENABLE,851)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed0 = (~ (SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed1 = (~ (redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_wireValid = i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_valid_out;

    // redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo(STALLFIFO,616)
    assign redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_V1;
    assign redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_in = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_backStall;
    assign redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_b;
    assign redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_in_bitsignaltemp = redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_in[0];
    assign redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_in_bitsignaltemp = redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_in[0];
    assign redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_out[0] = redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_out_bitsignaltemp;
    assign redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_out[0] = redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo (
        .valid_in(redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_b),
        .valid_out(redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo(BITJOIN,768)
    assign bubble_join_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_q = redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_data_out;

    // bubble_select_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo(BITSELECT,769)
    assign bubble_select_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_b = $unsigned(bubble_join_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_q[0:0]);

    // i_reduction_ff_snow_horizontal_compose97i_1_ff_snow_horizontal_compose97i48(LOGICAL,116)@129
    assign i_reduction_ff_snow_horizontal_compose97i_1_ff_snow_horizontal_compose97i48_q = bubble_select_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_b | i_reduction_ff_snow_horizontal_compose97i_0_ff_snow_horizontal_compose97i47_q;

    // i_idxprom21_ff_snow_horizontal_compose97i42_vt_const_63(CONSTANT,46)
    assign i_idxprom21_ff_snow_horizontal_compose97i42_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage0Idx1Rng1_uid501_i_mul20_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,500)@129
    assign leftShiftStage0Idx1Rng1_uid501_i_mul20_ff_snow_horizontal_compose97i0_shift_x_in = bubble_select_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid501_i_mul20_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid501_i_mul20_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid502_i_mul20_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,501)@129
    assign leftShiftStage0Idx1_uid502_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid501_i_mul20_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x(MUX,503)@129
    assign leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_b or leftShiftStage0Idx1_uid502_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_b;
            1'b1 : leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid502_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul20_ff_snow_horizontal_compose97i41_vt_select_31(BITSELECT,108)@129
    assign i_mul20_ff_snow_horizontal_compose97i41_vt_select_31_b = leftShiftStage0_uid504_i_mul20_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_mul20_ff_snow_horizontal_compose97i41_vt_join(BITJOIN,107)@129
    assign i_mul20_ff_snow_horizontal_compose97i41_vt_join_q = {i_mul20_ff_snow_horizontal_compose97i41_vt_select_31_b, GND_q};

    // i_idxprom21_ff_snow_horizontal_compose97i42_sel_x(BITSELECT,327)@129
    assign i_idxprom21_ff_snow_horizontal_compose97i42_sel_x_b = {32'b00000000000000000000000000000000, i_mul20_ff_snow_horizontal_compose97i41_vt_join_q[31:0]};

    // i_idxprom21_ff_snow_horizontal_compose97i42_vt_select_31(BITSELECT,48)@129
    assign i_idxprom21_ff_snow_horizontal_compose97i42_vt_select_31_b = i_idxprom21_ff_snow_horizontal_compose97i42_sel_x_b[31:1];

    // i_idxprom21_ff_snow_horizontal_compose97i42_vt_join(BITJOIN,47)@129
    assign i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_q = {i_idxprom21_ff_snow_horizontal_compose97i42_vt_const_63_q, i_idxprom21_ff_snow_horizontal_compose97i42_vt_select_31_b, GND_q};

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,557)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_q[63:54];
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_q[53:36];
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_q[35:18];
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_q[17:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,541)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,432)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,543)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,431)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,433)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,542)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,429)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,544)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,430)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,434)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,286)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx22_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx22_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,288)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx22_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43(BITJOIN,656)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43(BITSELECT,657)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_q[63:0]);

    // i_arrayidx22_ff_snow_horizontal_compose97i0_add_x(ADD,280)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_b};
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx22_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx22_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,289)@129
    assign i_arrayidx22_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx22_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49(BLACKBOX,79)@129
    // in in_i_stall@20000000
    // out out_lsu_memdep_23_o_active@20000000
    // out out_memdep_23_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_23_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_23_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_23_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_23_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_23_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_23_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@160
    // out out_o_writeack@160
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_23_0 thei_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx22_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_ff_snow_horizontal_compose97i_1_ff_snow_horizontal_compose97i48_q),
        .in_i_predicate(bubble_select_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_backStall),
        .in_i_valid(SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_V0),
        .in_i_writedata(bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b),
        .in_memdep_23_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_23_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_23_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_23_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_23_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_23_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_23_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_23_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lsu_memdep_23_o_active(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_lsu_memdep_23_o_active),
        .out_memdep_23_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_23_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_23_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_23_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_23_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_23_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_23_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo(STALLENABLE,1095)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg0 <= '0;
            SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg0 <= SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_toReg0;
            // Successor 1
            SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg1 <= SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed0 = (~ (SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall) & SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireValid) | SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg0;
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed1 = (~ (redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_out) & SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireValid) | SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_StallValid = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_backStall & SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireValid;
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_toReg0 = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_StallValid & SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed0;
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_toReg1 = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_StallValid & SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_or0 = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed0;
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireStall = ~ (SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_consumed1 & SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_or0);
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_backStall = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_V0 = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireValid & ~ (SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg0);
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_V1 = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireValid & ~ (SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_wireValid = redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_valid_out;

    // SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo(STALLENABLE,1083)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg0 <= '0;
            SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg0 <= SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_toReg0;
            // Successor 1
            SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg1 <= SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed0 = (~ (SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall) & SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg0;
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed1 = (~ (redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_out) & SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_StallValid = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_backStall & SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireValid;
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_toReg0 = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_toReg1 = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_or0 = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireStall = ~ (SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_consumed1 & SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_or0);
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_backStall = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_V0 = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg0);
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_V1 = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_wireValid = redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43(BLACKBOX,72)@129
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10082_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_7_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo(STALLENABLE,1070)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg0 <= '0;
            SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg0 <= SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_toReg0;
            // Successor 1
            SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg1 <= SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed0 = (~ (SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backStall) & SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireValid) | SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg0;
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed1 = (~ (redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_out) & SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireValid) | SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg1;
    // Consuming
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_StallValid = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_backStall & SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireValid;
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_toReg0 = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_StallValid & SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed0;
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_toReg1 = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_StallValid & SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_or0 = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed0;
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireStall = ~ (SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_consumed1 & SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_or0);
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_backStall = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_V0 = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireValid & ~ (SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg0);
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_V1 = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireValid & ~ (SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_wireValid = redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_out;

    // redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo(STALLFIFO,608)
    assign redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_in = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V2;
    assign redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_in = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_backStall;
    assign redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_data_in = i_mul20_ff_snow_horizontal_compose97i41_vt_join_q;
    assign redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_in_bitsignaltemp = redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_in[0];
    assign redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_in_bitsignaltemp = redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_in[0];
    assign redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_out[0] = redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_out_bitsignaltemp;
    assign redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_out[0] = redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo (
        .valid_in(redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_in_bitsignaltemp),
        .data_in(i_mul20_ff_snow_horizontal_compose97i41_vt_join_q),
        .valid_out(redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7(STALLENABLE,881)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_wireValid = i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_valid_out;

    // redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo(STALLFIFO,618)
    assign redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V4;
    assign redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_in = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_backStall;
    assign redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_b;
    assign redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_in_bitsignaltemp = redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_in[0];
    assign redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_in_bitsignaltemp = redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_in[0];
    assign redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_out[0] = redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_out[0] = redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo (
        .valid_in(redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_b),
        .valid_out(redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo(BITJOIN,774)
    assign bubble_join_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_q = redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_data_out;

    // bubble_select_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo(BITSELECT,775)
    assign bubble_select_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_b = $unsigned(bubble_join_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50(STALLENABLE,870)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_backStall = i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_and0 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_wireValid = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_and0;

    // SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo(STALLENABLE,1087)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg0 <= '0;
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg0 <= SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_toReg0;
            // Successor 1
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg1 <= SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_backStall) & SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireValid) | SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg0;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed1 = (~ (redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_out) & SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireValid) | SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_StallValid = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_backStall & SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireValid;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_toReg0 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_StallValid & SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed0;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_toReg1 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_StallValid & SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_or0 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed0;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireStall = ~ (SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_consumed1 & SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_or0);
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_backStall = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_V0 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireValid & ~ (SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg0);
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_V1 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireValid & ~ (SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_wireValid = redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_valid_out;

    // redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo(STALLFIFO,619)
    assign redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_in = SE_out_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_V1;
    assign redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_in = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_backStall;
    assign redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_data_in = bubble_select_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_b;
    assign redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_in_bitsignaltemp = redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_in[0];
    assign redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_in_bitsignaltemp = redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_in[0];
    assign redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_out[0] = redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_out_bitsignaltemp;
    assign redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_out[0] = redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo (
        .valid_in(redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_b),
        .valid_out(redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo(BITJOIN,777)
    assign bubble_join_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_q = redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_data_out;

    // bubble_select_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo(BITSELECT,778)
    assign bubble_select_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_b = $unsigned(bubble_join_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61(STALLENABLE,867)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_wireValid = i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_valid_out;

    // i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x(BITSELECT,332)@192
    assign i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_b = bubble_select_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_b[0:0];

    // i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61(BLACKBOX,92)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zemdep_phi25_push12_0 thei_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61 (
        .in_data_in(i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_feedback_stall_out_12),
        .in_keep_going108(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_backStall),
        .in_valid_in(SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x(STALLENABLE,958)
    // Valid signal propagation
    assign SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_V0 = SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_wireValid;
    // Backward Stall generation
    assign SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_backStall = i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_stall_out | ~ (SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_V1;
    assign SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_wireValid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V1 & SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54(STALLENABLE,865)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_wireValid = i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_valid_out;

    // i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x(BITSELECT,333)@192
    assign i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_b = bubble_select_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_b[0:0];

    // i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54(BLACKBOX,91)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zemdep_phi24_push11_0 thei_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54 (
        .in_data_in(i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_feedback_stall_out_11),
        .in_keep_going108(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_backStall),
        .in_valid_in(SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_feedback_valid_out_11),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x(STALLENABLE,959)
    // Valid signal propagation
    assign SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_V0 = SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_wireValid;
    // Backward Stall generation
    assign SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_backStall = i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_stall_out | ~ (SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_V1;
    assign SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_wireValid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V0 & SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_and0;

    // SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo(STALLENABLE,1089)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg0 <= '0;
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg1 <= '0;
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg0 <= SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg0;
            // Successor 1
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg1 <= SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg1;
            // Successor 2
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg2 <= SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed0 = (~ (SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_backStall) & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid) | SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed1 = (~ (SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_backStall) & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid) | SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg1;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed2 = (~ (redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_out) & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid) | SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg2;
    // Consuming
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_StallValid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_backStall & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_StallValid & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg1 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_StallValid & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed1;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_toReg2 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_StallValid & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_or0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_or1 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed1 & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_or0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireStall = ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_consumed2 & SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_or1);
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_backStall = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid & ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg0);
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V1 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid & ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg1);
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V2 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid & ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_wireValid = redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_valid_out;

    // redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo(STALLFIFO,620)
    assign redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_in = SE_out_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_V2;
    assign redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_in = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_backStall;
    assign redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_data_in = bubble_select_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_b;
    assign redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_in_bitsignaltemp = redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_in[0];
    assign redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_in_bitsignaltemp = redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_in[0];
    assign redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_out[0] = redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_out_bitsignaltemp;
    assign redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_out[0] = redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo (
        .valid_in(redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_63_fifo_b),
        .valid_out(redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo(BITJOIN,780)
    assign bubble_join_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_q = redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_data_out;

    // bubble_select_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo(BITSELECT,781)
    assign bubble_select_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_b = $unsigned(bubble_join_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid508_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,507)@223
    assign rightShiftStage0Idx1Rng1_uid508_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_b[3:1];

    // rightShiftStage0Idx1_uid510_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,509)@223
    assign rightShiftStage0Idx1_uid510_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid508_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5(BITJOIN,708)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_q = i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5(BITSELECT,709)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_q[3:0]);

    // rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x(MUX,511)@223
    assign rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_b or rightShiftStage0Idx1_uid510_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_b;
            1'b1 : rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0Idx1_uid510_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations107_ff_snow_horizontal_compose97i6_vt_select_2(BITSELECT,112)@223
    assign i_next_initerations107_ff_snow_horizontal_compose97i6_vt_select_2_b = rightShiftStage0_uid512_i_next_initerations107_ff_snow_horizontal_compose97i0_shift_x_q[2:0];

    // i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join(BITJOIN,111)@223
    assign i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_q = {GND_q, i_next_initerations107_ff_snow_horizontal_compose97i6_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7(BLACKBOX,99)@223
    // in in_stall_in@20000000
    // out out_data_out@224
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@224
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zerations106_push14_0 thei_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7 (
        .in_data_in(i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_feedback_stall_out_14),
        .in_keep_going108(bubble_select_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_backStall),
        .in_valid_in(SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69(STALLENABLE,869)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_wireValid = i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68(BITJOIN,678)
    assign bubble_join_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_q = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68(BITSELECT,679)
    assign bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69(BLACKBOX,93)@223
    // in in_stall_in@20000000
    // out out_data_out@224
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@224
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zemdep_phi27_push13_0 thei_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_feedback_stall_out_13),
        .in_keep_going108(bubble_select_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68(STALLENABLE,1173)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall = i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_and0 = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_V1 & SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_and0;

    // SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo(STALLENABLE,1091)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg0 <= '0;
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg0 <= SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_toReg0;
            // Successor 1
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg1 <= SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed0 = (~ (SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_backStall) & SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireValid) | SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg0;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall) & SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireValid) | SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg1;
    // Consuming
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_StallValid = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_backStall & SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireValid;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_toReg0 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_StallValid & SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed0;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_toReg1 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_StallValid & SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_or0 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed0;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireStall = ~ (SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_consumed1 & SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_or0);
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_backStall = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_V0 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireValid & ~ (SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg0);
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_V1 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireValid & ~ (SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_wireValid = redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_valid_out;

    // SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join(STALLENABLE,889)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg0 <= SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg1 <= SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_stall_out) & SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireValid) | SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg0;
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_stall_out) & SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireValid) | SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_StallValid = SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_backStall & SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireValid;
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_toReg0 = SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_StallValid & SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed0;
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_toReg1 = SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_StallValid & SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_or0 = SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed0;
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireStall = ~ (SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_consumed1 & SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_or0);
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_backStall = SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_V0 = SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireValid & ~ (SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg0);
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_V1 = SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireValid & ~ (SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_V1;
    assign SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_wireValid = SE_out_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_V0 & SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_and0;

    // redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0(REG,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b1)
        begin
            redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q <= $unsigned(SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_D0);
        end
    end

    // redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo(STALLFIFO,600)
    assign redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_in = SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V1;
    assign redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_in = SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_backStall;
    assign redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_data_in = redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q;
    assign redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_in_bitsignaltemp = redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_in[0];
    assign redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_in_bitsignaltemp = redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_in[0];
    assign redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_out[0] = redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_out_bitsignaltemp;
    assign redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_out[0] = redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo (
        .valid_in(redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_in_bitsignaltemp),
        .data_in(redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q),
        .valid_out(redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo(STALLENABLE,1058)
    // Valid signal propagation
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_V0 = SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_backStall = i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_stall_out | ~ (SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_wireValid = redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_valid_out;

    // bubble_join_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo(BITJOIN,741)
    assign bubble_join_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_q = redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_data_out;

    // bubble_select_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo(BITSELECT,742)
    assign bubble_select_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_b = $unsigned(bubble_join_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_q[0:0]);

    // i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5(BLACKBOX,89)@222
    // in in_stall_in@20000000
    // out out_data_out@223
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@223
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zterations106_pop14_0 thei_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5 (
        .in_data_in(c_i4_785_q),
        .in_dir(bubble_select_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_b),
        .in_feedback_in_14(i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i4_initerations106_push14_ff_snow_horizontal_compose97i7_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_backStall),
        .in_valid_in(SE_out_redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5(STALLENABLE,861)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed1 = (~ (SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_backStall & SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_or0 = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_backStall = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_V0 = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_V1 = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_wireValid = i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg(STALLFIFO,1332)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg(STALLFIFO,1333)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0(BITJOIN,705)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_q = i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0(BITSELECT,706)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_q[3:0]);

    // i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x(BITSELECT,324)@96
    assign i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_b[0:0];

    // SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo(STALLENABLE,1048)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg0 <= '0;
            SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg0 <= SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg1 <= SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_backStall) & SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireValid) | SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg0;
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed1 = (~ (SE_i_masked117_ff_snow_horizontal_compose97i84_backStall) & SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireValid) | SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_StallValid = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_backStall & SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireValid;
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_toReg0 = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_StallValid & SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_toReg1 = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_StallValid & SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_or0 = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireStall = ~ (SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_consumed1 & SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_or0);
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_backStall = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_V0 = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg0);
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_V1 = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_wireValid = redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_out;

    // redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo(STALLFIFO,594)
    assign redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V2;
    assign redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_in = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_backStall;
    assign redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_data_in = i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b;
    assign redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_in_bitsignaltemp = redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_in[0];
    assign redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_in_bitsignaltemp = redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_in[0];
    assign redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_out[0] = redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_out_bitsignaltemp;
    assign redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_out[0] = redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo (
        .valid_in(redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b),
        .valid_out(redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo(BITJOIN,729)
    assign bubble_join_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_q = redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_data_out;

    // bubble_select_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo(BITSELECT,730)
    assign bubble_select_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_b = $unsigned(bubble_join_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10(BITJOIN,637)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_q = i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10(BITSELECT,638)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_q[32:0]);

    // bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11(BITJOIN,701)
    assign bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11(BITSELECT,702)
    assign bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_q[32:0]);

    // i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12(MUX,39)@129
    assign i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_s = redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_q;
    always @(i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_s or bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_b or bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_b)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_q = bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_b;
            1'b1 : i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_q = bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_b;
            default : i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_q = 33'b0;
        endcase
    end

    // i_exitcond_ff_snow_horizontal_compose97i72_cmp_nsign(LOGICAL,380)@129
    assign i_exitcond_ff_snow_horizontal_compose97i72_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_q[32:32]));

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76(BITJOIN,627)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_q = i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76(BITSELECT,628)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_q[0:0]);

    // i_unnamed_ff_snow_horizontal_compose97i77(LOGICAL,133)@129
    assign i_unnamed_ff_snow_horizontal_compose97i77_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_b & i_exitcond_ff_snow_horizontal_compose97i72_cmp_nsign_q;

    // i_notcmp105_ff_snow_horizontal_compose97i78(LOGICAL,113)@129
    assign i_notcmp105_ff_snow_horizontal_compose97i78_q = i_unnamed_ff_snow_horizontal_compose97i77_q ^ VCC_q;

    // i_masked117_ff_snow_horizontal_compose97i84(LOGICAL,102)@129 + 1
    assign i_masked117_ff_snow_horizontal_compose97i84_qi = i_notcmp105_ff_snow_horizontal_compose97i78_q & bubble_select_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked117_ff_snow_horizontal_compose97i84_delay ( .xin(i_masked117_ff_snow_horizontal_compose97i84_qi), .xout(i_masked117_ff_snow_horizontal_compose97i84_q), .ena(SE_i_masked117_ff_snow_horizontal_compose97i84_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo(STALLFIFO,610)
    assign redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_in = SE_i_masked117_ff_snow_horizontal_compose97i84_V0;
    assign redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall;
    assign redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_data_in = i_masked117_ff_snow_horizontal_compose97i84_q;
    assign redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_in_bitsignaltemp = redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_in[0];
    assign redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_in_bitsignaltemp = redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_in[0];
    assign redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_out[0] = redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_out_bitsignaltemp;
    assign redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_out[0] = redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo (
        .valid_in(redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked117_ff_snow_horizontal_compose97i84_q),
        .valid_out(redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg(STALLFIFO,1335)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1(STALLENABLE,1207)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and0 = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and3 = redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and5 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and6 = SE_out_i_llvm_fpga_pop_i4_initerations106_pop14_ff_snow_horizontal_compose97i5_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_and6;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg(STALLFIFO,1334)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83(STALLENABLE,829)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_valid_out;

    // i_xor114_ff_snow_horizontal_compose97i2(LOGICAL,134)@96
    assign i_xor114_ff_snow_horizontal_compose97i2_q = i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b ^ VCC_q;

    // redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo(STALLFIFO,605)
    assign redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V3;
    assign redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_in = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_backStall;
    assign redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_data_in = i_xor114_ff_snow_horizontal_compose97i2_q;
    assign redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_in_bitsignaltemp = redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_in[0];
    assign redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_in_bitsignaltemp = redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_in[0];
    assign redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_out[0] = redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_out_bitsignaltemp;
    assign redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_out[0] = redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo (
        .valid_in(redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_xor114_ff_snow_horizontal_compose97i2_q),
        .valid_out(redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo(BITJOIN,747)
    assign bubble_join_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_q = redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_data_out;

    // bubble_select_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo(BITSELECT,748)
    assign bubble_select_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_b = $unsigned(bubble_join_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_q[0:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83(BLACKBOX,73)@129
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000010Zrizontal_compose97i0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83 (
        .in_predicate_in(bubble_select_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_b),
        .in_src_data_in_6_0(bgTrunc_i_inc_ff_snow_horizontal_compose97i70_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83(STALLENABLE,828)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_V0 = SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_and0 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V0;
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_wireValid = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_V0 & SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_and0;

    // SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo(STALLENABLE,1079)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg0 <= '0;
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg1 <= '0;
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg2 <= '0;
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg0 <= SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg0;
            // Successor 1
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg1 <= SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg1;
            // Successor 2
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg2 <= SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg2;
            // Successor 3
            SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg3 <= SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_backStall) & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg0;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_backStall) & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg1;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed2 = (~ (redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_stall_out) & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg2;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed3 = (~ (SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall) & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg3;
    // Consuming
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_StallValid = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_backStall & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg0 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg1 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed1;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg2 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed2;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_toReg3 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or0 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or1 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed1 & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or0;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or2 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed2 & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or1;
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireStall = ~ (SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_consumed3 & SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_or2);
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_backStall = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V0 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg0);
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V1 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg1);
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V2 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg2);
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V3 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_wireValid = redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_valid_out;

    // SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join(STALLENABLE,799)
    // Valid signal propagation
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_V0 = SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_stall | ~ (SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and0 = SE_out_redist19_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_34_fifo_V3;
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and1 = i_llvm_fpga_ffwd_dest_p1024i32_temp10082_ff_snow_horizontal_compose97i43_out_valid_out & SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and0;
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and2 = i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_valid_out & SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and1;
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and3 = i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_valid_out & SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and2;
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and4 = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_V0 & SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and3;
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and5 = SE_i_add17_ff_snow_horizontal_compose97i38_V0 & SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and4;
    assign SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_wireValid = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_V0 & SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_and5;

    // redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0(REG,609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backEN == 1'b1)
        begin
            redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_q <= $unsigned(i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q);
        end
    end

    // i_idxprom6_ff_snow_horizontal_compose97i16_sel_x(BITSELECT,330)@97
    assign i_idxprom6_ff_snow_horizontal_compose97i16_sel_x_b = {32'b00000000000000000000000000000000, redist18_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_data_out_2_1_q[31:0]};

    // i_idxprom6_ff_snow_horizontal_compose97i16_vt_select_31(BITSELECT,60)@97
    assign i_idxprom6_ff_snow_horizontal_compose97i16_vt_select_31_b = i_idxprom6_ff_snow_horizontal_compose97i16_sel_x_b[31:0];

    // i_idxprom6_ff_snow_horizontal_compose97i16_vt_join(BITJOIN,59)@97
    assign i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_q = {i_idxprom21_ff_snow_horizontal_compose97i42_vt_const_63_q, i_idxprom6_ff_snow_horizontal_compose97i16_vt_select_31_b};

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,560)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_q[63:54];
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_q[53:36];
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_q[35:18];
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_q[17:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,553)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,486)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,555)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,485)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,487)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,554)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,483)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,556)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,484)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,488)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,316)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx7_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx7_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,318)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx7_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17(BITJOIN,647)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_q = i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17(BITSELECT,648)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_q[63:0]);

    // i_arrayidx7_ff_snow_horizontal_compose97i0_add_x(ADD,310)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9969_ff_snow_horizontal_compose97i17_b};
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx7_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx7_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,319)@97
    assign i_arrayidx7_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx7_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23(BLACKBOX,75)@97
    // in in_i_stall@20000000
    // out out_lm933_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm933_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm933_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm933_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm933_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm933_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm933_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@129
    // out out_o_stall@20000000
    // out out_o_valid@129
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm933_0 thei_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx7_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_q),
        .in_i_predicate(redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_q),
        .in_i_stall(SE_i_add17_ff_snow_horizontal_compose97i38_backStall),
        .in_i_valid(SE_i_idxprom6_ff_snow_horizontal_compose97i16_vt_join_V0),
        .in_lm933_ff_snow_horizontal_compose97i_avm_readdata(in_lm933_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm933_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm933_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm933_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm933_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm933_ff_snow_horizontal_compose97i_avm_writeack(in_lm933_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm933_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_address),
        .out_lm933_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm933_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm933_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm933_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_read),
        .out_lm933_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_write),
        .out_lm933_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_add17_ff_snow_horizontal_compose97i38(STALLENABLE,792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add17_ff_snow_horizontal_compose97i38_fromReg0 <= '0;
            SE_i_add17_ff_snow_horizontal_compose97i38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_add17_ff_snow_horizontal_compose97i38_fromReg0 <= SE_i_add17_ff_snow_horizontal_compose97i38_toReg0;
            // Successor 1
            SE_i_add17_ff_snow_horizontal_compose97i38_fromReg1 <= SE_i_add17_ff_snow_horizontal_compose97i38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_add17_ff_snow_horizontal_compose97i38_consumed0 = (~ (SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall) & SE_i_add17_ff_snow_horizontal_compose97i38_wireValid) | SE_i_add17_ff_snow_horizontal_compose97i38_fromReg0;
    assign SE_i_add17_ff_snow_horizontal_compose97i38_consumed1 = (~ (redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_out) & SE_i_add17_ff_snow_horizontal_compose97i38_wireValid) | SE_i_add17_ff_snow_horizontal_compose97i38_fromReg1;
    // Consuming
    assign SE_i_add17_ff_snow_horizontal_compose97i38_StallValid = SE_i_add17_ff_snow_horizontal_compose97i38_backStall & SE_i_add17_ff_snow_horizontal_compose97i38_wireValid;
    assign SE_i_add17_ff_snow_horizontal_compose97i38_toReg0 = SE_i_add17_ff_snow_horizontal_compose97i38_StallValid & SE_i_add17_ff_snow_horizontal_compose97i38_consumed0;
    assign SE_i_add17_ff_snow_horizontal_compose97i38_toReg1 = SE_i_add17_ff_snow_horizontal_compose97i38_StallValid & SE_i_add17_ff_snow_horizontal_compose97i38_consumed1;
    // Backward Stall generation
    assign SE_i_add17_ff_snow_horizontal_compose97i38_or0 = SE_i_add17_ff_snow_horizontal_compose97i38_consumed0;
    assign SE_i_add17_ff_snow_horizontal_compose97i38_wireStall = ~ (SE_i_add17_ff_snow_horizontal_compose97i38_consumed1 & SE_i_add17_ff_snow_horizontal_compose97i38_or0);
    assign SE_i_add17_ff_snow_horizontal_compose97i38_backStall = SE_i_add17_ff_snow_horizontal_compose97i38_wireStall;
    // Valid signal propagation
    assign SE_i_add17_ff_snow_horizontal_compose97i38_V0 = SE_i_add17_ff_snow_horizontal_compose97i38_wireValid & ~ (SE_i_add17_ff_snow_horizontal_compose97i38_fromReg0);
    assign SE_i_add17_ff_snow_horizontal_compose97i38_V1 = SE_i_add17_ff_snow_horizontal_compose97i38_wireValid & ~ (SE_i_add17_ff_snow_horizontal_compose97i38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_add17_ff_snow_horizontal_compose97i38_and0 = SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_V0;
    assign SE_i_add17_ff_snow_horizontal_compose97i38_wireValid = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_o_valid & SE_i_add17_ff_snow_horizontal_compose97i38_and0;

    // SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0(STALLENABLE,1062)
    // Valid signal propagation
    assign SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_V0 = SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_s_tv_0 = SE_i_add17_ff_snow_horizontal_compose97i38_backStall & SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backEN = ~ (SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_v_s_0 = SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_V0;
    // Backward Stall generation
    assign SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backStall = ~ (SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_R_v_0 <= SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_R_v_0 & SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_R_v_0 <= SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30(STALLENABLE,834)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_V0 = SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_backStall = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_and0 = SE_i_unnamed_ff_snow_horizontal_compose97i14_V0;
    assign SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_and1 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V0 & SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_and0;
    assign SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_wireValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_V0 & SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_and1;

    // i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30(BLACKBOX,76)@96
    // in in_i_stall@20000000
    // out out_lm954_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm954_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm954_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm954_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm954_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm954_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm954_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@128
    // out out_o_stall@20000000
    // out out_o_valid@128
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm954_0 thei_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q),
        .in_i_predicate(i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_V0),
        .in_lm954_ff_snow_horizontal_compose97i_avm_readdata(in_lm954_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm954_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm954_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm954_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm954_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm954_ff_snow_horizontal_compose97i_avm_writeack(in_lm954_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm954_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_address),
        .out_lm954_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm954_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm954_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm954_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_read),
        .out_lm954_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_write),
        .out_lm954_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34(STALLENABLE,837)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_V0 = SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_backStall = SE_redist9_bgTrunc_i_mul16_add49_ff_snow_horizontal_compose97i37_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_and0 = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_wireValid = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_o_valid & SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13(BITJOIN,631)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_q = i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13(BITSELECT,632)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_q[0:0]);

    // redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0(REG,621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_b);
        end
    end

    // i_unnamed_ff_snow_horizontal_compose97i14(LOGICAL,129)@96
    assign i_unnamed_ff_snow_horizontal_compose97i14_q = redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_q ^ VCC_q;

    // i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22(LOGICAL,37)@96
    assign i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q = i_unnamed_ff_snow_horizontal_compose97i14_q | i_xor114_ff_snow_horizontal_compose97i2_q;

    // i_memdep_phi27_or_ff_snow_horizontal_compose97i21(LOGICAL,104)@96
    assign i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_b;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24(BITJOIN,634)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_q = i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24(BITSELECT,635)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_q[31:0]);

    // i_add8_ff_snow_horizontal_compose97i25(ADD,31)@95
    assign i_add8_ff_snow_horizontal_compose97i25_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_b};
    assign i_add8_ff_snow_horizontal_compose97i25_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_b};
    assign i_add8_ff_snow_horizontal_compose97i25_o = $unsigned(i_add8_ff_snow_horizontal_compose97i25_a) + $unsigned(i_add8_ff_snow_horizontal_compose97i25_b);
    assign i_add8_ff_snow_horizontal_compose97i25_q = i_add8_ff_snow_horizontal_compose97i25_o[32:0];

    // bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x(BITSELECT,229)@95
    assign bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b = i_add8_ff_snow_horizontal_compose97i25_q[31:0];

    // redist10_bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b_1_0(REG,604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist10_bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b);
        end
    end

    // i_idxprom13_ff_snow_horizontal_compose97i31_sel_x(BITSELECT,326)@96
    assign i_idxprom13_ff_snow_horizontal_compose97i31_sel_x_b = $unsigned({{32{redist10_bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q[31]}}, redist10_bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b_1_0_q[31:0]});

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,562)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom13_ff_snow_horizontal_compose97i31_sel_x_b[63:54];
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom13_ff_snow_horizontal_compose97i31_sel_x_b[53:36];
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom13_ff_snow_horizontal_compose97i31_sel_x_b[35:18];
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom13_ff_snow_horizontal_compose97i31_sel_x_b[17:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,537)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,414)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,539)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,413)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,415)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,538)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,411)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,540)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,412)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,416)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,276)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx14_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx14_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,278)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx14_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32(BITJOIN,641)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_q = i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32(BITSELECT,642)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_q[63:0]);

    // i_arrayidx14_ff_snow_horizontal_compose97i0_add_x(ADD,270)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_b};
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx14_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx14_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,279)@96
    assign i_arrayidx14_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx14_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34(BLACKBOX,77)@96
    // in in_i_stall@20000000
    // out out_lm975_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm975_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm975_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm975_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm975_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm975_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm975_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@128
    // out out_o_stall@20000000
    // out out_o_valid@128
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm975_0 thei_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx14_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q),
        .in_i_predicate(i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_V0),
        .in_lm975_ff_snow_horizontal_compose97i_avm_readdata(in_lm975_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm975_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm975_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm975_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm975_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm975_ff_snow_horizontal_compose97i_avm_writeack(in_lm975_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm975_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_address),
        .out_lm975_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm975_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm975_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm975_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_read),
        .out_lm975_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_write),
        .out_lm975_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_ff_snow_horizontal_compose97i14(STALLENABLE,905)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg0 <= '0;
            SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg1 <= '0;
            SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg0 <= SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg0;
            // Successor 1
            SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg1 <= SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg1;
            // Successor 2
            SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg2 <= SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg1;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed2 = (~ (SE_redist27_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_1_0_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg2;
    // Consuming
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_StallValid = SE_i_unnamed_ff_snow_horizontal_compose97i14_backStall & SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg0 = SE_i_unnamed_ff_snow_horizontal_compose97i14_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg1 = SE_i_unnamed_ff_snow_horizontal_compose97i14_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed1;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_toReg2 = SE_i_unnamed_ff_snow_horizontal_compose97i14_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed2;
    // Backward Stall generation
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_or0 = SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_or1 = SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed1 & SE_i_unnamed_ff_snow_horizontal_compose97i14_or0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_wireStall = ~ (SE_i_unnamed_ff_snow_horizontal_compose97i14_consumed2 & SE_i_unnamed_ff_snow_horizontal_compose97i14_or1);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_backStall = SE_i_unnamed_ff_snow_horizontal_compose97i14_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_V0 = SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg0);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_V1 = SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg1);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_V2 = SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i14_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_and0 = SE_redist26_i_llvm_fpga_ffwd_dest_i1_cmp9689_ff_snow_horizontal_compose97i13_out_dest_data_out_4_0_1_0_V0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i14_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V1 & SE_i_unnamed_ff_snow_horizontal_compose97i14_and0;

    // i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32(BLACKBOX,67)@96
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9967_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32(STALLENABLE,817)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_backStall = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and1 = SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and2 = SE_i_unnamed_ff_snow_horizontal_compose97i14_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_wireValid = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24(STALLENABLE,813)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_backStall = SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_and0 = i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_wireValid = SE_out_i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_and0;

    // SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0(STALLENABLE,1059)
    // Valid signal propagation
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V0 = SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0;
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V1 = SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_backStall & SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0;
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_backStall & SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_or0 = SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0;
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN = ~ (SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_1 | SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0 = SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_shr86_ff_snow_horizontal_compose97i24_V0;
    // Backward Stall generation
    assign SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backStall = ~ (SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 <= SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 & SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_0 <= SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_1 <= SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_1 & SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_R_v_1 <= SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // c_i32_191(CONSTANT,17)
    assign c_i32_191_q = $unsigned(32'b11111111111111111111111111111111);

    // i_sub9_ff_snow_horizontal_compose97i26(ADD,128)@95
    assign i_sub9_ff_snow_horizontal_compose97i26_a = {1'b0, bgTrunc_i_add8_ff_snow_horizontal_compose97i25_sel_x_b};
    assign i_sub9_ff_snow_horizontal_compose97i26_b = {1'b0, c_i32_191_q};
    assign i_sub9_ff_snow_horizontal_compose97i26_o = $unsigned(i_sub9_ff_snow_horizontal_compose97i26_a) + $unsigned(i_sub9_ff_snow_horizontal_compose97i26_b);
    assign i_sub9_ff_snow_horizontal_compose97i26_q = i_sub9_ff_snow_horizontal_compose97i26_o[32:0];

    // bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x(BITSELECT,238)@95
    assign bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b = i_sub9_ff_snow_horizontal_compose97i26_q[31:0];

    // redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0(REG,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b);
        end
    end

    // i_idxprom10_ff_snow_horizontal_compose97i27_sel_x(BITSELECT,325)@96
    assign i_idxprom10_ff_snow_horizontal_compose97i27_sel_x_b = $unsigned({{32{redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q[31]}}, redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_q[31:0]});

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,561)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom10_ff_snow_horizontal_compose97i27_sel_x_b[63:54];
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom10_ff_snow_horizontal_compose97i27_sel_x_b[53:36];
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom10_ff_snow_horizontal_compose97i27_sel_x_b[35:18];
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom10_ff_snow_horizontal_compose97i27_sel_x_b[17:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,533)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,396)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,535)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,395)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,397)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,534)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,393)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,536)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,394)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,398)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,266)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx11_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx11_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,268)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx11_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28(BITJOIN,644)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_q = i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28(BITSELECT,645)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_q[63:0]);

    // i_arrayidx11_ff_snow_horizontal_compose97i0_add_x(ADD,260)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_b};
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx11_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,269)@96
    assign i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx11_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28(STALLENABLE,819)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed1 = (~ (redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_wireValid = SE_redist7_bgTrunc_i_sub9_ff_snow_horizontal_compose97i26_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_and0;

    // redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo(STALLFIFO,595)
    assign redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9968_ff_snow_horizontal_compose97i28_V1;
    assign redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_backStall;
    assign redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_in = i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b;
    assign redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in_bitsignaltemp = redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in[0];
    assign redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in_bitsignaltemp = redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in[0];
    assign redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out[0] = redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    assign redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out[0] = redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo (
        .valid_in(redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .valid_out(redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo(STALLFIFO,617)
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_in = SE_out_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_V1;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_in = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_backStall;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_data_in = bubble_select_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_b;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_in_bitsignaltemp = redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_in[0];
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_in_bitsignaltemp = redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_in[0];
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_out[0] = redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_out_bitsignaltemp;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_out[0] = redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo (
        .valid_in(redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist21_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_33_fifo_b),
        .valid_out(redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo(STALLENABLE,1085)
    // Valid signal propagation
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_V0 = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_backStall = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_stall | ~ (SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and0 = redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_valid_out;
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and1 = redist1_i_arrayidx11_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b_64_fifo_valid_out & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and0;
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and2 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V2 & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and1;
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_wireValid = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V1 & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_and2;

    // redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo(STALLFIFO,624)
    assign redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_in = SE_out_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_V1;
    assign redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_in = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_backStall;
    assign redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_data_in = bubble_select_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_b;
    assign redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_in_bitsignaltemp = redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_in[0];
    assign redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_in_bitsignaltemp = redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_in[0];
    assign redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_out[0] = redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_out_bitsignaltemp;
    assign redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_out[0] = redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo (
        .valid_in(redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist28_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_33_fifo_b),
        .valid_out(redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo(STALLENABLE,1097)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg0 <= '0;
            SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg1 <= '0;
            SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg0 <= SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg0;
            // Successor 1
            SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg1 <= SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg1;
            // Successor 2
            SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg2 <= SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed0 = (~ (SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_backStall) & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid) | SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg0;
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed1 = (~ (SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_backStall) & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid) | SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg1;
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed2 = (~ (redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_out) & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid) | SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg2;
    // Consuming
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_StallValid = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_backStall & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid;
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg0 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_StallValid & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed0;
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg1 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_StallValid & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed1;
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_toReg2 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_StallValid & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_or0 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed0;
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_or1 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed1 & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_or0;
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireStall = ~ (SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_consumed2 & SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_or1);
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_backStall = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V0 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid & ~ (SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg0);
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V1 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid & ~ (SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg1);
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V2 = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid & ~ (SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_wireValid = redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49(STALLENABLE,841)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg2 <= SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed0 = (~ (SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_backStall) & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid) | SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_backStall) & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid) | SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed2 = (~ (SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out_64_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid) | SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_StallValid = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_backStall & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg0 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_StallValid & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg1 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_StallValid & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed1;
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_toReg2 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_StallValid & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_or0 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_or1 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed1 & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_or0;
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_consumed2 & SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_or1);
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_backStall = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V0 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V1 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V2 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_wireValid = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_valid;

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57(BLACKBOX,71)@160
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10081_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_8_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0(STALLENABLE,1068)
    // Valid signal propagation
    assign SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_V0 = SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_s_tv_0 = SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_backStall & SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backEN = ~ (SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_v_s_0 = SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backEN & SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_V0;
    // Backward Stall generation
    assign SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backStall = ~ (SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_R_v_0 <= SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_R_v_0 & SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_R_v_0 <= SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join(STALLENABLE,801)
    // Valid signal propagation
    assign SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_V0 = SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_backStall = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_stall | ~ (SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and0 = SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_V0;
    assign SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and1 = i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_valid_out & SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and0;
    assign SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and2 = SE_out_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_V0 & SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and1;
    assign SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_wireValid = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V0 & SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_and2;

    // bubble_join_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo(BITJOIN,786)
    assign bubble_join_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_q = redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_data_out;

    // bubble_select_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo(BITSELECT,787)
    assign bubble_select_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_b = $unsigned(bubble_join_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49(BITJOIN,675)
    assign bubble_join_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_q = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49(BITSELECT,676)
    assign bubble_select_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_q[0:0]);

    // c_i32_294(CONSTANT,18)
    assign c_i32_294_q = $unsigned(32'b11111111111111111111111111111110);

    // bubble_join_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo(BITJOIN,753)
    assign bubble_join_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_q = redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_data_out;

    // bubble_select_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo(BITSELECT,754)
    assign bubble_select_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_b = $unsigned(bubble_join_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_q[31:0]);

    // i_sub28_ff_snow_horizontal_compose97i55(ADD,118)@159
    assign i_sub28_ff_snow_horizontal_compose97i55_a = {1'b0, bubble_select_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_b};
    assign i_sub28_ff_snow_horizontal_compose97i55_b = {1'b0, c_i32_294_q};
    assign i_sub28_ff_snow_horizontal_compose97i55_o = $unsigned(i_sub28_ff_snow_horizontal_compose97i55_a) + $unsigned(i_sub28_ff_snow_horizontal_compose97i55_b);
    assign i_sub28_ff_snow_horizontal_compose97i55_q = i_sub28_ff_snow_horizontal_compose97i55_o[32:0];

    // bgTrunc_i_sub28_ff_snow_horizontal_compose97i55_sel_x(BITSELECT,234)@159
    assign bgTrunc_i_sub28_ff_snow_horizontal_compose97i55_sel_x_b = i_sub28_ff_snow_horizontal_compose97i55_q[31:0];

    // i_sub28_ff_snow_horizontal_compose97i55_vt_select_31(BITSELECT,121)@159
    assign i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b = bgTrunc_i_sub28_ff_snow_horizontal_compose97i55_sel_x_b[31:1];

    // redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0(REG,607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_q <= $unsigned(i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b);
        end
    end

    // i_sub28_ff_snow_horizontal_compose97i55_vt_join(BITJOIN,120)@160
    assign i_sub28_ff_snow_horizontal_compose97i55_vt_join_q = {redist13_i_sub28_ff_snow_horizontal_compose97i55_vt_select_31_b_1_0_q, GND_q};

    // i_idxprom29_ff_snow_horizontal_compose97i56_sel_x(BITSELECT,328)@160
    assign i_idxprom29_ff_snow_horizontal_compose97i56_sel_x_b = $unsigned({{32{i_sub28_ff_snow_horizontal_compose97i55_vt_join_q[31]}}, i_sub28_ff_snow_horizontal_compose97i55_vt_join_q[31:0]});

    // i_idxprom29_ff_snow_horizontal_compose97i56_vt_select_63(BITSELECT,52)@160
    assign i_idxprom29_ff_snow_horizontal_compose97i56_vt_select_63_b = $unsigned(i_idxprom29_ff_snow_horizontal_compose97i56_sel_x_b[63:1]);

    // i_idxprom29_ff_snow_horizontal_compose97i56_vt_join(BITJOIN,51)@160
    assign i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_q = {i_idxprom29_ff_snow_horizontal_compose97i56_vt_select_63_b, GND_q};

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,558)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_q[63:54];
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_q[53:36];
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_q[35:18];
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_q[17:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,545)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,450)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,547)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,449)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,451)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,546)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,447)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,548)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,448)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,452)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,296)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx30_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx30_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,298)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx30_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57(BITJOIN,653)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57(BITSELECT,654)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_q[63:0]);

    // i_arrayidx30_ff_snow_horizontal_compose97i0_add_x(ADD,290)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10081_ff_snow_horizontal_compose97i57_b};
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx30_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx30_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,299)@160
    assign i_arrayidx30_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx30_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59(BLACKBOX,74)@160
    // in in_i_stall@20000000
    // out out_lm1017_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_lm1017_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_lm1017_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_lm1017_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_lm1017_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_lm1017_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_lm1017_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_readdata@192
    // out out_o_stall@20000000
    // out out_o_valid@192
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_lm1017_0 thei_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx30_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_b),
        .in_i_predicate(bubble_select_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_backStall),
        .in_i_valid(SE_i_idxprom29_ff_snow_horizontal_compose97i56_vt_join_V0),
        .in_lm1017_ff_snow_horizontal_compose97i_avm_readdata(in_lm1017_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm1017_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm1017_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm1017_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm1017_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm1017_ff_snow_horizontal_compose97i_avm_writeack(in_lm1017_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lm1017_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_address),
        .out_lm1017_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm1017_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm1017_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm1017_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_read),
        .out_lm1017_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_write),
        .out_lm1017_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59(BITJOIN,660)
    assign bubble_join_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_q = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59(BITSELECT,661)
    assign bubble_select_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52(BITJOIN,672)
    assign bubble_join_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_q = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52(BITSELECT,673)
    assign bubble_select_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_q[31:0]);

    // i_sub31_ff_snow_horizontal_compose97i62(SUB,122)@192
    assign i_sub31_ff_snow_horizontal_compose97i62_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_b};
    assign i_sub31_ff_snow_horizontal_compose97i62_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_b};
    assign i_sub31_ff_snow_horizontal_compose97i62_o = $unsigned(i_sub31_ff_snow_horizontal_compose97i62_a) - $unsigned(i_sub31_ff_snow_horizontal_compose97i62_b);
    assign i_sub31_ff_snow_horizontal_compose97i62_q = i_sub31_ff_snow_horizontal_compose97i62_o[32:0];

    // bgTrunc_i_sub31_ff_snow_horizontal_compose97i62_sel_x(BITSELECT,235)@192
    assign bgTrunc_i_sub31_ff_snow_horizontal_compose97i62_sel_x_b = $unsigned(i_sub31_ff_snow_horizontal_compose97i62_q[31:0]);

    // i_sub35_ff_snow_horizontal_compose97i63(SUB,123)@192
    assign i_sub35_ff_snow_horizontal_compose97i63_a = {1'b0, bgTrunc_i_sub31_ff_snow_horizontal_compose97i62_sel_x_b};
    assign i_sub35_ff_snow_horizontal_compose97i63_b = {1'b0, bubble_select_redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_b};
    assign i_sub35_ff_snow_horizontal_compose97i63_o = $unsigned(i_sub35_ff_snow_horizontal_compose97i63_a) - $unsigned(i_sub35_ff_snow_horizontal_compose97i63_b);
    assign i_sub35_ff_snow_horizontal_compose97i63_q = i_sub35_ff_snow_horizontal_compose97i63_o[32:0];

    // bgTrunc_i_sub35_ff_snow_horizontal_compose97i63_sel_x(BITSELECT,236)@192
    assign bgTrunc_i_sub35_ff_snow_horizontal_compose97i63_sel_x_b = $unsigned(i_sub35_ff_snow_horizontal_compose97i63_q[31:0]);

    // SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68(STALLENABLE,843)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid) | SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall) & SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid) | SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_StallValid = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall & SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_toReg0 = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_StallValid & SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_toReg1 = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_StallValid & SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_or0 = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_consumed1 & SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V0 = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_V1 = SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_wireValid = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_valid;

    // bubble_join_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo(BITJOIN,789)
    assign bubble_join_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_q = redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_data_out;

    // bubble_select_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo(BITSELECT,790)
    assign bubble_select_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_b = $unsigned(bubble_join_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_q[0:0]);

    // bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo(BITJOIN,765)
    assign bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_q = redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_data_out;

    // bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo(BITSELECT,766)
    assign bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_b = $unsigned(bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_q[0:0]);

    // bubble_join_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo(BITJOIN,750)
    assign bubble_join_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_q = redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_data_out;

    // bubble_select_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo(BITSELECT,751)
    assign bubble_select_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_b = $unsigned(bubble_join_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_q[30:0]);

    // i_sub37_ff_snow_horizontal_compose97i64_vt_join(BITJOIN,126)@192
    assign i_sub37_ff_snow_horizontal_compose97i64_vt_join_q = {bubble_select_redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_b, VCC_q};

    // i_idxprom38_ff_snow_horizontal_compose97i65_sel_x(BITSELECT,329)@192
    assign i_idxprom38_ff_snow_horizontal_compose97i65_sel_x_b = $unsigned({{32{i_sub37_ff_snow_horizontal_compose97i64_vt_join_q[31]}}, i_sub37_ff_snow_horizontal_compose97i64_vt_join_q[31:0]});

    // i_idxprom38_ff_snow_horizontal_compose97i65_vt_select_63(BITSELECT,56)@192
    assign i_idxprom38_ff_snow_horizontal_compose97i65_vt_select_63_b = $unsigned(i_idxprom38_ff_snow_horizontal_compose97i65_sel_x_b[63:1]);

    // i_idxprom38_ff_snow_horizontal_compose97i65_vt_join(BITJOIN,55)@192
    assign i_idxprom38_ff_snow_horizontal_compose97i65_vt_join_q = {i_idxprom38_ff_snow_horizontal_compose97i65_vt_select_63_b, VCC_q};

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select(BITSELECT,559)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b = i_idxprom38_ff_snow_horizontal_compose97i65_vt_join_q[63:54];
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c = i_idxprom38_ff_snow_horizontal_compose97i65_vt_join_q[53:36];
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d = i_idxprom38_ff_snow_horizontal_compose97i65_vt_join_q[35:18];
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e = i_idxprom38_ff_snow_horizontal_compose97i65_vt_join_q[17:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im0_shift0(BITSHIFT,549)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint = { i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_3(BITSHIFT,468)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im6_shift0(BITSHIFT,551)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint = { i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_2(BITSHIFT,467)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_4(BITJOIN,469)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q = {i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_3_q, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_2_q};

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im3_shift0(BITSHIFT,550)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint = { i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_0(BITSHIFT,465)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im9_shift0(BITSHIFT,552)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint = { i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_1(BITJOIN,466)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q = {i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_align_0_q, {1'b0, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_im9_shift0_q}};

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0(ADD,470)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_1_q};
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_join_4_q};
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_mult_extender_x(BITJOIN,306)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_mult_extender_x_q = {i_arrayidx11_ff_snow_horizontal_compose97i0_mult_multconst_x_q, i_arrayidx39_ff_snow_horizontal_compose97i0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx39_ff_snow_horizontal_compose97i0_trunc_sel_x(BITSELECT,308)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_trunc_sel_x_b = i_arrayidx39_ff_snow_horizontal_compose97i0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66(BITJOIN,650)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_q = i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66(BITSELECT,651)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_q[63:0]);

    // i_arrayidx39_ff_snow_horizontal_compose97i0_add_x(ADD,300)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_b};
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_b = {1'b0, i_arrayidx39_ff_snow_horizontal_compose97i0_trunc_sel_x_b};
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_o = $unsigned(i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_a) + $unsigned(i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_b);
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_q = i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_o[64:0];

    // i_arrayidx39_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x(BITSELECT,309)@192
    assign i_arrayidx39_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b = i_arrayidx39_ff_snow_horizontal_compose97i0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68(BLACKBOX,80)@192
    // in in_i_stall@20000000
    // out out_lsu_memdep_26_o_active@20000000
    // out out_memdep_26_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_26_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_26_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_26_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_26_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_26_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_26_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@223
    // out out_o_writeack@223
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_26_0 thei_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx39_ff_snow_horizontal_compose97i0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_b),
        .in_i_predicate(bubble_select_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_backStall),
        .in_i_valid(SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_V0),
        .in_i_writedata(bgTrunc_i_sub35_ff_snow_horizontal_compose97i63_sel_x_b),
        .in_memdep_26_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_26_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_26_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_26_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_26_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_26_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_26_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_26_ff_snow_horizontal_compose97i_avm_writeack),
        .out_lsu_memdep_26_o_active(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_lsu_memdep_26_o_active),
        .out_memdep_26_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_26_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_26_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_26_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_26_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_26_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_26_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66(BLACKBOX,70)@192
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zp1024i32_temp10080_0 thei_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_9_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52(STALLENABLE,839)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg0 <= SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg1 <= SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed0 = (~ (SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireValid) | SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed1 = (~ (SE_i_lm996_toi1_intcast_ff_snow_horizontal_compose97i53_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireValid) | SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_StallValid = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_backStall & SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_toReg0 = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_StallValid & SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_toReg1 = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_StallValid & SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_or0 = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_consumed1 & SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_or0);
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_backStall = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_V0 = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_V1 = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_wireValid = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_o_valid;

    // SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59(STALLENABLE,831)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed0 = (~ (SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireValid) | SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed1 = (~ (SE_i_lm1017_toi1_intcast_ff_snow_horizontal_compose97i60_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireValid) | SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_StallValid = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_backStall & SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_toReg0 = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_StallValid & SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_toReg1 = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_StallValid & SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_or0 = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_consumed1 & SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_or0);
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_backStall = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_V0 = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_V1 = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_wireValid = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_o_valid;

    // redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo(STALLFIFO,602)
    assign redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_in = SE_i_add17_ff_snow_horizontal_compose97i38_V1;
    assign redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_in = SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall;
    assign redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_data_in = bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b;
    assign redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_in_bitsignaltemp = redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_in[0];
    assign redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_in_bitsignaltemp = redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_in[0];
    assign redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_out[0] = redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    assign redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_out[0] = redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo (
        .valid_in(redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b),
        .valid_out(redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub37_ff_snow_horizontal_compose97i64(ADD,124)@159
    assign i_sub37_ff_snow_horizontal_compose97i64_a = {1'b0, bubble_select_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_b};
    assign i_sub37_ff_snow_horizontal_compose97i64_b = {1'b0, c_i32_191_q};
    assign i_sub37_ff_snow_horizontal_compose97i64_o = $unsigned(i_sub37_ff_snow_horizontal_compose97i64_a) + $unsigned(i_sub37_ff_snow_horizontal_compose97i64_b);
    assign i_sub37_ff_snow_horizontal_compose97i64_q = i_sub37_ff_snow_horizontal_compose97i64_o[32:0];

    // bgTrunc_i_sub37_ff_snow_horizontal_compose97i64_sel_x(BITSELECT,237)@159
    assign bgTrunc_i_sub37_ff_snow_horizontal_compose97i64_sel_x_b = i_sub37_ff_snow_horizontal_compose97i64_q[31:0];

    // i_sub37_ff_snow_horizontal_compose97i64_vt_select_31(BITSELECT,127)@159
    assign i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b = bgTrunc_i_sub37_ff_snow_horizontal_compose97i64_sel_x_b[31:1];

    // redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo(STALLFIFO,606)
    assign redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_in = SE_out_redist14_i_mul20_ff_snow_horizontal_compose97i41_vt_join_q_30_fifo_V1;
    assign redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_in = SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall;
    assign redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_data_in = i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b;
    assign redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_in_bitsignaltemp = redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_in[0];
    assign redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_in_bitsignaltemp = redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_in[0];
    assign redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_out[0] = redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_out_bitsignaltemp;
    assign redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_out[0] = redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(31),
        .IMPL("ram")
    ) theredist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo (
        .valid_in(redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b),
        .valid_out(redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo(STALLFIFO,625)
    assign redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_in = SE_out_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_V2;
    assign redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_in = SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall;
    assign redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_data_in = bubble_select_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_b;
    assign redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_in_bitsignaltemp = redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_in[0];
    assign redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_in_bitsignaltemp = redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_in[0];
    assign redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_out[0] = redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_out_bitsignaltemp;
    assign redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_out[0] = redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo (
        .valid_in(redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_in_bitsignaltemp),
        .stall_in(redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist29_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_64_fifo_b),
        .valid_out(redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_out_bitsignaltemp),
        .stall_out(redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_stall_out_bitsignaltemp),
        .data_out(redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo(STALLENABLE,1099)
    // Valid signal propagation
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_V0 = SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_o_stall | ~ (SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and0 = redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_valid_out;
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and1 = redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_out & SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and0;
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and2 = redist12_i_sub37_ff_snow_horizontal_compose97i64_vt_select_31_b_33_fifo_valid_out & SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and1;
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and3 = redist8_bgTrunc_i_sub19_ff_snow_horizontal_compose97i40_sel_x_b_63_fifo_valid_out & SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and2;
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and4 = SE_out_i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_V0 & SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and3;
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and5 = SE_out_i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_V0 & SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and4;
    assign SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_wireValid = i_llvm_fpga_ffwd_dest_p1024i32_temp10080_ff_snow_horizontal_compose97i66_out_valid_out & SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_and5;

    // redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo(STALLFIFO,615)
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_V1;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_in = SE_out_redist30_i_first_cleanup113_xor_or_ff_snow_horizontal_compose97i22_q_96_fifo_backStall;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_b;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_in_bitsignaltemp = redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_in[0];
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_in_bitsignaltemp = redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_in[0];
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_out[0] = redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_out_bitsignaltemp;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_out[0] = redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo (
        .valid_in(redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_b),
        .valid_out(redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21(STALLENABLE,884)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg0 <= '0;
            SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg1 <= '0;
            SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg0 <= SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg0;
            // Successor 1
            SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg1 <= SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg1;
            // Successor 2
            SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg2 <= SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_backStall) & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid) | SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg0;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b9967_ff_snow_horizontal_compose97i32_backStall) & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid) | SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg1;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed2 = (~ (SE_redist15_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_q_1_0_backStall) & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid) | SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg2;
    // Consuming
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_StallValid = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_backStall & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg0 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_StallValid & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed0;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg1 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_StallValid & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed1;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_toReg2 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_StallValid & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed2;
    // Backward Stall generation
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_or0 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed0;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_or1 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed1 & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_or0;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireStall = ~ (SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_consumed2 & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_or1);
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_backStall = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireStall;
    // Valid signal propagation
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V0 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid & ~ (SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg0);
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V1 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid & ~ (SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg1);
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_V2 = SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid & ~ (SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_V0;
    assign SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_V0 & SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19(STALLENABLE,853)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed0 = (~ (SE_i_memdep_phi27_or_ff_snow_horizontal_compose97i21_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed1 = (~ (redist20_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out_96_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50(STALLENABLE,871)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_wireValid = i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50(BLACKBOX,94)@160
    // in in_stall_in@20000000
    // out out_data_out@161
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@161
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Z_memdep_phi_push10_0 thei_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_feedback_stall_out_10),
        .in_keep_going108(bubble_select_redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_V0),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19(BLACKBOX,85)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    ff_snow_horizontal_compose97i_i_llvm_fpga_pop_i1_memdep_phi_pop10_0 thei_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19 (
        .in_data_in(GND_q),
        .in_dir(redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q),
        .in_feedback_in_10(i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i1_memdep_phi_push10_ff_snow_horizontal_compose97i50_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_backStall),
        .in_valid_in(SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20(BLACKBOX,84)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zmemdep_phi27_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20 (
        .in_data_in(GND_q),
        .in_dir(redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q),
        .in_feedback_in_13(i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i1_memdep_phi27_push13_ff_snow_horizontal_compose97i69_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_backStall),
        .in_valid_in(SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(STALLENABLE,1052)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0 <= '0;
            SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0 <= SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg0;
            // Successor 1
            SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1 <= SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0 = (~ (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backStall) & SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid) | SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0;
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_x_097_pop9_ff_snow_horizontal_compose97i15_out_stall_out) & SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid) | SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1;
    // Consuming
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall & SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid;
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg0 = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid & SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0;
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg1 = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid & SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_or0 = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0;
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireStall = ~ (SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1 & SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_or0);
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V0 = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid & ~ (SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0);
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V1 = SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid & ~ (SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid = redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out;

    // SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0(STALLENABLE,1053)
    // Valid signal propagation
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V0 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V1 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V2 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_2;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V3 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_3;
    // Stall signal propagation
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi27_pop13_ff_snow_horizontal_compose97i20_out_stall_out & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop10_ff_snow_horizontal_compose97i19_out_stall_out & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_2 = i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_stall_out & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_2;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_3 = redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_3;
    // Backward Enable generation
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or0 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or1 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1 | SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or0;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or2 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_2 | SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or1;
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN = ~ (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_3 | SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0 = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN & SE_out_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V0;
    // Backward Stall generation
    assign SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backStall = ~ (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 <= 1'b0;
            SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 <= 1'b0;
            SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_2 <= 1'b0;
            SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b0)
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0;
            end
            else
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
            end

            if (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b0)
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1;
            end
            else
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
            end

            if (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b0)
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_2 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_2 & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_2;
            end
            else
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_2 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
            end

            if (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b0)
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_3 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_3 & SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_3;
            end
            else
            begin
                SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_3 <= SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0(STALLENABLE,859)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed0 = (~ (redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed1 = (~ (SE_i_unnamed_ff_snow_horizontal_compose97i14_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed2 = (~ (redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed3 = (~ (redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_or2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_wireValid = i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_valid_out;

    // redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0(REG,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b1)
        begin
            redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q <= $unsigned(bubble_select_redist2_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b);
        end
    end

    // c_i4_785(CONSTANT,24)
    assign c_i4_785_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0(BLACKBOX,88)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    ff_snow_horizontal_compose97i_i_llvm_fpga_pop_i4_cleanups111_pop15_0 thei_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0 (
        .in_data_in(c_i4_785_q),
        .in_dir(redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q),
        .in_feedback_in_15(i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_backStall),
        .in_valid_in(SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V2),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid493_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,492)@129
    assign leftShiftStage0Idx1Rng1_uid493_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_in = bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid493_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid493_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid494_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,493)@129
    assign leftShiftStage0Idx1_uid494_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid493_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x(MUX,495)@129
    assign leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_s or bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_b or leftShiftStage0Idx1_uid494_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q = bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_b;
            1'b1 : leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid494_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_select_3(BITSELECT,34)@129
    assign i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_select_3_b = leftShiftStage0_uid496_i_cleanups_shl112_ff_snow_horizontal_compose97i0_shift_x_q[3:1];

    // i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_join(BITJOIN,33)@129
    assign i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_join_q = {i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_select_3_b, GND_q};

    // bubble_join_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo(BITJOIN,759)
    assign bubble_join_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_q = redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_data_out;

    // bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo(BITSELECT,760)
    assign bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_b = $unsigned(bubble_join_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_q[3:0]);

    // i_or115_ff_snow_horizontal_compose97i80(LOGICAL,114)@129
    assign i_or115_ff_snow_horizontal_compose97i80_q = i_notcmp105_ff_snow_horizontal_compose97i78_q | bubble_select_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_b;

    // i_next_cleanups116_ff_snow_horizontal_compose97i81(MUX,109)@129
    assign i_next_cleanups116_ff_snow_horizontal_compose97i81_s = i_or115_ff_snow_horizontal_compose97i80_q;
    always @(i_next_cleanups116_ff_snow_horizontal_compose97i81_s or bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_b or i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_join_q)
    begin
        unique case (i_next_cleanups116_ff_snow_horizontal_compose97i81_s)
            1'b0 : i_next_cleanups116_ff_snow_horizontal_compose97i81_q = bubble_select_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_b;
            1'b1 : i_next_cleanups116_ff_snow_horizontal_compose97i81_q = i_cleanups_shl112_ff_snow_horizontal_compose97i3_vt_join_q;
            default : i_next_cleanups116_ff_snow_horizontal_compose97i81_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82(BLACKBOX,98)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zcleanups111_push15_0 thei_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82 (
        .in_data_in(i_next_cleanups116_ff_snow_horizontal_compose97i81_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_feedback_stall_out_15),
        .in_keep_going108(bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_backStall),
        .in_valid_in(SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo(STALLENABLE,1065)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg0 <= '0;
            SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg0 <= SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_toReg0;
            // Successor 1
            SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg1 <= SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_backStall) & SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireValid) | SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg0;
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed1 = (~ (SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_backStall) & SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireValid) | SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_StallValid = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_backStall & SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireValid;
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_toReg0 = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_StallValid & SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed0;
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_toReg1 = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_StallValid & SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_or0 = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed0;
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireStall = ~ (SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_consumed1 & SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_or0);
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_backStall = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_V0 = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireValid & ~ (SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg0);
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_V1 = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireValid & ~ (SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_wireValid = redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_valid_out;

    // redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo(STALLFIFO,611)
    assign redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_V0;
    assign redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_in = SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_backStall;
    assign redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_data_in = bubble_select_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_b;
    assign redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_in[0];
    assign redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_in[0];
    assign redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_out[0] = redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_out_bitsignaltemp;
    assign redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_out[0] = redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
        .IMPL("ram")
    ) theredist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo (
        .valid_in(redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_b),
        .valid_out(redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo(STALLENABLE,1075)
    // Valid signal propagation
    assign SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_V0 = SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_backStall = i_llvm_fpga_push_i4_cleanups111_push15_ff_snow_horizontal_compose97i82_out_stall_out | ~ (SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and0 = redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_valid_out;
    assign SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and1 = SE_i_unnamed_ff_snow_horizontal_compose97i77_V2 & SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and0;
    assign SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and2 = SE_out_redist11_i_xor114_ff_snow_horizontal_compose97i2_q_33_fifo_V1 & SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and1;
    assign SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V3 & SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_and2;

    // SE_i_masked117_ff_snow_horizontal_compose97i84(STALLENABLE,882)
    // Valid signal propagation
    assign SE_i_masked117_ff_snow_horizontal_compose97i84_V0 = SE_i_masked117_ff_snow_horizontal_compose97i84_R_v_0;
    // Stall signal propagation
    assign SE_i_masked117_ff_snow_horizontal_compose97i84_s_tv_0 = redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_stall_out & SE_i_masked117_ff_snow_horizontal_compose97i84_R_v_0;
    // Backward Enable generation
    assign SE_i_masked117_ff_snow_horizontal_compose97i84_backEN = ~ (SE_i_masked117_ff_snow_horizontal_compose97i84_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked117_ff_snow_horizontal_compose97i84_and0 = SE_i_unnamed_ff_snow_horizontal_compose97i77_V1 & SE_i_masked117_ff_snow_horizontal_compose97i84_backEN;
    assign SE_i_masked117_ff_snow_horizontal_compose97i84_v_s_0 = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_V1 & SE_i_masked117_ff_snow_horizontal_compose97i84_and0;
    // Backward Stall generation
    assign SE_i_masked117_ff_snow_horizontal_compose97i84_backStall = ~ (SE_i_masked117_ff_snow_horizontal_compose97i84_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked117_ff_snow_horizontal_compose97i84_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked117_ff_snow_horizontal_compose97i84_backEN == 1'b0)
            begin
                SE_i_masked117_ff_snow_horizontal_compose97i84_R_v_0 <= SE_i_masked117_ff_snow_horizontal_compose97i84_R_v_0 & SE_i_masked117_ff_snow_horizontal_compose97i84_s_tv_0;
            end
            else
            begin
                SE_i_masked117_ff_snow_horizontal_compose97i84_R_v_0 <= SE_i_masked117_ff_snow_horizontal_compose97i84_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79(STALLENABLE,872)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_backStall = i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_and0 = SE_i_unnamed_ff_snow_horizontal_compose97i77_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_wireValid = SE_out_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76(STALLENABLE,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed1 = (~ (SE_i_unnamed_ff_snow_horizontal_compose97i77_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_out_valid_out;

    // SE_i_unnamed_ff_snow_horizontal_compose97i77(STALLENABLE,908)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg0 <= '0;
            SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg1 <= '0;
            SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg0 <= SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg0;
            // Successor 1
            SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg1 <= SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg1;
            // Successor 2
            SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg2 <= SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed1 = (~ (SE_i_masked117_ff_snow_horizontal_compose97i84_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg1;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed2 = (~ (SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_backStall) & SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid) | SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg2;
    // Consuming
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_StallValid = SE_i_unnamed_ff_snow_horizontal_compose97i77_backStall & SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg0 = SE_i_unnamed_ff_snow_horizontal_compose97i77_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg1 = SE_i_unnamed_ff_snow_horizontal_compose97i77_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed1;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_toReg2 = SE_i_unnamed_ff_snow_horizontal_compose97i77_StallValid & SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed2;
    // Backward Stall generation
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_or0 = SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_or1 = SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed1 & SE_i_unnamed_ff_snow_horizontal_compose97i77_or0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_wireStall = ~ (SE_i_unnamed_ff_snow_horizontal_compose97i77_consumed2 & SE_i_unnamed_ff_snow_horizontal_compose97i77_or1);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_backStall = SE_i_unnamed_ff_snow_horizontal_compose97i77_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_V0 = SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg0);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_V1 = SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg1);
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_V2 = SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid & ~ (SE_i_unnamed_ff_snow_horizontal_compose97i77_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_and0 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_V0;
    assign SE_i_unnamed_ff_snow_horizontal_compose97i77_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9688_ff_snow_horizontal_compose97i76_V1 & SE_i_unnamed_ff_snow_horizontal_compose97i77_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10(STALLENABLE,815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed1 = (~ (SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_backStall & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_or0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_backStall = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_V1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_wireValid = i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_out_valid_out;

    // SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0(STALLENABLE,1056)
    // Valid signal propagation
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V0 = SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0;
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V1 = SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_backStall & SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0;
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1 = redist6_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_221_fifo_stall_out & SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or0 = SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0;
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN = ~ (SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1 | SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0 = SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN & SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V;
    // Backward Stall generation
    assign SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall = ~ (SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 <= 1'b0;
            SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b0)
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 <= SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 & SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_0;
            end
            else
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_0 <= SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
            end

            if (SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backEN == 1'b0)
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 <= SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 & SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_s_tv_1;
            end
            else
            begin
                SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_R_v_1 <= SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_v_s_0;
            end

        end
    end

    // SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12(STALLENABLE,798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg0 <= '0;
            SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg0 <= SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_toReg0;
            // Successor 1
            SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg1 <= SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed0 = (~ (SE_i_unnamed_ff_snow_horizontal_compose97i77_backStall) & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireValid) | SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg0;
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed1 = (~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_backStall) & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireValid) | SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg1;
    // Consuming
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_StallValid = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_backStall & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireValid;
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_toReg0 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_StallValid & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed0;
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_toReg1 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_StallValid & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed1;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_or0 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed0;
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireStall = ~ (SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_consumed1 & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_or0);
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_backStall = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireStall;
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_V0 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireValid & ~ (SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg0);
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_V1 = SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireValid & ~ (SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_and0 = SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V0;
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_and1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_ff_snow_horizontal_compose97i11_ff_snow_horizontal_compose97i10_V1 & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_and0;
    assign SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_wireValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_V1 & SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_and1;

    // bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg(STALLFIFO,1336)
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_V0;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11(STALLENABLE,857)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg0 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg1 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed1 = (~ (SE_i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_backStall) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_StallValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_backStall & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_toReg0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_toReg1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_or0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_consumed1 & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_or0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_backStall = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_V0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_V1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_wireValid = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75(STALLENABLE,877)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_wireValid = i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_valid_out;

    // c_i33_196(CONSTANT,21)
    assign c_i33_196_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74(ADD,38)@129
    assign i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_a = {1'b0, i_fpga_indvars_iv_replace_phi_ff_snow_horizontal_compose97i12_q};
    assign i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_b = {1'b0, c_i33_196_q};
    assign i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_o = $unsigned(i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_a) + $unsigned(i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_b);
    assign i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_q = i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_sel_x(BITSELECT,230)@129
    assign bgTrunc_i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_sel_x_b = i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75(BLACKBOX,97)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Za_indvars_iv_push8_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_ff_snow_horizontal_compose97i74_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_feedback_stall_out_8),
        .in_keep_going108(bubble_select_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef89(CONSTANT,22)
    assign c_i33_undef89_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11(BLACKBOX,87)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zga_indvars_iv_pop8_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11 (
        .in_data_in(c_i33_undef89_q),
        .in_dir(bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b),
        .in_feedback_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_backStall),
        .in_valid_in(SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V4),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46(BLACKBOX,83)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zmemdep_phi25_pop12_0 thei_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b),
        .in_feedback_in_12(i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i1_memdep_phi25_push12_ff_snow_horizontal_compose97i61_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall),
        .in_valid_in(SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45(BLACKBOX,82)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zmemdep_phi24_pop11_0 thei_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b),
        .in_feedback_in_11(i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i1_memdep_phi24_push11_ff_snow_horizontal_compose97i54_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_i_idxprom21_ff_snow_horizontal_compose97i42_vt_join_backStall),
        .in_valid_in(SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0(STALLREG,1347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid <= 1'b0;
            SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid <= SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall & (SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid | SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_i_valid);

            if (SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_data0 <= $unsigned(bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_i_valid = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall = SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid | ~ (SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_i_valid);

    // Valid
    assign SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_V = SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid == 1'b1 ? SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid : SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_i_valid;

    assign SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_D0 = SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_valid == 1'b1 ? SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_r_data0 : bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b;

    // redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(STALLFIFO,598)
    assign redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in = SE_redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V3;
    assign redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall;
    assign redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_in = redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q;
    assign redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in_bitsignaltemp = redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in[0];
    assign redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in_bitsignaltemp = redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in[0];
    assign redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out[0] = redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out_bitsignaltemp;
    assign redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out[0] = redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo (
        .valid_in(redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_in_bitsignaltemp),
        .data_in(redist3_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q),
        .valid_out(redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(STALLENABLE,1055)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0 <= '0;
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1 <= '0;
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg2 <= '0;
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg3 <= '0;
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0 <= SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg0;
            // Successor 1
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1 <= SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg1;
            // Successor 2
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg2 <= SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg2;
            // Successor 3
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg3 <= SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg3;
            // Successor 4
            SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg4 <= SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0 = (~ (SR_SE_redist5_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_128_0_backStall) & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid) | SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_stall_out) & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid) | SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi24_pop11_ff_snow_horizontal_compose97i45_out_stall_out) & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid) | SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg2;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi25_pop12_ff_snow_horizontal_compose97i46_out_stall_out) & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid) | SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg3;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed4 = (~ (i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_out_stall_out) & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid) | SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg4;
    // Consuming
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg0 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg1 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg2 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed2;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg3 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed3;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_toReg4 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_StallValid & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed4;
    // Backward Stall generation
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or0 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed0;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or1 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed1 & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or0;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or2 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed2 & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or1;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or3 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed3 & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or2;
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireStall = ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_consumed4 & SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_or3);
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_backStall = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V0 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid & ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg0);
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V1 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid & ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg1);
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V2 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid & ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg2);
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V3 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid & ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg3);
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V4 = SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid & ~ (SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_wireValid = redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4(STALLENABLE,845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_x_097_push9_ff_snow_horizontal_compose97i71_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed2 = (~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push8_ff_snow_horizontal_compose97i75_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed3 = (~ (SE_out_redist17_i_llvm_fpga_pop_i4_cleanups111_pop15_ff_snow_horizontal_compose97i0_out_data_out_33_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed4 = (~ (redist23_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_or3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_wireValid = i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79(STALLENABLE,873)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_wireValid = i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79(BLACKBOX,95)@129
    // in in_stall_in@20000000
    // out out_data_out@130
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@130
    ff_snow_horizontal_compose97i_i_llvm_fpga_push_i1_notexitcond118_0 thei_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79 (
        .in_data_in(i_unnamed_ff_snow_horizontal_compose97i77_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_not_exitcond_stall_out),
        .in_first_cleanup113(bubble_select_redist0_i_first_cleanup113_ff_snow_horizontal_compose97i1_sel_x_b_33_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_V0),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_feedback_valid_out_5),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9(STALLENABLE,863)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_wireValid = i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_valid_out;

    // i_last_initeration109_ff_snow_horizontal_compose97i8_sel_x(BITSELECT,331)@223
    assign i_last_initeration109_ff_snow_horizontal_compose97i8_sel_x_b = i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9(BLACKBOX,90)@223
    // in in_stall_in@20000000
    // out out_data_out@224
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@224
    ff_snow_horizontal_compose97i_i_llvm_fpgA000000Zlastiniteration110_0 thei_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9 (
        .in_data_in(i_last_initeration109_ff_snow_horizontal_compose97i8_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_initeration_stall_out),
        .in_keep_going108(bubble_select_redist25_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out_94_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_backStall),
        .in_valid_in(SE_i_next_initerations107_ff_snow_horizontal_compose97i6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(BITJOIN,738)
    assign bubble_join_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_q = redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_data_out;

    // bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo(BITSELECT,739)
    assign bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b = $unsigned(bubble_join_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4(BLACKBOX,81)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    ff_snow_horizontal_compose97i_i_llvm_fpga_pipeline_keep_going108_0 thei_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4 (
        .in_data_in(bubble_select_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration110_ff_snow_horizontal_compose97i9_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond118_ff_snow_horizontal_compose97i79_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_backStall),
        .in_valid_in(SE_out_redist4_ff_snow_horizontal_compose97i_B2_merge_reg_aunroll_x_out_data_out_0_tpl_127_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,28)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,214)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going108_ff_snow_horizontal_compose97i4_out_pipeline_valid_out;

    // regfree_osync(GPOUT,221)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_snow_horizontal_compose97i12_ff_snow_horizontal_compose97i83_out_intel_reserved_ffwd_6_0;

    // sync_out(GPOUT,225)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,241)
    assign out_lm933_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm933_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm933_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm933_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm933_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm933_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm933_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm933_ff_snow_horizontal_compose97i23_out_lm933_ff_snow_horizontal_compose97i_avm_burstcount;

    // bubble_join_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo(BITJOIN,756)
    assign bubble_join_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_q = redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_data_out;

    // bubble_select_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo(BITSELECT,757)
    assign bubble_select_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_b = $unsigned(bubble_join_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,243)@223
    assign out_masked117 = bubble_select_redist16_i_masked117_ff_snow_horizontal_compose97i84_q_94_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop8_ff_snow_horizontal_compose97i11_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,245)
    assign out_lm954_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm954_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm954_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm954_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm954_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm954_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm954_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm954_ff_snow_horizontal_compose97i30_out_lm954_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,248)
    assign out_lm975_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm975_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm975_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm975_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm975_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm975_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm975_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm975_ff_snow_horizontal_compose97i34_out_lm975_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,251)
    assign out_memdep_23_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_23_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_23_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_23_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_23_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_23_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_23_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_memdep_23_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,253)
    assign out_lsu_memdep_23_o_active = i_llvm_fpga_mem_memdep_23_ff_snow_horizontal_compose97i49_out_lsu_memdep_23_o_active;

    // dupName_5_ext_sig_sync_out_x(GPOUT,255)
    assign out_lm996_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm996_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm996_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm996_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm996_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm996_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm996_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm996_ff_snow_horizontal_compose97i52_out_lm996_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,256)
    assign out_lm1017_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_address;
    assign out_lm1017_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_enable;
    assign out_lm1017_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_read;
    assign out_lm1017_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_write;
    assign out_lm1017_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_lm1017_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_lm1017_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_lm1017_ff_snow_horizontal_compose97i59_out_lm1017_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,257)
    assign out_memdep_26_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_26_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_26_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_26_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_26_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_26_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_26_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_memdep_26_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,258)
    assign out_lsu_memdep_26_o_active = i_llvm_fpga_mem_memdep_26_ff_snow_horizontal_compose97i68_out_lsu_memdep_26_o_active;

endmodule
